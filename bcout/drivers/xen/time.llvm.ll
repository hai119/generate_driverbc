; ModuleID = '../bcout/drivers/xen/time.llvm.bc'
source_filename = "drivers/xen/time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.vcpu_runstate_info = type { i32, i64, [4 x i64] }
%struct.cpumask = type { [1 x i64] }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.64, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.34, %struct.list_head, %struct.list_head, %union.anon.35 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.9, %union.anon.23, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.23 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.25, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.26, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.27, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.30, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.25 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.26 = type { %struct.callback_head }
%union.anon.27 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.11 }
%union.anon.11 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.30 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.28 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.28 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.44 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.36, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.37, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.38, %union.anon.42, %struct.key_restriction* }
%union.anon.36 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.37 = type { i64 }
%union.anon.38 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.39, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.39 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.42 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.50, %union.anon.51, i32 }
%struct.request_queue = type opaque
%union.anon.50 = type { %struct.list_head }
%union.anon.51 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.63, i32, [12 x i8] }
%union.anon.63 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.64 = type { %struct.callback_head }
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
%struct.static_key = type { %struct.atomic_t }
%struct.kmem_cache = type opaque
%struct.vcpu_register_runstate_memory_area = type { %union.anon }
%union.anon = type { %struct.vcpu_runstate_info* }

@xen_manage_runstate_time.runstate_delta = internal global %struct.vcpu_runstate_info* null, align 8, !dbg !0
@xen_manage_runstate_time.__print_once = internal global i8 0, section ".data.once", align 1, !dbg !65
@.str = private unnamed_addr constant [49 x i8] c"\014%s: memory leak as runstate_delta is not NULL\0A\00", align 1
@__func__.xen_manage_runstate_time = private unnamed_addr constant [25 x i8] c"xen_manage_runstate_time\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\014%s: failed to allocate runstate_delta\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"\014%s: cannot accumulate runstate time as runstate_delta is NULL\0A\00", align 1
@old_runstate_time = internal global [4 x i64] zeroinitializer, section ".data", align 16, !dbg !71
@xen_runstate = internal global %struct.vcpu_runstate_info zeroinitializer, section ".data", align 8, !dbg !69
@.str.3 = private unnamed_addr constant [19 x i8] c"drivers/xen/time.c\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@paravirt_steal_enabled = external dso_local global %struct.static_key, align 4
@paravirt_steal_rq_enabled = external dso_local global %struct.static_key, align 4
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@xen_vcpu_id = external dso_local global i32, section ".data", align 4
@static_key_initialized = external dso_local global i8, align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_manage_runstate_time(i32 %action) #0 !dbg !2 {
entry:
  %action.addr = alloca i32, align 4
  %state = alloca %struct.vcpu_runstate_info, align 8
  %cpu = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_print_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp57 = alloca [4 x i64]*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp58 = alloca [4 x i64]*, align 8
  store i32 %action, i32* %action.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %action.addr, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata %struct.vcpu_runstate_info* %state, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %i, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = load i32, i32* %action.addr, align 4, !dbg !88
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb31
  ], !dbg !89

sw.bb:                                            ; preds = %entry
  %1 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !90
  %tobool = icmp ne %struct.vcpu_runstate_info* %1, null, !dbg !90
  %lnot = xor i1 %tobool, true, !dbg !90
  %lnot1 = xor i1 %lnot, true, !dbg !90
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !90
  %conv = sext i32 %lnot.ext to i64, !dbg !90
  %tobool2 = icmp ne i64 %conv, 0, !dbg !90
  br i1 %tobool2, label %if.then, label %if.end14, !dbg !93

if.then:                                          ; preds = %sw.bb
  call void @llvm.dbg.declare(metadata i8* %__ret_print_once, metadata !94, metadata !DIExpression()), !dbg !96
  %2 = load i8, i8* @xen_manage_runstate_time.__print_once, align 1, !dbg !96
  %tobool3 = trunc i8 %2 to i1, !dbg !96
  %lnot4 = xor i1 %tobool3, true, !dbg !96
  %frombool = zext i1 %lnot4 to i8, !dbg !96
  store i8 %frombool, i8* %__ret_print_once, align 1, !dbg !96
  %3 = load i8, i8* @xen_manage_runstate_time.__print_once, align 1, !dbg !97
  %tobool6 = trunc i8 %3 to i1, !dbg !97
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !96

if.then7:                                         ; preds = %if.then
  store i8 1, i8* @xen_manage_runstate_time.__print_once, align 1, !dbg !99
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.xen_manage_runstate_time, i64 0, i64 0)) #11, !dbg !99
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then7, %if.then
  %4 = load i8, i8* %__ret_print_once, align 1, !dbg !96
  %tobool8 = trunc i8 %4 to i1, !dbg !96
  %lnot9 = xor i1 %tobool8, true, !dbg !96
  %lnot11 = xor i1 %lnot9, true, !dbg !96
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !96
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !96
  store i64 %conv13, i64* %tmp, align 8, !dbg !97
  %5 = load i64, i64* %tmp, align 8, !dbg !96
  br label %if.end14, !dbg !101

if.end14:                                         ; preds = %if.end, %sw.bb
  %call15 = call i8* @kmalloc_array(i64 1, i64 48, i32 2592) #12, !dbg !102
  %6 = bitcast i8* %call15 to %struct.vcpu_runstate_info*, !dbg !102
  store %struct.vcpu_runstate_info* %6, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !103
  %7 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !104
  %tobool16 = icmp ne %struct.vcpu_runstate_info* %7, null, !dbg !104
  %lnot17 = xor i1 %tobool16, true, !dbg !104
  %lnot19 = xor i1 %lnot17, true, !dbg !104
  %lnot21 = xor i1 %lnot19, true, !dbg !104
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !104
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !104
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !104
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !106

if.then25:                                        ; preds = %if.end14
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.xen_manage_runstate_time, i64 0, i64 0)) #11, !dbg !107
  br label %if.end71, !dbg !109

if.end27:                                         ; preds = %if.end14
  store i32 0, i32* %cpu, align 4, !dbg !110
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %if.end27
  %8 = load i32, i32* %cpu, align 4, !dbg !112
  %cmp = icmp slt i32 %8, 1, !dbg !112
  br i1 %cmp, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %cpu, align 4, !dbg !114
  call void @xen_get_runstate_snapshot_cpu_delta(%struct.vcpu_runstate_info* %state, i32 %9) #12, !dbg !116
  %10 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !117
  %11 = load i32, i32* %cpu, align 4, !dbg !118
  %idxprom = sext i32 %11 to i64, !dbg !117
  %arrayidx = getelementptr %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %10, i64 %idxprom, !dbg !117
  %time = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %arrayidx, i32 0, i32 2, !dbg !119
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %time, i64 0, i64 0, !dbg !120
  %12 = bitcast i64* %arraydecay to i8*, !dbg !120
  %time29 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %state, i32 0, i32 2, !dbg !121
  %arraydecay30 = getelementptr inbounds [4 x i64], [4 x i64]* %time29, i64 0, i64 0, !dbg !120
  %13 = bitcast i64* %arraydecay30 to i8*, !dbg !120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 32, i1 false), !dbg !120
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %cpu, align 4, !dbg !112
  %inc = add i32 %14, 1, !dbg !112
  store i32 %inc, i32* %cpu, align 4, !dbg !112
  br label %for.cond, !dbg !112, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !125

sw.bb31:                                          ; preds = %entry
  %15 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !126
  %tobool32 = icmp ne %struct.vcpu_runstate_info* %15, null, !dbg !126
  %lnot33 = xor i1 %tobool32, true, !dbg !126
  %lnot35 = xor i1 %lnot33, true, !dbg !126
  %lnot37 = xor i1 %lnot35, true, !dbg !126
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !126
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !126
  %tobool40 = icmp ne i64 %conv39, 0, !dbg !126
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !128

if.then41:                                        ; preds = %sw.bb31
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.xen_manage_runstate_time, i64 0, i64 0)) #11, !dbg !129
  br label %if.end71, !dbg !131

if.end43:                                         ; preds = %sw.bb31
  store i32 0, i32* %cpu, align 4, !dbg !132
  br label %for.cond44, !dbg !132

for.cond44:                                       ; preds = %for.inc64, %if.end43
  %16 = load i32, i32* %cpu, align 4, !dbg !134
  %cmp45 = icmp slt i32 %16, 1, !dbg !134
  br i1 %cmp45, label %for.body47, label %for.end66, !dbg !132

for.body47:                                       ; preds = %for.cond44
  store i32 0, i32* %i, align 4, !dbg !136
  br label %for.cond48, !dbg !139

for.cond48:                                       ; preds = %for.inc61, %for.body47
  %17 = load i32, i32* %i, align 4, !dbg !140
  %cmp49 = icmp slt i32 %17, 4, !dbg !142
  br i1 %cmp49, label %for.body51, label %for.end63, !dbg !143

for.body51:                                       ; preds = %for.cond48
  %18 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !144
  %19 = load i32, i32* %cpu, align 4, !dbg !145
  %idxprom52 = sext i32 %19 to i64, !dbg !144
  %arrayidx53 = getelementptr %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %18, i64 %idxprom52, !dbg !144
  %time54 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %arrayidx53, i32 0, i32 2, !dbg !146
  %20 = load i32, i32* %i, align 4, !dbg !147
  %idxprom55 = sext i32 %20 to i64, !dbg !144
  %arrayidx56 = getelementptr [4 x i64], [4 x i64]* %time54, i64 0, i64 %idxprom55, !dbg !144
  %21 = load i64, i64* %arrayidx56, align 8, !dbg !144
  %22 = load i32, i32* %cpu, align 4, !dbg !148
  br label %do.body, !dbg !150

do.body:                                          ; preds = %for.body51
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !152, metadata !DIExpression()), !dbg !156
  store i8* null, i8** %__vpp_verify, align 8, !dbg !156
  %23 = load i8*, i8** %__vpp_verify, align 8, !dbg !156
  br label %do.end, !dbg !156

do.end:                                           ; preds = %do.body
  store [4 x i64]* @old_runstate_time, [4 x i64]** %tmp58, align 8, !dbg !156
  %24 = load [4 x i64]*, [4 x i64]** %tmp58, align 8, !dbg !150
  store [4 x i64]* %24, [4 x i64]** %tmp57, align 8, !dbg !148
  %25 = load [4 x i64]*, [4 x i64]** %tmp57, align 8, !dbg !148
  %26 = load i32, i32* %i, align 4, !dbg !157
  %idxprom59 = sext i32 %26 to i64, !dbg !158
  %arrayidx60 = getelementptr [4 x i64], [4 x i64]* %25, i64 0, i64 %idxprom59, !dbg !158
  %27 = load i64, i64* %arrayidx60, align 8, !dbg !159
  %add = add i64 %27, %21, !dbg !159
  store i64 %add, i64* %arrayidx60, align 8, !dbg !159
  br label %for.inc61, !dbg !158

for.inc61:                                        ; preds = %do.end
  %28 = load i32, i32* %i, align 4, !dbg !160
  %inc62 = add i32 %28, 1, !dbg !160
  store i32 %inc62, i32* %i, align 4, !dbg !160
  br label %for.cond48, !dbg !161, !llvm.loop !162

for.end63:                                        ; preds = %for.cond48
  br label %for.inc64, !dbg !164

for.inc64:                                        ; preds = %for.end63
  %29 = load i32, i32* %cpu, align 4, !dbg !134
  %inc65 = add i32 %29, 1, !dbg !134
  store i32 %inc65, i32* %cpu, align 4, !dbg !134
  br label %for.cond44, !dbg !134, !llvm.loop !165

for.end66:                                        ; preds = %for.cond44
  br label %sw.epilog, !dbg !167

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !168

sw.epilog:                                        ; preds = %sw.default, %for.end66, %for.end
  %30 = load i32, i32* %action.addr, align 4, !dbg !169
  %cmp67 = icmp ne i32 %30, -1, !dbg !171
  br i1 %cmp67, label %land.lhs.true, label %if.end71, !dbg !172

land.lhs.true:                                    ; preds = %sw.epilog
  %31 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !173
  %tobool69 = icmp ne %struct.vcpu_runstate_info* %31, null, !dbg !173
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !174

if.then70:                                        ; preds = %land.lhs.true
  %32 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !175
  %33 = bitcast %struct.vcpu_runstate_info* %32 to i8*, !dbg !175
  call void @kfree(i8* %33) #12, !dbg !177
  store %struct.vcpu_runstate_info* null, %struct.vcpu_runstate_info** @xen_manage_runstate_time.runstate_delta, align 8, !dbg !178
  br label %if.end71, !dbg !179

if.end71:                                         ; preds = %if.then25, %if.then41, %if.then70, %land.lhs.true, %sw.epilog
  ret void, !dbg !180
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !181 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !188, metadata !DIExpression()), !dbg !195
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !204, metadata !DIExpression()), !dbg !205
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !206, metadata !DIExpression()), !dbg !207
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !208, metadata !DIExpression()), !dbg !209
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !210, metadata !DIExpression()), !dbg !214
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !216, metadata !DIExpression()), !dbg !220
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !222, metadata !DIExpression()), !dbg !226
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !231, metadata !DIExpression()), !dbg !232
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !233, metadata !DIExpression()), !dbg !234
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !235, metadata !DIExpression()), !dbg !236
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !237, metadata !DIExpression()), !dbg !238
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !239, metadata !DIExpression()), !dbg !240
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !241, metadata !DIExpression()), !dbg !242
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !243, metadata !DIExpression()), !dbg !244
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !245, metadata !DIExpression()), !dbg !246
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !247, metadata !DIExpression()), !dbg !248
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !249, metadata !DIExpression()), !dbg !250
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !255, metadata !DIExpression()), !dbg !258
  %0 = load i64, i64* %n.addr, align 8, !dbg !258
  store i64 %0, i64* %__a, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !259, metadata !DIExpression()), !dbg !258
  %1 = load i64, i64* %size.addr, align 8, !dbg !258
  store i64 %1, i64* %__b, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !260, metadata !DIExpression()), !dbg !258
  store i64* %bytes, i64** %__d, align 8, !dbg !258
  %cmp = icmp eq i64* %__a, %__b, !dbg !258
  %conv = zext i1 %cmp to i32, !dbg !258
  %2 = load i64*, i64** %__d, align 8, !dbg !258
  %cmp1 = icmp eq i64* %__a, %2, !dbg !258
  %conv2 = zext i1 %cmp1 to i32, !dbg !258
  %3 = load i64, i64* %__a, align 8, !dbg !258
  %4 = load i64, i64* %__b, align 8, !dbg !258
  %5 = load i64*, i64** %__d, align 8, !dbg !258
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !258
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !258
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !258
  store i64 %8, i64* %5, align 8, !dbg !258
  %frombool = zext i1 %7 to i8, !dbg !258
  store i8 %frombool, i8* %tmp, align 1, !dbg !258
  %9 = load i8, i8* %tmp, align 1, !dbg !258
  %tobool = trunc i8 %9 to i1, !dbg !258
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #12, !dbg !262
  %lnot = xor i1 %call, true, !dbg !262
  %lnot3 = xor i1 %lnot, true, !dbg !262
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !262
  %conv4 = sext i32 %lnot.ext to i64, !dbg !262
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !262
  br i1 %tobool5, label %if.then, label %if.end, !dbg !263

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !264
  br label %return, !dbg !264

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !265
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !266
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !267

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !268
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !269
  br i1 %13, label %if.then6, label %if.end8, !dbg !270

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !271
  %15 = load i32, i32* %flags.addr, align 4, !dbg !272
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !273
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #10, !dbg !274
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !275

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !276
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !277
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !278

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !279
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !280
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !281
  %call.i.i = call i32 @get_order(i64 %21) #13, !dbg !282
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !240
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !283
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !284
  %24 = load i32, i32* %order.i.i, align 4, !dbg !285
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !286
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !287
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !288
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #14, !dbg !289
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !289
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !289
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !289
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !289
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !290
  br label %kmalloc.exit, !dbg !290

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !291
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !292
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !292
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !294

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !295
  br label %kmalloc_index.exit.i, !dbg !295

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !296
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !298
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !299

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !300
  br label %kmalloc_index.exit.i, !dbg !300

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !301
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !303
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !304

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !305
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !306
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !307

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !308
  br label %kmalloc_index.exit.i, !dbg !308

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !309
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !311
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !312

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !313
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !314
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !315

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !316
  br label %kmalloc_index.exit.i, !dbg !316

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !317
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !319
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !320

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !321
  br label %kmalloc_index.exit.i, !dbg !321

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !322
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !324
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !325

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !326
  br label %kmalloc_index.exit.i, !dbg !326

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !327
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !329
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !330

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !331
  br label %kmalloc_index.exit.i, !dbg !331

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !332
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !334
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !335

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !336
  br label %kmalloc_index.exit.i, !dbg !336

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !337
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !339
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !340

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !341
  br label %kmalloc_index.exit.i, !dbg !341

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !342
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !344
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !345

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !346
  br label %kmalloc_index.exit.i, !dbg !346

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !347
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !349
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !350

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !351
  br label %kmalloc_index.exit.i, !dbg !351

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !352
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !354
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !355

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !356
  br label %kmalloc_index.exit.i, !dbg !356

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !357
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !359
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !360

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !361
  br label %kmalloc_index.exit.i, !dbg !361

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !362
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !364
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !365

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !366
  br label %kmalloc_index.exit.i, !dbg !366

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !367
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !369
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !370

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !371
  br label %kmalloc_index.exit.i, !dbg !371

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !372
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !374
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !375

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !376
  br label %kmalloc_index.exit.i, !dbg !376

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !377
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !379
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !380

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !381
  br label %kmalloc_index.exit.i, !dbg !381

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !382
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !384
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !385

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !386
  br label %kmalloc_index.exit.i, !dbg !386

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !387
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !389
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !390

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !391
  br label %kmalloc_index.exit.i, !dbg !391

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !392
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !394
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !395

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !396
  br label %kmalloc_index.exit.i, !dbg !396

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !397
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !399
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !400

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !401
  br label %kmalloc_index.exit.i, !dbg !401

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !402
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !404
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !405

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !406
  br label %kmalloc_index.exit.i, !dbg !406

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !407
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !409
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !410

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !411
  br label %kmalloc_index.exit.i, !dbg !411

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !412
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !414
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !415

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !416
  br label %kmalloc_index.exit.i, !dbg !416

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !417
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !419
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !420

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !421
  br label %kmalloc_index.exit.i, !dbg !421

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !422
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !424
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !425

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !426
  br label %kmalloc_index.exit.i, !dbg !426

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !427
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !429
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !430

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !431
  br label %kmalloc_index.exit.i, !dbg !431

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !432
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !434
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !435

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !436
  br label %kmalloc_index.exit.i, !dbg !436

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !437, !srcloc !440
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #10, !dbg !441, !srcloc !444
  unreachable, !dbg !445

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !446
  store i32 %59, i32* %index.i, align 4, !dbg !447
  %60 = load i32, i32* %index.i, align 4, !dbg !448
  %tobool.i = icmp ne i32 %60, 0, !dbg !448
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !450

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !451
  br label %kmalloc.exit, !dbg !451

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !452
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !453
  %and.i.i = and i32 %62, 17, !dbg !453
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !453
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !453
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !453
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !453
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !455

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !456
  br label %kmalloc_type.exit.i, !dbg !456

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !457
  %and2.i.i = and i32 %63, 1, !dbg !458
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !457
  %64 = zext i1 %tobool3.i.i to i64, !dbg !457
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !457
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !459
  br label %kmalloc_type.exit.i, !dbg !459

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !460
  %idxprom.i = zext i32 %65 to i64, !dbg !461
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !461
  %66 = load i32, i32* %index.i, align 4, !dbg !462
  %idxprom6.i = zext i32 %66 to i64, !dbg !461
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !461
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !461
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !463
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !464
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !465
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !466
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #14, !dbg !467
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !467
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !467
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !467
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !467
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !209
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !468
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !469
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !470
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !471
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #14, !dbg !472
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !473
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !474
  store i8* %76, i8** %retval.i, align 8, !dbg !475
  br label %kmalloc.exit, !dbg !475

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !476
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !477
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #14, !dbg !478
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !478
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !478
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !478
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !478
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !479
  br label %kmalloc.exit, !dbg !479

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !480
  store i8* %79, i8** %retval, align 8, !dbg !481
  br label %return, !dbg !481

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !482
  %81 = load i32, i32* %flags.addr, align 4, !dbg !483
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #12, !dbg !484
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !484
  %maskedptr = and i64 %ptrint, 7, !dbg !484
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !484
  call void @llvm.assume(i1 %maskcond), !dbg !484
  store i8* %call9, i8** %retval, align 8, !dbg !485
  br label %return, !dbg !485

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !486
  ret i8* %82, !dbg !486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_get_runstate_snapshot_cpu_delta(%struct.vcpu_runstate_info* %res, i32 %cpu) #0 !dbg !487 {
entry:
  %res.addr = alloca %struct.vcpu_runstate_info*, align 8
  %cpu.addr = alloca i32, align 4
  %state_time = alloca i64, align 8
  %state = alloca %struct.vcpu_runstate_info*, align 8
  %tmp = alloca %struct.vcpu_runstate_info*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp3 = alloca %struct.vcpu_runstate_info*, align 8
  store %struct.vcpu_runstate_info* %res, %struct.vcpu_runstate_info** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vcpu_runstate_info** %res.addr, metadata !490, metadata !DIExpression()), !dbg !491
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i64* %state_time, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.declare(metadata %struct.vcpu_runstate_info** %state, metadata !496, metadata !DIExpression()), !dbg !497
  br label %do.body, !dbg !498

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !499

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !501
  br label %do.body1, !dbg !503

do.body1:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !505, metadata !DIExpression()), !dbg !507
  store i8* null, i8** %__vpp_verify, align 8, !dbg !507
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !507
  br label %do.end2, !dbg !507

do.end2:                                          ; preds = %do.body1
  store %struct.vcpu_runstate_info* @xen_runstate, %struct.vcpu_runstate_info** %tmp3, align 8, !dbg !507
  %2 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %tmp3, align 8, !dbg !503
  store %struct.vcpu_runstate_info* %2, %struct.vcpu_runstate_info** %tmp, align 8, !dbg !501
  %3 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %tmp, align 8, !dbg !501
  store %struct.vcpu_runstate_info* %3, %struct.vcpu_runstate_info** %state, align 8, !dbg !508
  br label %do.body4, !dbg !509

do.body4:                                         ; preds = %lor.end, %do.end2
  %4 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %state, align 8, !dbg !510
  %state_entry_time = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %4, i32 0, i32 1, !dbg !512
  %call = call i64 @get64(i64* %state_entry_time) #12, !dbg !513
  store i64 %call, i64* %state_time, align 8, !dbg !514
  call void asm sideeffect "lfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !515, !srcloc !516
  %5 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %res.addr, align 8, !dbg !517
  %6 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %state, align 8, !dbg !518
  %7 = bitcast %struct.vcpu_runstate_info* %5 to i8*, !dbg !518
  %8 = bitcast %struct.vcpu_runstate_info* %6 to i8*, !dbg !518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 48, i1 true), !dbg !518
  call void asm sideeffect "lfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !519, !srcloc !520
  br label %do.cond, !dbg !521

do.cond:                                          ; preds = %do.body4
  %9 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %state, align 8, !dbg !522
  %state_entry_time5 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %9, i32 0, i32 1, !dbg !523
  %call6 = call i64 @get64(i64* %state_entry_time5) #12, !dbg !524
  %10 = load i64, i64* %state_time, align 8, !dbg !525
  %cmp = icmp ne i64 %call6, %10, !dbg !526
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !527

lor.rhs:                                          ; preds = %do.cond
  %11 = load i64, i64* %state_time, align 8, !dbg !528
  %and = and i64 %11, -9223372036854775808, !dbg !529
  %tobool = icmp ne i64 %and, 0, !dbg !527
  br label %lor.end, !dbg !527

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %12 = phi i1 [ true, %do.cond ], [ %tobool, %lor.rhs ]
  br i1 %12, label %do.body4, label %do.end7, !dbg !521, !llvm.loop !530

do.end7:                                          ; preds = %lor.end
  ret void, !dbg !532
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_get_runstate_snapshot(%struct.vcpu_runstate_info* %res) #0 !dbg !533 {
entry:
  %res.addr = alloca %struct.vcpu_runstate_info*, align 8
  store %struct.vcpu_runstate_info* %res, %struct.vcpu_runstate_info** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vcpu_runstate_info** %res.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %res.addr, align 8, !dbg !538
  call void @xen_get_runstate_snapshot_cpu(%struct.vcpu_runstate_info* %0, i32 0) #12, !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_get_runstate_snapshot_cpu(%struct.vcpu_runstate_info* %res, i32 %cpu) #0 !dbg !541 {
entry:
  %res.addr = alloca %struct.vcpu_runstate_info*, align 8
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca [4 x i64]*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca [4 x i64]*, align 8
  store %struct.vcpu_runstate_info* %res, %struct.vcpu_runstate_info** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vcpu_runstate_info** %res.addr, metadata !542, metadata !DIExpression()), !dbg !543
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata i32* %i, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %res.addr, align 8, !dbg !548
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !549
  call void @xen_get_runstate_snapshot_cpu_delta(%struct.vcpu_runstate_info* %0, i32 %1) #12, !dbg !550
  store i32 0, i32* %i, align 4, !dbg !551
  br label %for.cond, !dbg !553

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !554
  %cmp = icmp slt i32 %2, 4, !dbg !556
  br i1 %cmp, label %for.body, label %for.end, !dbg !557

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %cpu.addr, align 4, !dbg !558
  br label %do.body, !dbg !560

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !562, metadata !DIExpression()), !dbg !564
  store i8* null, i8** %__vpp_verify, align 8, !dbg !564
  %4 = load i8*, i8** %__vpp_verify, align 8, !dbg !564
  br label %do.end, !dbg !564

do.end:                                           ; preds = %do.body
  store [4 x i64]* @old_runstate_time, [4 x i64]** %tmp1, align 8, !dbg !564
  %5 = load [4 x i64]*, [4 x i64]** %tmp1, align 8, !dbg !560
  store [4 x i64]* %5, [4 x i64]** %tmp, align 8, !dbg !558
  %6 = load [4 x i64]*, [4 x i64]** %tmp, align 8, !dbg !558
  %7 = load i32, i32* %i, align 4, !dbg !565
  %idxprom = sext i32 %7 to i64, !dbg !566
  %arrayidx = getelementptr [4 x i64], [4 x i64]* %6, i64 0, i64 %idxprom, !dbg !566
  %8 = load i64, i64* %arrayidx, align 8, !dbg !566
  %9 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %res.addr, align 8, !dbg !567
  %time = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %9, i32 0, i32 2, !dbg !568
  %10 = load i32, i32* %i, align 4, !dbg !569
  %idxprom2 = sext i32 %10 to i64, !dbg !567
  %arrayidx3 = getelementptr [4 x i64], [4 x i64]* %time, i64 0, i64 %idxprom2, !dbg !567
  %11 = load i64, i64* %arrayidx3, align 8, !dbg !570
  %add = add i64 %11, %8, !dbg !570
  store i64 %add, i64* %arrayidx3, align 8, !dbg !570
  br label %for.inc, !dbg !567

for.inc:                                          ; preds = %do.end
  %12 = load i32, i32* %i, align 4, !dbg !571
  %inc = add i32 %12, 1, !dbg !571
  store i32 %inc, i32* %i, align 4, !dbg !571
  br label %for.cond, !dbg !572, !llvm.loop !573

for.end:                                          ; preds = %for.cond
  ret void, !dbg !575
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @xen_vcpu_stolen(i32 %vcpu) #0 !dbg !576 {
entry:
  %vcpu.addr = alloca i32, align 4
  %tmp = alloca %struct.vcpu_runstate_info*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.vcpu_runstate_info*, align 8
  store i32 %vcpu, i32* %vcpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vcpu.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i32, i32* %vcpu.addr, align 4, !dbg !581
  br label %do.body, !dbg !583

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !585, metadata !DIExpression()), !dbg !587
  store i8* null, i8** %__vpp_verify, align 8, !dbg !587
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !587
  br label %do.end, !dbg !587

do.end:                                           ; preds = %do.body
  store %struct.vcpu_runstate_info* @xen_runstate, %struct.vcpu_runstate_info** %tmp1, align 8, !dbg !587
  %2 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %tmp1, align 8, !dbg !583
  store %struct.vcpu_runstate_info* %2, %struct.vcpu_runstate_info** %tmp, align 8, !dbg !581
  %3 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %tmp, align 8, !dbg !581
  %state = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %3, i32 0, i32 0, !dbg !588
  %4 = load i32, i32* %state, align 8, !dbg !588
  %cmp = icmp eq i32 %4, 1, !dbg !589
  ret i1 %cmp, !dbg !590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @xen_steal_clock(i32 %cpu) #0 !dbg !591 {
entry:
  %cpu.addr = alloca i32, align 4
  %state = alloca %struct.vcpu_runstate_info, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata %struct.vcpu_runstate_info* %state, metadata !596, metadata !DIExpression()), !dbg !597
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !598
  call void @xen_get_runstate_snapshot_cpu(%struct.vcpu_runstate_info* %state, i32 %0) #12, !dbg !599
  %time = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %state, i32 0, i32 2, !dbg !600
  %arrayidx = getelementptr [4 x i64], [4 x i64]* %time, i64 0, i64 1, !dbg !601
  %1 = load i64, i64* %arrayidx, align 8, !dbg !601
  %time1 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %state, i32 0, i32 2, !dbg !602
  %arrayidx2 = getelementptr [4 x i64], [4 x i64]* %time1, i64 0, i64 3, !dbg !603
  %2 = load i64, i64* %arrayidx2, align 8, !dbg !603
  %add = add i64 %1, %2, !dbg !604
  ret i64 %add, !dbg !605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_setup_runstate_info(i32 %cpu) #0 !dbg !606 {
entry:
  %cpu.addr = alloca i32, align 4
  %area = alloca %struct.vcpu_register_runstate_memory_area, align 8
  %tmp = alloca %struct.vcpu_runstate_info*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.vcpu_runstate_info*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !607, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.declare(metadata %struct.vcpu_register_runstate_memory_area* %area, metadata !609, metadata !DIExpression()), !dbg !619
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !620
  br label %do.body, !dbg !622

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !624, metadata !DIExpression()), !dbg !626
  store i8* null, i8** %__vpp_verify, align 8, !dbg !626
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !626
  br label %do.end, !dbg !626

do.end:                                           ; preds = %do.body
  store %struct.vcpu_runstate_info* @xen_runstate, %struct.vcpu_runstate_info** %tmp1, align 8, !dbg !626
  %2 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %tmp1, align 8, !dbg !622
  store %struct.vcpu_runstate_info* %2, %struct.vcpu_runstate_info** %tmp, align 8, !dbg !620
  %3 = load %struct.vcpu_runstate_info*, %struct.vcpu_runstate_info** %tmp, align 8, !dbg !620
  %addr = getelementptr inbounds %struct.vcpu_register_runstate_memory_area, %struct.vcpu_register_runstate_memory_area* %area, i32 0, i32 0, !dbg !627
  %v = bitcast %union.anon* %addr to %struct.vcpu_runstate_info**, !dbg !628
  store %struct.vcpu_runstate_info* %3, %struct.vcpu_runstate_info** %v, align 8, !dbg !629
  %4 = load i32, i32* %cpu.addr, align 4, !dbg !630
  %call = call i32 @xen_vcpu_nr(i32 %4) #12, !dbg !632
  %5 = bitcast %struct.vcpu_register_runstate_memory_area* %area to i8*, !dbg !633
  %call2 = call i32 @HYPERVISOR_vcpu_op(i32 5, i32 %call, i8* %5) #12, !dbg !634
  %tobool = icmp ne i32 %call2, 0, !dbg !634
  br i1 %tobool, label %if.then, label %if.end, !dbg !635

if.then:                                          ; preds = %do.end
  br label %do.body3, !dbg !636

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !637

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !639

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !637

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 168, i32 0, i64 12) #10, !dbg !641, !srcloc !643
  br label %do.end7, !dbg !641

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !637

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 225) #10, !dbg !644, !srcloc !647
  unreachable, !dbg !648

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !637

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !637

if.end:                                           ; preds = %do.end10, %do.end
  ret void, !dbg !649
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_vcpu_op(i32 %cmd, i32 %vcpuid, i8* %extra_args) #0 !dbg !650 {
entry:
  %cmd.addr = alloca i32, align 4
  %vcpuid.addr = alloca i32, align 4
  %extra_args.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !654, metadata !DIExpression()), !dbg !655
  store i32 %vcpuid, i32* %vcpuid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vcpuid.addr, metadata !656, metadata !DIExpression()), !dbg !657
  store i8* %extra_args, i8** %extra_args.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %extra_args.addr, metadata !658, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !663, metadata !DIExpression()), !dbg !662
  %0 = load i64, i64* %__arg1, align 8, !dbg !662
  store i64 %0, i64* %__arg1, align 8, !dbg !662
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !664, metadata !DIExpression()), !dbg !662
  %1 = load i64, i64* %__arg2, align 8, !dbg !662
  store i64 %1, i64* %__arg2, align 8, !dbg !662
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !665, metadata !DIExpression()), !dbg !662
  %2 = load i64, i64* %__arg3, align 8, !dbg !662
  store i64 %2, i64* %__arg3, align 8, !dbg !662
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !666, metadata !DIExpression()), !dbg !662
  %3 = load i64, i64* %__arg4, align 8, !dbg !662
  store i64 %3, i64* %__arg4, align 8, !dbg !662
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !667, metadata !DIExpression()), !dbg !662
  %4 = load i64, i64* %__arg5, align 8, !dbg !662
  store i64 %4, i64* %__arg5, align 8, !dbg !662
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !662
  %conv = sext i32 %5 to i64, !dbg !662
  store i64 %conv, i64* %__arg1, align 8, !dbg !662
  %6 = load i32, i32* %vcpuid.addr, align 4, !dbg !662
  %conv1 = sext i32 %6 to i64, !dbg !662
  store i64 %conv1, i64* %__arg2, align 8, !dbg !662
  %7 = load i8*, i8** %extra_args.addr, align 8, !dbg !662
  %8 = ptrtoint i8* %7 to i64, !dbg !662
  store i64 %8, i64* %__arg3, align 8, !dbg !662
  %9 = call i64 @llvm.read_register.i64(metadata !74), !dbg !662
  %10 = load i64, i64* %__arg1, align 8, !dbg !662
  %11 = load i64, i64* %__arg2, align 8, !dbg !662
  %12 = load i64, i64* %__arg3, align 8, !dbg !662
  %13 = call { i64, i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${5:c}", "={rax},={rsp},={rdi},={rsi},={rdx},i,1,2,3,4,~{memory},~{r8},~{r10},~{dirflag},~{fpsr},~{flags}"(i64 768, i64 %9, i64 %10, i64 %11, i64 %12) #10, !dbg !662, !srcloc !668
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %13, 0, !dbg !662
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %13, 1, !dbg !662
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %13, 2, !dbg !662
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %13, 3, !dbg !662
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %13, 4, !dbg !662
  store i64 %asmresult, i64* %__res, align 8, !dbg !662
  call void @llvm.write_register.i64(metadata !74, i64 %asmresult2), !dbg !662
  store i64 %asmresult3, i64* %__arg1, align 8, !dbg !662
  store i64 %asmresult4, i64* %__arg2, align 8, !dbg !662
  store i64 %asmresult5, i64* %__arg3, align 8, !dbg !662
  %14 = load i64, i64* %__res, align 8, !dbg !662
  %conv6 = trunc i64 %14 to i32, !dbg !662
  store i32 %conv6, i32* %tmp, align 4, !dbg !662
  %15 = load i32, i32* %tmp, align 4, !dbg !662
  ret i32 %15, !dbg !669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_vcpu_nr(i32 %cpu) #0 !dbg !670 {
entry:
  %cpu.addr = alloca i32, align 4
  %tmp = alloca i32*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca i32*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !674, metadata !DIExpression()), !dbg !675
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !676
  br label %do.body, !dbg !678

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !680, metadata !DIExpression()), !dbg !682
  store i8* null, i8** %__vpp_verify, align 8, !dbg !682
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !682
  br label %do.end, !dbg !682

do.end:                                           ; preds = %do.body
  store i32* @xen_vcpu_id, i32** %tmp1, align 8, !dbg !682
  %2 = load i32*, i32** %tmp1, align 8, !dbg !678
  store i32* %2, i32** %tmp, align 8, !dbg !676
  %3 = load i32*, i32** %tmp, align 8, !dbg !676
  %4 = load i32, i32* %3, align 4, !dbg !683
  ret i32 %4, !dbg !684
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_time_setup_guest() #5 section ".init.text" !dbg !685 {
entry:
  %xen_runstate_remote = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %xen_runstate_remote, metadata !688, metadata !DIExpression()), !dbg !689
  %call = call i32 @HYPERVISOR_vm_assist(i32 0, i32 5) #12, !dbg !690
  %tobool = icmp ne i32 %call, 0, !dbg !691
  %lnot = xor i1 %tobool, true, !dbg !691
  %frombool = zext i1 %lnot to i8, !dbg !692
  store i8 %frombool, i8* %xen_runstate_remote, align 1, !dbg !692
  store i64 (i32)* @xen_steal_clock, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 1, i32 1), align 8, !dbg !693
  call void @static_key_slow_inc(%struct.static_key* @paravirt_steal_enabled) #12, !dbg !694
  %0 = load i8, i8* %xen_runstate_remote, align 1, !dbg !695
  %tobool1 = trunc i8 %0 to i1, !dbg !695
  br i1 %tobool1, label %if.then, label %if.end, !dbg !697

if.then:                                          ; preds = %entry
  call void @static_key_slow_inc(%struct.static_key* @paravirt_steal_rq_enabled) #12, !dbg !698
  br label %if.end, !dbg !698

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_vm_assist(i32 %cmd, i32 %type) #0 !dbg !700 {
entry:
  %cmd.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !703, metadata !DIExpression()), !dbg !704
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !707, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !710, metadata !DIExpression()), !dbg !709
  %0 = load i64, i64* %__arg1, align 8, !dbg !709
  store i64 %0, i64* %__arg1, align 8, !dbg !709
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !711, metadata !DIExpression()), !dbg !709
  %1 = load i64, i64* %__arg2, align 8, !dbg !709
  store i64 %1, i64* %__arg2, align 8, !dbg !709
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !712, metadata !DIExpression()), !dbg !709
  %2 = load i64, i64* %__arg3, align 8, !dbg !709
  store i64 %2, i64* %__arg3, align 8, !dbg !709
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !713, metadata !DIExpression()), !dbg !709
  %3 = load i64, i64* %__arg4, align 8, !dbg !709
  store i64 %3, i64* %__arg4, align 8, !dbg !709
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !714, metadata !DIExpression()), !dbg !709
  %4 = load i64, i64* %__arg5, align 8, !dbg !709
  store i64 %4, i64* %__arg5, align 8, !dbg !709
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !709
  %conv = zext i32 %5 to i64, !dbg !709
  store i64 %conv, i64* %__arg1, align 8, !dbg !709
  %6 = load i32, i32* %type.addr, align 4, !dbg !709
  %conv1 = zext i32 %6 to i64, !dbg !709
  store i64 %conv1, i64* %__arg2, align 8, !dbg !709
  %7 = call i64 @llvm.read_register.i64(metadata !74), !dbg !709
  %8 = load i64, i64* %__arg1, align 8, !dbg !709
  %9 = load i64, i64* %__arg2, align 8, !dbg !709
  %10 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 672, i64 %7, i64 %8, i64 %9) #10, !dbg !709, !srcloc !715
  %asmresult = extractvalue { i64, i64, i64, i64 } %10, 0, !dbg !709
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %10, 1, !dbg !709
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %10, 2, !dbg !709
  %asmresult4 = extractvalue { i64, i64, i64, i64 } %10, 3, !dbg !709
  store i64 %asmresult, i64* %__res, align 8, !dbg !709
  call void @llvm.write_register.i64(metadata !74, i64 %asmresult2), !dbg !709
  store i64 %asmresult3, i64* %__arg1, align 8, !dbg !709
  store i64 %asmresult4, i64* %__arg2, align 8, !dbg !709
  %11 = load i64, i64* %__res, align 8, !dbg !709
  %conv5 = trunc i64 %11 to i32, !dbg !709
  store i32 %conv5, i32* %tmp, align 4, !dbg !709
  %12 = load i32, i32* %tmp, align 4, !dbg !709
  ret i32 %12, !dbg !716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @static_key_slow_inc(%struct.static_key* %key) #0 !dbg !717 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !729, metadata !DIExpression()), !dbg !735
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !740, metadata !DIExpression()), !dbg !748
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !750, metadata !DIExpression()), !dbg !751
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !752, metadata !DIExpression()), !dbg !753
  %key.addr = alloca %struct.static_key*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.static_key* %key, %struct.static_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.static_key** %key.addr, metadata !754, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !756, metadata !DIExpression()), !dbg !758
  %0 = load i8, i8* @static_key_initialized, align 1, !dbg !758
  %tobool = trunc i8 %0 to i1, !dbg !758
  %lnot = xor i1 %tobool, true, !dbg !758
  %lnot1 = xor i1 %lnot, true, !dbg !758
  %lnot2 = xor i1 %lnot1, true, !dbg !758
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !758
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !758
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !759
  %tobool3 = icmp ne i32 %1, 0, !dbg !759
  %lnot4 = xor i1 %tobool3, true, !dbg !759
  %lnot6 = xor i1 %lnot4, true, !dbg !759
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !759
  %conv = sext i32 %lnot.ext7 to i64, !dbg !759
  %tobool8 = icmp ne i64 %conv, 0, !dbg !759
  br i1 %tobool8, label %if.then, label %if.end, !dbg !758

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !759

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !761

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !763

do.end:                                           ; preds = %do.body9
  %2 = load %struct.static_key*, %struct.static_key** %key.addr, align 8, !dbg !761
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.static_key_slow_inc, i64 0, i64 0), %struct.static_key* %2) #12, !dbg !761
  br label %do.body10, !dbg !761

do.body10:                                        ; preds = %do.end
  br label %do.body11, !dbg !765

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !767

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !765

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 278, i32 2313, i64 12) #10, !dbg !769, !srcloc !771
  br label %do.end14, !dbg !769

do.end14:                                         ; preds = %do.body13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 32) #10, !dbg !772, !srcloc !774
  br label %do.body15, !dbg !765

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !775

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !765

do.end17:                                         ; preds = %do.end16
  br label %do.body18, !dbg !761

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !777

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !761

do.end20:                                         ; preds = %do.end19
  br label %if.end, !dbg !761

if.end:                                           ; preds = %do.end20, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !758
  %tobool21 = icmp ne i32 %3, 0, !dbg !758
  %lnot22 = xor i1 %tobool21, true, !dbg !758
  %lnot24 = xor i1 %lnot22, true, !dbg !758
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !758
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !758
  store i64 %conv26, i64* %tmp, align 8, !dbg !759
  %4 = load i64, i64* %tmp, align 8, !dbg !758
  %5 = load %struct.static_key*, %struct.static_key** %key.addr, align 8, !dbg !779
  %enabled = getelementptr inbounds %struct.static_key, %struct.static_key* %5, i32 0, i32 0, !dbg !780
  store %struct.atomic_t* %enabled, %struct.atomic_t** %v.addr.i, align 8
  %6 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !781
  %7 = bitcast %struct.atomic_t* %6 to i8*, !dbg !781
  store i8* %7, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %8 = load i8*, i8** %v.addr.i.i, align 8, !dbg !782
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !783
  %conv.i.i = trunc i64 %9 to i32, !dbg !783
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %8, i32 %conv.i.i) #14, !dbg !784
  %10 = load i8*, i8** %v.addr.i.i, align 8, !dbg !785
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !785
  call void @kcsan_check_access(i8* %10, i64 %11, i32 7) #14, !dbg !785
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !786
  store %struct.atomic_t* %12, %struct.atomic_t** %v.addr.i1.i, align 8
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !787
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %13, i32 0, i32 0, !dbg !788
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #10, !dbg !789, !srcloc !790
  ret void, !dbg !791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !792 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !796, metadata !DIExpression()), !dbg !797
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !798
  %tobool = trunc i8 %0 to i1, !dbg !798
  %lnot = xor i1 %tobool, true, !dbg !798
  %lnot1 = xor i1 %lnot, true, !dbg !798
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !798
  %conv = sext i32 %lnot.ext to i64, !dbg !798
  %tobool2 = icmp ne i64 %conv, 0, !dbg !798
  ret i1 %tobool2, !dbg !799
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !800 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !804, metadata !DIExpression()), !dbg !809
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !811, metadata !DIExpression()), !dbg !812
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !813, metadata !DIExpression()), !dbg !814
  %0 = load i64, i64* %size.addr, align 8, !dbg !815
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !817
  br i1 %1, label %if.then, label %if.end447, !dbg !818

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !819
  %tobool = icmp ne i64 %2, 0, !dbg !819
  br i1 %tobool, label %if.end, label %if.then1, !dbg !822

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !823
  br label %return, !dbg !823

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !824
  %cmp = icmp ult i64 %3, 4096, !dbg !826
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !827

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !828
  br label %return, !dbg !828

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub = sub i64 %4, 1, !dbg !829
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !829
  br i1 %5, label %cond.true, label %cond.false442, !dbg !829

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub4 = sub i64 %6, 1, !dbg !829
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !829
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !829

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub6 = sub i64 %8, 1, !dbg !829
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !829
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !829

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !829

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub9 = sub i64 %9, 1, !dbg !829
  %and = and i64 %sub9, -9223372036854775808, !dbg !829
  %tobool10 = icmp ne i64 %and, 0, !dbg !829
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !829

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !829

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub13 = sub i64 %10, 1, !dbg !829
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !829
  %tobool15 = icmp ne i64 %and14, 0, !dbg !829
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !829

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !829

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub18 = sub i64 %11, 1, !dbg !829
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !829
  %tobool20 = icmp ne i64 %and19, 0, !dbg !829
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !829

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !829

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub23 = sub i64 %12, 1, !dbg !829
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !829
  %tobool25 = icmp ne i64 %and24, 0, !dbg !829
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !829

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !829

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub28 = sub i64 %13, 1, !dbg !829
  %and29 = and i64 %sub28, 576460752303423488, !dbg !829
  %tobool30 = icmp ne i64 %and29, 0, !dbg !829
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !829

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !829

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub33 = sub i64 %14, 1, !dbg !829
  %and34 = and i64 %sub33, 288230376151711744, !dbg !829
  %tobool35 = icmp ne i64 %and34, 0, !dbg !829
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !829

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !829

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub38 = sub i64 %15, 1, !dbg !829
  %and39 = and i64 %sub38, 144115188075855872, !dbg !829
  %tobool40 = icmp ne i64 %and39, 0, !dbg !829
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !829

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !829

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub43 = sub i64 %16, 1, !dbg !829
  %and44 = and i64 %sub43, 72057594037927936, !dbg !829
  %tobool45 = icmp ne i64 %and44, 0, !dbg !829
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !829

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !829

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub48 = sub i64 %17, 1, !dbg !829
  %and49 = and i64 %sub48, 36028797018963968, !dbg !829
  %tobool50 = icmp ne i64 %and49, 0, !dbg !829
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !829

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !829

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub53 = sub i64 %18, 1, !dbg !829
  %and54 = and i64 %sub53, 18014398509481984, !dbg !829
  %tobool55 = icmp ne i64 %and54, 0, !dbg !829
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !829

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !829

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub58 = sub i64 %19, 1, !dbg !829
  %and59 = and i64 %sub58, 9007199254740992, !dbg !829
  %tobool60 = icmp ne i64 %and59, 0, !dbg !829
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !829

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !829

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub63 = sub i64 %20, 1, !dbg !829
  %and64 = and i64 %sub63, 4503599627370496, !dbg !829
  %tobool65 = icmp ne i64 %and64, 0, !dbg !829
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !829

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !829

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub68 = sub i64 %21, 1, !dbg !829
  %and69 = and i64 %sub68, 2251799813685248, !dbg !829
  %tobool70 = icmp ne i64 %and69, 0, !dbg !829
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !829

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !829

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub73 = sub i64 %22, 1, !dbg !829
  %and74 = and i64 %sub73, 1125899906842624, !dbg !829
  %tobool75 = icmp ne i64 %and74, 0, !dbg !829
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !829

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !829

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub78 = sub i64 %23, 1, !dbg !829
  %and79 = and i64 %sub78, 562949953421312, !dbg !829
  %tobool80 = icmp ne i64 %and79, 0, !dbg !829
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !829

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !829

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub83 = sub i64 %24, 1, !dbg !829
  %and84 = and i64 %sub83, 281474976710656, !dbg !829
  %tobool85 = icmp ne i64 %and84, 0, !dbg !829
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !829

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !829

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub88 = sub i64 %25, 1, !dbg !829
  %and89 = and i64 %sub88, 140737488355328, !dbg !829
  %tobool90 = icmp ne i64 %and89, 0, !dbg !829
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !829

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !829

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub93 = sub i64 %26, 1, !dbg !829
  %and94 = and i64 %sub93, 70368744177664, !dbg !829
  %tobool95 = icmp ne i64 %and94, 0, !dbg !829
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !829

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !829

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub98 = sub i64 %27, 1, !dbg !829
  %and99 = and i64 %sub98, 35184372088832, !dbg !829
  %tobool100 = icmp ne i64 %and99, 0, !dbg !829
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !829

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !829

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub103 = sub i64 %28, 1, !dbg !829
  %and104 = and i64 %sub103, 17592186044416, !dbg !829
  %tobool105 = icmp ne i64 %and104, 0, !dbg !829
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !829

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !829

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub108 = sub i64 %29, 1, !dbg !829
  %and109 = and i64 %sub108, 8796093022208, !dbg !829
  %tobool110 = icmp ne i64 %and109, 0, !dbg !829
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !829

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !829

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub113 = sub i64 %30, 1, !dbg !829
  %and114 = and i64 %sub113, 4398046511104, !dbg !829
  %tobool115 = icmp ne i64 %and114, 0, !dbg !829
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !829

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !829

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub118 = sub i64 %31, 1, !dbg !829
  %and119 = and i64 %sub118, 2199023255552, !dbg !829
  %tobool120 = icmp ne i64 %and119, 0, !dbg !829
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !829

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !829

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub123 = sub i64 %32, 1, !dbg !829
  %and124 = and i64 %sub123, 1099511627776, !dbg !829
  %tobool125 = icmp ne i64 %and124, 0, !dbg !829
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !829

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !829

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub128 = sub i64 %33, 1, !dbg !829
  %and129 = and i64 %sub128, 549755813888, !dbg !829
  %tobool130 = icmp ne i64 %and129, 0, !dbg !829
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !829

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !829

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub133 = sub i64 %34, 1, !dbg !829
  %and134 = and i64 %sub133, 274877906944, !dbg !829
  %tobool135 = icmp ne i64 %and134, 0, !dbg !829
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !829

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !829

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub138 = sub i64 %35, 1, !dbg !829
  %and139 = and i64 %sub138, 137438953472, !dbg !829
  %tobool140 = icmp ne i64 %and139, 0, !dbg !829
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !829

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !829

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub143 = sub i64 %36, 1, !dbg !829
  %and144 = and i64 %sub143, 68719476736, !dbg !829
  %tobool145 = icmp ne i64 %and144, 0, !dbg !829
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !829

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !829

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub148 = sub i64 %37, 1, !dbg !829
  %and149 = and i64 %sub148, 34359738368, !dbg !829
  %tobool150 = icmp ne i64 %and149, 0, !dbg !829
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !829

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !829

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub153 = sub i64 %38, 1, !dbg !829
  %and154 = and i64 %sub153, 17179869184, !dbg !829
  %tobool155 = icmp ne i64 %and154, 0, !dbg !829
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !829

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !829

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub158 = sub i64 %39, 1, !dbg !829
  %and159 = and i64 %sub158, 8589934592, !dbg !829
  %tobool160 = icmp ne i64 %and159, 0, !dbg !829
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !829

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !829

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub163 = sub i64 %40, 1, !dbg !829
  %and164 = and i64 %sub163, 4294967296, !dbg !829
  %tobool165 = icmp ne i64 %and164, 0, !dbg !829
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !829

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !829

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub168 = sub i64 %41, 1, !dbg !829
  %and169 = and i64 %sub168, 2147483648, !dbg !829
  %tobool170 = icmp ne i64 %and169, 0, !dbg !829
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !829

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !829

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub173 = sub i64 %42, 1, !dbg !829
  %and174 = and i64 %sub173, 1073741824, !dbg !829
  %tobool175 = icmp ne i64 %and174, 0, !dbg !829
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !829

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !829

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub178 = sub i64 %43, 1, !dbg !829
  %and179 = and i64 %sub178, 536870912, !dbg !829
  %tobool180 = icmp ne i64 %and179, 0, !dbg !829
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !829

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !829

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub183 = sub i64 %44, 1, !dbg !829
  %and184 = and i64 %sub183, 268435456, !dbg !829
  %tobool185 = icmp ne i64 %and184, 0, !dbg !829
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !829

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !829

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub188 = sub i64 %45, 1, !dbg !829
  %and189 = and i64 %sub188, 134217728, !dbg !829
  %tobool190 = icmp ne i64 %and189, 0, !dbg !829
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !829

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !829

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub193 = sub i64 %46, 1, !dbg !829
  %and194 = and i64 %sub193, 67108864, !dbg !829
  %tobool195 = icmp ne i64 %and194, 0, !dbg !829
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !829

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !829

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub198 = sub i64 %47, 1, !dbg !829
  %and199 = and i64 %sub198, 33554432, !dbg !829
  %tobool200 = icmp ne i64 %and199, 0, !dbg !829
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !829

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !829

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub203 = sub i64 %48, 1, !dbg !829
  %and204 = and i64 %sub203, 16777216, !dbg !829
  %tobool205 = icmp ne i64 %and204, 0, !dbg !829
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !829

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !829

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub208 = sub i64 %49, 1, !dbg !829
  %and209 = and i64 %sub208, 8388608, !dbg !829
  %tobool210 = icmp ne i64 %and209, 0, !dbg !829
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !829

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !829

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub213 = sub i64 %50, 1, !dbg !829
  %and214 = and i64 %sub213, 4194304, !dbg !829
  %tobool215 = icmp ne i64 %and214, 0, !dbg !829
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !829

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !829

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub218 = sub i64 %51, 1, !dbg !829
  %and219 = and i64 %sub218, 2097152, !dbg !829
  %tobool220 = icmp ne i64 %and219, 0, !dbg !829
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !829

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !829

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub223 = sub i64 %52, 1, !dbg !829
  %and224 = and i64 %sub223, 1048576, !dbg !829
  %tobool225 = icmp ne i64 %and224, 0, !dbg !829
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !829

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !829

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub228 = sub i64 %53, 1, !dbg !829
  %and229 = and i64 %sub228, 524288, !dbg !829
  %tobool230 = icmp ne i64 %and229, 0, !dbg !829
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !829

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !829

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub233 = sub i64 %54, 1, !dbg !829
  %and234 = and i64 %sub233, 262144, !dbg !829
  %tobool235 = icmp ne i64 %and234, 0, !dbg !829
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !829

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !829

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub238 = sub i64 %55, 1, !dbg !829
  %and239 = and i64 %sub238, 131072, !dbg !829
  %tobool240 = icmp ne i64 %and239, 0, !dbg !829
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !829

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !829

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub243 = sub i64 %56, 1, !dbg !829
  %and244 = and i64 %sub243, 65536, !dbg !829
  %tobool245 = icmp ne i64 %and244, 0, !dbg !829
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !829

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !829

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub248 = sub i64 %57, 1, !dbg !829
  %and249 = and i64 %sub248, 32768, !dbg !829
  %tobool250 = icmp ne i64 %and249, 0, !dbg !829
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !829

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !829

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub253 = sub i64 %58, 1, !dbg !829
  %and254 = and i64 %sub253, 16384, !dbg !829
  %tobool255 = icmp ne i64 %and254, 0, !dbg !829
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !829

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !829

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub258 = sub i64 %59, 1, !dbg !829
  %and259 = and i64 %sub258, 8192, !dbg !829
  %tobool260 = icmp ne i64 %and259, 0, !dbg !829
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !829

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !829

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub263 = sub i64 %60, 1, !dbg !829
  %and264 = and i64 %sub263, 4096, !dbg !829
  %tobool265 = icmp ne i64 %and264, 0, !dbg !829
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !829

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !829

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub268 = sub i64 %61, 1, !dbg !829
  %and269 = and i64 %sub268, 2048, !dbg !829
  %tobool270 = icmp ne i64 %and269, 0, !dbg !829
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !829

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !829

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub273 = sub i64 %62, 1, !dbg !829
  %and274 = and i64 %sub273, 1024, !dbg !829
  %tobool275 = icmp ne i64 %and274, 0, !dbg !829
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !829

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !829

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub278 = sub i64 %63, 1, !dbg !829
  %and279 = and i64 %sub278, 512, !dbg !829
  %tobool280 = icmp ne i64 %and279, 0, !dbg !829
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !829

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !829

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub283 = sub i64 %64, 1, !dbg !829
  %and284 = and i64 %sub283, 256, !dbg !829
  %tobool285 = icmp ne i64 %and284, 0, !dbg !829
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !829

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !829

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub288 = sub i64 %65, 1, !dbg !829
  %and289 = and i64 %sub288, 128, !dbg !829
  %tobool290 = icmp ne i64 %and289, 0, !dbg !829
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !829

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !829

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub293 = sub i64 %66, 1, !dbg !829
  %and294 = and i64 %sub293, 64, !dbg !829
  %tobool295 = icmp ne i64 %and294, 0, !dbg !829
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !829

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !829

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub298 = sub i64 %67, 1, !dbg !829
  %and299 = and i64 %sub298, 32, !dbg !829
  %tobool300 = icmp ne i64 %and299, 0, !dbg !829
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !829

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !829

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub303 = sub i64 %68, 1, !dbg !829
  %and304 = and i64 %sub303, 16, !dbg !829
  %tobool305 = icmp ne i64 %and304, 0, !dbg !829
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !829

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !829

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub308 = sub i64 %69, 1, !dbg !829
  %and309 = and i64 %sub308, 8, !dbg !829
  %tobool310 = icmp ne i64 %and309, 0, !dbg !829
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !829

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !829

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub313 = sub i64 %70, 1, !dbg !829
  %and314 = and i64 %sub313, 4, !dbg !829
  %tobool315 = icmp ne i64 %and314, 0, !dbg !829
  %71 = zext i1 %tobool315 to i64, !dbg !829
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !829
  br label %cond.end, !dbg !829

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !829
  br label %cond.end317, !dbg !829

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !829
  br label %cond.end319, !dbg !829

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !829
  br label %cond.end321, !dbg !829

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !829
  br label %cond.end323, !dbg !829

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !829
  br label %cond.end325, !dbg !829

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !829
  br label %cond.end327, !dbg !829

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !829
  br label %cond.end329, !dbg !829

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !829
  br label %cond.end331, !dbg !829

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !829
  br label %cond.end333, !dbg !829

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !829
  br label %cond.end335, !dbg !829

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !829
  br label %cond.end337, !dbg !829

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !829
  br label %cond.end339, !dbg !829

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !829
  br label %cond.end341, !dbg !829

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !829
  br label %cond.end343, !dbg !829

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !829
  br label %cond.end345, !dbg !829

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !829
  br label %cond.end347, !dbg !829

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !829
  br label %cond.end349, !dbg !829

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !829
  br label %cond.end351, !dbg !829

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !829
  br label %cond.end353, !dbg !829

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !829
  br label %cond.end355, !dbg !829

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !829
  br label %cond.end357, !dbg !829

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !829
  br label %cond.end359, !dbg !829

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !829
  br label %cond.end361, !dbg !829

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !829
  br label %cond.end363, !dbg !829

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !829
  br label %cond.end365, !dbg !829

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !829
  br label %cond.end367, !dbg !829

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !829
  br label %cond.end369, !dbg !829

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !829
  br label %cond.end371, !dbg !829

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !829
  br label %cond.end373, !dbg !829

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !829
  br label %cond.end375, !dbg !829

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !829
  br label %cond.end377, !dbg !829

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !829
  br label %cond.end379, !dbg !829

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !829
  br label %cond.end381, !dbg !829

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !829
  br label %cond.end383, !dbg !829

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !829
  br label %cond.end385, !dbg !829

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !829
  br label %cond.end387, !dbg !829

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !829
  br label %cond.end389, !dbg !829

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !829
  br label %cond.end391, !dbg !829

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !829
  br label %cond.end393, !dbg !829

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !829
  br label %cond.end395, !dbg !829

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !829
  br label %cond.end397, !dbg !829

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !829
  br label %cond.end399, !dbg !829

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !829
  br label %cond.end401, !dbg !829

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !829
  br label %cond.end403, !dbg !829

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !829
  br label %cond.end405, !dbg !829

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !829
  br label %cond.end407, !dbg !829

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !829
  br label %cond.end409, !dbg !829

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !829
  br label %cond.end411, !dbg !829

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !829
  br label %cond.end413, !dbg !829

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !829
  br label %cond.end415, !dbg !829

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !829
  br label %cond.end417, !dbg !829

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !829
  br label %cond.end419, !dbg !829

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !829
  br label %cond.end421, !dbg !829

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !829
  br label %cond.end423, !dbg !829

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !829
  br label %cond.end425, !dbg !829

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !829
  br label %cond.end427, !dbg !829

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !829
  br label %cond.end429, !dbg !829

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !829
  br label %cond.end431, !dbg !829

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !829
  br label %cond.end433, !dbg !829

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !829
  br label %cond.end435, !dbg !829

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !829
  br label %cond.end437, !dbg !829

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !829
  br label %cond.end440, !dbg !829

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !829

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !829
  br label %cond.end444, !dbg !829

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !829
  %sub443 = sub i64 %72, 1, !dbg !829
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !829
  br label %cond.end444, !dbg !829

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !829
  %sub446 = sub i32 %cond445, 12, !dbg !830
  %add = add i32 %sub446, 1, !dbg !831
  store i32 %add, i32* %retval, align 4, !dbg !832
  br label %return, !dbg !832

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !833
  %dec = add i64 %73, -1, !dbg !833
  store i64 %dec, i64* %size.addr, align 8, !dbg !833
  %74 = load i64, i64* %size.addr, align 8, !dbg !834
  %shr = lshr i64 %74, 12, !dbg !834
  store i64 %shr, i64* %size.addr, align 8, !dbg !834
  %75 = load i64, i64* %size.addr, align 8, !dbg !835
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !812
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !836
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !837
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !836, !srcloc !838
  store i32 %78, i32* %bitpos.i, align 4, !dbg !836
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !839
  %add.i = add i32 %79, 1, !dbg !840
  store i32 %add.i, i32* %retval, align 4, !dbg !841
  br label %return, !dbg !841

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !842
  ret i32 %80, !dbg !842
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !843 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !804, metadata !DIExpression()), !dbg !847
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !811, metadata !DIExpression()), !dbg !849
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !850, metadata !DIExpression()), !dbg !851
  %0 = load i64, i64* %n.addr, align 8, !dbg !852
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !849
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !853
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !854
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !853, !srcloc !838
  store i32 %3, i32* %bitpos.i, align 4, !dbg !853
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !855
  %add.i = add i32 %4, 1, !dbg !856
  %sub = sub i32 %add.i, 1, !dbg !857
  ret i32 %sub, !dbg !858
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !859 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !863, metadata !DIExpression()), !dbg !864
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !865, metadata !DIExpression()), !dbg !866
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !867, metadata !DIExpression()), !dbg !868
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !869, metadata !DIExpression()), !dbg !870
  %0 = load i8*, i8** %object.addr, align 8, !dbg !871
  ret i8* %0, !dbg !872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @get64(i64* %p) #0 !dbg !873 {
entry:
  %p.addr = alloca i64*, align 8
  %ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64* %p, i64** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !880, metadata !DIExpression()), !dbg !881
  br label %do.body, !dbg !882

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !885

do.end:                                           ; preds = %do.body
  %0 = load i64*, i64** %p.addr, align 8, !dbg !882
  %1 = load volatile i64, i64* %0, align 8, !dbg !882
  store i64 %1, i64* %tmp, align 8, !dbg !885
  %2 = load i64, i64* %tmp, align 8, !dbg !882
  store i64 %2, i64* %ret, align 8, !dbg !887
  %3 = load i64, i64* %ret, align 8, !dbg !888
  ret i64 %3, !dbg !889
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !890 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !894, metadata !DIExpression()), !dbg !895
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !896, metadata !DIExpression()), !dbg !897
  ret i1 true, !dbg !898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !899 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !903, metadata !DIExpression()), !dbg !904
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !905, metadata !DIExpression()), !dbg !906
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !907, metadata !DIExpression()), !dbg !908
  ret void, !dbg !909
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!7}
!llvm.named.register.rsp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "runstate_delta", scope: !2, file: !3, line: 86, type: !45, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xen_manage_runstate_time", scope: !3, file: !3, line: 84, type: !4, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !73)
!3 = !DIFile(filename: "drivers/xen/time.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !22, globals: !64, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !15}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 10, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !16, line: 305, baseType: !11, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!21 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!22 = !{!23, !25, !35, !44, !45, !54, !57, !32, !6, !60}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !24, line: 148, baseType: !11)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !28, line: 17, size: 64, elements: !29)
!28 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !27, file: !28, line: 17, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !33)
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !{!34}
!34 = !DISubrange(count: 1)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !42)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !38, line: 23, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !40, line: 31, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!41 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vcpu_runstate_info", file: !47, line: 77, size: 384, elements: !48)
!47 = !DIFile(filename: "./include/xen/interface/vcpu.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !46, file: !47, line: 79, baseType: !6, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "state_entry_time", scope: !46, file: !47, line: 81, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 107, baseType: !37)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !46, file: !47, line: 92, baseType: !53, size: 256, offset: 128)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !42)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 104, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !38, line: 21, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !40, line: 27, baseType: !11)
!64 = !{!0, !65, !69, !71}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__print_once", scope: !2, file: !3, line: 93, type: !67, isLocal: true, isDefinition: true)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !24, line: 30, baseType: !68)
!68 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "xen_runstate", scope: !7, file: !3, line: 22, type: !46, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "old_runstate_time", scope: !7, file: !3, line: 24, type: !36, isLocal: true, isDefinition: true)
!73 = !{}
!74 = !{!"rsp"}
!75 = !{i32 7, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"Code Model", i32 2}
!79 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!80 = !DILocalVariable(name: "action", arg: 1, scope: !2, file: !3, line: 84, type: !6)
!81 = !DILocation(line: 84, column: 35, scope: !2)
!82 = !DILocalVariable(name: "state", scope: !2, file: !3, line: 87, type: !46)
!83 = !DILocation(line: 87, column: 28, scope: !2)
!84 = !DILocalVariable(name: "cpu", scope: !2, file: !3, line: 88, type: !6)
!85 = !DILocation(line: 88, column: 6, scope: !2)
!86 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 88, type: !6)
!87 = !DILocation(line: 88, column: 11, scope: !2)
!88 = !DILocation(line: 90, column: 10, scope: !2)
!89 = !DILocation(line: 90, column: 2, scope: !2)
!90 = !DILocation(line: 92, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 92, column: 7)
!92 = distinct !DILexicalBlock(scope: !2, file: !3, line: 90, column: 18)
!93 = !DILocation(line: 92, column: 7, scope: !92)
!94 = !DILocalVariable(name: "__ret_print_once", scope: !95, file: !3, line: 93, type: !67)
!95 = distinct !DILexicalBlock(scope: !91, file: !3, line: 93, column: 4)
!96 = !DILocation(line: 93, column: 4, scope: !95)
!97 = !DILocation(line: 93, column: 4, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !3, line: 93, column: 4)
!99 = !DILocation(line: 93, column: 4, scope: !100)
!100 = distinct !DILexicalBlock(scope: !98, file: !3, line: 93, column: 4)
!101 = !DILocation(line: 93, column: 4, scope: !91)
!102 = !DILocation(line: 96, column: 20, scope: !92)
!103 = !DILocation(line: 96, column: 18, scope: !92)
!104 = !DILocation(line: 99, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !92, file: !3, line: 99, column: 7)
!106 = !DILocation(line: 99, column: 7, scope: !92)
!107 = !DILocation(line: 100, column: 4, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 99, column: 34)
!109 = !DILocation(line: 102, column: 4, scope: !108)
!110 = !DILocation(line: 105, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !92, file: !3, line: 105, column: 3)
!112 = !DILocation(line: 105, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !111, file: !3, line: 105, column: 3)
!114 = !DILocation(line: 106, column: 48, scope: !115)
!115 = distinct !DILexicalBlock(scope: !113, file: !3, line: 105, column: 30)
!116 = !DILocation(line: 106, column: 4, scope: !115)
!117 = !DILocation(line: 107, column: 11, scope: !115)
!118 = !DILocation(line: 107, column: 26, scope: !115)
!119 = !DILocation(line: 107, column: 31, scope: !115)
!120 = !DILocation(line: 107, column: 4, scope: !115)
!121 = !DILocation(line: 107, column: 43, scope: !115)
!122 = !DILocation(line: 109, column: 3, scope: !115)
!123 = distinct !{!123, !110, !124}
!124 = !DILocation(line: 109, column: 3, scope: !111)
!125 = !DILocation(line: 111, column: 3, scope: !92)
!126 = !DILocation(line: 114, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !92, file: !3, line: 114, column: 7)
!128 = !DILocation(line: 114, column: 7, scope: !92)
!129 = !DILocation(line: 115, column: 4, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !3, line: 114, column: 34)
!131 = !DILocation(line: 117, column: 4, scope: !130)
!132 = !DILocation(line: 120, column: 3, scope: !133)
!133 = distinct !DILexicalBlock(scope: !92, file: !3, line: 120, column: 3)
!134 = !DILocation(line: 120, column: 3, scope: !135)
!135 = distinct !DILexicalBlock(scope: !133, file: !3, line: 120, column: 3)
!136 = !DILocation(line: 121, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 121, column: 4)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 120, column: 30)
!139 = !DILocation(line: 121, column: 9, scope: !137)
!140 = !DILocation(line: 121, column: 16, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 121, column: 4)
!142 = !DILocation(line: 121, column: 18, scope: !141)
!143 = !DILocation(line: 121, column: 4, scope: !137)
!144 = !DILocation(line: 123, column: 6, scope: !141)
!145 = !DILocation(line: 123, column: 21, scope: !141)
!146 = !DILocation(line: 123, column: 26, scope: !141)
!147 = !DILocation(line: 123, column: 31, scope: !141)
!148 = !DILocation(line: 122, column: 5, scope: !149)
!149 = distinct !DILexicalBlock(scope: !141, file: !3, line: 122, column: 5)
!150 = !DILocation(line: 122, column: 5, scope: !151)
!151 = distinct !DILexicalBlock(scope: !149, file: !3, line: 122, column: 5)
!152 = !DILocalVariable(name: "__vpp_verify", scope: !153, file: !3, line: 122, type: !154)
!153 = distinct !DILexicalBlock(scope: !151, file: !3, line: 122, column: 5)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!156 = !DILocation(line: 122, column: 5, scope: !153)
!157 = !DILocation(line: 122, column: 37, scope: !141)
!158 = !DILocation(line: 122, column: 5, scope: !141)
!159 = !DILocation(line: 122, column: 40, scope: !141)
!160 = !DILocation(line: 121, column: 24, scope: !141)
!161 = !DILocation(line: 121, column: 4, scope: !141)
!162 = distinct !{!162, !143, !163}
!163 = !DILocation(line: 123, column: 32, scope: !137)
!164 = !DILocation(line: 124, column: 3, scope: !138)
!165 = distinct !{!165, !132, !166}
!166 = !DILocation(line: 124, column: 3, scope: !133)
!167 = !DILocation(line: 126, column: 3, scope: !92)
!168 = !DILocation(line: 129, column: 3, scope: !92)
!169 = !DILocation(line: 132, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !2, file: !3, line: 132, column: 6)
!171 = !DILocation(line: 132, column: 13, scope: !170)
!172 = !DILocation(line: 132, column: 19, scope: !170)
!173 = !DILocation(line: 132, column: 22, scope: !170)
!174 = !DILocation(line: 132, column: 6, scope: !2)
!175 = !DILocation(line: 133, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !3, line: 132, column: 38)
!177 = !DILocation(line: 133, column: 3, scope: !176)
!178 = !DILocation(line: 134, column: 18, scope: !176)
!179 = !DILocation(line: 135, column: 2, scope: !176)
!180 = !DILocation(line: 136, column: 1, scope: !2)
!181 = distinct !DISubprogram(name: "kmalloc_array", scope: !16, file: !16, line: 584, type: !182, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!182 = !DISubroutineType(types: !183)
!183 = !{!44, !184, !184, !23}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 55, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !186, line: 72, baseType: !187)
!186 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !186, line: 16, baseType: !32)
!188 = !DILocalVariable(name: "s", arg: 1, scope: !189, file: !16, line: 445, type: !192)
!189 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !16, file: !16, line: 445, type: !190, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!190 = !DISubroutineType(types: !191)
!191 = !{!44, !192, !23, !184}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !194, line: 117, flags: DIFlagFwdDecl)
!194 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!195 = !DILocation(line: 445, column: 72, scope: !189, inlinedAt: !196)
!196 = distinct !DILocation(line: 552, column: 10, scope: !197, inlinedAt: !202)
!197 = distinct !DILexicalBlock(scope: !198, file: !16, line: 540, column: 34)
!198 = distinct !DILexicalBlock(scope: !199, file: !16, line: 540, column: 6)
!199 = distinct !DISubprogram(name: "kmalloc", scope: !16, file: !16, line: 538, type: !200, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!200 = !DISubroutineType(types: !201)
!201 = !{!44, !184, !23}
!202 = distinct !DILocation(line: 591, column: 10, scope: !203)
!203 = distinct !DILexicalBlock(scope: !181, file: !16, line: 590, column: 6)
!204 = !DILocalVariable(name: "flags", arg: 2, scope: !189, file: !16, line: 446, type: !23)
!205 = !DILocation(line: 446, column: 9, scope: !189, inlinedAt: !196)
!206 = !DILocalVariable(name: "size", arg: 3, scope: !189, file: !16, line: 446, type: !184)
!207 = !DILocation(line: 446, column: 23, scope: !189, inlinedAt: !196)
!208 = !DILocalVariable(name: "ret", scope: !189, file: !16, line: 448, type: !44)
!209 = !DILocation(line: 448, column: 8, scope: !189, inlinedAt: !196)
!210 = !DILocalVariable(name: "flags", arg: 1, scope: !211, file: !16, line: 318, type: !23)
!211 = distinct !DISubprogram(name: "kmalloc_type", scope: !16, file: !16, line: 318, type: !212, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!212 = !DISubroutineType(types: !213)
!213 = !{!15, !23}
!214 = !DILocation(line: 318, column: 67, scope: !211, inlinedAt: !215)
!215 = distinct !DILocation(line: 553, column: 20, scope: !197, inlinedAt: !202)
!216 = !DILocalVariable(name: "size", arg: 1, scope: !217, file: !16, line: 346, type: !184)
!217 = distinct !DISubprogram(name: "kmalloc_index", scope: !16, file: !16, line: 346, type: !218, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!218 = !DISubroutineType(types: !219)
!219 = !{!11, !184}
!220 = !DILocation(line: 346, column: 58, scope: !217, inlinedAt: !221)
!221 = distinct !DILocation(line: 547, column: 11, scope: !197, inlinedAt: !202)
!222 = !DILocalVariable(name: "size", arg: 1, scope: !223, file: !16, line: 472, type: !184)
!223 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !16, file: !16, line: 472, type: !224, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!224 = !DISubroutineType(types: !225)
!225 = !{!44, !184, !23, !11}
!226 = !DILocation(line: 472, column: 28, scope: !223, inlinedAt: !227)
!227 = distinct !DILocation(line: 481, column: 9, scope: !228, inlinedAt: !229)
!228 = distinct !DISubprogram(name: "kmalloc_large", scope: !16, file: !16, line: 478, type: !200, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!229 = distinct !DILocation(line: 545, column: 11, scope: !230, inlinedAt: !202)
!230 = distinct !DILexicalBlock(scope: !197, file: !16, line: 544, column: 7)
!231 = !DILocalVariable(name: "flags", arg: 2, scope: !223, file: !16, line: 472, type: !23)
!232 = !DILocation(line: 472, column: 40, scope: !223, inlinedAt: !227)
!233 = !DILocalVariable(name: "order", arg: 3, scope: !223, file: !16, line: 472, type: !11)
!234 = !DILocation(line: 472, column: 60, scope: !223, inlinedAt: !227)
!235 = !DILocalVariable(name: "size", arg: 1, scope: !228, file: !16, line: 478, type: !184)
!236 = !DILocation(line: 478, column: 51, scope: !228, inlinedAt: !229)
!237 = !DILocalVariable(name: "flags", arg: 2, scope: !228, file: !16, line: 478, type: !23)
!238 = !DILocation(line: 478, column: 63, scope: !228, inlinedAt: !229)
!239 = !DILocalVariable(name: "order", scope: !228, file: !16, line: 480, type: !11)
!240 = !DILocation(line: 480, column: 15, scope: !228, inlinedAt: !229)
!241 = !DILocalVariable(name: "size", arg: 1, scope: !199, file: !16, line: 538, type: !184)
!242 = !DILocation(line: 538, column: 45, scope: !199, inlinedAt: !202)
!243 = !DILocalVariable(name: "flags", arg: 2, scope: !199, file: !16, line: 538, type: !23)
!244 = !DILocation(line: 538, column: 57, scope: !199, inlinedAt: !202)
!245 = !DILocalVariable(name: "index", scope: !197, file: !16, line: 542, type: !11)
!246 = !DILocation(line: 542, column: 16, scope: !197, inlinedAt: !202)
!247 = !DILocalVariable(name: "n", arg: 1, scope: !181, file: !16, line: 584, type: !184)
!248 = !DILocation(line: 584, column: 42, scope: !181)
!249 = !DILocalVariable(name: "size", arg: 2, scope: !181, file: !16, line: 584, type: !184)
!250 = !DILocation(line: 584, column: 52, scope: !181)
!251 = !DILocalVariable(name: "flags", arg: 3, scope: !181, file: !16, line: 584, type: !23)
!252 = !DILocation(line: 584, column: 64, scope: !181)
!253 = !DILocalVariable(name: "bytes", scope: !181, file: !16, line: 586, type: !184)
!254 = !DILocation(line: 586, column: 9, scope: !181)
!255 = !DILocalVariable(name: "__a", scope: !256, file: !16, line: 588, type: !184)
!256 = distinct !DILexicalBlock(scope: !257, file: !16, line: 588, column: 6)
!257 = distinct !DILexicalBlock(scope: !181, file: !16, line: 588, column: 6)
!258 = !DILocation(line: 588, column: 6, scope: !256)
!259 = !DILocalVariable(name: "__b", scope: !256, file: !16, line: 588, type: !184)
!260 = !DILocalVariable(name: "__d", scope: !256, file: !16, line: 588, type: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!262 = !DILocation(line: 588, column: 6, scope: !257)
!263 = !DILocation(line: 588, column: 6, scope: !181)
!264 = !DILocation(line: 589, column: 3, scope: !257)
!265 = !DILocation(line: 590, column: 27, scope: !203)
!266 = !DILocation(line: 590, column: 6, scope: !203)
!267 = !DILocation(line: 590, column: 30, scope: !203)
!268 = !DILocation(line: 590, column: 54, scope: !203)
!269 = !DILocation(line: 590, column: 33, scope: !203)
!270 = !DILocation(line: 590, column: 6, scope: !181)
!271 = !DILocation(line: 591, column: 18, scope: !203)
!272 = !DILocation(line: 591, column: 25, scope: !203)
!273 = !DILocation(line: 540, column: 27, scope: !198, inlinedAt: !202)
!274 = !DILocation(line: 540, column: 6, scope: !198, inlinedAt: !202)
!275 = !DILocation(line: 540, column: 6, scope: !199, inlinedAt: !202)
!276 = !DILocation(line: 544, column: 7, scope: !230, inlinedAt: !202)
!277 = !DILocation(line: 544, column: 12, scope: !230, inlinedAt: !202)
!278 = !DILocation(line: 544, column: 7, scope: !197, inlinedAt: !202)
!279 = !DILocation(line: 545, column: 25, scope: !230, inlinedAt: !202)
!280 = !DILocation(line: 545, column: 31, scope: !230, inlinedAt: !202)
!281 = !DILocation(line: 480, column: 33, scope: !228, inlinedAt: !229)
!282 = !DILocation(line: 480, column: 23, scope: !228, inlinedAt: !229)
!283 = !DILocation(line: 481, column: 29, scope: !228, inlinedAt: !229)
!284 = !DILocation(line: 481, column: 35, scope: !228, inlinedAt: !229)
!285 = !DILocation(line: 481, column: 42, scope: !228, inlinedAt: !229)
!286 = !DILocation(line: 474, column: 23, scope: !223, inlinedAt: !227)
!287 = !DILocation(line: 474, column: 29, scope: !223, inlinedAt: !227)
!288 = !DILocation(line: 474, column: 36, scope: !223, inlinedAt: !227)
!289 = !DILocation(line: 474, column: 9, scope: !223, inlinedAt: !227)
!290 = !DILocation(line: 545, column: 4, scope: !230, inlinedAt: !202)
!291 = !DILocation(line: 547, column: 25, scope: !197, inlinedAt: !202)
!292 = !DILocation(line: 348, column: 7, scope: !293, inlinedAt: !221)
!293 = distinct !DILexicalBlock(scope: !217, file: !16, line: 348, column: 6)
!294 = !DILocation(line: 348, column: 6, scope: !217, inlinedAt: !221)
!295 = !DILocation(line: 349, column: 3, scope: !293, inlinedAt: !221)
!296 = !DILocation(line: 351, column: 6, scope: !297, inlinedAt: !221)
!297 = distinct !DILexicalBlock(scope: !217, file: !16, line: 351, column: 6)
!298 = !DILocation(line: 351, column: 11, scope: !297, inlinedAt: !221)
!299 = !DILocation(line: 351, column: 6, scope: !217, inlinedAt: !221)
!300 = !DILocation(line: 352, column: 3, scope: !297, inlinedAt: !221)
!301 = !DILocation(line: 354, column: 32, scope: !302, inlinedAt: !221)
!302 = distinct !DILexicalBlock(scope: !217, file: !16, line: 354, column: 6)
!303 = !DILocation(line: 354, column: 37, scope: !302, inlinedAt: !221)
!304 = !DILocation(line: 354, column: 42, scope: !302, inlinedAt: !221)
!305 = !DILocation(line: 354, column: 45, scope: !302, inlinedAt: !221)
!306 = !DILocation(line: 354, column: 50, scope: !302, inlinedAt: !221)
!307 = !DILocation(line: 354, column: 6, scope: !217, inlinedAt: !221)
!308 = !DILocation(line: 355, column: 3, scope: !302, inlinedAt: !221)
!309 = !DILocation(line: 356, column: 32, scope: !310, inlinedAt: !221)
!310 = distinct !DILexicalBlock(scope: !217, file: !16, line: 356, column: 6)
!311 = !DILocation(line: 356, column: 37, scope: !310, inlinedAt: !221)
!312 = !DILocation(line: 356, column: 43, scope: !310, inlinedAt: !221)
!313 = !DILocation(line: 356, column: 46, scope: !310, inlinedAt: !221)
!314 = !DILocation(line: 356, column: 51, scope: !310, inlinedAt: !221)
!315 = !DILocation(line: 356, column: 6, scope: !217, inlinedAt: !221)
!316 = !DILocation(line: 357, column: 3, scope: !310, inlinedAt: !221)
!317 = !DILocation(line: 358, column: 6, scope: !318, inlinedAt: !221)
!318 = distinct !DILexicalBlock(scope: !217, file: !16, line: 358, column: 6)
!319 = !DILocation(line: 358, column: 11, scope: !318, inlinedAt: !221)
!320 = !DILocation(line: 358, column: 6, scope: !217, inlinedAt: !221)
!321 = !DILocation(line: 358, column: 26, scope: !318, inlinedAt: !221)
!322 = !DILocation(line: 359, column: 6, scope: !323, inlinedAt: !221)
!323 = distinct !DILexicalBlock(scope: !217, file: !16, line: 359, column: 6)
!324 = !DILocation(line: 359, column: 11, scope: !323, inlinedAt: !221)
!325 = !DILocation(line: 359, column: 6, scope: !217, inlinedAt: !221)
!326 = !DILocation(line: 359, column: 26, scope: !323, inlinedAt: !221)
!327 = !DILocation(line: 360, column: 6, scope: !328, inlinedAt: !221)
!328 = distinct !DILexicalBlock(scope: !217, file: !16, line: 360, column: 6)
!329 = !DILocation(line: 360, column: 11, scope: !328, inlinedAt: !221)
!330 = !DILocation(line: 360, column: 6, scope: !217, inlinedAt: !221)
!331 = !DILocation(line: 360, column: 26, scope: !328, inlinedAt: !221)
!332 = !DILocation(line: 361, column: 6, scope: !333, inlinedAt: !221)
!333 = distinct !DILexicalBlock(scope: !217, file: !16, line: 361, column: 6)
!334 = !DILocation(line: 361, column: 11, scope: !333, inlinedAt: !221)
!335 = !DILocation(line: 361, column: 6, scope: !217, inlinedAt: !221)
!336 = !DILocation(line: 361, column: 26, scope: !333, inlinedAt: !221)
!337 = !DILocation(line: 362, column: 6, scope: !338, inlinedAt: !221)
!338 = distinct !DILexicalBlock(scope: !217, file: !16, line: 362, column: 6)
!339 = !DILocation(line: 362, column: 11, scope: !338, inlinedAt: !221)
!340 = !DILocation(line: 362, column: 6, scope: !217, inlinedAt: !221)
!341 = !DILocation(line: 362, column: 26, scope: !338, inlinedAt: !221)
!342 = !DILocation(line: 363, column: 6, scope: !343, inlinedAt: !221)
!343 = distinct !DILexicalBlock(scope: !217, file: !16, line: 363, column: 6)
!344 = !DILocation(line: 363, column: 11, scope: !343, inlinedAt: !221)
!345 = !DILocation(line: 363, column: 6, scope: !217, inlinedAt: !221)
!346 = !DILocation(line: 363, column: 26, scope: !343, inlinedAt: !221)
!347 = !DILocation(line: 364, column: 6, scope: !348, inlinedAt: !221)
!348 = distinct !DILexicalBlock(scope: !217, file: !16, line: 364, column: 6)
!349 = !DILocation(line: 364, column: 11, scope: !348, inlinedAt: !221)
!350 = !DILocation(line: 364, column: 6, scope: !217, inlinedAt: !221)
!351 = !DILocation(line: 364, column: 26, scope: !348, inlinedAt: !221)
!352 = !DILocation(line: 365, column: 6, scope: !353, inlinedAt: !221)
!353 = distinct !DILexicalBlock(scope: !217, file: !16, line: 365, column: 6)
!354 = !DILocation(line: 365, column: 11, scope: !353, inlinedAt: !221)
!355 = !DILocation(line: 365, column: 6, scope: !217, inlinedAt: !221)
!356 = !DILocation(line: 365, column: 26, scope: !353, inlinedAt: !221)
!357 = !DILocation(line: 366, column: 6, scope: !358, inlinedAt: !221)
!358 = distinct !DILexicalBlock(scope: !217, file: !16, line: 366, column: 6)
!359 = !DILocation(line: 366, column: 11, scope: !358, inlinedAt: !221)
!360 = !DILocation(line: 366, column: 6, scope: !217, inlinedAt: !221)
!361 = !DILocation(line: 366, column: 26, scope: !358, inlinedAt: !221)
!362 = !DILocation(line: 367, column: 6, scope: !363, inlinedAt: !221)
!363 = distinct !DILexicalBlock(scope: !217, file: !16, line: 367, column: 6)
!364 = !DILocation(line: 367, column: 11, scope: !363, inlinedAt: !221)
!365 = !DILocation(line: 367, column: 6, scope: !217, inlinedAt: !221)
!366 = !DILocation(line: 367, column: 26, scope: !363, inlinedAt: !221)
!367 = !DILocation(line: 368, column: 6, scope: !368, inlinedAt: !221)
!368 = distinct !DILexicalBlock(scope: !217, file: !16, line: 368, column: 6)
!369 = !DILocation(line: 368, column: 11, scope: !368, inlinedAt: !221)
!370 = !DILocation(line: 368, column: 6, scope: !217, inlinedAt: !221)
!371 = !DILocation(line: 368, column: 26, scope: !368, inlinedAt: !221)
!372 = !DILocation(line: 369, column: 6, scope: !373, inlinedAt: !221)
!373 = distinct !DILexicalBlock(scope: !217, file: !16, line: 369, column: 6)
!374 = !DILocation(line: 369, column: 11, scope: !373, inlinedAt: !221)
!375 = !DILocation(line: 369, column: 6, scope: !217, inlinedAt: !221)
!376 = !DILocation(line: 369, column: 26, scope: !373, inlinedAt: !221)
!377 = !DILocation(line: 370, column: 6, scope: !378, inlinedAt: !221)
!378 = distinct !DILexicalBlock(scope: !217, file: !16, line: 370, column: 6)
!379 = !DILocation(line: 370, column: 11, scope: !378, inlinedAt: !221)
!380 = !DILocation(line: 370, column: 6, scope: !217, inlinedAt: !221)
!381 = !DILocation(line: 370, column: 26, scope: !378, inlinedAt: !221)
!382 = !DILocation(line: 371, column: 6, scope: !383, inlinedAt: !221)
!383 = distinct !DILexicalBlock(scope: !217, file: !16, line: 371, column: 6)
!384 = !DILocation(line: 371, column: 11, scope: !383, inlinedAt: !221)
!385 = !DILocation(line: 371, column: 6, scope: !217, inlinedAt: !221)
!386 = !DILocation(line: 371, column: 26, scope: !383, inlinedAt: !221)
!387 = !DILocation(line: 372, column: 6, scope: !388, inlinedAt: !221)
!388 = distinct !DILexicalBlock(scope: !217, file: !16, line: 372, column: 6)
!389 = !DILocation(line: 372, column: 11, scope: !388, inlinedAt: !221)
!390 = !DILocation(line: 372, column: 6, scope: !217, inlinedAt: !221)
!391 = !DILocation(line: 372, column: 26, scope: !388, inlinedAt: !221)
!392 = !DILocation(line: 373, column: 6, scope: !393, inlinedAt: !221)
!393 = distinct !DILexicalBlock(scope: !217, file: !16, line: 373, column: 6)
!394 = !DILocation(line: 373, column: 11, scope: !393, inlinedAt: !221)
!395 = !DILocation(line: 373, column: 6, scope: !217, inlinedAt: !221)
!396 = !DILocation(line: 373, column: 26, scope: !393, inlinedAt: !221)
!397 = !DILocation(line: 374, column: 6, scope: !398, inlinedAt: !221)
!398 = distinct !DILexicalBlock(scope: !217, file: !16, line: 374, column: 6)
!399 = !DILocation(line: 374, column: 11, scope: !398, inlinedAt: !221)
!400 = !DILocation(line: 374, column: 6, scope: !217, inlinedAt: !221)
!401 = !DILocation(line: 374, column: 26, scope: !398, inlinedAt: !221)
!402 = !DILocation(line: 375, column: 6, scope: !403, inlinedAt: !221)
!403 = distinct !DILexicalBlock(scope: !217, file: !16, line: 375, column: 6)
!404 = !DILocation(line: 375, column: 11, scope: !403, inlinedAt: !221)
!405 = !DILocation(line: 375, column: 6, scope: !217, inlinedAt: !221)
!406 = !DILocation(line: 375, column: 27, scope: !403, inlinedAt: !221)
!407 = !DILocation(line: 376, column: 6, scope: !408, inlinedAt: !221)
!408 = distinct !DILexicalBlock(scope: !217, file: !16, line: 376, column: 6)
!409 = !DILocation(line: 376, column: 11, scope: !408, inlinedAt: !221)
!410 = !DILocation(line: 376, column: 6, scope: !217, inlinedAt: !221)
!411 = !DILocation(line: 376, column: 32, scope: !408, inlinedAt: !221)
!412 = !DILocation(line: 377, column: 6, scope: !413, inlinedAt: !221)
!413 = distinct !DILexicalBlock(scope: !217, file: !16, line: 377, column: 6)
!414 = !DILocation(line: 377, column: 11, scope: !413, inlinedAt: !221)
!415 = !DILocation(line: 377, column: 6, scope: !217, inlinedAt: !221)
!416 = !DILocation(line: 377, column: 32, scope: !413, inlinedAt: !221)
!417 = !DILocation(line: 378, column: 6, scope: !418, inlinedAt: !221)
!418 = distinct !DILexicalBlock(scope: !217, file: !16, line: 378, column: 6)
!419 = !DILocation(line: 378, column: 11, scope: !418, inlinedAt: !221)
!420 = !DILocation(line: 378, column: 6, scope: !217, inlinedAt: !221)
!421 = !DILocation(line: 378, column: 32, scope: !418, inlinedAt: !221)
!422 = !DILocation(line: 379, column: 6, scope: !423, inlinedAt: !221)
!423 = distinct !DILexicalBlock(scope: !217, file: !16, line: 379, column: 6)
!424 = !DILocation(line: 379, column: 11, scope: !423, inlinedAt: !221)
!425 = !DILocation(line: 379, column: 6, scope: !217, inlinedAt: !221)
!426 = !DILocation(line: 379, column: 33, scope: !423, inlinedAt: !221)
!427 = !DILocation(line: 380, column: 6, scope: !428, inlinedAt: !221)
!428 = distinct !DILexicalBlock(scope: !217, file: !16, line: 380, column: 6)
!429 = !DILocation(line: 380, column: 11, scope: !428, inlinedAt: !221)
!430 = !DILocation(line: 380, column: 6, scope: !217, inlinedAt: !221)
!431 = !DILocation(line: 380, column: 33, scope: !428, inlinedAt: !221)
!432 = !DILocation(line: 381, column: 6, scope: !433, inlinedAt: !221)
!433 = distinct !DILexicalBlock(scope: !217, file: !16, line: 381, column: 6)
!434 = !DILocation(line: 381, column: 11, scope: !433, inlinedAt: !221)
!435 = !DILocation(line: 381, column: 6, scope: !217, inlinedAt: !221)
!436 = !DILocation(line: 381, column: 33, scope: !433, inlinedAt: !221)
!437 = !DILocation(line: 382, column: 2, scope: !438, inlinedAt: !221)
!438 = distinct !DILexicalBlock(scope: !439, file: !16, line: 382, column: 2)
!439 = distinct !DILexicalBlock(scope: !217, file: !16, line: 382, column: 2)
!440 = !{i32 -2144040576, i32 -2144040547, i32 -2144040501, i32 -2144040443, i32 -2144040389, i32 -2144040335, i32 -2144040280, i32 -2144040249}
!441 = !DILocation(line: 382, column: 2, scope: !442, inlinedAt: !221)
!442 = distinct !DILexicalBlock(scope: !443, file: !16, line: 382, column: 2)
!443 = distinct !DILexicalBlock(scope: !439, file: !16, line: 382, column: 2)
!444 = !{i32 -2144039806, i32 -2144039799, i32 -2144039745, i32 -2144039714, i32 -2144039684}
!445 = !DILocation(line: 382, column: 2, scope: !443, inlinedAt: !221)
!446 = !DILocation(line: 386, column: 1, scope: !217, inlinedAt: !221)
!447 = !DILocation(line: 547, column: 9, scope: !197, inlinedAt: !202)
!448 = !DILocation(line: 549, column: 8, scope: !449, inlinedAt: !202)
!449 = distinct !DILexicalBlock(scope: !197, file: !16, line: 549, column: 7)
!450 = !DILocation(line: 549, column: 7, scope: !197, inlinedAt: !202)
!451 = !DILocation(line: 550, column: 4, scope: !449, inlinedAt: !202)
!452 = !DILocation(line: 553, column: 33, scope: !197, inlinedAt: !202)
!453 = !DILocation(line: 325, column: 6, scope: !454, inlinedAt: !215)
!454 = distinct !DILexicalBlock(scope: !211, file: !16, line: 325, column: 6)
!455 = !DILocation(line: 325, column: 6, scope: !211, inlinedAt: !215)
!456 = !DILocation(line: 326, column: 3, scope: !454, inlinedAt: !215)
!457 = !DILocation(line: 332, column: 9, scope: !211, inlinedAt: !215)
!458 = !DILocation(line: 332, column: 15, scope: !211, inlinedAt: !215)
!459 = !DILocation(line: 332, column: 2, scope: !211, inlinedAt: !215)
!460 = !DILocation(line: 336, column: 1, scope: !211, inlinedAt: !215)
!461 = !DILocation(line: 553, column: 5, scope: !197, inlinedAt: !202)
!462 = !DILocation(line: 553, column: 41, scope: !197, inlinedAt: !202)
!463 = !DILocation(line: 554, column: 5, scope: !197, inlinedAt: !202)
!464 = !DILocation(line: 554, column: 12, scope: !197, inlinedAt: !202)
!465 = !DILocation(line: 448, column: 31, scope: !189, inlinedAt: !196)
!466 = !DILocation(line: 448, column: 34, scope: !189, inlinedAt: !196)
!467 = !DILocation(line: 448, column: 14, scope: !189, inlinedAt: !196)
!468 = !DILocation(line: 450, column: 22, scope: !189, inlinedAt: !196)
!469 = !DILocation(line: 450, column: 25, scope: !189, inlinedAt: !196)
!470 = !DILocation(line: 450, column: 30, scope: !189, inlinedAt: !196)
!471 = !DILocation(line: 450, column: 36, scope: !189, inlinedAt: !196)
!472 = !DILocation(line: 450, column: 8, scope: !189, inlinedAt: !196)
!473 = !DILocation(line: 450, column: 6, scope: !189, inlinedAt: !196)
!474 = !DILocation(line: 451, column: 9, scope: !189, inlinedAt: !196)
!475 = !DILocation(line: 552, column: 3, scope: !197, inlinedAt: !202)
!476 = !DILocation(line: 557, column: 19, scope: !199, inlinedAt: !202)
!477 = !DILocation(line: 557, column: 25, scope: !199, inlinedAt: !202)
!478 = !DILocation(line: 557, column: 9, scope: !199, inlinedAt: !202)
!479 = !DILocation(line: 557, column: 2, scope: !199, inlinedAt: !202)
!480 = !DILocation(line: 558, column: 1, scope: !199, inlinedAt: !202)
!481 = !DILocation(line: 591, column: 3, scope: !203)
!482 = !DILocation(line: 592, column: 19, scope: !181)
!483 = !DILocation(line: 592, column: 26, scope: !181)
!484 = !DILocation(line: 592, column: 9, scope: !181)
!485 = !DILocation(line: 592, column: 2, scope: !181)
!486 = !DILocation(line: 593, column: 1, scope: !181)
!487 = distinct !DISubprogram(name: "xen_get_runstate_snapshot_cpu_delta", scope: !3, file: !3, line: 54, type: !488, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !45, !11}
!490 = !DILocalVariable(name: "res", arg: 1, scope: !487, file: !3, line: 55, type: !45)
!491 = !DILocation(line: 55, column: 37, scope: !487)
!492 = !DILocalVariable(name: "cpu", arg: 2, scope: !487, file: !3, line: 55, type: !11)
!493 = !DILocation(line: 55, column: 55, scope: !487)
!494 = !DILocalVariable(name: "state_time", scope: !487, file: !3, line: 57, type: !37)
!495 = !DILocation(line: 57, column: 6, scope: !487)
!496 = !DILocalVariable(name: "state", scope: !487, file: !3, line: 58, type: !45)
!497 = !DILocation(line: 58, column: 29, scope: !487)
!498 = !DILocation(line: 60, column: 2, scope: !487)
!499 = !DILocation(line: 60, column: 2, scope: !500)
!500 = distinct !DILexicalBlock(scope: !487, file: !3, line: 60, column: 2)
!501 = !DILocation(line: 62, column: 10, scope: !502)
!502 = distinct !DILexicalBlock(scope: !487, file: !3, line: 62, column: 10)
!503 = !DILocation(line: 62, column: 10, scope: !504)
!504 = distinct !DILexicalBlock(scope: !502, file: !3, line: 62, column: 10)
!505 = !DILocalVariable(name: "__vpp_verify", scope: !506, file: !3, line: 62, type: !154)
!506 = distinct !DILexicalBlock(scope: !504, file: !3, line: 62, column: 10)
!507 = !DILocation(line: 62, column: 10, scope: !506)
!508 = !DILocation(line: 62, column: 8, scope: !487)
!509 = !DILocation(line: 64, column: 2, scope: !487)
!510 = !DILocation(line: 65, column: 23, scope: !511)
!511 = distinct !DILexicalBlock(scope: !487, file: !3, line: 64, column: 5)
!512 = !DILocation(line: 65, column: 30, scope: !511)
!513 = !DILocation(line: 65, column: 16, scope: !511)
!514 = !DILocation(line: 65, column: 14, scope: !511)
!515 = !DILocation(line: 66, column: 3, scope: !511)
!516 = !{i32 -2141699575}
!517 = !DILocation(line: 67, column: 4, scope: !511)
!518 = !DILocation(line: 67, column: 10, scope: !511)
!519 = !DILocation(line: 68, column: 3, scope: !511)
!520 = !{i32 -2141698713}
!521 = !DILocation(line: 69, column: 2, scope: !511)
!522 = !DILocation(line: 69, column: 18, scope: !487)
!523 = !DILocation(line: 69, column: 25, scope: !487)
!524 = !DILocation(line: 69, column: 11, scope: !487)
!525 = !DILocation(line: 69, column: 46, scope: !487)
!526 = !DILocation(line: 69, column: 43, scope: !487)
!527 = !DILocation(line: 69, column: 57, scope: !487)
!528 = !DILocation(line: 70, column: 5, scope: !487)
!529 = !DILocation(line: 70, column: 16, scope: !487)
!530 = distinct !{!530, !509, !531}
!531 = !DILocation(line: 70, column: 38, scope: !487)
!532 = !DILocation(line: 71, column: 1, scope: !487)
!533 = distinct !DISubprogram(name: "xen_get_runstate_snapshot", scope: !3, file: !3, line: 141, type: !534, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !73)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !45}
!536 = !DILocalVariable(name: "res", arg: 1, scope: !533, file: !3, line: 141, type: !45)
!537 = !DILocation(line: 141, column: 59, scope: !533)
!538 = !DILocation(line: 143, column: 32, scope: !533)
!539 = !DILocation(line: 143, column: 2, scope: !533)
!540 = !DILocation(line: 144, column: 1, scope: !533)
!541 = distinct !DISubprogram(name: "xen_get_runstate_snapshot_cpu", scope: !3, file: !3, line: 73, type: !488, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!542 = !DILocalVariable(name: "res", arg: 1, scope: !541, file: !3, line: 73, type: !45)
!543 = !DILocation(line: 73, column: 70, scope: !541)
!544 = !DILocalVariable(name: "cpu", arg: 2, scope: !541, file: !3, line: 74, type: !11)
!545 = !DILocation(line: 74, column: 21, scope: !541)
!546 = !DILocalVariable(name: "i", scope: !541, file: !3, line: 76, type: !6)
!547 = !DILocation(line: 76, column: 6, scope: !541)
!548 = !DILocation(line: 78, column: 38, scope: !541)
!549 = !DILocation(line: 78, column: 43, scope: !541)
!550 = !DILocation(line: 78, column: 2, scope: !541)
!551 = !DILocation(line: 80, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !541, file: !3, line: 80, column: 2)
!553 = !DILocation(line: 80, column: 7, scope: !552)
!554 = !DILocation(line: 80, column: 14, scope: !555)
!555 = distinct !DILexicalBlock(scope: !552, file: !3, line: 80, column: 2)
!556 = !DILocation(line: 80, column: 16, scope: !555)
!557 = !DILocation(line: 80, column: 2, scope: !552)
!558 = !DILocation(line: 81, column: 19, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !3, line: 81, column: 19)
!560 = !DILocation(line: 81, column: 19, scope: !561)
!561 = distinct !DILexicalBlock(scope: !559, file: !3, line: 81, column: 19)
!562 = !DILocalVariable(name: "__vpp_verify", scope: !563, file: !3, line: 81, type: !154)
!563 = distinct !DILexicalBlock(scope: !561, file: !3, line: 81, column: 19)
!564 = !DILocation(line: 81, column: 19, scope: !563)
!565 = !DILocation(line: 81, column: 51, scope: !555)
!566 = !DILocation(line: 81, column: 19, scope: !555)
!567 = !DILocation(line: 81, column: 3, scope: !555)
!568 = !DILocation(line: 81, column: 8, scope: !555)
!569 = !DILocation(line: 81, column: 13, scope: !555)
!570 = !DILocation(line: 81, column: 16, scope: !555)
!571 = !DILocation(line: 80, column: 22, scope: !555)
!572 = !DILocation(line: 80, column: 2, scope: !555)
!573 = distinct !{!573, !557, !574}
!574 = !DILocation(line: 81, column: 52, scope: !552)
!575 = !DILocation(line: 82, column: 1, scope: !541)
!576 = distinct !DISubprogram(name: "xen_vcpu_stolen", scope: !3, file: !3, line: 147, type: !577, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !73)
!577 = !DISubroutineType(types: !578)
!578 = !{!67, !6}
!579 = !DILocalVariable(name: "vcpu", arg: 1, scope: !576, file: !3, line: 147, type: !6)
!580 = !DILocation(line: 147, column: 26, scope: !576)
!581 = !DILocation(line: 149, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !576, file: !3, line: 149, column: 9)
!583 = !DILocation(line: 149, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !3, line: 149, column: 9)
!585 = !DILocalVariable(name: "__vpp_verify", scope: !586, file: !3, line: 149, type: !154)
!586 = distinct !DILexicalBlock(scope: !584, file: !3, line: 149, column: 9)
!587 = !DILocation(line: 149, column: 9, scope: !586)
!588 = !DILocation(line: 149, column: 37, scope: !576)
!589 = !DILocation(line: 149, column: 43, scope: !576)
!590 = !DILocation(line: 149, column: 2, scope: !576)
!591 = distinct !DISubprogram(name: "xen_steal_clock", scope: !3, file: !3, line: 152, type: !592, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !73)
!592 = !DISubroutineType(types: !593)
!593 = !{!37, !6}
!594 = !DILocalVariable(name: "cpu", arg: 1, scope: !591, file: !3, line: 152, type: !6)
!595 = !DILocation(line: 152, column: 25, scope: !591)
!596 = !DILocalVariable(name: "state", scope: !591, file: !3, line: 154, type: !46)
!597 = !DILocation(line: 154, column: 28, scope: !591)
!598 = !DILocation(line: 156, column: 40, scope: !591)
!599 = !DILocation(line: 156, column: 2, scope: !591)
!600 = !DILocation(line: 157, column: 15, scope: !591)
!601 = !DILocation(line: 157, column: 9, scope: !591)
!602 = !DILocation(line: 157, column: 47, scope: !591)
!603 = !DILocation(line: 157, column: 41, scope: !591)
!604 = !DILocation(line: 157, column: 39, scope: !591)
!605 = !DILocation(line: 157, column: 2, scope: !591)
!606 = distinct !DISubprogram(name: "xen_setup_runstate_info", scope: !3, file: !3, line: 160, type: !4, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !73)
!607 = !DILocalVariable(name: "cpu", arg: 1, scope: !606, file: !3, line: 160, type: !6)
!608 = !DILocation(line: 160, column: 34, scope: !606)
!609 = !DILocalVariable(name: "area", scope: !606, file: !3, line: 162, type: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vcpu_register_runstate_memory_area", file: !47, line: 127, size: 64, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !610, file: !47, line: 132, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !47, line: 128, size: 64, elements: !614)
!614 = !{!615, !617, !618}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !613, file: !47, line: 129, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_vcpu_runstate_info", file: !47, line: 94, baseType: !45)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !613, file: !47, line: 130, baseType: !45, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !613, file: !47, line: 131, baseType: !51, size: 64)
!619 = !DILocation(line: 162, column: 44, scope: !606)
!620 = !DILocation(line: 164, column: 17, scope: !621)
!621 = distinct !DILexicalBlock(scope: !606, file: !3, line: 164, column: 17)
!622 = !DILocation(line: 164, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !621, file: !3, line: 164, column: 17)
!624 = !DILocalVariable(name: "__vpp_verify", scope: !625, file: !3, line: 164, type: !154)
!625 = distinct !DILexicalBlock(scope: !623, file: !3, line: 164, column: 17)
!626 = !DILocation(line: 164, column: 17, scope: !625)
!627 = !DILocation(line: 164, column: 7, scope: !606)
!628 = !DILocation(line: 164, column: 12, scope: !606)
!629 = !DILocation(line: 164, column: 14, scope: !606)
!630 = !DILocation(line: 167, column: 23, scope: !631)
!631 = distinct !DILexicalBlock(scope: !606, file: !3, line: 166, column: 6)
!632 = !DILocation(line: 167, column: 11, scope: !631)
!633 = !DILocation(line: 167, column: 29, scope: !631)
!634 = !DILocation(line: 166, column: 6, scope: !631)
!635 = !DILocation(line: 166, column: 6, scope: !606)
!636 = !DILocation(line: 168, column: 3, scope: !631)
!637 = !DILocation(line: 168, column: 3, scope: !638)
!638 = distinct !DILexicalBlock(scope: !631, file: !3, line: 168, column: 3)
!639 = !DILocation(line: 168, column: 3, scope: !640)
!640 = distinct !DILexicalBlock(scope: !638, file: !3, line: 168, column: 3)
!641 = !DILocation(line: 168, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !3, line: 168, column: 3)
!643 = !{i32 -2141695032, i32 -2141695003, i32 -2141694957, i32 -2141694899, i32 -2141694845, i32 -2141694791, i32 -2141694736, i32 -2141694705}
!644 = !DILocation(line: 168, column: 3, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 168, column: 3)
!646 = distinct !DILexicalBlock(scope: !638, file: !3, line: 168, column: 3)
!647 = !{i32 -2141694264, i32 -2141694257, i32 -2141694203, i32 -2141694172, i32 -2141694142}
!648 = !DILocation(line: 168, column: 3, scope: !646)
!649 = !DILocation(line: 169, column: 1, scope: !606)
!650 = distinct !DISubprogram(name: "HYPERVISOR_vcpu_op", scope: !651, file: !651, line: 392, type: !652, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!651 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!652 = !DISubroutineType(types: !653)
!653 = !{!6, !6, !6, !44}
!654 = !DILocalVariable(name: "cmd", arg: 1, scope: !650, file: !651, line: 392, type: !6)
!655 = !DILocation(line: 392, column: 24, scope: !650)
!656 = !DILocalVariable(name: "vcpuid", arg: 2, scope: !650, file: !651, line: 392, type: !6)
!657 = !DILocation(line: 392, column: 33, scope: !650)
!658 = !DILocalVariable(name: "extra_args", arg: 3, scope: !650, file: !651, line: 392, type: !44)
!659 = !DILocation(line: 392, column: 47, scope: !650)
!660 = !DILocalVariable(name: "__res", scope: !661, file: !651, line: 394, type: !32)
!661 = distinct !DILexicalBlock(scope: !650, file: !651, line: 394, column: 9)
!662 = !DILocation(line: 394, column: 9, scope: !661)
!663 = !DILocalVariable(name: "__arg1", scope: !661, file: !651, line: 394, type: !32)
!664 = !DILocalVariable(name: "__arg2", scope: !661, file: !651, line: 394, type: !32)
!665 = !DILocalVariable(name: "__arg3", scope: !661, file: !651, line: 394, type: !32)
!666 = !DILocalVariable(name: "__arg4", scope: !661, file: !651, line: 394, type: !32)
!667 = !DILocalVariable(name: "__arg5", scope: !661, file: !651, line: 394, type: !32)
!668 = !{i32 -2142842913}
!669 = !DILocation(line: 394, column: 2, scope: !650)
!670 = distinct !DISubprogram(name: "xen_vcpu_nr", scope: !671, file: !671, line: 15, type: !672, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!671 = !DIFile(filename: "./include/xen/xen-ops.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DISubroutineType(types: !673)
!673 = !{!61, !6}
!674 = !DILocalVariable(name: "cpu", arg: 1, scope: !670, file: !671, line: 15, type: !6)
!675 = !DILocation(line: 15, column: 40, scope: !670)
!676 = !DILocation(line: 17, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !670, file: !671, line: 17, column: 9)
!678 = !DILocation(line: 17, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !677, file: !671, line: 17, column: 9)
!680 = !DILocalVariable(name: "__vpp_verify", scope: !681, file: !671, line: 17, type: !154)
!681 = distinct !DILexicalBlock(scope: !679, file: !671, line: 17, column: 9)
!682 = !DILocation(line: 17, column: 9, scope: !681)
!683 = !DILocation(line: 17, column: 9, scope: !670)
!684 = !DILocation(line: 17, column: 2, scope: !670)
!685 = distinct !DISubprogram(name: "xen_time_setup_guest", scope: !3, file: !3, line: 171, type: !686, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !73)
!686 = !DISubroutineType(types: !687)
!687 = !{null}
!688 = !DILocalVariable(name: "xen_runstate_remote", scope: !685, file: !3, line: 173, type: !67)
!689 = !DILocation(line: 173, column: 7, scope: !685)
!690 = !DILocation(line: 175, column: 25, scope: !685)
!691 = !DILocation(line: 175, column: 24, scope: !685)
!692 = !DILocation(line: 175, column: 22, scope: !685)
!693 = !DILocation(line: 178, column: 26, scope: !685)
!694 = !DILocation(line: 180, column: 2, scope: !685)
!695 = !DILocation(line: 181, column: 6, scope: !696)
!696 = distinct !DILexicalBlock(scope: !685, file: !3, line: 181, column: 6)
!697 = !DILocation(line: 181, column: 6, scope: !685)
!698 = !DILocation(line: 182, column: 3, scope: !696)
!699 = !DILocation(line: 183, column: 1, scope: !685)
!700 = distinct !DISubprogram(name: "HYPERVISOR_vm_assist", scope: !651, file: !651, line: 386, type: !701, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!701 = !DISubroutineType(types: !702)
!702 = !{!6, !11, !11}
!703 = !DILocalVariable(name: "cmd", arg: 1, scope: !700, file: !651, line: 386, type: !11)
!704 = !DILocation(line: 386, column: 35, scope: !700)
!705 = !DILocalVariable(name: "type", arg: 2, scope: !700, file: !651, line: 386, type: !11)
!706 = !DILocation(line: 386, column: 53, scope: !700)
!707 = !DILocalVariable(name: "__res", scope: !708, file: !651, line: 388, type: !32)
!708 = distinct !DILexicalBlock(scope: !700, file: !651, line: 388, column: 9)
!709 = !DILocation(line: 388, column: 9, scope: !708)
!710 = !DILocalVariable(name: "__arg1", scope: !708, file: !651, line: 388, type: !32)
!711 = !DILocalVariable(name: "__arg2", scope: !708, file: !651, line: 388, type: !32)
!712 = !DILocalVariable(name: "__arg3", scope: !708, file: !651, line: 388, type: !32)
!713 = !DILocalVariable(name: "__arg4", scope: !708, file: !651, line: 388, type: !32)
!714 = !DILocalVariable(name: "__arg5", scope: !708, file: !651, line: 388, type: !32)
!715 = !{i32 -2142844397}
!716 = !DILocation(line: 388, column: 2, scope: !700)
!717 = distinct !DISubprogram(name: "static_key_slow_inc", scope: !718, file: !718, line: 276, type: !719, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!718 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!719 = !DISubroutineType(types: !720)
!720 = !{null, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !718, line: 110, size: 32, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !722, file: !718, line: 111, baseType: !725, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !24, line: 168, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 166, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !726, file: !24, line: 167, baseType: !6, size: 32)
!729 = !DILocalVariable(name: "v", arg: 1, scope: !730, file: !731, line: 93, type: !734)
!730 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !731, file: !731, line: 93, type: !732, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!731 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!732 = !DISubroutineType(types: !733)
!733 = !{null, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!735 = !DILocation(line: 93, column: 55, scope: !730, inlinedAt: !736)
!736 = distinct !DILocation(line: 241, column: 2, scope: !737, inlinedAt: !739)
!737 = distinct !DISubprogram(name: "atomic_inc", scope: !738, file: !738, line: 238, type: !732, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!738 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!739 = distinct !DILocation(line: 279, column: 2, scope: !717)
!740 = !DILocalVariable(name: "v", arg: 1, scope: !741, file: !742, line: 99, type: !745)
!741 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !742, file: !742, line: 99, type: !743, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!742 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!743 = !DISubroutineType(types: !744)
!744 = !{null, !745, !184}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!748 = !DILocation(line: 99, column: 79, scope: !741, inlinedAt: !749)
!749 = distinct !DILocation(line: 240, column: 2, scope: !737, inlinedAt: !739)
!750 = !DILocalVariable(name: "size", arg: 2, scope: !741, file: !742, line: 99, type: !184)
!751 = !DILocation(line: 99, column: 89, scope: !741, inlinedAt: !749)
!752 = !DILocalVariable(name: "v", arg: 1, scope: !737, file: !738, line: 238, type: !734)
!753 = !DILocation(line: 238, column: 22, scope: !737, inlinedAt: !739)
!754 = !DILocalVariable(name: "key", arg: 1, scope: !717, file: !718, line: 276, type: !721)
!755 = !DILocation(line: 276, column: 59, scope: !717)
!756 = !DILocalVariable(name: "__ret_warn_on", scope: !757, file: !718, line: 278, type: !6)
!757 = distinct !DILexicalBlock(scope: !717, file: !718, line: 278, column: 2)
!758 = !DILocation(line: 278, column: 2, scope: !757)
!759 = !DILocation(line: 278, column: 2, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !718, line: 278, column: 2)
!761 = !DILocation(line: 278, column: 2, scope: !762)
!762 = distinct !DILexicalBlock(scope: !760, file: !718, line: 278, column: 2)
!763 = !DILocation(line: 278, column: 2, scope: !764)
!764 = distinct !DILexicalBlock(scope: !762, file: !718, line: 278, column: 2)
!765 = !DILocation(line: 278, column: 2, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !718, line: 278, column: 2)
!767 = !DILocation(line: 278, column: 2, scope: !768)
!768 = distinct !DILexicalBlock(scope: !766, file: !718, line: 278, column: 2)
!769 = !DILocation(line: 278, column: 2, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !718, line: 278, column: 2)
!771 = !{i32 -2146516479, i32 -2146516450, i32 -2146516404, i32 -2146516346, i32 -2146516292, i32 -2146516238, i32 -2146516183, i32 -2146516152}
!772 = !DILocation(line: 278, column: 2, scope: !773)
!773 = distinct !DILexicalBlock(scope: !766, file: !718, line: 278, column: 2)
!774 = !{i32 -2146515733, i32 -2146515726, i32 -2146515674, i32 -2146515643, i32 -2146515613}
!775 = !DILocation(line: 278, column: 2, scope: !776)
!776 = distinct !DILexicalBlock(scope: !766, file: !718, line: 278, column: 2)
!777 = !DILocation(line: 278, column: 2, scope: !778)
!778 = distinct !DILexicalBlock(scope: !762, file: !718, line: 278, column: 2)
!779 = !DILocation(line: 279, column: 14, scope: !717)
!780 = !DILocation(line: 279, column: 19, scope: !717)
!781 = !DILocation(line: 240, column: 31, scope: !737, inlinedAt: !739)
!782 = !DILocation(line: 101, column: 20, scope: !741, inlinedAt: !749)
!783 = !DILocation(line: 101, column: 23, scope: !741, inlinedAt: !749)
!784 = !DILocation(line: 101, column: 2, scope: !741, inlinedAt: !749)
!785 = !DILocation(line: 102, column: 2, scope: !741, inlinedAt: !749)
!786 = !DILocation(line: 241, column: 18, scope: !737, inlinedAt: !739)
!787 = !DILocation(line: 96, column: 16, scope: !730, inlinedAt: !736)
!788 = !DILocation(line: 96, column: 19, scope: !730, inlinedAt: !736)
!789 = !DILocation(line: 95, column: 2, scope: !730, inlinedAt: !736)
!790 = !{i32 -2146785289}
!791 = !DILocation(line: 280, column: 1, scope: !717)
!792 = distinct !DISubprogram(name: "__must_check_overflow", scope: !793, file: !793, line: 52, type: !794, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!793 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!794 = !DISubroutineType(types: !795)
!795 = !{!67, !67}
!796 = !DILocalVariable(name: "overflow", arg: 1, scope: !792, file: !793, line: 52, type: !67)
!797 = !DILocation(line: 52, column: 60, scope: !792)
!798 = !DILocation(line: 54, column: 9, scope: !792)
!799 = !DILocation(line: 54, column: 2, scope: !792)
!800 = distinct !DISubprogram(name: "get_order", scope: !801, file: !801, line: 29, type: !802, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!801 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!802 = !DISubroutineType(types: !803)
!803 = !{!6, !32}
!804 = !DILocalVariable(name: "x", arg: 1, scope: !805, file: !806, line: 366, type: !39)
!805 = distinct !DISubprogram(name: "fls64", scope: !806, file: !806, line: 366, type: !807, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!806 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!807 = !DISubroutineType(types: !808)
!808 = !{!6, !39}
!809 = !DILocation(line: 366, column: 40, scope: !805, inlinedAt: !810)
!810 = distinct !DILocation(line: 46, column: 9, scope: !800)
!811 = !DILocalVariable(name: "bitpos", scope: !805, file: !806, line: 368, type: !6)
!812 = !DILocation(line: 368, column: 6, scope: !805, inlinedAt: !810)
!813 = !DILocalVariable(name: "size", arg: 1, scope: !800, file: !801, line: 29, type: !32)
!814 = !DILocation(line: 29, column: 63, scope: !800)
!815 = !DILocation(line: 31, column: 27, scope: !816)
!816 = distinct !DILexicalBlock(scope: !800, file: !801, line: 31, column: 6)
!817 = !DILocation(line: 31, column: 6, scope: !816)
!818 = !DILocation(line: 31, column: 6, scope: !800)
!819 = !DILocation(line: 32, column: 8, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !801, line: 32, column: 7)
!821 = distinct !DILexicalBlock(scope: !816, file: !801, line: 31, column: 34)
!822 = !DILocation(line: 32, column: 7, scope: !821)
!823 = !DILocation(line: 33, column: 4, scope: !820)
!824 = !DILocation(line: 35, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !801, line: 35, column: 7)
!826 = !DILocation(line: 35, column: 12, scope: !825)
!827 = !DILocation(line: 35, column: 7, scope: !821)
!828 = !DILocation(line: 36, column: 4, scope: !825)
!829 = !DILocation(line: 38, column: 10, scope: !821)
!830 = !DILocation(line: 38, column: 28, scope: !821)
!831 = !DILocation(line: 38, column: 41, scope: !821)
!832 = !DILocation(line: 38, column: 3, scope: !821)
!833 = !DILocation(line: 41, column: 6, scope: !800)
!834 = !DILocation(line: 42, column: 7, scope: !800)
!835 = !DILocation(line: 46, column: 15, scope: !800)
!836 = !DILocation(line: 374, column: 2, scope: !805, inlinedAt: !810)
!837 = !DILocation(line: 376, column: 14, scope: !805, inlinedAt: !810)
!838 = !{i32 243235}
!839 = !DILocation(line: 377, column: 9, scope: !805, inlinedAt: !810)
!840 = !DILocation(line: 377, column: 16, scope: !805, inlinedAt: !810)
!841 = !DILocation(line: 46, column: 2, scope: !800)
!842 = !DILocation(line: 48, column: 1, scope: !800)
!843 = distinct !DISubprogram(name: "__ilog2_u64", scope: !844, file: !844, line: 30, type: !845, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!844 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!845 = !DISubroutineType(types: !846)
!846 = !{!6, !37}
!847 = !DILocation(line: 366, column: 40, scope: !805, inlinedAt: !848)
!848 = distinct !DILocation(line: 32, column: 9, scope: !843)
!849 = !DILocation(line: 368, column: 6, scope: !805, inlinedAt: !848)
!850 = !DILocalVariable(name: "n", arg: 1, scope: !843, file: !844, line: 30, type: !37)
!851 = !DILocation(line: 30, column: 21, scope: !843)
!852 = !DILocation(line: 32, column: 15, scope: !843)
!853 = !DILocation(line: 374, column: 2, scope: !805, inlinedAt: !848)
!854 = !DILocation(line: 376, column: 14, scope: !805, inlinedAt: !848)
!855 = !DILocation(line: 377, column: 9, scope: !805, inlinedAt: !848)
!856 = !DILocation(line: 377, column: 16, scope: !805, inlinedAt: !848)
!857 = !DILocation(line: 32, column: 18, scope: !843)
!858 = !DILocation(line: 32, column: 2, scope: !843)
!859 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !860, file: !860, line: 137, type: !861, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!860 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!861 = !DISubroutineType(types: !862)
!862 = !{!44, !192, !154, !184, !23}
!863 = !DILocalVariable(name: "s", arg: 1, scope: !859, file: !860, line: 137, type: !192)
!864 = !DILocation(line: 137, column: 54, scope: !859)
!865 = !DILocalVariable(name: "object", arg: 2, scope: !859, file: !860, line: 137, type: !154)
!866 = !DILocation(line: 137, column: 69, scope: !859)
!867 = !DILocalVariable(name: "size", arg: 3, scope: !859, file: !860, line: 138, type: !184)
!868 = !DILocation(line: 138, column: 12, scope: !859)
!869 = !DILocalVariable(name: "flags", arg: 4, scope: !859, file: !860, line: 138, type: !23)
!870 = !DILocation(line: 138, column: 24, scope: !859)
!871 = !DILocation(line: 140, column: 17, scope: !859)
!872 = !DILocation(line: 140, column: 2, scope: !859)
!873 = distinct !DISubprogram(name: "get64", scope: !3, file: !3, line: 27, type: !874, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!874 = !DISubroutineType(types: !875)
!875 = !{!37, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!878 = !DILocalVariable(name: "p", arg: 1, scope: !873, file: !3, line: 27, type: !876)
!879 = !DILocation(line: 27, column: 29, scope: !873)
!880 = !DILocalVariable(name: "ret", scope: !873, file: !3, line: 29, type: !37)
!881 = !DILocation(line: 29, column: 6, scope: !873)
!882 = !DILocation(line: 49, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 49, column: 9)
!884 = distinct !DILexicalBlock(scope: !873, file: !3, line: 31, column: 6)
!885 = !DILocation(line: 49, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 49, column: 9)
!887 = !DILocation(line: 49, column: 7, scope: !884)
!888 = !DILocation(line: 51, column: 9, scope: !873)
!889 = !DILocation(line: 51, column: 2, scope: !873)
!890 = distinct !DISubprogram(name: "kasan_check_write", scope: !891, file: !891, line: 38, type: !892, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!891 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!892 = !DISubroutineType(types: !893)
!893 = !{!67, !745, !11}
!894 = !DILocalVariable(name: "p", arg: 1, scope: !890, file: !891, line: 38, type: !745)
!895 = !DILocation(line: 38, column: 59, scope: !890)
!896 = !DILocalVariable(name: "size", arg: 2, scope: !890, file: !891, line: 38, type: !11)
!897 = !DILocation(line: 38, column: 75, scope: !890)
!898 = !DILocation(line: 40, column: 2, scope: !890)
!899 = distinct !DISubprogram(name: "kcsan_check_access", scope: !900, file: !900, line: 178, type: !901, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !73)
!900 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!901 = !DISubroutineType(types: !902)
!902 = !{null, !745, !184, !6}
!903 = !DILocalVariable(name: "ptr", arg: 1, scope: !899, file: !900, line: 178, type: !745)
!904 = !DILocation(line: 178, column: 60, scope: !899)
!905 = !DILocalVariable(name: "size", arg: 2, scope: !899, file: !900, line: 178, type: !184)
!906 = !DILocation(line: 178, column: 72, scope: !899)
!907 = !DILocalVariable(name: "type", arg: 3, scope: !899, file: !900, line: 179, type: !6)
!908 = !DILocation(line: 179, column: 15, scope: !899)
!909 = !DILocation(line: 179, column: 23, scope: !899)
