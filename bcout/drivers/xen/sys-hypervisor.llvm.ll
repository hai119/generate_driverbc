; ModuleID = '../bcout/drivers/xen/sys-hypervisor.llvm.bc'
source_filename = "drivers/xen/sys-hypervisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_hyper_sysfs_init6:\09\09\09"
module asm ".long\09hyper_sysfs_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_hypervisor_subsys_init6:\09\09\09"
module asm ".long\09hypervisor_subsys_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
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
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
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
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.24, %union.anon.28, %struct.key_restriction* }
%union.anon.22 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.23 = type { i64 }
%struct.kgid_t = type { i32 }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
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
%struct.hyp_sysfs_attr = type { %struct.attribute, i64 (%struct.hyp_sysfs_attr*, i8*)*, i64 (%struct.hyp_sysfs_attr*, i8*, i64)*, i8* }
%struct.pmu_mode = type { i8*, i32 }
%struct.kmem_cache = type opaque
%struct.xen_pmu_params = type { %struct.anon.64, i64, i32, i32 }
%struct.anon.64 = type { i32, i32 }
%struct.xen_platform_parameters = type { i64 }
%struct.xen_feature_info = type { i32, i32 }
%struct.xen_build_id = type { i32, [0 x i8] }
%struct.xenbus_transaction = type { i32 }
%struct.xen_compile_info = type { [64 x i8], [16 x i8], [32 x i8], [32 x i8] }

@__UNIQUE_ID___addressable_hyper_sysfs_init214 = internal global i8* bitcast (i32 ()* @hyper_sysfs_init to i8*), section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_hypervisor_subsys_init217 = internal global i8* bitcast (i32 ()* @hypervisor_subsys_init to i8*), section ".discard.addressable", align 8, !dbg !110
@xen_domain_type = external dso_local global i32, align 4
@xen_start_flags = external dso_local global i32, align 4
@hypervisor_kobj = external dso_local global %struct.kobject*, align 8
@xen_properties_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([7 x %struct.attribute*], [7 x %struct.attribute*]* @xen_properties_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !3100
@uuid_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @uuid_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3119
@xen_compilation_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @xen_compile_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !3121
@version_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @version_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !3132
@guest_type_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @guest_type_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3142
@type_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @type_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3144
@xen_pmu_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @xen_pmu_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !112
@.str = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@xen_pmu_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @pmu_mode_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @pmu_features_attr, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3086
@pmu_mode_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i16 420 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @pmu_mode_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* @pmu_mode_store, i8* null }, align 8, !dbg !3089
@pmu_features_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i16 420 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @pmu_features_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* @pmu_features_store, i8* null }, align 8, !dbg !3098
@.str.1 = private unnamed_addr constant [9 x i8] c"pmu_mode\00", align 1
@pmu_modes = internal global [4 x %struct.pmu_mode] [%struct.pmu_mode { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0 }, %struct.pmu_mode { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 1 }, %struct.pmu_mode { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2 }, %struct.pmu_mode { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 4 }], align 16, !dbg !3091
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"pmu_features\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@xen_properties_attrs = internal global [7 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @capabilities_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @changeset_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @virtual_start_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @pagesize_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @features_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @buildid_attr, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3102
@capabilities_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @capabilities_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3107
@changeset_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @changeset_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3109
@virtual_start_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @virtual_start_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3111
@pagesize_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @pagesize_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3113
@features_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @features_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3115
@buildid_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @buildid_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3117
@.str.10 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"changeset\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"virtual_start\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"pagesize\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"buildid\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"<denied>\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%pU\0A\00", align 1
@xenstored_ready = external dso_local global i32, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"compilation\00", align 1
@xen_compile_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @compiler_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @compiled_by_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @compile_date_attr, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3123
@compiler_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @compiler_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3126
@compiled_by_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @compiled_by_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3128
@compile_date_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @compile_date_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3130
@.str.27 = private unnamed_addr constant [9 x i8] c"compiler\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"compiled_by\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"compile_date\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@version_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @major_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @minor_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @extra_attr, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3134
@major_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @major_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3136
@minor_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @minor_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3138
@extra_attr = internal global %struct.hyp_sysfs_attr { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i16 292 }, i64 (%struct.hyp_sysfs_attr*, i8*)* @extra_show, i64 (%struct.hyp_sysfs_attr*, i8*, i64)* null, i8* null }, align 8, !dbg !3140
@.str.31 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"minor\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"guest_type\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"Xen\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"HVM\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"xen\0A\00", align 1
@hyp_sysfs_kobj_type = internal global %struct.kobj_type { void (%struct.kobject*)* null, %struct.sysfs_ops* @hyp_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !3146
@hyp_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @hyp_sysfs_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @hyp_sysfs_store }, align 8, !dbg !3148
@llvm.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_hyper_sysfs_init214 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_hypervisor_subsys_init217 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @hyper_sysfs_init() #0 section ".init.text" !dbg !3156 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3159, metadata !DIExpression()), !dbg !3160
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !3161
  %cmp = icmp ne i32 %0, 0, !dbg !3161
  br i1 %cmp, label %if.end, label %if.then, !dbg !3163

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3164
  br label %return, !dbg !3164

if.end:                                           ; preds = %entry
  %call = call i32 @xen_sysfs_type_init() #9, !dbg !3165
  store i32 %call, i32* %ret, align 4, !dbg !3166
  %1 = load i32, i32* %ret, align 4, !dbg !3167
  %tobool = icmp ne i32 %1, 0, !dbg !3167
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !3169

if.then1:                                         ; preds = %if.end
  br label %out, !dbg !3170

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @xen_sysfs_guest_type_init() #9, !dbg !3171
  store i32 %call3, i32* %ret, align 4, !dbg !3172
  %2 = load i32, i32* %ret, align 4, !dbg !3173
  %tobool4 = icmp ne i32 %2, 0, !dbg !3173
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3175

if.then5:                                         ; preds = %if.end2
  br label %guest_type_out, !dbg !3176

if.end6:                                          ; preds = %if.end2
  %call7 = call i32 @xen_sysfs_version_init() #9, !dbg !3177
  store i32 %call7, i32* %ret, align 4, !dbg !3178
  %3 = load i32, i32* %ret, align 4, !dbg !3179
  %tobool8 = icmp ne i32 %3, 0, !dbg !3179
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3181

if.then9:                                         ; preds = %if.end6
  br label %version_out, !dbg !3182

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @xen_sysfs_compilation_init() #9, !dbg !3183
  store i32 %call11, i32* %ret, align 4, !dbg !3184
  %4 = load i32, i32* %ret, align 4, !dbg !3185
  %tobool12 = icmp ne i32 %4, 0, !dbg !3185
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3187

if.then13:                                        ; preds = %if.end10
  br label %comp_out, !dbg !3188

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @xen_sysfs_uuid_init() #9, !dbg !3189
  store i32 %call15, i32* %ret, align 4, !dbg !3190
  %5 = load i32, i32* %ret, align 4, !dbg !3191
  %tobool16 = icmp ne i32 %5, 0, !dbg !3191
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3193

if.then17:                                        ; preds = %if.end14
  br label %uuid_out, !dbg !3194

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @xen_sysfs_properties_init() #9, !dbg !3195
  store i32 %call19, i32* %ret, align 4, !dbg !3196
  %6 = load i32, i32* %ret, align 4, !dbg !3197
  %tobool20 = icmp ne i32 %6, 0, !dbg !3197
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !3199

if.then21:                                        ; preds = %if.end18
  br label %prop_out, !dbg !3200

if.end22:                                         ; preds = %if.end18
  %7 = load i32, i32* @xen_domain_type, align 4, !dbg !3201
  %cmp23 = icmp ne i32 %7, 0, !dbg !3201
  br i1 %cmp23, label %land.lhs.true, label %if.end30, !dbg !3201

land.lhs.true:                                    ; preds = %if.end22
  %8 = load i32, i32* @xen_start_flags, align 4, !dbg !3201
  %and = and i32 %8, 2, !dbg !3201
  %tobool24 = icmp ne i32 %and, 0, !dbg !3201
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !3203

if.then25:                                        ; preds = %land.lhs.true
  %call26 = call i32 @xen_sysfs_pmu_init() #9, !dbg !3204
  store i32 %call26, i32* %ret, align 4, !dbg !3206
  %9 = load i32, i32* %ret, align 4, !dbg !3207
  %tobool27 = icmp ne i32 %9, 0, !dbg !3207
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !3209

if.then28:                                        ; preds = %if.then25
  %10 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3210
  call void @sysfs_remove_group(%struct.kobject* %10, %struct.attribute_group* @xen_properties_group) #10, !dbg !3212
  br label %prop_out, !dbg !3213

if.end29:                                         ; preds = %if.then25
  br label %if.end30, !dbg !3214

if.end30:                                         ; preds = %if.end29, %land.lhs.true, %if.end22
  br label %out, !dbg !3215

prop_out:                                         ; preds = %if.then28, %if.then21
  call void @llvm.dbg.label(metadata !3216), !dbg !3217
  %11 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3218
  call void @sysfs_remove_file(%struct.kobject* %11, %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @uuid_attr, i32 0, i32 0)) #10, !dbg !3219
  br label %uuid_out, !dbg !3219

uuid_out:                                         ; preds = %prop_out, %if.then17
  call void @llvm.dbg.label(metadata !3220), !dbg !3221
  %12 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3222
  call void @sysfs_remove_group(%struct.kobject* %12, %struct.attribute_group* @xen_compilation_group) #10, !dbg !3223
  br label %comp_out, !dbg !3223

comp_out:                                         ; preds = %uuid_out, %if.then13
  call void @llvm.dbg.label(metadata !3224), !dbg !3225
  %13 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3226
  call void @sysfs_remove_group(%struct.kobject* %13, %struct.attribute_group* @version_group) #10, !dbg !3227
  br label %version_out, !dbg !3227

version_out:                                      ; preds = %comp_out, %if.then9
  call void @llvm.dbg.label(metadata !3228), !dbg !3229
  %14 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3230
  call void @sysfs_remove_file(%struct.kobject* %14, %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @guest_type_attr, i32 0, i32 0)) #10, !dbg !3231
  br label %guest_type_out, !dbg !3231

guest_type_out:                                   ; preds = %version_out, %if.then5
  call void @llvm.dbg.label(metadata !3232), !dbg !3233
  %15 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3234
  call void @sysfs_remove_file(%struct.kobject* %15, %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @type_attr, i32 0, i32 0)) #10, !dbg !3235
  br label %out, !dbg !3235

out:                                              ; preds = %guest_type_out, %if.end30, %if.then1
  call void @llvm.dbg.label(metadata !3236), !dbg !3237
  %16 = load i32, i32* %ret, align 4, !dbg !3238
  store i32 %16, i32* %retval, align 4, !dbg !3239
  br label %return, !dbg !3239

return:                                           ; preds = %out, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !3240
  ret i32 %17, !dbg !3240
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @hypervisor_subsys_init() #0 section ".init.text" !dbg !3241 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !3242
  %cmp = icmp ne i32 %0, 0, !dbg !3242
  br i1 %cmp, label %if.end, label %if.then, !dbg !3244

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3245
  br label %return, !dbg !3245

if.end:                                           ; preds = %entry
  %1 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3246
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %1, i32 0, i32 4, !dbg !3247
  store %struct.kobj_type* @hyp_sysfs_kobj_type, %struct.kobj_type** %ktype, align 8, !dbg !3248
  store i32 0, i32* %retval, align 4, !dbg !3249
  br label %return, !dbg !3249

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !3250
  ret i32 %2, !dbg !3250
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_sysfs_type_init() #0 section ".init.text" !dbg !3251 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3252
  %call = call i32 @sysfs_create_file(%struct.kobject* %0, %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @type_attr, i32 0, i32 0)) #10, !dbg !3253
  ret i32 %call, !dbg !3254
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_sysfs_guest_type_init() #0 section ".init.text" !dbg !3255 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3256
  %call = call i32 @sysfs_create_file(%struct.kobject* %0, %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @guest_type_attr, i32 0, i32 0)) #10, !dbg !3257
  ret i32 %call, !dbg !3258
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_sysfs_version_init() #0 section ".init.text" !dbg !3259 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3260
  %call = call i32 @sysfs_create_group(%struct.kobject* %0, %struct.attribute_group* @version_group) #10, !dbg !3261
  ret i32 %call, !dbg !3262
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_sysfs_compilation_init() #0 section ".init.text" !dbg !3263 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3264
  %call = call i32 @sysfs_create_group(%struct.kobject* %0, %struct.attribute_group* @xen_compilation_group) #10, !dbg !3265
  ret i32 %call, !dbg !3266
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_sysfs_uuid_init() #0 section ".init.text" !dbg !3267 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3268
  %call = call i32 @sysfs_create_file(%struct.kobject* %0, %struct.attribute* getelementptr inbounds (%struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* @uuid_attr, i32 0, i32 0)) #10, !dbg !3269
  ret i32 %call, !dbg !3270
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_sysfs_properties_init() #0 section ".init.text" !dbg !3271 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3272
  %call = call i32 @sysfs_create_group(%struct.kobject* %0, %struct.attribute_group* @xen_properties_group) #10, !dbg !3273
  ret i32 %call, !dbg !3274
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_sysfs_pmu_init() #0 section ".init.text" !dbg !3275 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @hypervisor_kobj, align 8, !dbg !3276
  %call = call i32 @sysfs_create_group(%struct.kobject* %0, %struct.attribute_group* @xen_pmu_group) #10, !dbg !3277
  ret i32 %call, !dbg !3278
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr) #3 !dbg !3279 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3284, metadata !DIExpression()), !dbg !3285
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3286, metadata !DIExpression()), !dbg !3287
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3288
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3289
  call void @sysfs_remove_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #10, !dbg !3290
  ret void, !dbg !3291
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr) #3 !dbg !3292 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3295, metadata !DIExpression()), !dbg !3296
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3297, metadata !DIExpression()), !dbg !3298
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3299
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3300
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #10, !dbg !3301
  ret i32 %call, !dbg !3302
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pmu_mode_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !3303 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %xp = alloca %struct.xen_pmu_params, align 8
  %i = alloca i32, align 4
  %mode = alloca i32, align 4
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3308, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.declare(metadata %struct.xen_pmu_params* %xp, metadata !3310, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3324, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !3326, metadata !DIExpression()), !dbg !3327
  %version = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 0, !dbg !3328
  %maj = getelementptr inbounds %struct.anon.64, %struct.anon.64* %version, i32 0, i32 0, !dbg !3329
  store i32 0, i32* %maj, align 8, !dbg !3330
  %version1 = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 0, !dbg !3331
  %min = getelementptr inbounds %struct.anon.64, %struct.anon.64* %version1, i32 0, i32 1, !dbg !3332
  store i32 1, i32* %min, align 4, !dbg !3333
  %0 = bitcast %struct.xen_pmu_params* %xp to i8*, !dbg !3334
  %call = call i32 @HYPERVISOR_xenpmu_op(i32 0, i8* %0) #10, !dbg !3335
  store i32 %call, i32* %ret, align 4, !dbg !3336
  %1 = load i32, i32* %ret, align 4, !dbg !3337
  %tobool = icmp ne i32 %1, 0, !dbg !3337
  br i1 %tobool, label %if.then, label %if.end, !dbg !3339

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3340
  %conv = sext i32 %2 to i64, !dbg !3340
  store i64 %conv, i64* %retval, align 8, !dbg !3341
  br label %return, !dbg !3341

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 1, !dbg !3342
  %3 = load i64, i64* %val, align 8, !dbg !3342
  %conv2 = trunc i64 %3 to i32, !dbg !3343
  store i32 %conv2, i32* %mode, align 4, !dbg !3344
  store i32 0, i32* %i, align 4, !dbg !3345
  br label %for.cond, !dbg !3347

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !3348
  %conv3 = sext i32 %4 to i64, !dbg !3348
  %cmp = icmp ult i64 %conv3, 4, !dbg !3350
  br i1 %cmp, label %for.body, label %for.end, !dbg !3351

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %mode, align 4, !dbg !3352
  %6 = load i32, i32* %i, align 4, !dbg !3355
  %idxprom = sext i32 %6 to i64, !dbg !3356
  %arrayidx = getelementptr [4 x %struct.pmu_mode], [4 x %struct.pmu_mode]* @pmu_modes, i64 0, i64 %idxprom, !dbg !3356
  %mode5 = getelementptr inbounds %struct.pmu_mode, %struct.pmu_mode* %arrayidx, i32 0, i32 1, !dbg !3357
  %7 = load i32, i32* %mode5, align 8, !dbg !3357
  %cmp6 = icmp eq i32 %5, %7, !dbg !3358
  br i1 %cmp6, label %if.then8, label %if.end13, !dbg !3359

if.then8:                                         ; preds = %for.body
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !3360
  %9 = load i32, i32* %i, align 4, !dbg !3361
  %idxprom9 = sext i32 %9 to i64, !dbg !3362
  %arrayidx10 = getelementptr [4 x %struct.pmu_mode], [4 x %struct.pmu_mode]* @pmu_modes, i64 0, i64 %idxprom9, !dbg !3362
  %name = getelementptr inbounds %struct.pmu_mode, %struct.pmu_mode* %arrayidx10, i32 0, i32 0, !dbg !3363
  %10 = load i8*, i8** %name, align 16, !dbg !3363
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %10) #10, !dbg !3364
  %conv12 = sext i32 %call11 to i64, !dbg !3364
  store i64 %conv12, i64* %retval, align 8, !dbg !3365
  br label %return, !dbg !3365

if.end13:                                         ; preds = %for.body
  br label %for.inc, !dbg !3366

for.inc:                                          ; preds = %if.end13
  %11 = load i32, i32* %i, align 4, !dbg !3367
  %inc = add i32 %11, 1, !dbg !3367
  store i32 %inc, i32* %i, align 4, !dbg !3367
  br label %for.cond, !dbg !3368, !llvm.loop !3369

for.end:                                          ; preds = %for.cond
  store i64 -22, i64* %retval, align 8, !dbg !3371
  br label %return, !dbg !3371

return:                                           ; preds = %for.end, %if.then8, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !3372
  ret i64 %12, !dbg !3372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pmu_mode_store(%struct.hyp_sysfs_attr* %attr, i8* %buffer, i64 %len) #3 !dbg !3373 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %xp = alloca %struct.xen_pmu_params, align 8
  %i = alloca i32, align 4
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !3374, metadata !DIExpression()), !dbg !3375
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3376, metadata !DIExpression()), !dbg !3377
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3380, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.declare(metadata %struct.xen_pmu_params* %xp, metadata !3382, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3384, metadata !DIExpression()), !dbg !3385
  store i32 0, i32* %i, align 4, !dbg !3386
  br label %for.cond, !dbg !3388

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3389
  %conv = sext i32 %0 to i64, !dbg !3389
  %cmp = icmp ult i64 %conv, 4, !dbg !3391
  br i1 %cmp, label %for.body, label %for.end, !dbg !3392

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %buffer.addr, align 8, !dbg !3393
  %2 = load i32, i32* %i, align 4, !dbg !3396
  %idxprom = sext i32 %2 to i64, !dbg !3397
  %arrayidx = getelementptr [4 x %struct.pmu_mode], [4 x %struct.pmu_mode]* @pmu_modes, i64 0, i64 %idxprom, !dbg !3397
  %name = getelementptr inbounds %struct.pmu_mode, %struct.pmu_mode* %arrayidx, i32 0, i32 0, !dbg !3398
  %3 = load i8*, i8** %name, align 16, !dbg !3398
  %4 = load i64, i64* %len.addr, align 8, !dbg !3399
  %sub = sub i64 %4, 1, !dbg !3400
  %call = call i32 @strncmp(i8* %1, i8* %3, i64 %sub) #10, !dbg !3401
  %cmp2 = icmp eq i32 %call, 0, !dbg !3402
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3403

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !3404
  %idxprom4 = sext i32 %5 to i64, !dbg !3406
  %arrayidx5 = getelementptr [4 x %struct.pmu_mode], [4 x %struct.pmu_mode]* @pmu_modes, i64 0, i64 %idxprom4, !dbg !3406
  %mode = getelementptr inbounds %struct.pmu_mode, %struct.pmu_mode* %arrayidx5, i32 0, i32 1, !dbg !3407
  %6 = load i32, i32* %mode, align 8, !dbg !3407
  %conv6 = zext i32 %6 to i64, !dbg !3406
  %val = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 1, !dbg !3408
  store i64 %conv6, i64* %val, align 8, !dbg !3409
  br label %for.end, !dbg !3410

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3411

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !3412
  %inc = add i32 %7, 1, !dbg !3412
  store i32 %inc, i32* %i, align 4, !dbg !3412
  br label %for.cond, !dbg !3413, !llvm.loop !3414

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !3416
  %conv7 = sext i32 %8 to i64, !dbg !3416
  %cmp8 = icmp eq i64 %conv7, 4, !dbg !3418
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !3419

if.then10:                                        ; preds = %for.end
  store i64 -22, i64* %retval, align 8, !dbg !3420
  br label %return, !dbg !3420

if.end11:                                         ; preds = %for.end
  %version = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 0, !dbg !3421
  %maj = getelementptr inbounds %struct.anon.64, %struct.anon.64* %version, i32 0, i32 0, !dbg !3422
  store i32 0, i32* %maj, align 8, !dbg !3423
  %version12 = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 0, !dbg !3424
  %min = getelementptr inbounds %struct.anon.64, %struct.anon.64* %version12, i32 0, i32 1, !dbg !3425
  store i32 1, i32* %min, align 4, !dbg !3426
  %9 = bitcast %struct.xen_pmu_params* %xp to i8*, !dbg !3427
  %call13 = call i32 @HYPERVISOR_xenpmu_op(i32 1, i8* %9) #10, !dbg !3428
  store i32 %call13, i32* %ret, align 4, !dbg !3429
  %10 = load i32, i32* %ret, align 4, !dbg !3430
  %tobool = icmp ne i32 %10, 0, !dbg !3430
  br i1 %tobool, label %if.then14, label %if.end16, !dbg !3432

if.then14:                                        ; preds = %if.end11
  %11 = load i32, i32* %ret, align 4, !dbg !3433
  %conv15 = sext i32 %11 to i64, !dbg !3433
  store i64 %conv15, i64* %retval, align 8, !dbg !3434
  br label %return, !dbg !3434

if.end16:                                         ; preds = %if.end11
  %12 = load i64, i64* %len.addr, align 8, !dbg !3435
  store i64 %12, i64* %retval, align 8, !dbg !3436
  br label %return, !dbg !3436

return:                                           ; preds = %if.end16, %if.then14, %if.then10
  %13 = load i64, i64* %retval, align 8, !dbg !3437
  ret i64 %13, !dbg !3437
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_xenpmu_op(i32 %op, i8* %arg) #3 !dbg !3438 {
entry:
  %op.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !3442, metadata !DIExpression()), !dbg !3443
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !3446, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !3449, metadata !DIExpression()), !dbg !3448
  %0 = load i64, i64* %__arg1, align 8, !dbg !3448
  store i64 %0, i64* %__arg1, align 8, !dbg !3448
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !3450, metadata !DIExpression()), !dbg !3448
  %1 = load i64, i64* %__arg2, align 8, !dbg !3448
  store i64 %1, i64* %__arg2, align 8, !dbg !3448
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !3451, metadata !DIExpression()), !dbg !3448
  %2 = load i64, i64* %__arg3, align 8, !dbg !3448
  store i64 %2, i64* %__arg3, align 8, !dbg !3448
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !3452, metadata !DIExpression()), !dbg !3448
  %3 = load i64, i64* %__arg4, align 8, !dbg !3448
  store i64 %3, i64* %__arg4, align 8, !dbg !3448
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !3453, metadata !DIExpression()), !dbg !3448
  %4 = load i64, i64* %__arg5, align 8, !dbg !3448
  store i64 %4, i64* %__arg5, align 8, !dbg !3448
  %5 = load i32, i32* %op.addr, align 4, !dbg !3448
  %conv = zext i32 %5 to i64, !dbg !3448
  store i64 %conv, i64* %__arg1, align 8, !dbg !3448
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !3448
  %7 = ptrtoint i8* %6 to i64, !dbg !3448
  store i64 %7, i64* %__arg2, align 8, !dbg !3448
  %8 = call i64 @llvm.read_register.i64(metadata !3150), !dbg !3448
  %9 = load i64, i64* %__arg1, align 8, !dbg !3448
  %10 = load i64, i64* %__arg2, align 8, !dbg !3448
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1280, i64 %8, i64 %9, i64 %10) #5, !dbg !3448, !srcloc !3454
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !3448
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !3448
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !3448
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !3448
  store i64 %asmresult, i64* %__res, align 8, !dbg !3448
  call void @llvm.write_register.i64(metadata !3150, i64 %asmresult1), !dbg !3448
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !3448
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !3448
  %12 = load i64, i64* %__res, align 8, !dbg !3448
  %conv4 = trunc i64 %12 to i32, !dbg !3448
  store i32 %conv4, i32* %tmp, align 4, !dbg !3448
  %13 = load i32, i32* %tmp, align 4, !dbg !3448
  ret i32 %13, !dbg !3455
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pmu_features_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !3456 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %xp = alloca %struct.xen_pmu_params, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3459, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.xen_pmu_params* %xp, metadata !3463, metadata !DIExpression()), !dbg !3464
  %version = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 0, !dbg !3465
  %maj = getelementptr inbounds %struct.anon.64, %struct.anon.64* %version, i32 0, i32 0, !dbg !3466
  store i32 0, i32* %maj, align 8, !dbg !3467
  %version1 = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 0, !dbg !3468
  %min = getelementptr inbounds %struct.anon.64, %struct.anon.64* %version1, i32 0, i32 1, !dbg !3469
  store i32 1, i32* %min, align 4, !dbg !3470
  %0 = bitcast %struct.xen_pmu_params* %xp to i8*, !dbg !3471
  %call = call i32 @HYPERVISOR_xenpmu_op(i32 2, i8* %0) #10, !dbg !3472
  store i32 %call, i32* %ret, align 4, !dbg !3473
  %1 = load i32, i32* %ret, align 4, !dbg !3474
  %tobool = icmp ne i32 %1, 0, !dbg !3474
  br i1 %tobool, label %if.then, label %if.end, !dbg !3476

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3477
  %conv = sext i32 %2 to i64, !dbg !3477
  store i64 %conv, i64* %retval, align 8, !dbg !3478
  br label %return, !dbg !3478

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !3479
  %val = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 1, !dbg !3480
  %4 = load i64, i64* %val, align 8, !dbg !3480
  %conv2 = trunc i64 %4 to i32, !dbg !3481
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %conv2) #10, !dbg !3482
  %conv4 = sext i32 %call3 to i64, !dbg !3482
  store i64 %conv4, i64* %retval, align 8, !dbg !3483
  br label %return, !dbg !3483

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !3484
  ret i64 %5, !dbg !3484
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pmu_features_store(%struct.hyp_sysfs_attr* %attr, i8* %buffer, i64 %len) #3 !dbg !3485 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %features = alloca i32, align 4
  %xp = alloca %struct.xen_pmu_params, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !3486, metadata !DIExpression()), !dbg !3487
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3488, metadata !DIExpression()), !dbg !3489
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3490, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3492, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.declare(metadata i32* %features, metadata !3494, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.declare(metadata %struct.xen_pmu_params* %xp, metadata !3496, metadata !DIExpression()), !dbg !3497
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !3498
  %call = call i32 @kstrtou32(i8* %0, i32 0, i32* %features) #10, !dbg !3499
  store i32 %call, i32* %ret, align 4, !dbg !3500
  %1 = load i32, i32* %ret, align 4, !dbg !3501
  %tobool = icmp ne i32 %1, 0, !dbg !3501
  br i1 %tobool, label %if.then, label %if.end, !dbg !3503

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3504
  %conv = sext i32 %2 to i64, !dbg !3504
  store i64 %conv, i64* %retval, align 8, !dbg !3505
  br label %return, !dbg !3505

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %features, align 4, !dbg !3506
  %conv1 = zext i32 %3 to i64, !dbg !3506
  %val = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 1, !dbg !3507
  store i64 %conv1, i64* %val, align 8, !dbg !3508
  %version = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 0, !dbg !3509
  %maj = getelementptr inbounds %struct.anon.64, %struct.anon.64* %version, i32 0, i32 0, !dbg !3510
  store i32 0, i32* %maj, align 8, !dbg !3511
  %version2 = getelementptr inbounds %struct.xen_pmu_params, %struct.xen_pmu_params* %xp, i32 0, i32 0, !dbg !3512
  %min = getelementptr inbounds %struct.anon.64, %struct.anon.64* %version2, i32 0, i32 1, !dbg !3513
  store i32 1, i32* %min, align 4, !dbg !3514
  %4 = bitcast %struct.xen_pmu_params* %xp to i8*, !dbg !3515
  %call3 = call i32 @HYPERVISOR_xenpmu_op(i32 3, i8* %4) #10, !dbg !3516
  store i32 %call3, i32* %ret, align 4, !dbg !3517
  %5 = load i32, i32* %ret, align 4, !dbg !3518
  %tobool4 = icmp ne i32 %5, 0, !dbg !3518
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !3520

if.then5:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !3521
  %conv6 = sext i32 %6 to i64, !dbg !3521
  store i64 %conv6, i64* %retval, align 8, !dbg !3522
  br label %return, !dbg !3522

if.end7:                                          ; preds = %if.end
  %7 = load i64, i64* %len.addr, align 8, !dbg !3523
  store i64 %7, i64* %retval, align 8, !dbg !3524
  br label %return, !dbg !3524

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %8 = load i64, i64* %retval, align 8, !dbg !3525
  ret i64 %8, !dbg !3525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtou32(i8* %s, i32 %base, i32* %res) #3 !dbg !3526 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3530, metadata !DIExpression()), !dbg !3531
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3532, metadata !DIExpression()), !dbg !3533
  store i32* %res, i32** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %res.addr, metadata !3534, metadata !DIExpression()), !dbg !3535
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3536
  %1 = load i32, i32* %base.addr, align 4, !dbg !3537
  %2 = load i32*, i32** %res.addr, align 8, !dbg !3538
  %call = call i32 @kstrtouint(i8* %0, i32 %1, i32* %2) #10, !dbg !3539
  ret i32 %call, !dbg !3540
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @capabilities_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !3541 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !3546
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3554, metadata !DIExpression()), !dbg !3555
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3556, metadata !DIExpression()), !dbg !3557
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3558, metadata !DIExpression()), !dbg !3559
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3560, metadata !DIExpression()), !dbg !3564
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3566, metadata !DIExpression()), !dbg !3570
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3572, metadata !DIExpression()), !dbg !3576
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3581, metadata !DIExpression()), !dbg !3582
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3583, metadata !DIExpression()), !dbg !3584
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3585, metadata !DIExpression()), !dbg !3586
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3587, metadata !DIExpression()), !dbg !3588
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3589, metadata !DIExpression()), !dbg !3590
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3591, metadata !DIExpression()), !dbg !3592
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3593, metadata !DIExpression()), !dbg !3594
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3595, metadata !DIExpression()), !dbg !3596
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %caps = alloca i8*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !3597, metadata !DIExpression()), !dbg !3598
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3601, metadata !DIExpression()), !dbg !3602
  store i32 -12, i32* %ret, align 4, !dbg !3602
  call void @llvm.dbg.declare(metadata i8** %caps, metadata !3603, metadata !DIExpression()), !dbg !3604
  store i64 1024, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !3605
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #5, !dbg !3606
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !3607

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3608
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !3609
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3610

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !3611
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !3612
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !3613
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !3614
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3590
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !3615
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3616
  %8 = load i32, i32* %order.i.i, align 4, !dbg !3617
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3618
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3619
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3620
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !3621
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3621
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3621
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3621
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !3621
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3622
  br label %kmalloc.exit, !dbg !3622

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !3623
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3624
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !3624
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3626

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3627
  br label %kmalloc_index.exit.i, !dbg !3627

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3628
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !3630
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3631

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3632
  br label %kmalloc_index.exit.i, !dbg !3632

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3633
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !3635
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3636

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3637
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !3638
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3639

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3640
  br label %kmalloc_index.exit.i, !dbg !3640

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3641
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !3643
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3644

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3645
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !3646
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3647

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3648
  br label %kmalloc_index.exit.i, !dbg !3648

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3649
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !3651
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3652

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3653
  br label %kmalloc_index.exit.i, !dbg !3653

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3654
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !3656
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3657

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3658
  br label %kmalloc_index.exit.i, !dbg !3658

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3659
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !3661
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3662

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3663
  br label %kmalloc_index.exit.i, !dbg !3663

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3664
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !3666
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3667

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3668
  br label %kmalloc_index.exit.i, !dbg !3668

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3669
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !3671
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3672

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3673
  br label %kmalloc_index.exit.i, !dbg !3673

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3674
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !3676
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3677

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3678
  br label %kmalloc_index.exit.i, !dbg !3678

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3679
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !3681
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3682

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3683
  br label %kmalloc_index.exit.i, !dbg !3683

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3684
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !3686
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3687

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3688
  br label %kmalloc_index.exit.i, !dbg !3688

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3689
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !3691
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3692

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3693
  br label %kmalloc_index.exit.i, !dbg !3693

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3694
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !3696
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3697

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3698
  br label %kmalloc_index.exit.i, !dbg !3698

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3699
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !3701
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3702

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3703
  br label %kmalloc_index.exit.i, !dbg !3703

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3704
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !3706
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3707

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3708
  br label %kmalloc_index.exit.i, !dbg !3708

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3709
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !3711
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3712

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3713
  br label %kmalloc_index.exit.i, !dbg !3713

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3714
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !3716
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3717

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3718
  br label %kmalloc_index.exit.i, !dbg !3718

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3719
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !3721
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3722

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3723
  br label %kmalloc_index.exit.i, !dbg !3723

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3724
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !3726
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3727

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3728
  br label %kmalloc_index.exit.i, !dbg !3728

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3729
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !3731
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3732

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3733
  br label %kmalloc_index.exit.i, !dbg !3733

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3734
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !3736
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3737

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3738
  br label %kmalloc_index.exit.i, !dbg !3738

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3739
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !3741
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3742

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3743
  br label %kmalloc_index.exit.i, !dbg !3743

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3744
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !3746
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3747

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3748
  br label %kmalloc_index.exit.i, !dbg !3748

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3749
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !3751
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3752

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3753
  br label %kmalloc_index.exit.i, !dbg !3753

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3754
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !3756
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3757

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3758
  br label %kmalloc_index.exit.i, !dbg !3758

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3759
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !3761
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3762

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3763
  br label %kmalloc_index.exit.i, !dbg !3763

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3764
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !3766
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3767

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3768
  br label %kmalloc_index.exit.i, !dbg !3768

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !3769, !srcloc !3772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !3773, !srcloc !3776
  unreachable, !dbg !3777

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !3778
  store i32 %43, i32* %index.i, align 4, !dbg !3779
  %44 = load i32, i32* %index.i, align 4, !dbg !3780
  %tobool.i = icmp ne i32 %44, 0, !dbg !3780
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3782

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3783
  br label %kmalloc.exit, !dbg !3783

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !3784
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3785
  %and.i.i = and i32 %46, 17, !dbg !3785
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3785
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3785
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3785
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3785
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3787

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3788
  br label %kmalloc_type.exit.i, !dbg !3788

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3789
  %and2.i.i = and i32 %47, 1, !dbg !3790
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3789
  %48 = zext i1 %tobool3.i.i to i64, !dbg !3789
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3789
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3791
  br label %kmalloc_type.exit.i, !dbg !3791

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !3792
  %idxprom.i = zext i32 %49 to i64, !dbg !3793
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3793
  %50 = load i32, i32* %index.i, align 4, !dbg !3794
  %idxprom6.i = zext i32 %50 to i64, !dbg !3793
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3793
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3793
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !3795
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !3796
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3797
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3798
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !3799
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3799
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3799
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3799
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !3799
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3559
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3800
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !3801
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3802
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3803
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !3804
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3805
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !3806
  store i8* %60, i8** %retval.i, align 8, !dbg !3807
  br label %kmalloc.exit, !dbg !3807

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !3808
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !3809
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !3810
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3810
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3810
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3810
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !3810
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3811
  br label %kmalloc.exit, !dbg !3811

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !3812
  store i8* %63, i8** %caps, align 8, !dbg !3813
  %64 = load i8*, i8** %caps, align 8, !dbg !3814
  %tobool = icmp ne i8* %64, null, !dbg !3814
  br i1 %tobool, label %if.then, label %if.end5, !dbg !3816

if.then:                                          ; preds = %kmalloc.exit
  %65 = load i8*, i8** %caps, align 8, !dbg !3817
  %call1 = call i32 @HYPERVISOR_xen_version(i32 3, i8* %65) #10, !dbg !3819
  store i32 %call1, i32* %ret, align 4, !dbg !3820
  %66 = load i32, i32* %ret, align 4, !dbg !3821
  %tobool2 = icmp ne i32 %66, 0, !dbg !3821
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !3823

if.then3:                                         ; preds = %if.then
  %67 = load i8*, i8** %buffer.addr, align 8, !dbg !3824
  %68 = load i8*, i8** %caps, align 8, !dbg !3825
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %68) #10, !dbg !3826
  store i32 %call4, i32* %ret, align 4, !dbg !3827
  br label %if.end, !dbg !3828

if.end:                                           ; preds = %if.then3, %if.then
  %69 = load i8*, i8** %caps, align 8, !dbg !3829
  call void @kfree(i8* %69) #10, !dbg !3830
  br label %if.end5, !dbg !3831

if.end5:                                          ; preds = %if.end, %kmalloc.exit
  %70 = load i32, i32* %ret, align 4, !dbg !3832
  %conv = sext i32 %70 to i64, !dbg !3832
  ret i64 %conv, !dbg !3833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_xen_version(i32 %cmd, i8* %arg) #3 !dbg !3834 {
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
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !3837, metadata !DIExpression()), !dbg !3838
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !3839, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !3841, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !3844, metadata !DIExpression()), !dbg !3843
  %0 = load i64, i64* %__arg1, align 8, !dbg !3843
  store i64 %0, i64* %__arg1, align 8, !dbg !3843
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !3845, metadata !DIExpression()), !dbg !3843
  %1 = load i64, i64* %__arg2, align 8, !dbg !3843
  store i64 %1, i64* %__arg2, align 8, !dbg !3843
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !3846, metadata !DIExpression()), !dbg !3843
  %2 = load i64, i64* %__arg3, align 8, !dbg !3843
  store i64 %2, i64* %__arg3, align 8, !dbg !3843
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !3847, metadata !DIExpression()), !dbg !3843
  %3 = load i64, i64* %__arg4, align 8, !dbg !3843
  store i64 %3, i64* %__arg4, align 8, !dbg !3843
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !3848, metadata !DIExpression()), !dbg !3843
  %4 = load i64, i64* %__arg5, align 8, !dbg !3843
  store i64 %4, i64* %__arg5, align 8, !dbg !3843
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !3843
  %conv = sext i32 %5 to i64, !dbg !3843
  store i64 %conv, i64* %__arg1, align 8, !dbg !3843
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !3843
  %7 = ptrtoint i8* %6 to i64, !dbg !3843
  store i64 %7, i64* %__arg2, align 8, !dbg !3843
  %8 = call i64 @llvm.read_register.i64(metadata !3150), !dbg !3843
  %9 = load i64, i64* %__arg1, align 8, !dbg !3843
  %10 = load i64, i64* %__arg2, align 8, !dbg !3843
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 544, i64 %8, i64 %9, i64 %10) #5, !dbg !3843, !srcloc !3849
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !3843
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !3843
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !3843
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !3843
  store i64 %asmresult, i64* %__res, align 8, !dbg !3843
  call void @llvm.write_register.i64(metadata !3150, i64 %asmresult1), !dbg !3843
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !3843
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !3843
  %12 = load i64, i64* %__res, align 8, !dbg !3843
  %conv4 = trunc i64 %12 to i32, !dbg !3843
  store i32 %conv4, i32* %tmp, align 4, !dbg !3843
  %13 = load i32, i32* %tmp, align 4, !dbg !3843
  ret i32 %13, !dbg !3850
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !3851 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3855, metadata !DIExpression()), !dbg !3860
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3862, metadata !DIExpression()), !dbg !3863
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3864, metadata !DIExpression()), !dbg !3865
  %0 = load i64, i64* %size.addr, align 8, !dbg !3866
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3868
  br i1 %1, label %if.then, label %if.end447, !dbg !3869

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3870
  %tobool = icmp ne i64 %2, 0, !dbg !3870
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3873

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3874
  br label %return, !dbg !3874

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3875
  %cmp = icmp ult i64 %3, 4096, !dbg !3877
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3878

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3879
  br label %return, !dbg !3879

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub = sub i64 %4, 1, !dbg !3880
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3880
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3880

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub4 = sub i64 %6, 1, !dbg !3880
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3880
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3880

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub6 = sub i64 %8, 1, !dbg !3880
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3880
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3880

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3880

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub9 = sub i64 %9, 1, !dbg !3880
  %and = and i64 %sub9, -9223372036854775808, !dbg !3880
  %tobool10 = icmp ne i64 %and, 0, !dbg !3880
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3880

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3880

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub13 = sub i64 %10, 1, !dbg !3880
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3880
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3880
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3880

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3880

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub18 = sub i64 %11, 1, !dbg !3880
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3880
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3880
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3880

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3880

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub23 = sub i64 %12, 1, !dbg !3880
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3880
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3880
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3880

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3880

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub28 = sub i64 %13, 1, !dbg !3880
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3880
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3880
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3880

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3880

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub33 = sub i64 %14, 1, !dbg !3880
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3880
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3880
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3880

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3880

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub38 = sub i64 %15, 1, !dbg !3880
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3880
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3880
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3880

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3880

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub43 = sub i64 %16, 1, !dbg !3880
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3880
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3880
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3880

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3880

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub48 = sub i64 %17, 1, !dbg !3880
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3880
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3880
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3880

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3880

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub53 = sub i64 %18, 1, !dbg !3880
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3880
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3880
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3880

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3880

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub58 = sub i64 %19, 1, !dbg !3880
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3880
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3880
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3880

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3880

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub63 = sub i64 %20, 1, !dbg !3880
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3880
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3880
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3880

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3880

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub68 = sub i64 %21, 1, !dbg !3880
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3880
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3880
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3880

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3880

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub73 = sub i64 %22, 1, !dbg !3880
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3880
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3880
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3880

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3880

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub78 = sub i64 %23, 1, !dbg !3880
  %and79 = and i64 %sub78, 562949953421312, !dbg !3880
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3880
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3880

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3880

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub83 = sub i64 %24, 1, !dbg !3880
  %and84 = and i64 %sub83, 281474976710656, !dbg !3880
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3880
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3880

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3880

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub88 = sub i64 %25, 1, !dbg !3880
  %and89 = and i64 %sub88, 140737488355328, !dbg !3880
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3880
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3880

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3880

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub93 = sub i64 %26, 1, !dbg !3880
  %and94 = and i64 %sub93, 70368744177664, !dbg !3880
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3880
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3880

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3880

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub98 = sub i64 %27, 1, !dbg !3880
  %and99 = and i64 %sub98, 35184372088832, !dbg !3880
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3880
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3880

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3880

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub103 = sub i64 %28, 1, !dbg !3880
  %and104 = and i64 %sub103, 17592186044416, !dbg !3880
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3880
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3880

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3880

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub108 = sub i64 %29, 1, !dbg !3880
  %and109 = and i64 %sub108, 8796093022208, !dbg !3880
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3880
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3880

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3880

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub113 = sub i64 %30, 1, !dbg !3880
  %and114 = and i64 %sub113, 4398046511104, !dbg !3880
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3880
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3880

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3880

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub118 = sub i64 %31, 1, !dbg !3880
  %and119 = and i64 %sub118, 2199023255552, !dbg !3880
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3880
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3880

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3880

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub123 = sub i64 %32, 1, !dbg !3880
  %and124 = and i64 %sub123, 1099511627776, !dbg !3880
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3880
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3880

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3880

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub128 = sub i64 %33, 1, !dbg !3880
  %and129 = and i64 %sub128, 549755813888, !dbg !3880
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3880
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3880

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3880

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub133 = sub i64 %34, 1, !dbg !3880
  %and134 = and i64 %sub133, 274877906944, !dbg !3880
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3880
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3880

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3880

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub138 = sub i64 %35, 1, !dbg !3880
  %and139 = and i64 %sub138, 137438953472, !dbg !3880
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3880
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3880

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3880

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub143 = sub i64 %36, 1, !dbg !3880
  %and144 = and i64 %sub143, 68719476736, !dbg !3880
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3880
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3880

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3880

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub148 = sub i64 %37, 1, !dbg !3880
  %and149 = and i64 %sub148, 34359738368, !dbg !3880
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3880
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3880

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3880

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub153 = sub i64 %38, 1, !dbg !3880
  %and154 = and i64 %sub153, 17179869184, !dbg !3880
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3880
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3880

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3880

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub158 = sub i64 %39, 1, !dbg !3880
  %and159 = and i64 %sub158, 8589934592, !dbg !3880
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3880
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3880

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3880

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub163 = sub i64 %40, 1, !dbg !3880
  %and164 = and i64 %sub163, 4294967296, !dbg !3880
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3880
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3880

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3880

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub168 = sub i64 %41, 1, !dbg !3880
  %and169 = and i64 %sub168, 2147483648, !dbg !3880
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3880
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3880

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3880

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub173 = sub i64 %42, 1, !dbg !3880
  %and174 = and i64 %sub173, 1073741824, !dbg !3880
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3880
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3880

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3880

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub178 = sub i64 %43, 1, !dbg !3880
  %and179 = and i64 %sub178, 536870912, !dbg !3880
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3880
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3880

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3880

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub183 = sub i64 %44, 1, !dbg !3880
  %and184 = and i64 %sub183, 268435456, !dbg !3880
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3880
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3880

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3880

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub188 = sub i64 %45, 1, !dbg !3880
  %and189 = and i64 %sub188, 134217728, !dbg !3880
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3880
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3880

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3880

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub193 = sub i64 %46, 1, !dbg !3880
  %and194 = and i64 %sub193, 67108864, !dbg !3880
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3880
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3880

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3880

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub198 = sub i64 %47, 1, !dbg !3880
  %and199 = and i64 %sub198, 33554432, !dbg !3880
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3880
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3880

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3880

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub203 = sub i64 %48, 1, !dbg !3880
  %and204 = and i64 %sub203, 16777216, !dbg !3880
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3880
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3880

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3880

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub208 = sub i64 %49, 1, !dbg !3880
  %and209 = and i64 %sub208, 8388608, !dbg !3880
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3880
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3880

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3880

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub213 = sub i64 %50, 1, !dbg !3880
  %and214 = and i64 %sub213, 4194304, !dbg !3880
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3880
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3880

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3880

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub218 = sub i64 %51, 1, !dbg !3880
  %and219 = and i64 %sub218, 2097152, !dbg !3880
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3880
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3880

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3880

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub223 = sub i64 %52, 1, !dbg !3880
  %and224 = and i64 %sub223, 1048576, !dbg !3880
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3880
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3880

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3880

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub228 = sub i64 %53, 1, !dbg !3880
  %and229 = and i64 %sub228, 524288, !dbg !3880
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3880
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3880

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3880

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub233 = sub i64 %54, 1, !dbg !3880
  %and234 = and i64 %sub233, 262144, !dbg !3880
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3880
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3880

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3880

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub238 = sub i64 %55, 1, !dbg !3880
  %and239 = and i64 %sub238, 131072, !dbg !3880
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3880
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3880

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3880

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub243 = sub i64 %56, 1, !dbg !3880
  %and244 = and i64 %sub243, 65536, !dbg !3880
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3880
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3880

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3880

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub248 = sub i64 %57, 1, !dbg !3880
  %and249 = and i64 %sub248, 32768, !dbg !3880
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3880
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3880

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3880

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub253 = sub i64 %58, 1, !dbg !3880
  %and254 = and i64 %sub253, 16384, !dbg !3880
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3880
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3880

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3880

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub258 = sub i64 %59, 1, !dbg !3880
  %and259 = and i64 %sub258, 8192, !dbg !3880
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3880
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3880

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3880

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub263 = sub i64 %60, 1, !dbg !3880
  %and264 = and i64 %sub263, 4096, !dbg !3880
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3880
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3880

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3880

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub268 = sub i64 %61, 1, !dbg !3880
  %and269 = and i64 %sub268, 2048, !dbg !3880
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3880
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3880

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3880

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub273 = sub i64 %62, 1, !dbg !3880
  %and274 = and i64 %sub273, 1024, !dbg !3880
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3880
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3880

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3880

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub278 = sub i64 %63, 1, !dbg !3880
  %and279 = and i64 %sub278, 512, !dbg !3880
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3880
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3880

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3880

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub283 = sub i64 %64, 1, !dbg !3880
  %and284 = and i64 %sub283, 256, !dbg !3880
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3880
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3880

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3880

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub288 = sub i64 %65, 1, !dbg !3880
  %and289 = and i64 %sub288, 128, !dbg !3880
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3880
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3880

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3880

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub293 = sub i64 %66, 1, !dbg !3880
  %and294 = and i64 %sub293, 64, !dbg !3880
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3880
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3880

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3880

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub298 = sub i64 %67, 1, !dbg !3880
  %and299 = and i64 %sub298, 32, !dbg !3880
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3880
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3880

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3880

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub303 = sub i64 %68, 1, !dbg !3880
  %and304 = and i64 %sub303, 16, !dbg !3880
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3880
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3880

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3880

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub308 = sub i64 %69, 1, !dbg !3880
  %and309 = and i64 %sub308, 8, !dbg !3880
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3880
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3880

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3880

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub313 = sub i64 %70, 1, !dbg !3880
  %and314 = and i64 %sub313, 4, !dbg !3880
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3880
  %71 = zext i1 %tobool315 to i64, !dbg !3880
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3880
  br label %cond.end, !dbg !3880

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3880
  br label %cond.end317, !dbg !3880

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3880
  br label %cond.end319, !dbg !3880

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3880
  br label %cond.end321, !dbg !3880

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3880
  br label %cond.end323, !dbg !3880

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3880
  br label %cond.end325, !dbg !3880

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3880
  br label %cond.end327, !dbg !3880

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3880
  br label %cond.end329, !dbg !3880

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3880
  br label %cond.end331, !dbg !3880

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3880
  br label %cond.end333, !dbg !3880

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3880
  br label %cond.end335, !dbg !3880

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3880
  br label %cond.end337, !dbg !3880

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3880
  br label %cond.end339, !dbg !3880

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3880
  br label %cond.end341, !dbg !3880

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3880
  br label %cond.end343, !dbg !3880

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3880
  br label %cond.end345, !dbg !3880

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3880
  br label %cond.end347, !dbg !3880

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3880
  br label %cond.end349, !dbg !3880

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3880
  br label %cond.end351, !dbg !3880

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3880
  br label %cond.end353, !dbg !3880

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3880
  br label %cond.end355, !dbg !3880

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3880
  br label %cond.end357, !dbg !3880

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3880
  br label %cond.end359, !dbg !3880

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3880
  br label %cond.end361, !dbg !3880

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3880
  br label %cond.end363, !dbg !3880

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3880
  br label %cond.end365, !dbg !3880

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3880
  br label %cond.end367, !dbg !3880

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3880
  br label %cond.end369, !dbg !3880

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3880
  br label %cond.end371, !dbg !3880

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3880
  br label %cond.end373, !dbg !3880

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3880
  br label %cond.end375, !dbg !3880

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3880
  br label %cond.end377, !dbg !3880

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3880
  br label %cond.end379, !dbg !3880

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3880
  br label %cond.end381, !dbg !3880

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3880
  br label %cond.end383, !dbg !3880

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3880
  br label %cond.end385, !dbg !3880

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3880
  br label %cond.end387, !dbg !3880

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3880
  br label %cond.end389, !dbg !3880

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3880
  br label %cond.end391, !dbg !3880

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3880
  br label %cond.end393, !dbg !3880

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3880
  br label %cond.end395, !dbg !3880

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3880
  br label %cond.end397, !dbg !3880

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3880
  br label %cond.end399, !dbg !3880

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3880
  br label %cond.end401, !dbg !3880

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3880
  br label %cond.end403, !dbg !3880

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3880
  br label %cond.end405, !dbg !3880

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3880
  br label %cond.end407, !dbg !3880

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3880
  br label %cond.end409, !dbg !3880

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3880
  br label %cond.end411, !dbg !3880

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3880
  br label %cond.end413, !dbg !3880

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3880
  br label %cond.end415, !dbg !3880

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3880
  br label %cond.end417, !dbg !3880

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3880
  br label %cond.end419, !dbg !3880

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3880
  br label %cond.end421, !dbg !3880

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3880
  br label %cond.end423, !dbg !3880

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3880
  br label %cond.end425, !dbg !3880

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3880
  br label %cond.end427, !dbg !3880

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3880
  br label %cond.end429, !dbg !3880

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3880
  br label %cond.end431, !dbg !3880

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3880
  br label %cond.end433, !dbg !3880

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3880
  br label %cond.end435, !dbg !3880

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3880
  br label %cond.end437, !dbg !3880

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3880
  br label %cond.end440, !dbg !3880

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3880

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3880
  br label %cond.end444, !dbg !3880

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3880
  %sub443 = sub i64 %72, 1, !dbg !3880
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3880
  br label %cond.end444, !dbg !3880

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3880
  %sub446 = sub i32 %cond445, 12, !dbg !3881
  %add = add i32 %sub446, 1, !dbg !3882
  store i32 %add, i32* %retval, align 4, !dbg !3883
  br label %return, !dbg !3883

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3884
  %dec = add i64 %73, -1, !dbg !3884
  store i64 %dec, i64* %size.addr, align 8, !dbg !3884
  %74 = load i64, i64* %size.addr, align 8, !dbg !3885
  %shr = lshr i64 %74, 12, !dbg !3885
  store i64 %shr, i64* %size.addr, align 8, !dbg !3885
  %75 = load i64, i64* %size.addr, align 8, !dbg !3886
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3863
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3887
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3888
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #4, !dbg !3887, !srcloc !3889
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3887
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3890
  %add.i = add i32 %79, 1, !dbg !3891
  store i32 %add.i, i32* %retval, align 4, !dbg !3892
  br label %return, !dbg !3892

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3893
  ret i32 %80, !dbg !3893
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !3894 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3855, metadata !DIExpression()), !dbg !3898
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3862, metadata !DIExpression()), !dbg !3900
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3901, metadata !DIExpression()), !dbg !3902
  %0 = load i64, i64* %n.addr, align 8, !dbg !3903
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3900
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3904
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3905
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #4, !dbg !3904, !srcloc !3889
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3904
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3906
  %add.i = add i32 %4, 1, !dbg !3907
  %sub = sub i32 %add.i, 1, !dbg !3908
  ret i32 %sub, !dbg !3909
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #3 !dbg !3910 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3913, metadata !DIExpression()), !dbg !3914
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3915, metadata !DIExpression()), !dbg !3916
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3917, metadata !DIExpression()), !dbg !3918
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3919, metadata !DIExpression()), !dbg !3920
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3921
  ret i8* %0, !dbg !3922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @changeset_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !3923 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !3924
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3554, metadata !DIExpression()), !dbg !3927
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3556, metadata !DIExpression()), !dbg !3928
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3558, metadata !DIExpression()), !dbg !3929
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3560, metadata !DIExpression()), !dbg !3930
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3566, metadata !DIExpression()), !dbg !3932
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3572, metadata !DIExpression()), !dbg !3934
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3581, metadata !DIExpression()), !dbg !3937
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3583, metadata !DIExpression()), !dbg !3938
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3585, metadata !DIExpression()), !dbg !3939
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3587, metadata !DIExpression()), !dbg !3940
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3589, metadata !DIExpression()), !dbg !3941
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3591, metadata !DIExpression()), !dbg !3942
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3593, metadata !DIExpression()), !dbg !3943
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3595, metadata !DIExpression()), !dbg !3944
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %cset = alloca i8*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !3945, metadata !DIExpression()), !dbg !3946
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3949, metadata !DIExpression()), !dbg !3950
  store i32 -12, i32* %ret, align 4, !dbg !3950
  call void @llvm.dbg.declare(metadata i8** %cset, metadata !3951, metadata !DIExpression()), !dbg !3952
  store i64 64, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !3953
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #5, !dbg !3954
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !3955

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3956
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !3957
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3958

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !3959
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !3960
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !3961
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !3962
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3941
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !3963
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3964
  %8 = load i32, i32* %order.i.i, align 4, !dbg !3965
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3966
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3967
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3968
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !3969
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3969
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3969
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3969
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !3969
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3970
  br label %kmalloc.exit, !dbg !3970

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !3971
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3972
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !3972
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3973

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3974
  br label %kmalloc_index.exit.i, !dbg !3974

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3975
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !3976
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3977

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3978
  br label %kmalloc_index.exit.i, !dbg !3978

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3979
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !3980
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3981

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3982
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !3983
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3984

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3985
  br label %kmalloc_index.exit.i, !dbg !3985

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3986
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !3987
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3988

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3989
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !3990
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3991

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3992
  br label %kmalloc_index.exit.i, !dbg !3992

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3993
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !3994
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3995

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3996
  br label %kmalloc_index.exit.i, !dbg !3996

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3997
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !3998
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3999

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4000
  br label %kmalloc_index.exit.i, !dbg !4000

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4001
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4002
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4003

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4004
  br label %kmalloc_index.exit.i, !dbg !4004

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4005
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4006
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4007

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4008
  br label %kmalloc_index.exit.i, !dbg !4008

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4009
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4010
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4011

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4012
  br label %kmalloc_index.exit.i, !dbg !4012

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4013
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4014
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4015

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4016
  br label %kmalloc_index.exit.i, !dbg !4016

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4017
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4018
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4019

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4020
  br label %kmalloc_index.exit.i, !dbg !4020

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4021
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4022
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4023

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4024
  br label %kmalloc_index.exit.i, !dbg !4024

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4025
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4026
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4027

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4028
  br label %kmalloc_index.exit.i, !dbg !4028

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4029
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4030
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4031

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4032
  br label %kmalloc_index.exit.i, !dbg !4032

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4033
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4034
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4035

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4036
  br label %kmalloc_index.exit.i, !dbg !4036

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4037
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4038
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4039

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4040
  br label %kmalloc_index.exit.i, !dbg !4040

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4041
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4042
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4043

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4044
  br label %kmalloc_index.exit.i, !dbg !4044

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4045
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4046
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4047

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4048
  br label %kmalloc_index.exit.i, !dbg !4048

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4049
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4050
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4051

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4052
  br label %kmalloc_index.exit.i, !dbg !4052

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4053
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4054
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4055

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4056
  br label %kmalloc_index.exit.i, !dbg !4056

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4057
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4058
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4059

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4060
  br label %kmalloc_index.exit.i, !dbg !4060

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4061
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4062
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4063

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4064
  br label %kmalloc_index.exit.i, !dbg !4064

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4065
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4066
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4067

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4068
  br label %kmalloc_index.exit.i, !dbg !4068

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4069
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4070
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4071

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4072
  br label %kmalloc_index.exit.i, !dbg !4072

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4073
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4074
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4075

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4076
  br label %kmalloc_index.exit.i, !dbg !4076

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4077
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4078
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4079

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4080
  br label %kmalloc_index.exit.i, !dbg !4080

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4081
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4082
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4083

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4084
  br label %kmalloc_index.exit.i, !dbg !4084

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4085
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !4086
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4087

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4088
  br label %kmalloc_index.exit.i, !dbg !4088

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !4089, !srcloc !3772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !4090, !srcloc !3776
  unreachable, !dbg !4091

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !4092
  store i32 %43, i32* %index.i, align 4, !dbg !4093
  %44 = load i32, i32* %index.i, align 4, !dbg !4094
  %tobool.i = icmp ne i32 %44, 0, !dbg !4094
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4095

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4096
  br label %kmalloc.exit, !dbg !4096

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !4097
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4098
  %and.i.i = and i32 %46, 17, !dbg !4098
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4098
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4098
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4098
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4098
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4099

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4100
  br label %kmalloc_type.exit.i, !dbg !4100

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4101
  %and2.i.i = and i32 %47, 1, !dbg !4102
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4101
  %48 = zext i1 %tobool3.i.i to i64, !dbg !4101
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4101
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4103
  br label %kmalloc_type.exit.i, !dbg !4103

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !4104
  %idxprom.i = zext i32 %49 to i64, !dbg !4105
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4105
  %50 = load i32, i32* %index.i, align 4, !dbg !4106
  %idxprom6.i = zext i32 %50 to i64, !dbg !4105
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4105
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4105
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !4107
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !4108
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4109
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4110
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !4111
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4111
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4111
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4111
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !4111
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3929
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4112
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !4113
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4114
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4115
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !4116
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4117
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4118
  store i8* %60, i8** %retval.i, align 8, !dbg !4119
  br label %kmalloc.exit, !dbg !4119

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !4120
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4121
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !4122
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4122
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4122
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4122
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !4122
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4123
  br label %kmalloc.exit, !dbg !4123

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !4124
  store i8* %63, i8** %cset, align 8, !dbg !4125
  %64 = load i8*, i8** %cset, align 8, !dbg !4126
  %tobool = icmp ne i8* %64, null, !dbg !4126
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4128

if.then:                                          ; preds = %kmalloc.exit
  %65 = load i8*, i8** %cset, align 8, !dbg !4129
  %call1 = call i32 @HYPERVISOR_xen_version(i32 4, i8* %65) #10, !dbg !4131
  store i32 %call1, i32* %ret, align 4, !dbg !4132
  %66 = load i32, i32* %ret, align 4, !dbg !4133
  %tobool2 = icmp ne i32 %66, 0, !dbg !4133
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !4135

if.then3:                                         ; preds = %if.then
  %67 = load i8*, i8** %buffer.addr, align 8, !dbg !4136
  %68 = load i8*, i8** %cset, align 8, !dbg !4137
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %68) #10, !dbg !4138
  store i32 %call4, i32* %ret, align 4, !dbg !4139
  br label %if.end, !dbg !4140

if.end:                                           ; preds = %if.then3, %if.then
  %69 = load i8*, i8** %cset, align 8, !dbg !4141
  call void @kfree(i8* %69) #10, !dbg !4142
  br label %if.end5, !dbg !4143

if.end5:                                          ; preds = %if.end, %kmalloc.exit
  %70 = load i32, i32* %ret, align 4, !dbg !4144
  %conv = sext i32 %70 to i64, !dbg !4144
  ret i64 %conv, !dbg !4145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virtual_start_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !4146 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !4147
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3554, metadata !DIExpression()), !dbg !4150
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3556, metadata !DIExpression()), !dbg !4151
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3558, metadata !DIExpression()), !dbg !4152
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3560, metadata !DIExpression()), !dbg !4153
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3566, metadata !DIExpression()), !dbg !4155
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3572, metadata !DIExpression()), !dbg !4157
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3581, metadata !DIExpression()), !dbg !4160
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3583, metadata !DIExpression()), !dbg !4161
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3585, metadata !DIExpression()), !dbg !4162
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3587, metadata !DIExpression()), !dbg !4163
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3589, metadata !DIExpression()), !dbg !4164
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3591, metadata !DIExpression()), !dbg !4165
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3593, metadata !DIExpression()), !dbg !4166
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3595, metadata !DIExpression()), !dbg !4167
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %parms = alloca %struct.xen_platform_parameters*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4172, metadata !DIExpression()), !dbg !4173
  store i32 -12, i32* %ret, align 4, !dbg !4173
  call void @llvm.dbg.declare(metadata %struct.xen_platform_parameters** %parms, metadata !4174, metadata !DIExpression()), !dbg !4182
  store i64 8, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !4183
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #5, !dbg !4184
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !4185

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4186
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !4187
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4188

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4189
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !4190
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4191
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !4192
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4164
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4193
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4194
  %8 = load i32, i32* %order.i.i, align 4, !dbg !4195
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4196
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4197
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4198
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !4199
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4199
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4199
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4199
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !4199
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4200
  br label %kmalloc.exit, !dbg !4200

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !4201
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4202
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !4202
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4203

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4204
  br label %kmalloc_index.exit.i, !dbg !4204

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4205
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !4206
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4207

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4208
  br label %kmalloc_index.exit.i, !dbg !4208

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4209
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !4210
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4211

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4212
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !4213
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4214

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4215
  br label %kmalloc_index.exit.i, !dbg !4215

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4216
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !4217
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4218

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4219
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !4220
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4221

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4222
  br label %kmalloc_index.exit.i, !dbg !4222

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4223
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !4224
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4225

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4226
  br label %kmalloc_index.exit.i, !dbg !4226

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4227
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !4228
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4229

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4230
  br label %kmalloc_index.exit.i, !dbg !4230

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4231
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4232
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4233

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4234
  br label %kmalloc_index.exit.i, !dbg !4234

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4235
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4236
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4237

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4238
  br label %kmalloc_index.exit.i, !dbg !4238

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4239
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4240
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4241

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4242
  br label %kmalloc_index.exit.i, !dbg !4242

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4243
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4244
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4245

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4246
  br label %kmalloc_index.exit.i, !dbg !4246

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4247
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4248
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4249

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4250
  br label %kmalloc_index.exit.i, !dbg !4250

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4251
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4252
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4253

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4254
  br label %kmalloc_index.exit.i, !dbg !4254

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4255
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4256
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4257

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4258
  br label %kmalloc_index.exit.i, !dbg !4258

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4259
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4260
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4261

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4262
  br label %kmalloc_index.exit.i, !dbg !4262

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4263
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4264
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4265

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4266
  br label %kmalloc_index.exit.i, !dbg !4266

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4267
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4268
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4269

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4270
  br label %kmalloc_index.exit.i, !dbg !4270

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4271
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4272
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4273

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4274
  br label %kmalloc_index.exit.i, !dbg !4274

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4275
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4276
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4277

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4278
  br label %kmalloc_index.exit.i, !dbg !4278

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4279
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4280
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4281

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4282
  br label %kmalloc_index.exit.i, !dbg !4282

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4283
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4284
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4285

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4286
  br label %kmalloc_index.exit.i, !dbg !4286

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4287
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4288
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4289

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4290
  br label %kmalloc_index.exit.i, !dbg !4290

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4291
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4292
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4293

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4294
  br label %kmalloc_index.exit.i, !dbg !4294

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4295
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4296
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4297

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4298
  br label %kmalloc_index.exit.i, !dbg !4298

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4299
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4300
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4301

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4302
  br label %kmalloc_index.exit.i, !dbg !4302

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4303
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4304
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4305

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4306
  br label %kmalloc_index.exit.i, !dbg !4306

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4307
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4308
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4309

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4310
  br label %kmalloc_index.exit.i, !dbg !4310

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4311
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4312
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4313

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4314
  br label %kmalloc_index.exit.i, !dbg !4314

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4315
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !4316
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4317

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4318
  br label %kmalloc_index.exit.i, !dbg !4318

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !4319, !srcloc !3772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !4320, !srcloc !3776
  unreachable, !dbg !4321

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !4322
  store i32 %43, i32* %index.i, align 4, !dbg !4323
  %44 = load i32, i32* %index.i, align 4, !dbg !4324
  %tobool.i = icmp ne i32 %44, 0, !dbg !4324
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4325

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4326
  br label %kmalloc.exit, !dbg !4326

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !4327
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4328
  %and.i.i = and i32 %46, 17, !dbg !4328
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4328
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4328
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4328
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4328
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4329

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4330
  br label %kmalloc_type.exit.i, !dbg !4330

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4331
  %and2.i.i = and i32 %47, 1, !dbg !4332
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4331
  %48 = zext i1 %tobool3.i.i to i64, !dbg !4331
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4331
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4333
  br label %kmalloc_type.exit.i, !dbg !4333

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !4334
  %idxprom.i = zext i32 %49 to i64, !dbg !4335
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4335
  %50 = load i32, i32* %index.i, align 4, !dbg !4336
  %idxprom6.i = zext i32 %50 to i64, !dbg !4335
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4335
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4335
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !4337
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !4338
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4339
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4340
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !4341
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4341
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4341
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4341
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !4341
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4152
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4342
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !4343
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4344
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4345
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !4346
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4347
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4348
  store i8* %60, i8** %retval.i, align 8, !dbg !4349
  br label %kmalloc.exit, !dbg !4349

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !4350
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4351
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !4352
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4352
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4352
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4352
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !4352
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4353
  br label %kmalloc.exit, !dbg !4353

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !4354
  %64 = bitcast i8* %63 to %struct.xen_platform_parameters*, !dbg !4355
  store %struct.xen_platform_parameters* %64, %struct.xen_platform_parameters** %parms, align 8, !dbg !4356
  %65 = load %struct.xen_platform_parameters*, %struct.xen_platform_parameters** %parms, align 8, !dbg !4357
  %tobool = icmp ne %struct.xen_platform_parameters* %65, null, !dbg !4357
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4359

if.then:                                          ; preds = %kmalloc.exit
  %66 = load %struct.xen_platform_parameters*, %struct.xen_platform_parameters** %parms, align 8, !dbg !4360
  %67 = bitcast %struct.xen_platform_parameters* %66 to i8*, !dbg !4360
  %call1 = call i32 @HYPERVISOR_xen_version(i32 5, i8* %67) #10, !dbg !4362
  store i32 %call1, i32* %ret, align 4, !dbg !4363
  %68 = load i32, i32* %ret, align 4, !dbg !4364
  %tobool2 = icmp ne i32 %68, 0, !dbg !4364
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !4366

if.then3:                                         ; preds = %if.then
  %69 = load i8*, i8** %buffer.addr, align 8, !dbg !4367
  %70 = load %struct.xen_platform_parameters*, %struct.xen_platform_parameters** %parms, align 8, !dbg !4368
  %virt_start = getelementptr inbounds %struct.xen_platform_parameters, %struct.xen_platform_parameters* %70, i32 0, i32 0, !dbg !4369
  %71 = load i64, i64* %virt_start, align 8, !dbg !4369
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %71) #10, !dbg !4370
  store i32 %call4, i32* %ret, align 4, !dbg !4371
  br label %if.end, !dbg !4372

if.end:                                           ; preds = %if.then3, %if.then
  %72 = load %struct.xen_platform_parameters*, %struct.xen_platform_parameters** %parms, align 8, !dbg !4373
  %73 = bitcast %struct.xen_platform_parameters* %72 to i8*, !dbg !4373
  call void @kfree(i8* %73) #10, !dbg !4374
  br label %if.end5, !dbg !4375

if.end5:                                          ; preds = %if.end, %kmalloc.exit
  %74 = load i32, i32* %ret, align 4, !dbg !4376
  %conv = sext i32 %74 to i64, !dbg !4376
  ret i64 %conv, !dbg !4377
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pagesize_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !4378 {
entry:
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4383, metadata !DIExpression()), !dbg !4384
  %call = call i32 @HYPERVISOR_xen_version(i32 7, i8* null) #10, !dbg !4385
  store i32 %call, i32* %ret, align 4, !dbg !4386
  %0 = load i32, i32* %ret, align 4, !dbg !4387
  %cmp = icmp sgt i32 %0, 0, !dbg !4389
  br i1 %cmp, label %if.then, label %if.end, !dbg !4390

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buffer.addr, align 8, !dbg !4391
  %2 = load i32, i32* %ret, align 4, !dbg !4392
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %2) #10, !dbg !4393
  store i32 %call1, i32* %ret, align 4, !dbg !4394
  br label %if.end, !dbg !4395

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %ret, align 4, !dbg !4396
  %conv = sext i32 %3 to i64, !dbg !4396
  ret i64 %conv, !dbg !4397
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @features_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !4398 {
entry:
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.declare(metadata i64* %len, metadata !4403, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4405, metadata !DIExpression()), !dbg !4406
  store i64 0, i64* %len, align 8, !dbg !4407
  store i32 0, i32* %i, align 4, !dbg !4408
  br label %for.cond, !dbg !4410

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4411
  %cmp = icmp sge i32 %0, 0, !dbg !4413
  br i1 %cmp, label %for.body, label %for.end, !dbg !4414

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4415, metadata !DIExpression()), !dbg !4417
  %1 = load i32, i32* %i, align 4, !dbg !4418
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !4419
  %3 = load i64, i64* %len, align 8, !dbg !4420
  %add.ptr = getelementptr i8, i8* %2, i64 %3, !dbg !4421
  %call = call i64 @xen_feature_show(i32 %1, i8* %add.ptr) #10, !dbg !4422
  %conv = trunc i64 %call to i32, !dbg !4422
  store i32 %conv, i32* %ret, align 4, !dbg !4417
  %4 = load i32, i32* %ret, align 4, !dbg !4423
  %cmp1 = icmp slt i32 %4, 0, !dbg !4425
  br i1 %cmp1, label %if.then, label %if.end7, !dbg !4426

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %len, align 8, !dbg !4427
  %cmp3 = icmp eq i64 %5, 0, !dbg !4430
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !4431

if.then5:                                         ; preds = %if.then
  %6 = load i32, i32* %ret, align 4, !dbg !4432
  %conv6 = sext i32 %6 to i64, !dbg !4432
  store i64 %conv6, i64* %len, align 8, !dbg !4433
  br label %if.end, !dbg !4434

if.end:                                           ; preds = %if.then5, %if.then
  br label %for.end, !dbg !4435

if.end7:                                          ; preds = %for.body
  %7 = load i32, i32* %ret, align 4, !dbg !4436
  %conv8 = sext i32 %7 to i64, !dbg !4436
  %8 = load i64, i64* %len, align 8, !dbg !4437
  %add = add i64 %8, %conv8, !dbg !4437
  store i64 %add, i64* %len, align 8, !dbg !4437
  br label %for.inc, !dbg !4438

for.inc:                                          ; preds = %if.end7
  %9 = load i32, i32* %i, align 4, !dbg !4439
  %dec = add i32 %9, -1, !dbg !4439
  store i32 %dec, i32* %i, align 4, !dbg !4439
  br label %for.cond, !dbg !4440, !llvm.loop !4441

for.end:                                          ; preds = %if.end, %for.cond
  %10 = load i64, i64* %len, align 8, !dbg !4443
  %cmp9 = icmp sgt i64 %10, 0, !dbg !4445
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4446

if.then11:                                        ; preds = %for.end
  %11 = load i8*, i8** %buffer.addr, align 8, !dbg !4447
  %12 = load i64, i64* %len, align 8, !dbg !4448
  %inc = add i64 %12, 1, !dbg !4448
  store i64 %inc, i64* %len, align 8, !dbg !4448
  %arrayidx = getelementptr i8, i8* %11, i64 %12, !dbg !4447
  store i8 10, i8* %arrayidx, align 1, !dbg !4449
  br label %if.end12, !dbg !4447

if.end12:                                         ; preds = %if.then11, %for.end
  %13 = load i64, i64* %len, align 8, !dbg !4450
  ret i64 %13, !dbg !4451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_feature_show(i32 %index, i8* %buffer) #3 !dbg !4452 {
entry:
  %index.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i64, align 8
  %info = alloca %struct.xen_feature_info, align 4
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4459, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.declare(metadata %struct.xen_feature_info* %info, metadata !4461, metadata !DIExpression()), !dbg !4466
  %0 = load i32, i32* %index.addr, align 4, !dbg !4467
  %submap_idx = getelementptr inbounds %struct.xen_feature_info, %struct.xen_feature_info* %info, i32 0, i32 0, !dbg !4468
  store i32 %0, i32* %submap_idx, align 4, !dbg !4469
  %1 = bitcast %struct.xen_feature_info* %info to i8*, !dbg !4470
  %call = call i32 @HYPERVISOR_xen_version(i32 6, i8* %1) #10, !dbg !4471
  %conv = sext i32 %call to i64, !dbg !4471
  store i64 %conv, i64* %ret, align 8, !dbg !4472
  %2 = load i64, i64* %ret, align 8, !dbg !4473
  %tobool = icmp ne i64 %2, 0, !dbg !4473
  br i1 %tobool, label %if.end, label %if.then, !dbg !4475

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !4476
  %submap = getelementptr inbounds %struct.xen_feature_info, %struct.xen_feature_info* %info, i32 0, i32 1, !dbg !4477
  %4 = load i32, i32* %submap, align 4, !dbg !4477
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %4) #10, !dbg !4478
  %conv2 = sext i32 %call1 to i64, !dbg !4478
  store i64 %conv2, i64* %ret, align 8, !dbg !4479
  br label %if.end, !dbg !4480

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %ret, align 8, !dbg !4481
  ret i64 %5, !dbg !4482
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @buildid_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !4483 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !4484
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3554, metadata !DIExpression()), !dbg !4487
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3556, metadata !DIExpression()), !dbg !4488
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3558, metadata !DIExpression()), !dbg !4489
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3560, metadata !DIExpression()), !dbg !4490
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3566, metadata !DIExpression()), !dbg !4492
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3572, metadata !DIExpression()), !dbg !4494
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3581, metadata !DIExpression()), !dbg !4497
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3583, metadata !DIExpression()), !dbg !4498
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3585, metadata !DIExpression()), !dbg !4499
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3587, metadata !DIExpression()), !dbg !4500
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3589, metadata !DIExpression()), !dbg !4501
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3591, metadata !DIExpression()), !dbg !4502
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3593, metadata !DIExpression()), !dbg !4503
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3595, metadata !DIExpression()), !dbg !4504
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i64, align 8
  %buildid = alloca %struct.xen_build_id*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.declare(metadata %struct.xen_build_id** %buildid, metadata !4511, metadata !DIExpression()), !dbg !4518
  %call = call i32 @HYPERVISOR_xen_version(i32 10, i8* null) #10, !dbg !4519
  %conv = sext i32 %call to i64, !dbg !4519
  store i64 %conv, i64* %ret, align 8, !dbg !4520
  %0 = load i64, i64* %ret, align 8, !dbg !4521
  %cmp = icmp slt i64 %0, 0, !dbg !4523
  br i1 %cmp, label %if.then, label %if.end7, !dbg !4524

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %ret, align 8, !dbg !4525
  %cmp2 = icmp eq i64 %1, -1, !dbg !4528
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !4529

if.then4:                                         ; preds = %if.then
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !4530
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !4531
  %conv6 = sext i32 %call5 to i64, !dbg !4531
  store i64 %conv6, i64* %ret, align 8, !dbg !4532
  br label %if.end, !dbg !4533

if.end:                                           ; preds = %if.then4, %if.then
  %3 = load i64, i64* %ret, align 8, !dbg !4534
  store i64 %3, i64* %retval, align 8, !dbg !4535
  br label %return, !dbg !4535

if.end7:                                          ; preds = %entry
  %4 = load i64, i64* %ret, align 8, !dbg !4536
  %add = add i64 4, %4, !dbg !4537
  store i64 %add, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4538
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #5, !dbg !4539
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !4540

if.then.i:                                        ; preds = %if.end7
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !4541
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !4542
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4543

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !4544
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !4545
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !4546
  %call.i.i = call i32 @get_order(i64 %10) #11, !dbg !4547
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4501
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !4548
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4549
  %13 = load i32, i32* %order.i.i, align 4, !dbg !4550
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4551
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4552
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4553
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #12, !dbg !4554
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4554
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4554
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4554
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !4554
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4555
  br label %kmalloc.exit, !dbg !4555

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !4556
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4557
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !4557
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4558

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4559
  br label %kmalloc_index.exit.i, !dbg !4559

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4560
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !4561
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4562

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4563
  br label %kmalloc_index.exit.i, !dbg !4563

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4564
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !4565
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4566

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4567
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !4568
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4569

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4570
  br label %kmalloc_index.exit.i, !dbg !4570

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4571
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !4572
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4573

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4574
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !4575
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4576

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4577
  br label %kmalloc_index.exit.i, !dbg !4577

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4578
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !4579
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4580

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4581
  br label %kmalloc_index.exit.i, !dbg !4581

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4582
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !4583
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4584

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4585
  br label %kmalloc_index.exit.i, !dbg !4585

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4586
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !4587
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4588

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4589
  br label %kmalloc_index.exit.i, !dbg !4589

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4590
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !4591
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4592

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4593
  br label %kmalloc_index.exit.i, !dbg !4593

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4594
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !4595
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4596

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4597
  br label %kmalloc_index.exit.i, !dbg !4597

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4598
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !4599
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4600

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4601
  br label %kmalloc_index.exit.i, !dbg !4601

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4602
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !4603
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4604

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4605
  br label %kmalloc_index.exit.i, !dbg !4605

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4606
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !4607
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4608

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4609
  br label %kmalloc_index.exit.i, !dbg !4609

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4610
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !4611
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4612

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4613
  br label %kmalloc_index.exit.i, !dbg !4613

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4614
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !4615
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4616

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4617
  br label %kmalloc_index.exit.i, !dbg !4617

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4618
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !4619
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4620

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4621
  br label %kmalloc_index.exit.i, !dbg !4621

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4622
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !4623
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4624

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4625
  br label %kmalloc_index.exit.i, !dbg !4625

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4626
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !4627
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4628

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4629
  br label %kmalloc_index.exit.i, !dbg !4629

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4630
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !4631
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4632

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4633
  br label %kmalloc_index.exit.i, !dbg !4633

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4634
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !4635
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4636

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4637
  br label %kmalloc_index.exit.i, !dbg !4637

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4638
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !4639
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4640

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4641
  br label %kmalloc_index.exit.i, !dbg !4641

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4642
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !4643
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4644

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4645
  br label %kmalloc_index.exit.i, !dbg !4645

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4646
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !4647
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4648

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4649
  br label %kmalloc_index.exit.i, !dbg !4649

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4650
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !4651
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4652

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4653
  br label %kmalloc_index.exit.i, !dbg !4653

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4654
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !4655
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4656

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4657
  br label %kmalloc_index.exit.i, !dbg !4657

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4658
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !4659
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4660

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4661
  br label %kmalloc_index.exit.i, !dbg !4661

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !4663
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4664

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4665
  br label %kmalloc_index.exit.i, !dbg !4665

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4666
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !4667
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4668

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4669
  br label %kmalloc_index.exit.i, !dbg !4669

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4670
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !4671
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4672

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4673
  br label %kmalloc_index.exit.i, !dbg !4673

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !4674, !srcloc !3772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !4675, !srcloc !3776
  unreachable, !dbg !4676

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !4677
  store i32 %48, i32* %index.i, align 4, !dbg !4678
  %49 = load i32, i32* %index.i, align 4, !dbg !4679
  %tobool.i = icmp ne i32 %49, 0, !dbg !4679
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4680

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4681
  br label %kmalloc.exit, !dbg !4681

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !4682
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4683
  %and.i.i = and i32 %51, 17, !dbg !4683
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4683
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4683
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4683
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4683
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4684

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4685
  br label %kmalloc_type.exit.i, !dbg !4685

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4686
  %and2.i.i = and i32 %52, 1, !dbg !4687
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4686
  %53 = zext i1 %tobool3.i.i to i64, !dbg !4686
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4686
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4688
  br label %kmalloc_type.exit.i, !dbg !4688

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !4689
  %idxprom.i = zext i32 %54 to i64, !dbg !4690
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4690
  %55 = load i32, i32* %index.i, align 4, !dbg !4691
  %idxprom6.i = zext i32 %55 to i64, !dbg !4690
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4690
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4690
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !4692
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !4693
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4694
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4695
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #12, !dbg !4696
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4696
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4696
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4696
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !4696
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4489
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4697
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4698
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4699
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4700
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #12, !dbg !4701
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4702
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !4703
  store i8* %65, i8** %retval.i, align 8, !dbg !4704
  br label %kmalloc.exit, !dbg !4704

if.end9.i:                                        ; preds = %if.end7
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !4705
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !4706
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #12, !dbg !4707
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4707
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4707
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4707
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !4707
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4708
  br label %kmalloc.exit, !dbg !4708

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !4709
  %69 = bitcast i8* %68 to %struct.xen_build_id*, !dbg !4710
  store %struct.xen_build_id* %69, %struct.xen_build_id** %buildid, align 8, !dbg !4711
  %70 = load %struct.xen_build_id*, %struct.xen_build_id** %buildid, align 8, !dbg !4712
  %tobool = icmp ne %struct.xen_build_id* %70, null, !dbg !4712
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !4714

if.then9:                                         ; preds = %kmalloc.exit
  store i64 -12, i64* %retval, align 8, !dbg !4715
  br label %return, !dbg !4715

if.end10:                                         ; preds = %kmalloc.exit
  %71 = load i64, i64* %ret, align 8, !dbg !4716
  %conv11 = trunc i64 %71 to i32, !dbg !4716
  %72 = load %struct.xen_build_id*, %struct.xen_build_id** %buildid, align 8, !dbg !4717
  %len = getelementptr inbounds %struct.xen_build_id, %struct.xen_build_id* %72, i32 0, i32 0, !dbg !4718
  store i32 %conv11, i32* %len, align 4, !dbg !4719
  %73 = load %struct.xen_build_id*, %struct.xen_build_id** %buildid, align 8, !dbg !4720
  %74 = bitcast %struct.xen_build_id* %73 to i8*, !dbg !4720
  %call12 = call i32 @HYPERVISOR_xen_version(i32 10, i8* %74) #10, !dbg !4721
  %conv13 = sext i32 %call12 to i64, !dbg !4721
  store i64 %conv13, i64* %ret, align 8, !dbg !4722
  %75 = load i64, i64* %ret, align 8, !dbg !4723
  %cmp14 = icmp sgt i64 %75, 0, !dbg !4725
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !4726

if.then16:                                        ; preds = %if.end10
  %76 = load i8*, i8** %buffer.addr, align 8, !dbg !4727
  %77 = load %struct.xen_build_id*, %struct.xen_build_id** %buildid, align 8, !dbg !4728
  %buf = getelementptr inbounds %struct.xen_build_id, %struct.xen_build_id* %77, i32 0, i32 1, !dbg !4729
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %buf, i64 0, i64 0, !dbg !4728
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* %arraydecay) #10, !dbg !4730
  %conv18 = sext i32 %call17 to i64, !dbg !4730
  store i64 %conv18, i64* %ret, align 8, !dbg !4731
  br label %if.end19, !dbg !4732

if.end19:                                         ; preds = %if.then16, %if.end10
  %78 = load %struct.xen_build_id*, %struct.xen_build_id** %buildid, align 8, !dbg !4733
  %79 = bitcast %struct.xen_build_id* %78 to i8*, !dbg !4733
  call void @kfree(i8* %79) #10, !dbg !4734
  %80 = load i64, i64* %ret, align 8, !dbg !4735
  store i64 %80, i64* %retval, align 8, !dbg !4736
  br label %return, !dbg !4736

return:                                           ; preds = %if.end19, %if.then9, %if.end
  %81 = load i64, i64* %retval, align 8, !dbg !4737
  ret i64 %81, !dbg !4737
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @uuid_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !4738 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %uuid = alloca [16 x i8], align 16
  %ret = alloca i32, align 4
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4741, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.declare(metadata [16 x i8]* %uuid, metadata !4743, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4749, metadata !DIExpression()), !dbg !4750
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %uuid, i64 0, i64 0, !dbg !4751
  %call = call i32 @HYPERVISOR_xen_version(i32 8, i8* %arraydecay) #10, !dbg !4752
  store i32 %call, i32* %ret, align 4, !dbg !4753
  %0 = load i32, i32* %ret, align 4, !dbg !4754
  %tobool = icmp ne i32 %0, 0, !dbg !4754
  br i1 %tobool, label %if.then, label %if.end, !dbg !4756

if.then:                                          ; preds = %entry
  %1 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %attr.addr, align 8, !dbg !4757
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !4758
  %call1 = call i64 @uuid_show_fallback(%struct.hyp_sysfs_attr* %1, i8* %2) #10, !dbg !4759
  store i64 %call1, i64* %retval, align 8, !dbg !4760
  br label %return, !dbg !4760

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !4761
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %uuid, i64 0, i64 0, !dbg !4762
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* %arraydecay2) #10, !dbg !4763
  store i32 %call3, i32* %ret, align 4, !dbg !4764
  %4 = load i32, i32* %ret, align 4, !dbg !4765
  %conv = sext i32 %4 to i64, !dbg !4765
  store i64 %conv, i64* %retval, align 8, !dbg !4766
  br label %return, !dbg !4766

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !4767
  ret i64 %5, !dbg !4767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @uuid_show_fallback(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !4768 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %vm = alloca i8*, align 8
  %val = alloca i8*, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral5 = alloca %struct.xenbus_transaction, align 4
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.declare(metadata i8** %vm, metadata !4773, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.declare(metadata i8** %val, metadata !4775, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4777, metadata !DIExpression()), !dbg !4778
  %0 = load i32, i32* @xenstored_ready, align 4, !dbg !4779
  %tobool = icmp ne i32 %0, 0, !dbg !4779
  br i1 %tobool, label %if.end, label %if.then, !dbg !4781

if.then:                                          ; preds = %entry
  store i64 -16, i64* %retval, align 8, !dbg !4782
  br label %return, !dbg !4782

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4783
  store i32 0, i32* %id, align 4, !dbg !4783
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4784
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !4784
  %call = call i8* @xenbus_read(i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0), i32* null) #10, !dbg !4784
  store i8* %call, i8** %vm, align 8, !dbg !4785
  %2 = load i8*, i8** %vm, align 8, !dbg !4786
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #10, !dbg !4788
  br i1 %call1, label %if.then2, label %if.end4, !dbg !4789

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** %vm, align 8, !dbg !4790
  %call3 = call i64 @PTR_ERR(i8* %3) #10, !dbg !4791
  store i64 %call3, i64* %retval, align 8, !dbg !4792
  br label %return, !dbg !4792

if.end4:                                          ; preds = %if.end
  %id6 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral5, i32 0, i32 0, !dbg !4793
  store i32 0, i32* %id6, align 4, !dbg !4793
  %4 = load i8*, i8** %vm, align 8, !dbg !4794
  %coerce.dive7 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral5, i32 0, i32 0, !dbg !4795
  %5 = load i32, i32* %coerce.dive7, align 4, !dbg !4795
  %call8 = call i8* @xenbus_read(i32 %5, i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32* null) #10, !dbg !4795
  store i8* %call8, i8** %val, align 8, !dbg !4796
  %6 = load i8*, i8** %vm, align 8, !dbg !4797
  call void @kfree(i8* %6) #10, !dbg !4798
  %7 = load i8*, i8** %val, align 8, !dbg !4799
  %call9 = call zeroext i1 @IS_ERR(i8* %7) #10, !dbg !4801
  br i1 %call9, label %if.then10, label %if.end12, !dbg !4802

if.then10:                                        ; preds = %if.end4
  %8 = load i8*, i8** %val, align 8, !dbg !4803
  %call11 = call i64 @PTR_ERR(i8* %8) #10, !dbg !4804
  store i64 %call11, i64* %retval, align 8, !dbg !4805
  br label %return, !dbg !4805

if.end12:                                         ; preds = %if.end4
  %9 = load i8*, i8** %buffer.addr, align 8, !dbg !4806
  %10 = load i8*, i8** %val, align 8, !dbg !4807
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %10) #10, !dbg !4808
  store i32 %call13, i32* %ret, align 4, !dbg !4809
  %11 = load i8*, i8** %val, align 8, !dbg !4810
  call void @kfree(i8* %11) #10, !dbg !4811
  %12 = load i32, i32* %ret, align 4, !dbg !4812
  %conv = sext i32 %12 to i64, !dbg !4812
  store i64 %conv, i64* %retval, align 8, !dbg !4813
  br label %return, !dbg !4813

return:                                           ; preds = %if.end12, %if.then10, %if.then2, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !4814
  ret i64 %13, !dbg !4814
}

; Function Attrs: noredzone
declare dso_local i8* @xenbus_read(i32, i8*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #3 !dbg !4815 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4819, metadata !DIExpression()), !dbg !4820
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4821
  %1 = ptrtoint i8* %0 to i64, !dbg !4821
  %2 = inttoptr i64 %1 to i8*, !dbg !4821
  %3 = ptrtoint i8* %2 to i64, !dbg !4821
  %cmp = icmp uge i64 %3, -4095, !dbg !4821
  %lnot = xor i1 %cmp, true, !dbg !4821
  %lnot1 = xor i1 %lnot, true, !dbg !4821
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4821
  %conv = sext i32 %lnot.ext to i64, !dbg !4821
  %tobool = icmp ne i64 %conv, 0, !dbg !4821
  ret i1 %tobool, !dbg !4822
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #3 !dbg !4823 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4828
  %1 = ptrtoint i8* %0 to i64, !dbg !4829
  ret i64 %1, !dbg !4830
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @compiler_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !4831 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !4832
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3554, metadata !DIExpression()), !dbg !4835
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3556, metadata !DIExpression()), !dbg !4836
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3558, metadata !DIExpression()), !dbg !4837
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3560, metadata !DIExpression()), !dbg !4838
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3566, metadata !DIExpression()), !dbg !4840
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3572, metadata !DIExpression()), !dbg !4842
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3581, metadata !DIExpression()), !dbg !4845
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3583, metadata !DIExpression()), !dbg !4846
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3585, metadata !DIExpression()), !dbg !4847
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3587, metadata !DIExpression()), !dbg !4848
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3589, metadata !DIExpression()), !dbg !4849
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3591, metadata !DIExpression()), !dbg !4850
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3593, metadata !DIExpression()), !dbg !4851
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3595, metadata !DIExpression()), !dbg !4852
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %info = alloca %struct.xen_compile_info*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !4853, metadata !DIExpression()), !dbg !4854
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4855, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4857, metadata !DIExpression()), !dbg !4858
  store i32 -12, i32* %ret, align 4, !dbg !4858
  call void @llvm.dbg.declare(metadata %struct.xen_compile_info** %info, metadata !4859, metadata !DIExpression()), !dbg !4868
  store i64 144, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !4869
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #5, !dbg !4870
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !4871

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4872
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !4873
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4874

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4875
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !4876
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4877
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !4878
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4849
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4879
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4880
  %8 = load i32, i32* %order.i.i, align 4, !dbg !4881
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4882
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4883
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4884
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !4885
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4885
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4885
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4885
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !4885
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4886
  br label %kmalloc.exit, !dbg !4886

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !4887
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4888
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !4888
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4889

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4890
  br label %kmalloc_index.exit.i, !dbg !4890

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4891
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !4892
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4893

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4894
  br label %kmalloc_index.exit.i, !dbg !4894

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4895
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !4896
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4897

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !4899
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4900

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4901
  br label %kmalloc_index.exit.i, !dbg !4901

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4902
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !4903
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4904

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4905
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !4906
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4907

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4908
  br label %kmalloc_index.exit.i, !dbg !4908

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4909
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !4910
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4911

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4912
  br label %kmalloc_index.exit.i, !dbg !4912

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4913
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !4914
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4915

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4916
  br label %kmalloc_index.exit.i, !dbg !4916

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4917
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4918
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4919

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4920
  br label %kmalloc_index.exit.i, !dbg !4920

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4921
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4922
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4923

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4924
  br label %kmalloc_index.exit.i, !dbg !4924

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4925
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4926
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4927

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4928
  br label %kmalloc_index.exit.i, !dbg !4928

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4929
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4930
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4931

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4932
  br label %kmalloc_index.exit.i, !dbg !4932

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4933
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4934
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4935

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4936
  br label %kmalloc_index.exit.i, !dbg !4936

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4937
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4938
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4939

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4940
  br label %kmalloc_index.exit.i, !dbg !4940

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4941
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4942
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4943

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4944
  br label %kmalloc_index.exit.i, !dbg !4944

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4945
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4946
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4947

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4948
  br label %kmalloc_index.exit.i, !dbg !4948

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4949
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4950
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4951

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4952
  br label %kmalloc_index.exit.i, !dbg !4952

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4953
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4954
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4955

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4956
  br label %kmalloc_index.exit.i, !dbg !4956

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4957
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4958
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4959

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4960
  br label %kmalloc_index.exit.i, !dbg !4960

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4961
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4962
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4963

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4964
  br label %kmalloc_index.exit.i, !dbg !4964

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4965
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4966
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4967

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4968
  br label %kmalloc_index.exit.i, !dbg !4968

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4969
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4970
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4971

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4972
  br label %kmalloc_index.exit.i, !dbg !4972

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4973
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4974
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4975

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4976
  br label %kmalloc_index.exit.i, !dbg !4976

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4977
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4978
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4979

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4980
  br label %kmalloc_index.exit.i, !dbg !4980

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4981
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4982
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4983

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4984
  br label %kmalloc_index.exit.i, !dbg !4984

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4985
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4986
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4987

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4988
  br label %kmalloc_index.exit.i, !dbg !4988

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4989
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4990
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4991

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4992
  br label %kmalloc_index.exit.i, !dbg !4992

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4993
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4994
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4995

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4996
  br label %kmalloc_index.exit.i, !dbg !4996

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4997
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4998
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4999

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5000
  br label %kmalloc_index.exit.i, !dbg !5000

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5001
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !5002
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5003

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5004
  br label %kmalloc_index.exit.i, !dbg !5004

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !5005, !srcloc !3772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !5006, !srcloc !3776
  unreachable, !dbg !5007

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !5008
  store i32 %43, i32* %index.i, align 4, !dbg !5009
  %44 = load i32, i32* %index.i, align 4, !dbg !5010
  %tobool.i = icmp ne i32 %44, 0, !dbg !5010
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5011

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5012
  br label %kmalloc.exit, !dbg !5012

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !5013
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5014
  %and.i.i = and i32 %46, 17, !dbg !5014
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5014
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5014
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5014
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5014
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5015

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5016
  br label %kmalloc_type.exit.i, !dbg !5016

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5017
  %and2.i.i = and i32 %47, 1, !dbg !5018
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5017
  %48 = zext i1 %tobool3.i.i to i64, !dbg !5017
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5017
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5019
  br label %kmalloc_type.exit.i, !dbg !5019

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !5020
  %idxprom.i = zext i32 %49 to i64, !dbg !5021
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5021
  %50 = load i32, i32* %index.i, align 4, !dbg !5022
  %idxprom6.i = zext i32 %50 to i64, !dbg !5021
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5021
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5021
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !5023
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !5024
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5025
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5026
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !5027
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5027
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5027
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5027
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !5027
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4837
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5028
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !5029
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5030
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5031
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !5032
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5033
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5034
  store i8* %60, i8** %retval.i, align 8, !dbg !5035
  br label %kmalloc.exit, !dbg !5035

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5036
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !5037
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !5038
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5038
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5038
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5038
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !5038
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5039
  br label %kmalloc.exit, !dbg !5039

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !5040
  %64 = bitcast i8* %63 to %struct.xen_compile_info*, !dbg !5041
  store %struct.xen_compile_info* %64, %struct.xen_compile_info** %info, align 8, !dbg !5042
  %65 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5043
  %tobool = icmp ne %struct.xen_compile_info* %65, null, !dbg !5043
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5045

if.then:                                          ; preds = %kmalloc.exit
  %66 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5046
  %67 = bitcast %struct.xen_compile_info* %66 to i8*, !dbg !5046
  %call1 = call i32 @HYPERVISOR_xen_version(i32 2, i8* %67) #10, !dbg !5048
  store i32 %call1, i32* %ret, align 4, !dbg !5049
  %68 = load i32, i32* %ret, align 4, !dbg !5050
  %tobool2 = icmp ne i32 %68, 0, !dbg !5050
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5052

if.then3:                                         ; preds = %if.then
  %69 = load i8*, i8** %buffer.addr, align 8, !dbg !5053
  %70 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5054
  %compiler = getelementptr inbounds %struct.xen_compile_info, %struct.xen_compile_info* %70, i32 0, i32 0, !dbg !5055
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %compiler, i64 0, i64 0, !dbg !5054
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay) #10, !dbg !5056
  store i32 %call4, i32* %ret, align 4, !dbg !5057
  br label %if.end, !dbg !5058

if.end:                                           ; preds = %if.then3, %if.then
  %71 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5059
  %72 = bitcast %struct.xen_compile_info* %71 to i8*, !dbg !5059
  call void @kfree(i8* %72) #10, !dbg !5060
  br label %if.end5, !dbg !5061

if.end5:                                          ; preds = %if.end, %kmalloc.exit
  %73 = load i32, i32* %ret, align 4, !dbg !5062
  %conv = sext i32 %73 to i64, !dbg !5062
  ret i64 %conv, !dbg !5063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @compiled_by_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !5064 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !5065
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3554, metadata !DIExpression()), !dbg !5068
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3556, metadata !DIExpression()), !dbg !5069
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3558, metadata !DIExpression()), !dbg !5070
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3560, metadata !DIExpression()), !dbg !5071
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3566, metadata !DIExpression()), !dbg !5073
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3572, metadata !DIExpression()), !dbg !5075
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3581, metadata !DIExpression()), !dbg !5078
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3583, metadata !DIExpression()), !dbg !5079
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3585, metadata !DIExpression()), !dbg !5080
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3587, metadata !DIExpression()), !dbg !5081
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3589, metadata !DIExpression()), !dbg !5082
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3591, metadata !DIExpression()), !dbg !5083
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3593, metadata !DIExpression()), !dbg !5084
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3595, metadata !DIExpression()), !dbg !5085
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %info = alloca %struct.xen_compile_info*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5090, metadata !DIExpression()), !dbg !5091
  store i32 -12, i32* %ret, align 4, !dbg !5091
  call void @llvm.dbg.declare(metadata %struct.xen_compile_info** %info, metadata !5092, metadata !DIExpression()), !dbg !5093
  store i64 144, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !5094
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #5, !dbg !5095
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !5096

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5097
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !5098
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5099

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !5100
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !5101
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5102
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !5103
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5082
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5104
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5105
  %8 = load i32, i32* %order.i.i, align 4, !dbg !5106
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5107
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5108
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5109
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !5110
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5110
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5110
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5110
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !5110
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5111
  br label %kmalloc.exit, !dbg !5111

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !5112
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5113
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !5113
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5114

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5115
  br label %kmalloc_index.exit.i, !dbg !5115

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5116
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !5117
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5118

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5119
  br label %kmalloc_index.exit.i, !dbg !5119

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5120
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !5121
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5122

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5123
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !5124
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5125

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5126
  br label %kmalloc_index.exit.i, !dbg !5126

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5127
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !5128
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5129

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5130
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !5131
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5132

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5133
  br label %kmalloc_index.exit.i, !dbg !5133

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5134
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !5135
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5136

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5137
  br label %kmalloc_index.exit.i, !dbg !5137

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5138
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !5139
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5140

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5141
  br label %kmalloc_index.exit.i, !dbg !5141

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5142
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !5143
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5144

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5145
  br label %kmalloc_index.exit.i, !dbg !5145

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5146
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !5147
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5148

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5149
  br label %kmalloc_index.exit.i, !dbg !5149

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5150
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !5151
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5152

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5153
  br label %kmalloc_index.exit.i, !dbg !5153

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5154
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !5155
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5156

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5157
  br label %kmalloc_index.exit.i, !dbg !5157

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5158
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !5159
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5160

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5161
  br label %kmalloc_index.exit.i, !dbg !5161

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5162
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !5163
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5164

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5165
  br label %kmalloc_index.exit.i, !dbg !5165

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5166
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !5167
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5168

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5169
  br label %kmalloc_index.exit.i, !dbg !5169

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5170
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !5171
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5172

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5173
  br label %kmalloc_index.exit.i, !dbg !5173

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5174
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !5175
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5176

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5177
  br label %kmalloc_index.exit.i, !dbg !5177

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5178
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !5179
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5180

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5181
  br label %kmalloc_index.exit.i, !dbg !5181

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5182
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !5183
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5184

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5185
  br label %kmalloc_index.exit.i, !dbg !5185

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5186
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !5187
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5188

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5189
  br label %kmalloc_index.exit.i, !dbg !5189

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5190
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !5191
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5192

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5193
  br label %kmalloc_index.exit.i, !dbg !5193

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5194
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !5195
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5196

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5197
  br label %kmalloc_index.exit.i, !dbg !5197

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5198
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !5199
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5200

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5201
  br label %kmalloc_index.exit.i, !dbg !5201

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5202
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !5203
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5204

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5205
  br label %kmalloc_index.exit.i, !dbg !5205

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5206
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !5207
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5208

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5209
  br label %kmalloc_index.exit.i, !dbg !5209

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5210
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !5211
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5212

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5213
  br label %kmalloc_index.exit.i, !dbg !5213

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5214
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !5215
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5216

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5217
  br label %kmalloc_index.exit.i, !dbg !5217

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5218
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !5219
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5220

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5221
  br label %kmalloc_index.exit.i, !dbg !5221

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5222
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !5223
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5224

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5225
  br label %kmalloc_index.exit.i, !dbg !5225

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5226
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !5227
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5228

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5229
  br label %kmalloc_index.exit.i, !dbg !5229

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !5230, !srcloc !3772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !5231, !srcloc !3776
  unreachable, !dbg !5232

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !5233
  store i32 %43, i32* %index.i, align 4, !dbg !5234
  %44 = load i32, i32* %index.i, align 4, !dbg !5235
  %tobool.i = icmp ne i32 %44, 0, !dbg !5235
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5236

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5237
  br label %kmalloc.exit, !dbg !5237

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !5238
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5239
  %and.i.i = and i32 %46, 17, !dbg !5239
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5239
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5239
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5239
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5239
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5240

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5241
  br label %kmalloc_type.exit.i, !dbg !5241

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5242
  %and2.i.i = and i32 %47, 1, !dbg !5243
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5242
  %48 = zext i1 %tobool3.i.i to i64, !dbg !5242
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5242
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5244
  br label %kmalloc_type.exit.i, !dbg !5244

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !5245
  %idxprom.i = zext i32 %49 to i64, !dbg !5246
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5246
  %50 = load i32, i32* %index.i, align 4, !dbg !5247
  %idxprom6.i = zext i32 %50 to i64, !dbg !5246
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5246
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5246
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !5248
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !5249
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5250
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5251
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !5252
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5252
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5252
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5252
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !5252
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5070
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5253
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !5254
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5255
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5256
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !5257
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5258
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5259
  store i8* %60, i8** %retval.i, align 8, !dbg !5260
  br label %kmalloc.exit, !dbg !5260

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5261
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !5262
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !5263
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5263
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5263
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5263
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !5263
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5264
  br label %kmalloc.exit, !dbg !5264

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !5265
  %64 = bitcast i8* %63 to %struct.xen_compile_info*, !dbg !5266
  store %struct.xen_compile_info* %64, %struct.xen_compile_info** %info, align 8, !dbg !5267
  %65 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5268
  %tobool = icmp ne %struct.xen_compile_info* %65, null, !dbg !5268
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5270

if.then:                                          ; preds = %kmalloc.exit
  %66 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5271
  %67 = bitcast %struct.xen_compile_info* %66 to i8*, !dbg !5271
  %call1 = call i32 @HYPERVISOR_xen_version(i32 2, i8* %67) #10, !dbg !5273
  store i32 %call1, i32* %ret, align 4, !dbg !5274
  %68 = load i32, i32* %ret, align 4, !dbg !5275
  %tobool2 = icmp ne i32 %68, 0, !dbg !5275
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5277

if.then3:                                         ; preds = %if.then
  %69 = load i8*, i8** %buffer.addr, align 8, !dbg !5278
  %70 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5279
  %compile_by = getelementptr inbounds %struct.xen_compile_info, %struct.xen_compile_info* %70, i32 0, i32 1, !dbg !5280
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %compile_by, i64 0, i64 0, !dbg !5279
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay) #10, !dbg !5281
  store i32 %call4, i32* %ret, align 4, !dbg !5282
  br label %if.end, !dbg !5283

if.end:                                           ; preds = %if.then3, %if.then
  %71 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5284
  %72 = bitcast %struct.xen_compile_info* %71 to i8*, !dbg !5284
  call void @kfree(i8* %72) #10, !dbg !5285
  br label %if.end5, !dbg !5286

if.end5:                                          ; preds = %if.end, %kmalloc.exit
  %73 = load i32, i32* %ret, align 4, !dbg !5287
  %conv = sext i32 %73 to i64, !dbg !5287
  ret i64 %conv, !dbg !5288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @compile_date_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !5289 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !5290
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3554, metadata !DIExpression()), !dbg !5293
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3556, metadata !DIExpression()), !dbg !5294
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3558, metadata !DIExpression()), !dbg !5295
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3560, metadata !DIExpression()), !dbg !5296
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3566, metadata !DIExpression()), !dbg !5298
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3572, metadata !DIExpression()), !dbg !5300
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3581, metadata !DIExpression()), !dbg !5303
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3583, metadata !DIExpression()), !dbg !5304
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3585, metadata !DIExpression()), !dbg !5305
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3587, metadata !DIExpression()), !dbg !5306
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3589, metadata !DIExpression()), !dbg !5307
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3591, metadata !DIExpression()), !dbg !5308
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3593, metadata !DIExpression()), !dbg !5309
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3595, metadata !DIExpression()), !dbg !5310
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %info = alloca %struct.xen_compile_info*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5315, metadata !DIExpression()), !dbg !5316
  store i32 -12, i32* %ret, align 4, !dbg !5316
  call void @llvm.dbg.declare(metadata %struct.xen_compile_info** %info, metadata !5317, metadata !DIExpression()), !dbg !5318
  store i64 144, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !5319
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #5, !dbg !5320
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !5321

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5322
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !5323
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5324

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !5325
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !5326
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5327
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !5328
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5307
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5329
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5330
  %8 = load i32, i32* %order.i.i, align 4, !dbg !5331
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5332
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5333
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5334
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !5335
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5335
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5335
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5335
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !5335
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5336
  br label %kmalloc.exit, !dbg !5336

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !5337
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5338
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !5338
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5339

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5340
  br label %kmalloc_index.exit.i, !dbg !5340

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5341
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !5342
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5343

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5344
  br label %kmalloc_index.exit.i, !dbg !5344

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5345
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !5346
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5347

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5348
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !5349
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5350

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5351
  br label %kmalloc_index.exit.i, !dbg !5351

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5352
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !5353
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5354

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5355
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !5356
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5357

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5358
  br label %kmalloc_index.exit.i, !dbg !5358

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5359
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !5360
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5361

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5362
  br label %kmalloc_index.exit.i, !dbg !5362

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5363
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !5364
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5365

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5366
  br label %kmalloc_index.exit.i, !dbg !5366

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5367
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !5368
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5369

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5370
  br label %kmalloc_index.exit.i, !dbg !5370

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5371
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !5372
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5373

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5374
  br label %kmalloc_index.exit.i, !dbg !5374

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5375
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !5376
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5377

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5378
  br label %kmalloc_index.exit.i, !dbg !5378

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5379
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !5380
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5381

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5382
  br label %kmalloc_index.exit.i, !dbg !5382

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5383
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !5384
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5385

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5386
  br label %kmalloc_index.exit.i, !dbg !5386

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5387
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !5388
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5389

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5390
  br label %kmalloc_index.exit.i, !dbg !5390

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5391
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !5392
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5393

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5394
  br label %kmalloc_index.exit.i, !dbg !5394

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5395
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !5396
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5397

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5398
  br label %kmalloc_index.exit.i, !dbg !5398

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5399
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !5400
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5401

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5402
  br label %kmalloc_index.exit.i, !dbg !5402

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5403
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !5404
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5405

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5406
  br label %kmalloc_index.exit.i, !dbg !5406

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5407
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !5408
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5409

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5410
  br label %kmalloc_index.exit.i, !dbg !5410

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5411
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !5412
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5413

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5414
  br label %kmalloc_index.exit.i, !dbg !5414

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5415
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !5416
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5417

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5418
  br label %kmalloc_index.exit.i, !dbg !5418

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5419
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !5420
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5421

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5422
  br label %kmalloc_index.exit.i, !dbg !5422

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5423
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !5424
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5425

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5426
  br label %kmalloc_index.exit.i, !dbg !5426

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5427
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !5428
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5429

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5430
  br label %kmalloc_index.exit.i, !dbg !5430

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5431
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !5432
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5433

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5434
  br label %kmalloc_index.exit.i, !dbg !5434

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5435
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !5436
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5437

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5438
  br label %kmalloc_index.exit.i, !dbg !5438

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5439
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !5440
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5441

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5442
  br label %kmalloc_index.exit.i, !dbg !5442

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5443
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !5444
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5445

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5446
  br label %kmalloc_index.exit.i, !dbg !5446

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5447
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !5448
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5449

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5450
  br label %kmalloc_index.exit.i, !dbg !5450

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5451
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !5452
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5453

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5454
  br label %kmalloc_index.exit.i, !dbg !5454

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !5455, !srcloc !3772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !5456, !srcloc !3776
  unreachable, !dbg !5457

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !5458
  store i32 %43, i32* %index.i, align 4, !dbg !5459
  %44 = load i32, i32* %index.i, align 4, !dbg !5460
  %tobool.i = icmp ne i32 %44, 0, !dbg !5460
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5461

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5462
  br label %kmalloc.exit, !dbg !5462

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !5463
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5464
  %and.i.i = and i32 %46, 17, !dbg !5464
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5464
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5464
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5464
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5464
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5465

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5466
  br label %kmalloc_type.exit.i, !dbg !5466

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5467
  %and2.i.i = and i32 %47, 1, !dbg !5468
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5467
  %48 = zext i1 %tobool3.i.i to i64, !dbg !5467
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5467
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5469
  br label %kmalloc_type.exit.i, !dbg !5469

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !5470
  %idxprom.i = zext i32 %49 to i64, !dbg !5471
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5471
  %50 = load i32, i32* %index.i, align 4, !dbg !5472
  %idxprom6.i = zext i32 %50 to i64, !dbg !5471
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5471
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5471
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !5473
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !5474
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5475
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5476
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !5477
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5477
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5477
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5477
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !5477
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5295
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5478
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !5479
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5480
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5481
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !5482
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5483
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5484
  store i8* %60, i8** %retval.i, align 8, !dbg !5485
  br label %kmalloc.exit, !dbg !5485

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5486
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !5487
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !5488
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5488
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5488
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5488
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !5488
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5489
  br label %kmalloc.exit, !dbg !5489

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !5490
  %64 = bitcast i8* %63 to %struct.xen_compile_info*, !dbg !5491
  store %struct.xen_compile_info* %64, %struct.xen_compile_info** %info, align 8, !dbg !5492
  %65 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5493
  %tobool = icmp ne %struct.xen_compile_info* %65, null, !dbg !5493
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5495

if.then:                                          ; preds = %kmalloc.exit
  %66 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5496
  %67 = bitcast %struct.xen_compile_info* %66 to i8*, !dbg !5496
  %call1 = call i32 @HYPERVISOR_xen_version(i32 2, i8* %67) #10, !dbg !5498
  store i32 %call1, i32* %ret, align 4, !dbg !5499
  %68 = load i32, i32* %ret, align 4, !dbg !5500
  %tobool2 = icmp ne i32 %68, 0, !dbg !5500
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5502

if.then3:                                         ; preds = %if.then
  %69 = load i8*, i8** %buffer.addr, align 8, !dbg !5503
  %70 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5504
  %compile_date = getelementptr inbounds %struct.xen_compile_info, %struct.xen_compile_info* %70, i32 0, i32 3, !dbg !5505
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %compile_date, i64 0, i64 0, !dbg !5504
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay) #10, !dbg !5506
  store i32 %call4, i32* %ret, align 4, !dbg !5507
  br label %if.end, !dbg !5508

if.end:                                           ; preds = %if.then3, %if.then
  %71 = load %struct.xen_compile_info*, %struct.xen_compile_info** %info, align 8, !dbg !5509
  %72 = bitcast %struct.xen_compile_info* %71 to i8*, !dbg !5509
  call void @kfree(i8* %72) #10, !dbg !5510
  br label %if.end5, !dbg !5511

if.end5:                                          ; preds = %if.end, %kmalloc.exit
  %73 = load i32, i32* %ret, align 4, !dbg !5512
  %conv = sext i32 %73 to i64, !dbg !5512
  ret i64 %conv, !dbg !5513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @major_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !5514 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %version = alloca i32, align 4
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.declare(metadata i32* %version, metadata !5519, metadata !DIExpression()), !dbg !5520
  %call = call i32 @HYPERVISOR_xen_version(i32 0, i8* null) #10, !dbg !5521
  store i32 %call, i32* %version, align 4, !dbg !5520
  %0 = load i32, i32* %version, align 4, !dbg !5522
  %tobool = icmp ne i32 %0, 0, !dbg !5522
  br i1 %tobool, label %if.then, label %if.end, !dbg !5524

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buffer.addr, align 8, !dbg !5525
  %2 = load i32, i32* %version, align 4, !dbg !5526
  %shr = ashr i32 %2, 16, !dbg !5527
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %shr) #10, !dbg !5528
  %conv = sext i32 %call1 to i64, !dbg !5528
  store i64 %conv, i64* %retval, align 8, !dbg !5529
  br label %return, !dbg !5529

if.end:                                           ; preds = %entry
  store i64 -19, i64* %retval, align 8, !dbg !5530
  br label %return, !dbg !5530

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !5531
  ret i64 %3, !dbg !5531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @minor_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !5532 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %version = alloca i32, align 4
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5535, metadata !DIExpression()), !dbg !5536
  call void @llvm.dbg.declare(metadata i32* %version, metadata !5537, metadata !DIExpression()), !dbg !5538
  %call = call i32 @HYPERVISOR_xen_version(i32 0, i8* null) #10, !dbg !5539
  store i32 %call, i32* %version, align 4, !dbg !5538
  %0 = load i32, i32* %version, align 4, !dbg !5540
  %tobool = icmp ne i32 %0, 0, !dbg !5540
  br i1 %tobool, label %if.then, label %if.end, !dbg !5542

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buffer.addr, align 8, !dbg !5543
  %2 = load i32, i32* %version, align 4, !dbg !5544
  %and = and i32 %2, 255, !dbg !5545
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %and) #10, !dbg !5546
  %conv = sext i32 %call1 to i64, !dbg !5546
  store i64 %conv, i64* %retval, align 8, !dbg !5547
  br label %return, !dbg !5547

if.end:                                           ; preds = %entry
  store i64 -19, i64* %retval, align 8, !dbg !5548
  br label %return, !dbg !5548

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !5549
  ret i64 %3, !dbg !5549
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @extra_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !5550 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !5551
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3554, metadata !DIExpression()), !dbg !5554
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3556, metadata !DIExpression()), !dbg !5555
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3558, metadata !DIExpression()), !dbg !5556
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3560, metadata !DIExpression()), !dbg !5557
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3566, metadata !DIExpression()), !dbg !5559
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3572, metadata !DIExpression()), !dbg !5561
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3581, metadata !DIExpression()), !dbg !5564
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3583, metadata !DIExpression()), !dbg !5565
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3585, metadata !DIExpression()), !dbg !5566
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3587, metadata !DIExpression()), !dbg !5567
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3589, metadata !DIExpression()), !dbg !5568
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3591, metadata !DIExpression()), !dbg !5569
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3593, metadata !DIExpression()), !dbg !5570
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3595, metadata !DIExpression()), !dbg !5571
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %extra = alloca i8*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5574, metadata !DIExpression()), !dbg !5575
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5576, metadata !DIExpression()), !dbg !5577
  store i32 -12, i32* %ret, align 4, !dbg !5577
  call void @llvm.dbg.declare(metadata i8** %extra, metadata !5578, metadata !DIExpression()), !dbg !5579
  store i64 16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !5580
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #5, !dbg !5581
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !5582

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5583
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !5584
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5585

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !5586
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !5587
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5588
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !5589
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5568
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5590
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5591
  %8 = load i32, i32* %order.i.i, align 4, !dbg !5592
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5593
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5594
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5595
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !5596
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5596
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5596
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5596
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !5596
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5597
  br label %kmalloc.exit, !dbg !5597

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !5598
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5599
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !5599
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5600

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5601
  br label %kmalloc_index.exit.i, !dbg !5601

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5602
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !5603
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5604

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5605
  br label %kmalloc_index.exit.i, !dbg !5605

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5606
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !5607
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5608

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5609
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !5610
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5611

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5612
  br label %kmalloc_index.exit.i, !dbg !5612

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5613
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !5614
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5615

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5616
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !5617
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5618

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5619
  br label %kmalloc_index.exit.i, !dbg !5619

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5620
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !5621
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5622

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5623
  br label %kmalloc_index.exit.i, !dbg !5623

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5624
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !5625
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5626

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5627
  br label %kmalloc_index.exit.i, !dbg !5627

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5628
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !5629
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5630

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5631
  br label %kmalloc_index.exit.i, !dbg !5631

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5632
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !5633
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5634

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5635
  br label %kmalloc_index.exit.i, !dbg !5635

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5636
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !5637
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5638

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5639
  br label %kmalloc_index.exit.i, !dbg !5639

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5640
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !5641
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5642

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5643
  br label %kmalloc_index.exit.i, !dbg !5643

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5644
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !5645
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5646

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5647
  br label %kmalloc_index.exit.i, !dbg !5647

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5648
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !5649
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5650

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5651
  br label %kmalloc_index.exit.i, !dbg !5651

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5652
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !5653
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5654

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5655
  br label %kmalloc_index.exit.i, !dbg !5655

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5656
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !5657
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5658

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5659
  br label %kmalloc_index.exit.i, !dbg !5659

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5660
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !5661
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5662

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5663
  br label %kmalloc_index.exit.i, !dbg !5663

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5664
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !5665
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5666

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5667
  br label %kmalloc_index.exit.i, !dbg !5667

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5668
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !5669
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5670

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5671
  br label %kmalloc_index.exit.i, !dbg !5671

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5672
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !5673
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5674

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5675
  br label %kmalloc_index.exit.i, !dbg !5675

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5676
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !5677
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5678

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5679
  br label %kmalloc_index.exit.i, !dbg !5679

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5680
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !5681
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5682

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5683
  br label %kmalloc_index.exit.i, !dbg !5683

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5684
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !5685
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5686

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5687
  br label %kmalloc_index.exit.i, !dbg !5687

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5688
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !5689
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5690

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5691
  br label %kmalloc_index.exit.i, !dbg !5691

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5692
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !5693
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5694

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5695
  br label %kmalloc_index.exit.i, !dbg !5695

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5696
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !5697
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5698

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5699
  br label %kmalloc_index.exit.i, !dbg !5699

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5700
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !5701
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5702

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5703
  br label %kmalloc_index.exit.i, !dbg !5703

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5704
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !5705
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5706

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5707
  br label %kmalloc_index.exit.i, !dbg !5707

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5708
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !5709
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5710

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5711
  br label %kmalloc_index.exit.i, !dbg !5711

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5712
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !5713
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5714

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5715
  br label %kmalloc_index.exit.i, !dbg !5715

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !5716, !srcloc !3772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !5717, !srcloc !3776
  unreachable, !dbg !5718

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !5719
  store i32 %43, i32* %index.i, align 4, !dbg !5720
  %44 = load i32, i32* %index.i, align 4, !dbg !5721
  %tobool.i = icmp ne i32 %44, 0, !dbg !5721
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5722

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5723
  br label %kmalloc.exit, !dbg !5723

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !5724
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5725
  %and.i.i = and i32 %46, 17, !dbg !5725
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5725
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5725
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5725
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5725
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5726

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5727
  br label %kmalloc_type.exit.i, !dbg !5727

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5728
  %and2.i.i = and i32 %47, 1, !dbg !5729
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5728
  %48 = zext i1 %tobool3.i.i to i64, !dbg !5728
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5728
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5730
  br label %kmalloc_type.exit.i, !dbg !5730

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !5731
  %idxprom.i = zext i32 %49 to i64, !dbg !5732
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5732
  %50 = load i32, i32* %index.i, align 4, !dbg !5733
  %idxprom6.i = zext i32 %50 to i64, !dbg !5732
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5732
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5732
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !5734
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !5735
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5736
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5737
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !5738
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5738
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5738
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5738
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !5738
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5556
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5739
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !5740
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5741
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5742
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !5743
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5744
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5745
  store i8* %60, i8** %retval.i, align 8, !dbg !5746
  br label %kmalloc.exit, !dbg !5746

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5747
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !5748
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !5749
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5749
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5749
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5749
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !5749
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5750
  br label %kmalloc.exit, !dbg !5750

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !5751
  store i8* %63, i8** %extra, align 8, !dbg !5752
  %64 = load i8*, i8** %extra, align 8, !dbg !5753
  %tobool = icmp ne i8* %64, null, !dbg !5753
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5755

if.then:                                          ; preds = %kmalloc.exit
  %65 = load i8*, i8** %extra, align 8, !dbg !5756
  %call1 = call i32 @HYPERVISOR_xen_version(i32 1, i8* %65) #10, !dbg !5758
  store i32 %call1, i32* %ret, align 4, !dbg !5759
  %66 = load i32, i32* %ret, align 4, !dbg !5760
  %tobool2 = icmp ne i32 %66, 0, !dbg !5760
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5762

if.then3:                                         ; preds = %if.then
  %67 = load i8*, i8** %buffer.addr, align 8, !dbg !5763
  %68 = load i8*, i8** %extra, align 8, !dbg !5764
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %68) #10, !dbg !5765
  store i32 %call4, i32* %ret, align 4, !dbg !5766
  br label %if.end, !dbg !5767

if.end:                                           ; preds = %if.then3, %if.then
  %69 = load i8*, i8** %extra, align 8, !dbg !5768
  call void @kfree(i8* %69) #10, !dbg !5769
  br label %if.end5, !dbg !5770

if.end5:                                          ; preds = %if.end, %kmalloc.exit
  %70 = load i32, i32* %ret, align 4, !dbg !5771
  %conv = sext i32 %70 to i64, !dbg !5771
  ret i64 %conv, !dbg !5772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @guest_type_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !5773 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  %type = alloca i8*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !5774, metadata !DIExpression()), !dbg !5775
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  call void @llvm.dbg.declare(metadata i8** %type, metadata !5778, metadata !DIExpression()), !dbg !5779
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5780
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !5781

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i8** %type, align 8, !dbg !5782
  br label %sw.epilog, !dbg !5784

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %type, align 8, !dbg !5785
  br label %sw.epilog, !dbg !5786

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8** %type, align 8, !dbg !5787
  br label %sw.epilog, !dbg !5788

sw.default:                                       ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !5789
  br label %return, !dbg !5789

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %buffer.addr, align 8, !dbg !5790
  %2 = load i8*, i8** %type, align 8, !dbg !5791
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %2) #10, !dbg !5792
  %conv = sext i32 %call to i64, !dbg !5792
  store i64 %conv, i64* %retval, align 8, !dbg !5793
  br label %return, !dbg !5793

return:                                           ; preds = %sw.epilog, %sw.default
  %3 = load i64, i64* %retval, align 8, !dbg !5794
  ret i64 %3, !dbg !5794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @type_show(%struct.hyp_sysfs_attr* %attr, i8* %buffer) #3 !dbg !5795 {
entry:
  %attr.addr = alloca %struct.hyp_sysfs_attr*, align 8
  %buffer.addr = alloca i8*, align 8
  store %struct.hyp_sysfs_attr* %attr, %struct.hyp_sysfs_attr** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %attr.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !5800
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !5801
  %conv = sext i32 %call to i64, !dbg !5801
  ret i64 %conv, !dbg !5802
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hyp_sysfs_show(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buffer) #3 !dbg !5803 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buffer.addr = alloca i8*, align 8
  %hyp_attr = alloca %struct.hyp_sysfs_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hyp_sysfs_attr*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %hyp_attr, metadata !5810, metadata !DIExpression()), !dbg !5811
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5812, metadata !DIExpression()), !dbg !5814
  %0 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5814
  %1 = bitcast %struct.attribute* %0 to i8*, !dbg !5814
  store i8* %1, i8** %__mptr, align 8, !dbg !5814
  br label %do.body, !dbg !5814

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5815

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5814
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5814
  %3 = bitcast i8* %add.ptr to %struct.hyp_sysfs_attr*, !dbg !5814
  store %struct.hyp_sysfs_attr* %3, %struct.hyp_sysfs_attr** %tmp, align 8, !dbg !5815
  %4 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %tmp, align 8, !dbg !5814
  store %struct.hyp_sysfs_attr* %4, %struct.hyp_sysfs_attr** %hyp_attr, align 8, !dbg !5817
  %5 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %hyp_attr, align 8, !dbg !5818
  %show = getelementptr inbounds %struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* %5, i32 0, i32 1, !dbg !5820
  %6 = load i64 (%struct.hyp_sysfs_attr*, i8*)*, i64 (%struct.hyp_sysfs_attr*, i8*)** %show, align 8, !dbg !5820
  %tobool = icmp ne i64 (%struct.hyp_sysfs_attr*, i8*)* %6, null, !dbg !5818
  br i1 %tobool, label %if.then, label %if.end, !dbg !5821

if.then:                                          ; preds = %do.end
  %7 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %hyp_attr, align 8, !dbg !5822
  %show1 = getelementptr inbounds %struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* %7, i32 0, i32 1, !dbg !5823
  %8 = load i64 (%struct.hyp_sysfs_attr*, i8*)*, i64 (%struct.hyp_sysfs_attr*, i8*)** %show1, align 8, !dbg !5823
  %9 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %hyp_attr, align 8, !dbg !5824
  %10 = load i8*, i8** %buffer.addr, align 8, !dbg !5825
  %call = call i64 %8(%struct.hyp_sysfs_attr* %9, i8* %10) #10, !dbg !5822
  store i64 %call, i64* %retval, align 8, !dbg !5826
  br label %return, !dbg !5826

if.end:                                           ; preds = %do.end
  store i64 0, i64* %retval, align 8, !dbg !5827
  br label %return, !dbg !5827

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !5828
  ret i64 %11, !dbg !5828
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hyp_sysfs_store(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buffer, i64 %len) #3 !dbg !5829 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %hyp_attr = alloca %struct.hyp_sysfs_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hyp_sysfs_attr*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5830, metadata !DIExpression()), !dbg !5831
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata %struct.hyp_sysfs_attr** %hyp_attr, metadata !5838, metadata !DIExpression()), !dbg !5839
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5840, metadata !DIExpression()), !dbg !5842
  %0 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5842
  %1 = bitcast %struct.attribute* %0 to i8*, !dbg !5842
  store i8* %1, i8** %__mptr, align 8, !dbg !5842
  br label %do.body, !dbg !5842

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5843

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5842
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5842
  %3 = bitcast i8* %add.ptr to %struct.hyp_sysfs_attr*, !dbg !5842
  store %struct.hyp_sysfs_attr* %3, %struct.hyp_sysfs_attr** %tmp, align 8, !dbg !5843
  %4 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %tmp, align 8, !dbg !5842
  store %struct.hyp_sysfs_attr* %4, %struct.hyp_sysfs_attr** %hyp_attr, align 8, !dbg !5845
  %5 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %hyp_attr, align 8, !dbg !5846
  %store = getelementptr inbounds %struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* %5, i32 0, i32 2, !dbg !5848
  %6 = load i64 (%struct.hyp_sysfs_attr*, i8*, i64)*, i64 (%struct.hyp_sysfs_attr*, i8*, i64)** %store, align 8, !dbg !5848
  %tobool = icmp ne i64 (%struct.hyp_sysfs_attr*, i8*, i64)* %6, null, !dbg !5846
  br i1 %tobool, label %if.then, label %if.end, !dbg !5849

if.then:                                          ; preds = %do.end
  %7 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %hyp_attr, align 8, !dbg !5850
  %store1 = getelementptr inbounds %struct.hyp_sysfs_attr, %struct.hyp_sysfs_attr* %7, i32 0, i32 2, !dbg !5851
  %8 = load i64 (%struct.hyp_sysfs_attr*, i8*, i64)*, i64 (%struct.hyp_sysfs_attr*, i8*, i64)** %store1, align 8, !dbg !5851
  %9 = load %struct.hyp_sysfs_attr*, %struct.hyp_sysfs_attr** %hyp_attr, align 8, !dbg !5852
  %10 = load i8*, i8** %buffer.addr, align 8, !dbg !5853
  %11 = load i64, i64* %len.addr, align 8, !dbg !5854
  %call = call i64 %8(%struct.hyp_sysfs_attr* %9, i8* %10, i64 %11) #10, !dbg !5850
  store i64 %call, i64* %retval, align 8, !dbg !5855
  br label %return, !dbg !5855

if.end:                                           ; preds = %do.end
  store i64 0, i64* %retval, align 8, !dbg !5856
  br label %return, !dbg !5856

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !5857
  ret i64 %12, !dbg !5857
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3150}
!llvm.module.flags = !{!3151, !3152, !3153, !3154}
!llvm.ident = !{!3155}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hyper_sysfs_init214", scope: !2, file: !3, line: 568, type: !76, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !109, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/sys-hypervisor.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !6, line: 5, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
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
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !60, line: 305, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!66 = !{!67, !73, !74, !75, !76, !77, !78}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !68, line: 104, baseType: !69)
!68 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !70, line: 21, baseType: !71)
!70 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !72, line: 27, baseType: !7)
!72 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !68, line: 148, baseType: !7)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hyp_sysfs_attr", file: !3, line: 31, size: 320, elements: !80)
!80 = !{!81, !92, !101, !108}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !79, file: !3, line: 32, baseType: !82, size: 128)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !83, line: 30, size: 128, elements: !84)
!83 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !83, line: 31, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !82, file: !83, line: 32, baseType: !90, size: 16, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !68, line: 19, baseType: !91)
!91 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !79, file: !3, line: 33, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !78, !100}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !68, line: 60, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !98, line: 73, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !98, line: 15, baseType: !77)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !79, file: !3, line: 34, baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!96, !78, !86, !105}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 55, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !98, line: 72, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !98, line: 16, baseType: !74)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "hyp_attr_data", scope: !79, file: !3, line: 35, baseType: !76, size: 64, offset: 256)
!109 = !{!0, !110, !112, !3086, !3089, !3091, !3098, !3100, !3102, !3107, !3109, !3111, !3113, !3115, !3117, !3119, !3121, !3123, !3126, !3128, !3130, !3132, !3134, !3136, !3138, !3140, !3142, !3144, !3146, !3148}
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hypervisor_subsys_init217", scope: !2, file: !3, line: 610, type: !76, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "xen_pmu_group", scope: !2, file: !3, line: 507, type: !114, isLocal: true, isDefinition: true)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !83, line: 84, size: 320, elements: !116)
!116 = !{!117, !118, !3064, !3083, !3084}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !83, line: 85, baseType: !86, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !115, file: !83, line: 86, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!90, !122, !210, !73}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !124, line: 64, size: 512, elements: !125)
!124 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127, !133, !134, !193, !278, !3054, !3059, !3060, !3061, !3062, !3063}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !124, line: 65, baseType: !86, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !123, file: !124, line: 66, baseType: !128, size: 128, offset: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !68, line: 178, size: 128, elements: !129)
!129 = !{!130, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !68, line: 179, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !128, file: !68, line: 179, baseType: !131, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !123, file: !124, line: 67, baseType: !122, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !123, file: !124, line: 68, baseType: !135, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !124, line: 192, size: 704, elements: !137)
!137 = !{!138, !139, !155, !156}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !136, file: !124, line: 193, baseType: !128, size: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !136, file: !124, line: 194, baseType: !140, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !141, line: 83, baseType: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !141, line: 71, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !141, line: 72, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !141, line: 72, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !145, file: !141, line: 73, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !141, line: 20, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !148, file: !141, line: 21, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !152, line: 25, baseType: !153)
!152 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 25, elements: !154)
!154 = !{}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !136, file: !124, line: 195, baseType: !123, size: 512, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !136, file: !124, line: 196, baseType: !157, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !124, line: 156, size: 192, elements: !160)
!160 = !{!161, !166, !171}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !159, file: !124, line: 157, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!73, !135, !122}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !124, line: 158, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!86, !135, !122}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !159, file: !124, line: 159, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!73, !135, !122, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !124, line: 148, size: 20736, elements: !178)
!178 = !{!179, !183, !187, !188, !192}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !177, file: !124, line: 149, baseType: !180, size: 192)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 192, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 3)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !177, file: !124, line: 150, baseType: !184, size: 4096, offset: 192)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 4096, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !177, file: !124, line: 151, baseType: !73, size: 32, offset: 4288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !177, file: !124, line: 152, baseType: !189, size: 16384, offset: 4320)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 16384, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 2048)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !177, file: !124, line: 153, baseType: !73, size: 32, offset: 20704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !123, file: !124, line: 69, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !124, line: 138, size: 448, elements: !196)
!196 = !{!197, !201, !215, !217, !220, !255, !259}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !195, file: !124, line: 139, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !122}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !195, file: !124, line: 140, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !83, line: 230, size: 128, elements: !205)
!205 = !{!206, !211}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !204, file: !83, line: 231, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!96, !122, !210, !100}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !204, file: !83, line: 232, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!96, !122, !210, !86, !105}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !195, file: !124, line: 141, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !195, file: !124, line: 142, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !195, file: !124, line: 143, baseType: !221, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !122}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !54, line: 39, size: 384, elements: !227)
!227 = !{!228, !229, !235, !239, !247, !251}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !226, file: !54, line: 40, baseType: !53, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !226, file: !54, line: 41, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !68, line: 30, baseType: !234)
!234 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !226, file: !54, line: 42, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!76}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !226, file: !54, line: 43, baseType: !240, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !245}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !54, line: 19, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !226, file: !54, line: 44, baseType: !248, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!243}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !226, file: !54, line: 45, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !76}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !195, file: !124, line: 144, baseType: !256, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!243, !122}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !195, file: !124, line: 145, baseType: !260, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !122, !263, !271}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !265, line: 23, baseType: !266)
!265 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 21, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !266, file: !265, line: 22, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !68, line: 32, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !98, line: 49, baseType: !7)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !265, line: 28, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 26, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !273, file: !265, line: 27, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !68, line: 33, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !98, line: 50, baseType: !7)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !123, file: !124, line: 70, baseType: !279, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !281, line: 123, size: 1024, elements: !282)
!281 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !288, !289, !290, !291, !299, !300, !301, !3047, !3048, !3049, !3050, !3051}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !280, file: !281, line: 124, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !68, line: 168, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 166, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !68, line: 167, baseType: !73, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !280, file: !281, line: 125, baseType: !284, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !280, file: !281, line: 135, baseType: !279, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !281, line: 136, baseType: !86, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !280, file: !281, line: 138, baseType: !292, size: 192, align: 64, offset: 192)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !293, line: 24, size: 192, align: 64, elements: !294)
!293 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!294 = !{!295, !296, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !292, file: !293, line: 25, baseType: !74, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !292, file: !293, line: 26, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !292, file: !293, line: 27, baseType: !297, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !280, file: !281, line: 140, baseType: !243, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !280, file: !281, line: 141, baseType: !7, size: 32, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !281, line: 142, baseType: !302, size: 256, offset: 512)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !281, line: 142, size: 256, elements: !303)
!303 = !{!304, !368, !372}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !302, file: !281, line: 143, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !281, line: 91, size: 192, elements: !306)
!306 = !{!307, !308, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !305, file: !281, line: 92, baseType: !74, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !305, file: !281, line: 94, baseType: !309, size: 64, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !293, line: 31, size: 64, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !309, file: !293, line: 32, baseType: !297, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !305, file: !281, line: 100, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !281, line: 180, size: 704, elements: !315)
!315 = !{!316, !317, !318, !331, !332, !333, !360, !361}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !314, file: !281, line: 182, baseType: !279, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !281, line: 183, baseType: !7, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !314, file: !281, line: 186, baseType: !319, size: 192, offset: 128)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !320, line: 19, size: 192, elements: !321)
!320 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !329, !330}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !319, file: !320, line: 20, baseType: !323, size: 128)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !324, line: 292, size: 128, elements: !325)
!324 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!325 = !{!326, !327, !328}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !323, file: !324, line: 293, baseType: !140)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !323, file: !324, line: 295, baseType: !75, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !323, file: !324, line: 296, baseType: !76, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !319, file: !320, line: 21, baseType: !7, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !319, file: !320, line: 22, baseType: !7, size: 32, offset: 160)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !314, file: !281, line: 187, baseType: !69, size: 32, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !314, file: !281, line: 188, baseType: !69, size: 32, offset: 352)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !314, file: !281, line: 189, baseType: !334, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !281, line: 168, size: 320, elements: !336)
!336 = !{!337, !344, !348, !352, !356}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !335, file: !281, line: 169, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!73, !341, !313}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !343, line: 539, flags: DIFlagFwdDecl)
!343 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !335, file: !281, line: 171, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!73, !279, !86, !90}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !335, file: !281, line: 173, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!73, !279}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !335, file: !281, line: 174, baseType: !353, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!73, !279, !279, !86}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !335, file: !281, line: 176, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!73, !341, !279, !313}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !314, file: !281, line: 192, baseType: !128, size: 128, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !314, file: !281, line: 194, baseType: !362, size: 128, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !363, line: 40, baseType: !364)
!363 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !363, line: 36, size: 128, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !364, file: !363, line: 37, baseType: !140)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !364, file: !363, line: 38, baseType: !128, size: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !302, file: !281, line: 144, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !281, line: 103, size: 64, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !369, file: !281, line: 104, baseType: !279, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !302, file: !281, line: 145, baseType: !373, size: 256)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !281, line: 107, size: 256, elements: !374)
!374 = !{!375, !3042, !3045, !3046}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !373, file: !281, line: 108, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !281, line: 217, size: 768, elements: !379)
!379 = !{!380, !3007, !3011, !3015, !3019, !3023, !3027, !3031, !3032, !3033, !3034, !3038}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !378, file: !281, line: 222, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!73, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !281, line: 197, size: 1088, elements: !386)
!386 = !{!387, !388, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !385, file: !281, line: 199, baseType: !279, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !385, file: !281, line: 200, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !391)
!391 = !{!392, !410, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2979, !2980, !2989, !2990, !2991, !2992, !2993, !2994, !2995}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !390, file: !37, line: 920, baseType: !393, size: 128)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !37, line: 917, size: 128, elements: !394)
!394 = !{!395, !401}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !393, file: !37, line: 918, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !397, line: 58, size: 64, elements: !398)
!397 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !397, line: 59, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !393, file: !37, line: 919, baseType: !402, size: 128, align: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !68, line: 216, size: 128, align: 64, elements: !403)
!403 = !{!404, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !68, line: 217, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !402, file: !68, line: 218, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !405}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !390, file: !37, line: 921, baseType: !411, size: 128, offset: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !412, line: 8, size: 128, elements: !413)
!412 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !411, file: !412, line: 9, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !417, line: 18, flags: DIFlagFwdDecl)
!417 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !411, file: !412, line: 10, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !417, line: 89, size: 1536, elements: !421)
!421 = !{!422, !423, !433, !441, !442, !461, !2929, !2931, !2943, !2944, !2945, !2946, !2947, !2953, !2954, !2955}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !420, file: !417, line: 91, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !420, file: !417, line: 92, baseType: !424, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !425, line: 277, baseType: !426)
!425 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !425, line: 277, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !426, file: !425, line: 277, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !425, line: 70, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !425, line: 65, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !430, file: !425, line: 66, baseType: !7, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !420, file: !417, line: 93, baseType: !434, size: 128, offset: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !435, line: 38, size: 128, elements: !436)
!435 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !435, line: 39, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !434, file: !435, line: 39, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !420, file: !417, line: 94, baseType: !419, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !420, file: !417, line: 95, baseType: !443, size: 128, offset: 256)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !417, line: 47, size: 128, elements: !444)
!444 = !{!445, !457}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !417, line: 48, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !417, line: 48, size: 64, elements: !447)
!447 = !{!448, !453}
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !417, line: 49, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !417, line: 49, size: 64, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !449, file: !417, line: 50, baseType: !69, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !449, file: !417, line: 50, baseType: !69, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !446, file: !417, line: 52, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !70, line: 23, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !72, line: 31, baseType: !456)
!456 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !443, file: !417, line: 54, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !420, file: !417, line: 96, baseType: !462, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !612, !2640, !2641, !2642, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2905, !2913, !2914, !2915, !2925, !2926, !2927, !2928}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !463, file: !37, line: 611, baseType: !90, size: 16)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !463, file: !37, line: 612, baseType: !91, size: 16, offset: 16)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !463, file: !37, line: 613, baseType: !264, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !463, file: !37, line: 614, baseType: !272, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !463, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !463, file: !37, line: 622, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !474)
!474 = !{!475, !479, !489, !493, !499, !503, !507, !511, !515, !519, !523, !524, !530, !534, !560, !588, !592, !598, !603, !607, !608}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !473, file: !37, line: 1865, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!419, !462, !419, !7}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !473, file: !37, line: 1866, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!86, !419, !462, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !485, line: 10, size: 128, elements: !486)
!485 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !484, file: !485, line: 11, baseType: !252, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !484, file: !485, line: 12, baseType: !76, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !473, file: !37, line: 1867, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!73, !462, !73}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !473, file: !37, line: 1868, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !462, !73}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !473, file: !37, line: 1870, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!73, !419, !100, !73}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !473, file: !37, line: 1872, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!73, !462, !419, !90, !233}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !473, file: !37, line: 1873, baseType: !508, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!73, !419, !462, !419}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !473, file: !37, line: 1874, baseType: !512, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!73, !462, !419}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !473, file: !37, line: 1875, baseType: !516, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!73, !462, !419, !86}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !473, file: !37, line: 1876, baseType: !520, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!73, !462, !419, !90}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !473, file: !37, line: 1877, baseType: !512, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !473, file: !37, line: 1878, baseType: !525, size: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!73, !462, !419, !90, !528}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !68, line: 16, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !68, line: 13, baseType: !69)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !473, file: !37, line: 1879, baseType: !531, size: 64, offset: 768)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!73, !462, !419, !462, !419, !7}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !473, file: !37, line: 1881, baseType: !535, size: 64, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!73, !419, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !549, !557, !558, !559}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !539, file: !37, line: 220, baseType: !7, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !539, file: !37, line: 221, baseType: !90, size: 16, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !539, file: !37, line: 222, baseType: !264, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !539, file: !37, line: 223, baseType: !272, size: 32, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !539, file: !37, line: 224, baseType: !546, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !68, line: 46, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !98, line: 88, baseType: !548)
!548 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !539, file: !37, line: 225, baseType: !550, size: 128, offset: 192)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !551, line: 13, size: 128, elements: !552)
!551 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!552 = !{!553, !556}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !550, file: !551, line: 14, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !551, line: 8, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !72, line: 30, baseType: !548)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !550, file: !551, line: 15, baseType: !77, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !539, file: !37, line: 226, baseType: !550, size: 128, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !539, file: !37, line: 227, baseType: !550, size: 128, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !539, file: !37, line: 234, baseType: !389, size: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !473, file: !37, line: 1882, baseType: !561, size: 64, offset: 896)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!73, !564, !566, !69, !7}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !568, line: 22, size: 1152, elements: !569)
!568 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !567, file: !568, line: 23, baseType: !69, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !567, file: !568, line: 24, baseType: !90, size: 16, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !567, file: !568, line: 25, baseType: !7, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !567, file: !568, line: 26, baseType: !67, size: 32, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !567, file: !568, line: 27, baseType: !454, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !567, file: !568, line: 28, baseType: !454, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !567, file: !568, line: 37, baseType: !454, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !567, file: !568, line: 38, baseType: !528, size: 32, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !567, file: !568, line: 39, baseType: !528, size: 32, offset: 352)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !567, file: !568, line: 40, baseType: !264, size: 32, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !567, file: !568, line: 41, baseType: !272, size: 32, offset: 416)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !567, file: !568, line: 42, baseType: !546, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !567, file: !568, line: 43, baseType: !550, size: 128, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !567, file: !568, line: 44, baseType: !550, size: 128, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !567, file: !568, line: 45, baseType: !550, size: 128, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !567, file: !568, line: 46, baseType: !550, size: 128, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !567, file: !568, line: 47, baseType: !454, size: 64, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !567, file: !568, line: 48, baseType: !454, size: 64, offset: 1088)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !473, file: !37, line: 1883, baseType: !589, size: 64, offset: 960)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!96, !419, !100, !105}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !473, file: !37, line: 1884, baseType: !593, size: 64, offset: 1024)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!73, !462, !596, !454, !454}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !473, file: !37, line: 1886, baseType: !599, size: 64, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!73, !462, !602, !73}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !473, file: !37, line: 1887, baseType: !604, size: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!73, !462, !419, !389, !7, !90}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !473, file: !37, line: 1890, baseType: !520, size: 64, offset: 1216)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !473, file: !37, line: 1891, baseType: !609, size: 64, offset: 1280)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!73, !462, !497, !73}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !463, file: !37, line: 623, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !670, !2247, !2329, !2412, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2428, !2432, !2433, !2436, !2437, !2440, !2441, !2442, !2483, !2510, !2511, !2512, !2513, !2514, !2515, !2518, !2520, !2527, !2528, !2530, !2531, !2532, !2591, !2592, !2607, !2608, !2609, !2610, !2611, !2614, !2615, !2616, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !614, file: !37, line: 1417, baseType: !128, size: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !614, file: !37, line: 1418, baseType: !528, size: 32, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !614, file: !37, line: 1419, baseType: !460, size: 8, offset: 160)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !614, file: !37, line: 1420, baseType: !74, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !614, file: !37, line: 1421, baseType: !546, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !614, file: !37, line: 1422, baseType: !622, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !624)
!624 = !{!625, !626, !627, !633, !637, !641, !645, !649, !650, !660, !663, !664, !665, !667, !668, !669}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !623, file: !37, line: 2229, baseType: !86, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !623, file: !37, line: 2230, baseType: !73, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !623, file: !37, line: 2238, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!73, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !281, line: 28, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !623, file: !37, line: 2239, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !623, file: !37, line: 2240, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!419, !622, !73, !86, !76}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !623, file: !37, line: 2242, baseType: !642, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !613}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !623, file: !37, line: 2243, baseType: !646, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !648, line: 76, flags: DIFlagFwdDecl)
!648 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !37, line: 2244, baseType: !622, size: 64, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !623, file: !37, line: 2245, baseType: !651, size: 64, offset: 512)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !68, line: 182, size: 64, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !651, file: !68, line: 183, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !68, line: 186, size: 128, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !655, file: !68, line: 187, baseType: !654, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !655, file: !68, line: 187, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !623, file: !37, line: 2247, baseType: !661, offset: 576)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !662, line: 187, elements: !154)
!662 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !623, file: !37, line: 2248, baseType: !661, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !623, file: !37, line: 2249, baseType: !661, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !623, file: !37, line: 2250, baseType: !666, offset: 576)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, elements: !181)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !623, file: !37, line: 2252, baseType: !661, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !623, file: !37, line: 2253, baseType: !661, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !623, file: !37, line: 2254, baseType: !661, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !614, file: !37, line: 1423, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !674)
!674 = !{!675, !679, !683, !684, !688, !694, !698, !699, !700, !704, !708, !709, !710, !711, !717, !722, !723, !727, !728, !729, !730, !2231, !2246}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !673, file: !37, line: 1936, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!462, !613}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !673, file: !37, line: 1937, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !462}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !673, file: !37, line: 1938, baseType: !680, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !673, file: !37, line: 1940, baseType: !685, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !462, !73}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !673, file: !37, line: 1941, baseType: !689, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!73, !462, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !673, file: !37, line: 1942, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!73, !462}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !673, file: !37, line: 1943, baseType: !680, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !673, file: !37, line: 1944, baseType: !642, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !673, file: !37, line: 1945, baseType: !701, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!73, !613, !73}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !673, file: !37, line: 1946, baseType: !705, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!73, !613}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !673, file: !37, line: 1947, baseType: !705, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !673, file: !37, line: 1948, baseType: !705, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !673, file: !37, line: 1949, baseType: !705, size: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !673, file: !37, line: 1950, baseType: !712, size: 64, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!73, !419, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !673, file: !37, line: 1951, baseType: !718, size: 64, offset: 896)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!73, !613, !721, !100}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !673, file: !37, line: 1952, baseType: !642, size: 64, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !673, file: !37, line: 1954, baseType: !724, size: 64, offset: 1024)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!73, !341, !419}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !673, file: !37, line: 1955, baseType: !724, size: 64, offset: 1088)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !673, file: !37, line: 1956, baseType: !724, size: 64, offset: 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !673, file: !37, line: 1957, baseType: !724, size: 64, offset: 1216)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !673, file: !37, line: 1963, baseType: !731, size: 64, offset: 1280)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!73, !613, !734, !75}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !736, line: 68, size: 512, align: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !739, !2223, !2230}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !736, line: 69, baseType: !74, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !736, line: 77, baseType: !740, size: 320, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !736, line: 77, size: 320, elements: !741)
!741 = !{!742, !909, !914, !942, !950, !956, !2215, !2222}
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 78, baseType: !743, size: 320)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 78, size: 320, elements: !744)
!744 = !{!745, !746, !907, !908}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !743, file: !736, line: 84, baseType: !128, size: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !743, file: !736, line: 86, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !759, !775, !776, !777, !778, !900, !901, !904, !905, !906}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !748, file: !37, line: 452, baseType: !462, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !748, file: !37, line: 453, baseType: !323, size: 128, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !748, file: !37, line: 454, baseType: !75, size: 32, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !748, file: !37, line: 455, baseType: !284, size: 32, offset: 224)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !748, file: !37, line: 460, baseType: !755, size: 128, offset: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !293, line: 125, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !755, file: !293, line: 126, baseType: !309, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !755, file: !293, line: 127, baseType: !297, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !748, file: !37, line: 461, baseType: !760, size: 256, offset: 384)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !761, line: 35, size: 256, elements: !762)
!761 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !771, !772, !774}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !760, file: !761, line: 36, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !765, line: 13, baseType: !766)
!765 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !68, line: 175, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 173, size: 64, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !767, file: !68, line: 174, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !70, line: 22, baseType: !555)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !760, file: !761, line: 42, baseType: !764, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !760, file: !761, line: 46, baseType: !773, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !141, line: 29, baseType: !148)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !760, file: !761, line: 47, baseType: !128, size: 128, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !748, file: !37, line: 462, baseType: !74, size: 64, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !748, file: !37, line: 463, baseType: !74, size: 64, offset: 704)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !748, file: !37, line: 464, baseType: !74, size: 64, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !748, file: !37, line: 465, baseType: !779, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !782)
!782 = !{!783, !787, !791, !795, !799, !803, !809, !815, !819, !824, !828, !832, !836, !864, !868, !874, !875, !876, !880, !885, !889, !896}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !781, file: !37, line: 368, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!73, !734, !692}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !781, file: !37, line: 369, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!73, !389, !734}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !781, file: !37, line: 372, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!73, !747, !692}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !781, file: !37, line: 375, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!73, !734}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !781, file: !37, line: 381, baseType: !800, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!73, !389, !747, !131, !7}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !781, file: !37, line: 383, baseType: !804, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !807}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !781, file: !37, line: 385, baseType: !810, size: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!73, !389, !747, !546, !7, !7, !813, !814}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !781, file: !37, line: 388, baseType: !816, size: 64, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!73, !389, !747, !546, !7, !7, !734, !76}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !781, file: !37, line: 393, baseType: !820, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!823, !747, !823}
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !68, line: 125, baseType: !454)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !781, file: !37, line: 394, baseType: !825, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !734, !7, !7}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !781, file: !37, line: 395, baseType: !829, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!73, !734, !75}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !781, file: !37, line: 396, baseType: !833, size: 64, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !734}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !781, file: !37, line: 397, baseType: !837, size: 64, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!96, !840, !862}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !842)
!842 = !{!843, !844, !845, !849, !850, !851, !854, !855}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !841, file: !37, line: 321, baseType: !389, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !841, file: !37, line: 326, baseType: !546, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !841, file: !37, line: 327, baseType: !846, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !840, !77, !77}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !841, file: !37, line: 328, baseType: !76, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !841, file: !37, line: 329, baseType: !73, size: 32, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !841, file: !37, line: 330, baseType: !852, size: 16, offset: 288)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !70, line: 19, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !72, line: 24, baseType: !91)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !841, file: !37, line: 331, baseType: !852, size: 16, offset: 304)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !37, line: 332, baseType: !856, size: 64, offset: 320)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !37, line: 332, size: 64, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !856, file: !37, line: 333, baseType: !7, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !856, file: !37, line: 334, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !781, file: !37, line: 402, baseType: !865, size: 64, offset: 832)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!73, !747, !734, !734, !12}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !781, file: !37, line: 404, baseType: !869, size: 64, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!233, !734, !872}
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !873, line: 305, baseType: !7)
!873 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!874 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !781, file: !37, line: 405, baseType: !833, size: 64, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !781, file: !37, line: 406, baseType: !796, size: 64, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !781, file: !37, line: 407, baseType: !877, size: 64, offset: 1088)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!73, !734, !74, !74}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !781, file: !37, line: 409, baseType: !881, size: 64, offset: 1152)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !734, !884, !884}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !781, file: !37, line: 410, baseType: !886, size: 64, offset: 1216)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!73, !747, !734}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !781, file: !37, line: 413, baseType: !890, size: 64, offset: 1280)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!73, !893, !389, !895}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !781, file: !37, line: 415, baseType: !897, size: 64, offset: 1344)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !389}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !37, line: 466, baseType: !74, size: 64, offset: 896)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !748, file: !37, line: 467, baseType: !902, size: 32, offset: 960)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !903, line: 8, baseType: !69)
!903 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!904 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !748, file: !37, line: 468, baseType: !140, offset: 992)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !748, file: !37, line: 469, baseType: !128, size: 128, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !748, file: !37, line: 470, baseType: !76, size: 64, offset: 1152)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !743, file: !736, line: 87, baseType: !74, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !743, file: !736, line: 94, baseType: !74, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 96, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 96, size: 64, elements: !911)
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !910, file: !736, line: 101, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !68, line: 143, baseType: !454)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 103, baseType: !915, size: 320)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 103, size: 320, elements: !916)
!916 = !{!917, !927, !930, !931}
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !736, line: 104, baseType: !918, size: 128)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !736, line: 104, size: 128, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !918, file: !736, line: 105, baseType: !128, size: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !736, line: 106, baseType: !922, size: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !736, line: 106, size: 128, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !922, file: !736, line: 107, baseType: !734, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !922, file: !736, line: 109, baseType: !73, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !922, file: !736, line: 110, baseType: !73, size: 32, offset: 96)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !915, file: !736, line: 117, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !736, line: 117, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !915, file: !736, line: 119, baseType: !76, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !736, line: 120, baseType: !932, size: 64, offset: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !736, line: 120, size: 64, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !932, file: !736, line: 121, baseType: !76, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !932, file: !736, line: 122, baseType: !74, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !736, line: 123, baseType: !937, size: 32)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !736, line: 123, size: 32, elements: !938)
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !937, file: !736, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !937, file: !736, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !937, file: !736, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 130, baseType: !943, size: 192)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 130, size: 192, elements: !944)
!944 = !{!945, !946, !947, !948, !949}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !943, file: !736, line: 131, baseType: !74, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !943, file: !736, line: 134, baseType: !460, size: 8, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !943, file: !736, line: 135, baseType: !460, size: 8, offset: 72)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !943, file: !736, line: 136, baseType: !284, size: 32, offset: 96)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !943, file: !736, line: 137, baseType: !7, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 139, baseType: !951, size: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 139, size: 256, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !951, file: !736, line: 140, baseType: !74, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !951, file: !736, line: 141, baseType: !284, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !951, file: !736, line: 143, baseType: !128, size: 128, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 145, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 145, size: 256, elements: !958)
!958 = !{!959, !960, !962, !963, !2214}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !957, file: !736, line: 146, baseType: !74, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !957, file: !736, line: 147, baseType: !961, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !343, line: 509, baseType: !734)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !957, file: !736, line: 148, baseType: !74, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !736, line: 149, baseType: !964, size: 64, offset: 192)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !736, line: 149, size: 64, elements: !965)
!965 = !{!966, !2213}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !964, file: !736, line: 150, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !736, line: 388, size: 7296, elements: !969)
!969 = !{!970, !2209}
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !736, line: 389, baseType: !971, size: 7296)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !736, line: 389, size: 7296, elements: !972)
!972 = !{!973, !1011, !1012, !1013, !1017, !1018, !1019, !1020, !1021, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1062, !1070, !1073, !1103, !1104, !2193, !2194, !2197, !2198, !2199, !2202, !2203, !2204, !2207, !2208}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !971, file: !736, line: 390, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !736, line: 305, size: 1472, elements: !976)
!976 = !{!977, !978, !979, !980, !981, !982, !983, !984, !991, !992, !997, !998, !1001, !1005, !1006, !1007, !1008, !1009}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !975, file: !736, line: 308, baseType: !74, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !975, file: !736, line: 309, baseType: !74, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !975, file: !736, line: 313, baseType: !974, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !975, file: !736, line: 313, baseType: !974, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !975, file: !736, line: 315, baseType: !292, size: 192, align: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !975, file: !736, line: 323, baseType: !74, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !975, file: !736, line: 327, baseType: !967, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !975, file: !736, line: 333, baseType: !985, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !343, line: 284, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !343, line: 284, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !986, file: !343, line: 284, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !990, line: 19, baseType: !74)
!990 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !975, file: !736, line: 334, baseType: !74, size: 64, offset: 640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !975, file: !736, line: 343, baseType: !993, size: 256, offset: 704)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !975, file: !736, line: 340, size: 256, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !993, file: !736, line: 341, baseType: !292, size: 192, align: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !993, file: !736, line: 342, baseType: !74, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !975, file: !736, line: 351, baseType: !128, size: 128, offset: 960)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !975, file: !736, line: 353, baseType: !999, size: 64, offset: 1088)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !736, line: 353, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !975, file: !736, line: 356, baseType: !1002, size: 64, offset: 1152)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !736, line: 356, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !975, file: !736, line: 359, baseType: !74, size: 64, offset: 1216)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !975, file: !736, line: 361, baseType: !389, size: 64, offset: 1280)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !975, file: !736, line: 362, baseType: !76, size: 64, offset: 1344)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !975, file: !736, line: 365, baseType: !764, size: 64, offset: 1408)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !975, file: !736, line: 373, baseType: !1010, offset: 1472)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !736, line: 296, elements: !154)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !971, file: !736, line: 391, baseType: !309, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !971, file: !736, line: 392, baseType: !454, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !971, file: !736, line: 394, baseType: !1014, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!74, !389, !74, !74, !74, !74}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !971, file: !736, line: 398, baseType: !74, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !971, file: !736, line: 399, baseType: !74, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !971, file: !736, line: 405, baseType: !74, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !971, file: !736, line: 406, baseType: !74, size: 64, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !971, file: !736, line: 407, baseType: !1022, size: 64, offset: 512)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !343, line: 286, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 286, size: 64, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1024, file: !343, line: 286, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !990, line: 18, baseType: !74)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !971, file: !736, line: 416, baseType: !284, size: 32, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !971, file: !736, line: 428, baseType: !284, size: 32, offset: 608)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !971, file: !736, line: 437, baseType: !284, size: 32, offset: 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !971, file: !736, line: 447, baseType: !284, size: 32, offset: 672)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !971, file: !736, line: 450, baseType: !764, size: 64, offset: 704)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !971, file: !736, line: 452, baseType: !73, size: 32, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !971, file: !736, line: 454, baseType: !140, offset: 800)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !971, file: !736, line: 457, baseType: !760, size: 256, offset: 832)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !971, file: !736, line: 459, baseType: !128, size: 128, offset: 1088)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !971, file: !736, line: 466, baseType: !74, size: 64, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !971, file: !736, line: 467, baseType: !74, size: 64, offset: 1280)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !971, file: !736, line: 469, baseType: !74, size: 64, offset: 1344)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !971, file: !736, line: 470, baseType: !74, size: 64, offset: 1408)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !971, file: !736, line: 471, baseType: !766, size: 64, offset: 1472)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !971, file: !736, line: 472, baseType: !74, size: 64, offset: 1536)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !971, file: !736, line: 473, baseType: !74, size: 64, offset: 1600)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !971, file: !736, line: 474, baseType: !74, size: 64, offset: 1664)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !971, file: !736, line: 475, baseType: !74, size: 64, offset: 1728)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !971, file: !736, line: 477, baseType: !140, offset: 1792)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !971, file: !736, line: 478, baseType: !74, size: 64, offset: 1792)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !971, file: !736, line: 478, baseType: !74, size: 64, offset: 1856)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !971, file: !736, line: 478, baseType: !74, size: 64, offset: 1920)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !971, file: !736, line: 478, baseType: !74, size: 64, offset: 1984)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !971, file: !736, line: 479, baseType: !74, size: 64, offset: 2048)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !971, file: !736, line: 479, baseType: !74, size: 64, offset: 2112)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !971, file: !736, line: 479, baseType: !74, size: 64, offset: 2176)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !971, file: !736, line: 480, baseType: !74, size: 64, offset: 2240)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !971, file: !736, line: 480, baseType: !74, size: 64, offset: 2304)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !971, file: !736, line: 480, baseType: !74, size: 64, offset: 2368)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !971, file: !736, line: 480, baseType: !74, size: 64, offset: 2432)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !971, file: !736, line: 482, baseType: !1059, size: 2816, offset: 2496)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2816, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 44)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !971, file: !736, line: 488, baseType: !1063, size: 256, offset: 5312)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1064, line: 60, size: 256, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1063, file: !1064, line: 61, baseType: !1067, size: 256)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 256, elements: !1068)
!1068 = !{!1069}
!1069 = !DISubrange(count: 4)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !971, file: !736, line: 490, baseType: !1071, size: 64, offset: 5568)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !736, line: 490, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !971, file: !736, line: 493, baseType: !1074, size: 896, offset: 5632)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1075, line: 53, baseType: !1076)
!1075 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 13, size: 896, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1084, !1085, !1092, !1093, !1097, !1098, !1099}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1076, file: !1075, line: 18, baseType: !454, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1076, file: !1075, line: 28, baseType: !766, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1076, file: !1075, line: 31, baseType: !760, size: 256, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1076, file: !1075, line: 32, baseType: !1082, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1075, line: 32, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1076, file: !1075, line: 37, baseType: !91, size: 16, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1076, file: !1075, line: 40, baseType: !1086, size: 192, offset: 512)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1087, line: 53, size: 192, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !{!1089, !1090, !1091}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1086, file: !1087, line: 54, baseType: !764, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1086, file: !1087, line: 55, baseType: !140, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1086, file: !1087, line: 59, baseType: !128, size: 128, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1076, file: !1075, line: 41, baseType: !76, size: 64, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1076, file: !1075, line: 42, baseType: !1094, size: 64, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1096)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1075, line: 42, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1076, file: !1075, line: 44, baseType: !284, size: 32, offset: 832)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1076, file: !1075, line: 50, baseType: !852, size: 16, offset: 864)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1076, file: !1075, line: 51, baseType: !1100, size: 16, offset: 880)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !70, line: 18, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !72, line: 23, baseType: !1102)
!1102 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !971, file: !736, line: 495, baseType: !74, size: 64, offset: 6528)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !971, file: !736, line: 497, baseType: !1105, size: 64, offset: 6592)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !736, line: 381, size: 384, elements: !1107)
!1107 = !{!1108, !1109, !2192}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1106, file: !736, line: 382, baseType: !284, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1106, file: !736, line: 383, baseType: !1110, size: 128, offset: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !736, line: 376, size: 128, elements: !1111)
!1111 = !{!1112, !2190}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1110, file: !736, line: 377, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1115, line: 640, size: 48640, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1116 = !{!1117, !1123, !1125, !1126, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1143, !1161, !1172, !1257, !1258, !1259, !1270, !1271, !1273, !1274, !1275, !1276, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1355, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1387, !1389, !1390, !1391, !1403, !1404, !1405, !1406, !1407, !1408, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1432, !1437, !1621, !1622, !1623, !1624, !1628, !1631, !1634, !1637, !1640, !1643, !1744, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1790, !1791, !1792, !1793, !1794, !1799, !1800, !1801, !1804, !1805, !1808, !1811, !1814, !1817, !1860, !1863, !1864, !1943, !1944, !1947, !1948, !1951, !1952, !1953, !1957, !1958, !1959, !1972, !1973, !1974, !1984, !1989, !1992, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1114, file: !1115, line: 646, baseType: !1118, size: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1119, line: 56, size: 128, elements: !1120)
!1119 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !1119, line: 57, baseType: !74, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1118, file: !1119, line: 58, baseType: !69, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1114, file: !1115, line: 649, baseType: !1124, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1114, file: !1115, line: 657, baseType: !76, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1114, file: !1115, line: 658, baseType: !1127, size: 32, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1128, line: 113, baseType: !1129)
!1128 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1128, line: 111, size: 32, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1129, file: !1128, line: 112, baseType: !284, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1114, file: !1115, line: 660, baseType: !7, size: 32, offset: 288)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1114, file: !1115, line: 661, baseType: !7, size: 32, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1114, file: !1115, line: 684, baseType: !73, size: 32, offset: 352)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1114, file: !1115, line: 686, baseType: !73, size: 32, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1114, file: !1115, line: 687, baseType: !73, size: 32, offset: 416)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1114, file: !1115, line: 688, baseType: !73, size: 32, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1114, file: !1115, line: 689, baseType: !7, size: 32, offset: 480)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1114, file: !1115, line: 691, baseType: !1140, size: 64, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1115, line: 691, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1114, file: !1115, line: 692, baseType: !1144, size: 832, offset: 576)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1115, line: 451, size: 832, elements: !1145)
!1145 = !{!1146, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1144, file: !1115, line: 453, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1115, line: 325, size: 128, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1147, file: !1115, line: 326, baseType: !74, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1147, file: !1115, line: 327, baseType: !69, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1144, file: !1115, line: 454, baseType: !292, size: 192, align: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1144, file: !1115, line: 455, baseType: !128, size: 128, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1144, file: !1115, line: 456, baseType: !7, size: 32, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1144, file: !1115, line: 458, baseType: !454, size: 64, offset: 512)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1144, file: !1115, line: 459, baseType: !454, size: 64, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1144, file: !1115, line: 460, baseType: !454, size: 64, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1144, file: !1115, line: 461, baseType: !454, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1144, file: !1115, line: 463, baseType: !454, size: 64, offset: 768)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1144, file: !1115, line: 465, baseType: !1160, offset: 832)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1115, line: 415, elements: !154)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1114, file: !1115, line: 693, baseType: !1162, size: 384, offset: 1408)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1115, line: 489, size: 384, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1162, file: !1115, line: 490, baseType: !128, size: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1162, file: !1115, line: 491, baseType: !74, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1162, file: !1115, line: 492, baseType: !74, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1162, file: !1115, line: 493, baseType: !7, size: 32, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1162, file: !1115, line: 494, baseType: !91, size: 16, offset: 288)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1162, file: !1115, line: 495, baseType: !91, size: 16, offset: 304)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1162, file: !1115, line: 497, baseType: !1171, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1114, file: !1115, line: 697, baseType: !1173, size: 1792, offset: 1792)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1115, line: 507, size: 1792, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1254, !1255}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1173, file: !1115, line: 508, baseType: !292, size: 192, align: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1173, file: !1115, line: 515, baseType: !454, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1173, file: !1115, line: 516, baseType: !454, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1173, file: !1115, line: 517, baseType: !454, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1173, file: !1115, line: 518, baseType: !454, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1173, file: !1115, line: 519, baseType: !454, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1173, file: !1115, line: 526, baseType: !770, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1173, file: !1115, line: 527, baseType: !454, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1173, file: !1115, line: 528, baseType: !7, size: 32, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1173, file: !1115, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1173, file: !1115, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1173, file: !1115, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1173, file: !1115, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1173, file: !1115, line: 563, baseType: !1189, size: 512, offset: 704)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1190)
!1190 = !{!1191, !1199, !1200, !1205, !1248, !1251, !1252, !1253}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1189, file: !20, line: 119, baseType: !1192, size: 256)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1193, line: 9, size: 256, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1192, file: !1193, line: 10, baseType: !292, size: 192, align: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1192, file: !1193, line: 11, baseType: !1197, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1198, line: 29, baseType: !770)
!1198 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1189, file: !20, line: 120, baseType: !1197, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1189, file: !20, line: 121, baseType: !1201, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!19, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1189, file: !20, line: 122, baseType: !1206, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1208)
!1208 = !{!1209, !1229, !1230, !1233, !1238, !1239, !1243, !1247}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1207, file: !20, line: 160, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1211, file: !20, line: 215, baseType: !773)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1211, file: !20, line: 216, baseType: !7, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1211, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1211, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1211, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1211, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1211, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1211, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1211, file: !20, line: 233, baseType: !1197, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1211, file: !20, line: 234, baseType: !1204, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1211, file: !20, line: 235, baseType: !1197, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1211, file: !20, line: 236, baseType: !1204, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1211, file: !20, line: 237, baseType: !1226, size: 4096, offset: 512)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 4096, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 8)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1207, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1207, file: !20, line: 162, baseType: !1231, size: 32, offset: 96)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !68, line: 27, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !98, line: 96, baseType: !73)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1207, file: !20, line: 163, baseType: !1234, size: 32, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !425, line: 276, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !425, line: 276, size: 32, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1235, file: !425, line: 276, baseType: !429, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1207, file: !20, line: 164, baseType: !1204, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1207, file: !20, line: 165, baseType: !1240, size: 128, offset: 256)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1193, line: 14, size: 128, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1240, file: !1193, line: 15, baseType: !755, size: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1207, file: !20, line: 166, baseType: !1244, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1197}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1207, file: !20, line: 167, baseType: !1197, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1189, file: !20, line: 123, baseType: !1249, size: 8, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !70, line: 17, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !72, line: 21, baseType: !460)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1189, file: !20, line: 124, baseType: !1249, size: 8, offset: 456)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1189, file: !20, line: 125, baseType: !1249, size: 8, offset: 464)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1189, file: !20, line: 126, baseType: !1249, size: 8, offset: 472)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1173, file: !1115, line: 572, baseType: !1189, size: 512, offset: 1216)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1173, file: !1115, line: 580, baseType: !1256, size: 64, offset: 1728)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1114, file: !1115, line: 721, baseType: !7, size: 32, offset: 3584)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1114, file: !1115, line: 722, baseType: !73, size: 32, offset: 3616)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1114, file: !1115, line: 723, baseType: !1260, size: 64, offset: 3648)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1263, line: 17, baseType: !1264)
!1263 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1263, line: 17, size: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1264, file: !1263, line: 17, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 1)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1114, file: !1115, line: 724, baseType: !1262, size: 64, offset: 3712)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1114, file: !1115, line: 749, baseType: !1272, offset: 3776)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1115, line: 290, elements: !154)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1114, file: !1115, line: 751, baseType: !128, size: 128, offset: 3776)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1114, file: !1115, line: 757, baseType: !967, size: 64, offset: 3904)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1114, file: !1115, line: 758, baseType: !967, size: 64, offset: 3968)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1114, file: !1115, line: 761, baseType: !1277, size: 320, offset: 4032)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1064, line: 34, size: 320, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1277, file: !1064, line: 35, baseType: !454, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1277, file: !1064, line: 36, baseType: !1281, size: 256, offset: 64)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 256, elements: !1068)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1114, file: !1115, line: 766, baseType: !73, size: 32, offset: 4352)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1114, file: !1115, line: 767, baseType: !73, size: 32, offset: 4384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1114, file: !1115, line: 768, baseType: !73, size: 32, offset: 4416)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1114, file: !1115, line: 770, baseType: !73, size: 32, offset: 4448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1114, file: !1115, line: 772, baseType: !74, size: 64, offset: 4480)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1114, file: !1115, line: 775, baseType: !7, size: 32, offset: 4544)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1114, file: !1115, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1114, file: !1115, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1114, file: !1115, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1114, file: !1115, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1114, file: !1115, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1114, file: !1115, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1114, file: !1115, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1114, file: !1115, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1114, file: !1115, line: 831, baseType: !74, size: 64, offset: 4672)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1114, file: !1115, line: 833, baseType: !1298, size: 384, offset: 4736)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1299)
!1299 = !{!1300, !1305}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1298, file: !25, line: 26, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!77, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !25, line: 27, baseType: !1306, size: 320, offset: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !25, line: 27, size: 320, elements: !1307)
!1307 = !{!1308, !1318, !1345}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1306, file: !25, line: 36, baseType: !1309, size: 320)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !25, line: 29, size: 320, elements: !1310)
!1310 = !{!1311, !1313, !1314, !1315, !1316, !1317}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1309, file: !25, line: 30, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1309, file: !25, line: 31, baseType: !69, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !25, line: 32, baseType: !69, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1309, file: !25, line: 33, baseType: !69, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1309, file: !25, line: 34, baseType: !454, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1309, file: !25, line: 35, baseType: !1312, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1306, file: !25, line: 46, baseType: !1319, size: 192)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !25, line: 38, size: 192, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1344}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1319, file: !25, line: 39, baseType: !1231, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1319, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !25, line: 41, baseType: !1324, size: 64, offset: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !25, line: 41, size: 64, elements: !1325)
!1325 = !{!1326, !1334}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1324, file: !25, line: 42, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1329, line: 7, size: 128, elements: !1330)
!1329 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1328, file: !1329, line: 8, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !98, line: 93, baseType: !548)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1328, file: !1329, line: 9, baseType: !548, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1324, file: !25, line: 43, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1337, line: 7, size: 64, elements: !1338)
!1337 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !{!1339, !1343}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1336, file: !1337, line: 8, baseType: !1340, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1337, line: 5, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !70, line: 20, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !72, line: 26, baseType: !73)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1336, file: !1337, line: 9, baseType: !1341, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1319, file: !25, line: 45, baseType: !454, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1306, file: !25, line: 54, baseType: !1346, size: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !25, line: 48, size: 256, elements: !1347)
!1347 = !{!1348, !1351, !1352, !1353, !1354}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1346, file: !25, line: 49, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1346, file: !25, line: 50, baseType: !73, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1346, file: !25, line: 51, baseType: !73, size: 32, offset: 96)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1346, file: !25, line: 52, baseType: !74, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1346, file: !25, line: 53, baseType: !74, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1114, file: !1115, line: 835, baseType: !1356, size: 32, offset: 5120)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !68, line: 22, baseType: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !98, line: 28, baseType: !73)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1114, file: !1115, line: 836, baseType: !1356, size: 32, offset: 5152)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1114, file: !1115, line: 840, baseType: !74, size: 64, offset: 5184)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1114, file: !1115, line: 849, baseType: !1113, size: 64, offset: 5248)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1114, file: !1115, line: 852, baseType: !1113, size: 64, offset: 5312)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1114, file: !1115, line: 857, baseType: !128, size: 128, offset: 5376)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1114, file: !1115, line: 858, baseType: !128, size: 128, offset: 5504)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1114, file: !1115, line: 859, baseType: !1113, size: 64, offset: 5632)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1114, file: !1115, line: 867, baseType: !128, size: 128, offset: 5696)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1114, file: !1115, line: 868, baseType: !128, size: 128, offset: 5824)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1114, file: !1115, line: 871, baseType: !1368, size: 64, offset: 5952)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1370)
!1370 = !{!1371, !1372, !1373, !1374, !1376, !1377, !1378, !1379}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1369, file: !46, line: 61, baseType: !1127, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1369, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1369, file: !46, line: 63, baseType: !140, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1369, file: !46, line: 65, baseType: !1375, size: 256, offset: 64)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 256, elements: !1068)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1369, file: !46, line: 66, baseType: !651, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1369, file: !46, line: 68, baseType: !362, size: 128, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1369, file: !46, line: 69, baseType: !402, size: 128, align: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1369, file: !46, line: 70, baseType: !1380, size: 128, offset: 640)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1381, size: 128, elements: !1268)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1381, file: !46, line: 55, baseType: !73, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1381, file: !46, line: 56, baseType: !1385, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1114, file: !1115, line: 872, baseType: !1388, size: 512, offset: 6016)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 512, elements: !1068)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1114, file: !1115, line: 873, baseType: !128, size: 128, offset: 6528)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1114, file: !1115, line: 874, baseType: !128, size: 128, offset: 6656)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1114, file: !1115, line: 876, baseType: !1392, size: 64, offset: 6784)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1394, line: 26, size: 192, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1393, file: !1394, line: 27, baseType: !7, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1393, file: !1394, line: 28, baseType: !1398, size: 128, offset: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1399, line: 43, size: 128, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1398, file: !1399, line: 44, baseType: !773)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1398, file: !1399, line: 45, baseType: !128, size: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1114, file: !1115, line: 879, baseType: !721, size: 64, offset: 6848)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1114, file: !1115, line: 882, baseType: !721, size: 64, offset: 6912)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1114, file: !1115, line: 884, baseType: !454, size: 64, offset: 6976)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1114, file: !1115, line: 885, baseType: !454, size: 64, offset: 7040)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1114, file: !1115, line: 890, baseType: !454, size: 64, offset: 7104)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1114, file: !1115, line: 891, baseType: !1409, size: 128, offset: 7168)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1115, line: 242, size: 128, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1409, file: !1115, line: 244, baseType: !454, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1409, file: !1115, line: 245, baseType: !454, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1409, file: !1115, line: 246, baseType: !773, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1114, file: !1115, line: 900, baseType: !74, size: 64, offset: 7296)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1114, file: !1115, line: 901, baseType: !74, size: 64, offset: 7360)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1114, file: !1115, line: 904, baseType: !454, size: 64, offset: 7424)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1114, file: !1115, line: 907, baseType: !454, size: 64, offset: 7488)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1114, file: !1115, line: 910, baseType: !74, size: 64, offset: 7552)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1114, file: !1115, line: 911, baseType: !74, size: 64, offset: 7616)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1114, file: !1115, line: 914, baseType: !1421, size: 640, offset: 7680)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1422, line: 123, size: 640, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1430, !1431}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1421, file: !1422, line: 124, baseType: !1425, size: 576)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 576, elements: !181)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1422, line: 108, size: 192, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1426, file: !1422, line: 109, baseType: !454, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1426, file: !1422, line: 110, baseType: !1240, size: 128, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1421, file: !1422, line: 125, baseType: !7, size: 32, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1421, file: !1422, line: 126, baseType: !7, size: 32, offset: 608)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1114, file: !1115, line: 917, baseType: !1433, size: 192, offset: 8320)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1422, line: 134, size: 192, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1433, file: !1422, line: 135, baseType: !402, size: 128, align: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1433, file: !1422, line: 136, baseType: !7, size: 32, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1114, file: !1115, line: 923, baseType: !1438, size: 64, offset: 8512)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1441, line: 111, size: 1280, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1462, !1463, !1464, !1465, !1466, !1467, !1574, !1575, !1576, !1577, !1603, !1606, !1616}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1440, file: !1441, line: 112, baseType: !284, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1440, file: !1441, line: 120, baseType: !264, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1440, file: !1441, line: 121, baseType: !272, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1440, file: !1441, line: 122, baseType: !264, size: 32, offset: 96)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1440, file: !1441, line: 123, baseType: !272, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1440, file: !1441, line: 124, baseType: !264, size: 32, offset: 160)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1440, file: !1441, line: 125, baseType: !272, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1440, file: !1441, line: 126, baseType: !264, size: 32, offset: 224)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1440, file: !1441, line: 127, baseType: !272, size: 32, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1440, file: !1441, line: 128, baseType: !7, size: 32, offset: 288)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1440, file: !1441, line: 129, baseType: !1454, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1455, line: 26, baseType: !1456)
!1455 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1455, line: 24, size: 64, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1456, file: !1455, line: 25, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 2)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1440, file: !1441, line: 130, baseType: !1454, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1440, file: !1441, line: 131, baseType: !1454, size: 64, offset: 448)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1440, file: !1441, line: 132, baseType: !1454, size: 64, offset: 512)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1440, file: !1441, line: 133, baseType: !1454, size: 64, offset: 576)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1440, file: !1441, line: 135, baseType: !460, size: 8, offset: 640)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1440, file: !1441, line: 137, baseType: !1468, size: 64, offset: 704)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1470, line: 189, size: 1664, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473, !1476, !1481, !1482, !1485, !1486, !1491, !1492, !1493, !1494, !1496, !1497, !1498, !1499, !1500, !1538, !1559}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1469, file: !1470, line: 190, baseType: !1127, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1469, file: !1470, line: 191, baseType: !1474, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1470, line: 28, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !68, line: 98, baseType: !1341)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1470, line: 192, baseType: !1477, size: 192, offset: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 192, size: 192, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1477, file: !1470, line: 193, baseType: !128, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1477, file: !1470, line: 194, baseType: !292, size: 192, align: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1469, file: !1470, line: 199, baseType: !760, size: 256, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1469, file: !1470, line: 200, baseType: !1483, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1470, line: 200, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1469, file: !1470, line: 201, baseType: !76, size: 64, offset: 576)
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1470, line: 202, baseType: !1487, size: 64, offset: 640)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 202, size: 64, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1487, file: !1470, line: 203, baseType: !554, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1487, file: !1470, line: 204, baseType: !554, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1469, file: !1470, line: 206, baseType: !554, size: 64, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1469, file: !1470, line: 207, baseType: !264, size: 32, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1469, file: !1470, line: 208, baseType: !272, size: 32, offset: 800)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1469, file: !1470, line: 209, baseType: !1495, size: 32, offset: 832)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1470, line: 31, baseType: !67)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1469, file: !1470, line: 210, baseType: !91, size: 16, offset: 864)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1469, file: !1470, line: 211, baseType: !91, size: 16, offset: 880)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1469, file: !1470, line: 215, baseType: !1102, size: 16, offset: 896)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1469, file: !1470, line: 222, baseType: !74, size: 64, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1470, line: 239, baseType: !1501, size: 320, offset: 1024)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 239, size: 320, elements: !1502)
!1502 = !{!1503, !1530}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1501, file: !1470, line: 240, baseType: !1504, size: 320)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1470, line: 108, size: 320, elements: !1505)
!1505 = !{!1506, !1507, !1519, !1522, !1529}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1504, file: !1470, line: 110, baseType: !74, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1470, line: 111, baseType: !1508, size: 64, offset: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1470, line: 111, size: 64, elements: !1509)
!1509 = !{!1510, !1518}
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1470, line: 112, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !1470, line: 112, size: 64, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1511, file: !1470, line: 114, baseType: !852, size: 16)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1511, file: !1470, line: 115, baseType: !1515, size: 48, offset: 16)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 48, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 6)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1508, file: !1470, line: 121, baseType: !74, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1504, file: !1470, line: 123, baseType: !1520, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1470, line: 96, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1504, file: !1470, line: 124, baseType: !1523, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1470, line: 102, size: 192, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1524, file: !1470, line: 103, baseType: !402, size: 128, align: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1524, file: !1470, line: 104, baseType: !1127, size: 32, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1524, file: !1470, line: 105, baseType: !233, size: 8, offset: 160)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1504, file: !1470, line: 125, baseType: !86, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !1470, line: 241, baseType: !1531, size: 320)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !1470, line: 241, size: 320, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1531, file: !1470, line: 242, baseType: !74, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1531, file: !1470, line: 243, baseType: !74, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1531, file: !1470, line: 244, baseType: !1520, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1531, file: !1470, line: 245, baseType: !1523, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1531, file: !1470, line: 246, baseType: !100, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1470, line: 254, baseType: !1539, size: 256, offset: 1344)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 254, size: 256, elements: !1540)
!1540 = !{!1541, !1547}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1539, file: !1470, line: 255, baseType: !1542, size: 256)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1470, line: 128, size: 256, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1542, file: !1470, line: 129, baseType: !76, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1542, file: !1470, line: 130, baseType: !1546, size: 256)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !1068)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1470, line: 256, baseType: !1548, size: 256)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !1470, line: 256, size: 256, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1548, file: !1470, line: 258, baseType: !128, size: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1548, file: !1470, line: 259, baseType: !1552, size: 128, offset: 128)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1553, line: 22, size: 128, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !{!1555, !1558}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1552, file: !1553, line: 23, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1553, line: 23, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1552, file: !1553, line: 24, baseType: !74, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1469, file: !1470, line: 274, baseType: !1560, size: 64, offset: 1600)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1470, line: 170, size: 192, elements: !1562)
!1562 = !{!1563, !1572, !1573}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1561, file: !1470, line: 171, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1470, line: 165, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!73, !1468, !1568, !1570, !1468}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1561, file: !1470, line: 172, baseType: !1468, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1561, file: !1470, line: 173, baseType: !1520, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1440, file: !1441, line: 138, baseType: !1468, size: 64, offset: 768)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1440, file: !1441, line: 139, baseType: !1468, size: 64, offset: 832)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1440, file: !1441, line: 140, baseType: !1468, size: 64, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1440, file: !1441, line: 145, baseType: !1578, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1580, line: 13, size: 896, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1579, file: !1580, line: 14, baseType: !1127, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1579, file: !1580, line: 15, baseType: !284, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1579, file: !1580, line: 16, baseType: !284, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1579, file: !1580, line: 21, baseType: !764, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1579, file: !1580, line: 27, baseType: !74, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1579, file: !1580, line: 28, baseType: !74, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1579, file: !1580, line: 29, baseType: !764, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1579, file: !1580, line: 32, baseType: !655, size: 128, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1579, file: !1580, line: 33, baseType: !264, size: 32, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1579, file: !1580, line: 37, baseType: !764, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1579, file: !1580, line: 44, baseType: !1593, size: 256, offset: 640)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1594, line: 15, size: 256, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1593, file: !1594, line: 16, baseType: !773)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1593, file: !1594, line: 18, baseType: !73, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1593, file: !1594, line: 19, baseType: !73, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1593, file: !1594, line: 20, baseType: !73, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1593, file: !1594, line: 21, baseType: !73, size: 32, offset: 96)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1593, file: !1594, line: 22, baseType: !74, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !1594, line: 23, baseType: !74, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1440, file: !1441, line: 146, baseType: !1604, size: 64, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !736, line: 516, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1440, file: !1441, line: 147, baseType: !1607, size: 64, offset: 1088)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1441, line: 25, size: 64, elements: !1609)
!1609 = !{!1610, !1611, !1612}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1608, file: !1441, line: 26, baseType: !284, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1608, file: !1441, line: 27, baseType: !73, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1608, file: !1441, line: 28, baseType: !1613, offset: 64)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, elements: !1614)
!1614 = !{!1615}
!1615 = !DISubrange(count: 0)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 149, baseType: !1617, size: 128, offset: 1152)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 149, size: 128, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1617, file: !1441, line: 150, baseType: !73, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1617, file: !1441, line: 151, baseType: !402, size: 128, align: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1114, file: !1115, line: 926, baseType: !1438, size: 64, offset: 8576)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1114, file: !1115, line: 929, baseType: !1438, size: 64, offset: 8640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1114, file: !1115, line: 933, baseType: !1468, size: 64, offset: 8704)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1114, file: !1115, line: 943, baseType: !1625, size: 128, offset: 8768)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 16)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1114, file: !1115, line: 945, baseType: !1629, size: 64, offset: 8896)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1115, line: 49, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1114, file: !1115, line: 956, baseType: !1632, size: 64, offset: 8960)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1115, line: 45, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1114, file: !1115, line: 959, baseType: !1635, size: 64, offset: 9024)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1115, line: 959, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1114, file: !1115, line: 962, baseType: !1638, size: 64, offset: 9088)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1115, line: 66, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1114, file: !1115, line: 966, baseType: !1641, size: 64, offset: 9152)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1115, line: 50, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1114, file: !1115, line: 969, baseType: !1644, size: 64, offset: 9216)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1646, line: 82, size: 7296, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653, !1654, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1683, !1692, !1693, !1695, !1696, !1697, !1700, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1730, !1731, !1738, !1739, !1740, !1741, !1742, !1743}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1645, file: !1646, line: 83, baseType: !1127, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1645, file: !1646, line: 84, baseType: !284, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1645, file: !1646, line: 85, baseType: !73, size: 32, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1645, file: !1646, line: 86, baseType: !128, size: 128, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1645, file: !1646, line: 88, baseType: !362, size: 128, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1645, file: !1646, line: 91, baseType: !1113, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1645, file: !1646, line: 94, baseType: !1655, size: 192, offset: 448)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1656, line: 30, size: 192, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1655, file: !1656, line: 31, baseType: !128, size: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1655, file: !1656, line: 32, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1661, line: 25, baseType: !1662)
!1661 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1661, line: 23, size: 64, elements: !1663)
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1662, file: !1661, line: 24, baseType: !1267, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1645, file: !1646, line: 97, baseType: !651, size: 64, offset: 640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1645, file: !1646, line: 100, baseType: !73, size: 32, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1645, file: !1646, line: 106, baseType: !73, size: 32, offset: 736)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1645, file: !1646, line: 107, baseType: !1113, size: 64, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1645, file: !1646, line: 110, baseType: !73, size: 32, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1645, file: !1646, line: 111, baseType: !7, size: 32, offset: 864)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1645, file: !1646, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1645, file: !1646, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1645, file: !1646, line: 128, baseType: !73, size: 32, offset: 928)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1645, file: !1646, line: 129, baseType: !128, size: 128, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1645, file: !1646, line: 132, baseType: !1189, size: 512, offset: 1088)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1645, file: !1646, line: 133, baseType: !1197, size: 64, offset: 1600)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1645, file: !1646, line: 140, baseType: !1678, size: 256, offset: 1664)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1679, size: 256, elements: !1460)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1646, line: 38, size: 128, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1679, file: !1646, line: 39, baseType: !454, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1679, file: !1646, line: 40, baseType: !454, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1645, file: !1646, line: 146, baseType: !1684, size: 192, offset: 1920)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1646, line: 66, size: 192, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1684, file: !1646, line: 67, baseType: !1687, size: 192)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1646, line: 47, size: 192, elements: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1687, file: !1646, line: 48, baseType: !766, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1687, file: !1646, line: 49, baseType: !766, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1687, file: !1646, line: 50, baseType: !766, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1645, file: !1646, line: 150, baseType: !1421, size: 640, offset: 2112)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1645, file: !1646, line: 153, baseType: !1694, size: 256, offset: 2752)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 256, elements: !1068)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1645, file: !1646, line: 159, baseType: !1368, size: 64, offset: 3008)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1645, file: !1646, line: 162, baseType: !73, size: 32, offset: 3072)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1645, file: !1646, line: 164, baseType: !1698, size: 64, offset: 3136)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1646, line: 164, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1645, file: !1646, line: 175, baseType: !1701, size: 32, offset: 3200)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !425, line: 805, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 798, size: 32, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1702, file: !425, line: 803, baseType: !424, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1702, file: !425, line: 804, baseType: !140, offset: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1645, file: !1646, line: 176, baseType: !454, size: 64, offset: 3264)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1645, file: !1646, line: 176, baseType: !454, size: 64, offset: 3328)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1645, file: !1646, line: 176, baseType: !454, size: 64, offset: 3392)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1645, file: !1646, line: 176, baseType: !454, size: 64, offset: 3456)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1645, file: !1646, line: 177, baseType: !454, size: 64, offset: 3520)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1645, file: !1646, line: 178, baseType: !454, size: 64, offset: 3584)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1645, file: !1646, line: 179, baseType: !1409, size: 128, offset: 3648)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1645, file: !1646, line: 180, baseType: !74, size: 64, offset: 3776)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1645, file: !1646, line: 180, baseType: !74, size: 64, offset: 3840)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1645, file: !1646, line: 180, baseType: !74, size: 64, offset: 3904)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1645, file: !1646, line: 180, baseType: !74, size: 64, offset: 3968)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1645, file: !1646, line: 181, baseType: !74, size: 64, offset: 4032)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1645, file: !1646, line: 181, baseType: !74, size: 64, offset: 4096)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1645, file: !1646, line: 181, baseType: !74, size: 64, offset: 4160)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1645, file: !1646, line: 181, baseType: !74, size: 64, offset: 4224)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1645, file: !1646, line: 182, baseType: !74, size: 64, offset: 4288)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1645, file: !1646, line: 182, baseType: !74, size: 64, offset: 4352)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1645, file: !1646, line: 182, baseType: !74, size: 64, offset: 4416)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1645, file: !1646, line: 182, baseType: !74, size: 64, offset: 4480)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1645, file: !1646, line: 183, baseType: !74, size: 64, offset: 4544)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1645, file: !1646, line: 183, baseType: !74, size: 64, offset: 4608)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1645, file: !1646, line: 184, baseType: !1728, offset: 4672)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1729, line: 12, elements: !154)
!1729 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1645, file: !1646, line: 192, baseType: !456, size: 64, offset: 4672)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1645, file: !1646, line: 203, baseType: !1732, size: 2048, offset: 4736)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1733, size: 2048, elements: !1626)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1734, line: 43, size: 128, elements: !1735)
!1734 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1733, file: !1734, line: 44, baseType: !107, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1733, file: !1734, line: 45, baseType: !107, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1645, file: !1646, line: 220, baseType: !233, size: 8, offset: 6784)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1645, file: !1646, line: 221, baseType: !1102, size: 16, offset: 6800)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1645, file: !1646, line: 222, baseType: !1102, size: 16, offset: 6816)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1645, file: !1646, line: 224, baseType: !967, size: 64, offset: 6848)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1645, file: !1646, line: 227, baseType: !1086, size: 192, offset: 6912)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1645, file: !1646, line: 233, baseType: !1086, size: 192, offset: 7104)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1114, file: !1115, line: 970, baseType: !1745, size: 64, offset: 9280)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1646, line: 20, size: 16576, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1746, file: !1646, line: 21, baseType: !140)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1746, file: !1646, line: 22, baseType: !1127, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1746, file: !1646, line: 23, baseType: !362, size: 128, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1746, file: !1646, line: 24, baseType: !1752, size: 16384, offset: 192)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1753, size: 16384, elements: !185)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1656, line: 49, size: 256, elements: !1754)
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1753, file: !1656, line: 50, baseType: !1756, size: 256)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1656, line: 35, size: 256, elements: !1757)
!1757 = !{!1758, !1765, !1766, !1772}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1756, file: !1656, line: 37, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1760, line: 19, baseType: !1761)
!1760 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1760, line: 18, baseType: !1763)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !73}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1756, file: !1656, line: 38, baseType: !74, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1756, file: !1656, line: 44, baseType: !1767, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1760, line: 22, baseType: !1768)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1760, line: 21, baseType: !1770)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1756, file: !1656, line: 46, baseType: !1660, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1114, file: !1115, line: 971, baseType: !1660, size: 64, offset: 9344)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1114, file: !1115, line: 972, baseType: !1660, size: 64, offset: 9408)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1114, file: !1115, line: 974, baseType: !1660, size: 64, offset: 9472)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1114, file: !1115, line: 975, baseType: !1655, size: 192, offset: 9536)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1114, file: !1115, line: 976, baseType: !74, size: 64, offset: 9728)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1114, file: !1115, line: 977, baseType: !105, size: 64, offset: 9792)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1114, file: !1115, line: 978, baseType: !7, size: 32, offset: 9856)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1114, file: !1115, line: 980, baseType: !405, size: 64, offset: 9920)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1114, file: !1115, line: 989, baseType: !1782, size: 128, offset: 9984)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1783, line: 35, size: 128, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1784 = !{!1785, !1786, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1782, file: !1783, line: 36, baseType: !73, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1782, file: !1783, line: 37, baseType: !284, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1782, file: !1783, line: 38, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1783, line: 23, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1114, file: !1115, line: 992, baseType: !454, size: 64, offset: 10112)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1114, file: !1115, line: 993, baseType: !454, size: 64, offset: 10176)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1114, file: !1115, line: 996, baseType: !140, offset: 10240)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1114, file: !1115, line: 999, baseType: !773, offset: 10240)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1114, file: !1115, line: 1001, baseType: !1795, size: 64, offset: 10240)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1115, line: 636, size: 64, elements: !1796)
!1796 = !{!1797}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1795, file: !1115, line: 637, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1114, file: !1115, line: 1005, baseType: !755, size: 128, offset: 10304)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1114, file: !1115, line: 1007, baseType: !1113, size: 64, offset: 10432)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1114, file: !1115, line: 1009, baseType: !1802, size: 64, offset: 10496)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1115, line: 1009, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1114, file: !1115, line: 1043, baseType: !76, size: 64, offset: 10560)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1114, file: !1115, line: 1046, baseType: !1806, size: 64, offset: 10624)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1115, line: 41, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1114, file: !1115, line: 1050, baseType: !1809, size: 64, offset: 10688)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1115, line: 42, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1114, file: !1115, line: 1054, baseType: !1812, size: 64, offset: 10752)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1115, line: 55, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1114, file: !1115, line: 1056, baseType: !1815, size: 64, offset: 10816)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1115, line: 40, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1114, file: !1115, line: 1058, baseType: !1818, size: 64, offset: 10880)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1820, line: 99, size: 704, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1847, !1848}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1819, file: !1820, line: 100, baseType: !764, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1819, file: !1820, line: 101, baseType: !284, size: 32, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1819, file: !1820, line: 102, baseType: !284, size: 32, offset: 96)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1819, file: !1820, line: 105, baseType: !140, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1819, file: !1820, line: 107, baseType: !91, size: 16, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1819, file: !1820, line: 109, baseType: !323, size: 128, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1819, file: !1820, line: 110, baseType: !1829, size: 64, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1820, line: 73, size: 448, elements: !1831)
!1831 = !{!1832, !1835, !1836, !1841, !1846}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1830, file: !1820, line: 74, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1820, line: 74, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1830, file: !1820, line: 75, baseType: !1818, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1820, line: 83, baseType: !1837, size: 128, offset: 128)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !1820, line: 83, size: 128, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1837, file: !1820, line: 84, baseType: !128, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1837, file: !1820, line: 85, baseType: !928, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !1820, line: 87, baseType: !1842, size: 128, offset: 256)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !1820, line: 87, size: 128, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1842, file: !1820, line: 88, baseType: !655, size: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1842, file: !1820, line: 89, baseType: !402, size: 128, align: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1830, file: !1820, line: 92, baseType: !7, size: 32, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1819, file: !1820, line: 111, baseType: !651, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1819, file: !1820, line: 113, baseType: !1849, size: 256, offset: 448)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1850, line: 102, size: 256, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !{!1852, !1853, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1849, file: !1850, line: 103, baseType: !764, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1849, file: !1850, line: 104, baseType: !128, size: 128, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1849, file: !1850, line: 105, baseType: !1855, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1850, line: 21, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1114, file: !1115, line: 1061, baseType: !1861, size: 64, offset: 10944)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1115, line: 43, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1114, file: !1115, line: 1064, baseType: !74, size: 64, offset: 11008)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1114, file: !1115, line: 1065, baseType: !1865, size: 64, offset: 11072)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1656, line: 14, baseType: !1867)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1656, line: 12, size: 384, elements: !1868)
!1868 = !{!1869}
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !1656, line: 13, baseType: !1870, size: 384)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1867, file: !1656, line: 13, size: 384, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1870, file: !1656, line: 13, baseType: !73, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1870, file: !1656, line: 13, baseType: !73, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1870, file: !1656, line: 13, baseType: !73, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1870, file: !1656, line: 13, baseType: !1876, size: 256, offset: 128)
!1876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1877, line: 32, size: 256, elements: !1878)
!1877 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !{!1879, !1884, !1897, !1903, !1912, !1932, !1937}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1876, file: !1877, line: 37, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1877, line: 34, size: 64, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1880, file: !1877, line: 35, baseType: !1357, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1880, file: !1877, line: 36, baseType: !270, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1876, file: !1877, line: 45, baseType: !1885, size: 192)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1877, line: 40, size: 192, elements: !1886)
!1886 = !{!1887, !1889, !1890, !1896}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1885, file: !1877, line: 41, baseType: !1888, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !98, line: 95, baseType: !73)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1885, file: !1877, line: 42, baseType: !73, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1885, file: !1877, line: 43, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1877, line: 11, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1877, line: 8, size: 64, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1892, file: !1877, line: 9, baseType: !73, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1892, file: !1877, line: 10, baseType: !76, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1885, file: !1877, line: 44, baseType: !73, size: 32, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1876, file: !1877, line: 52, baseType: !1898, size: 128)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1877, line: 48, size: 128, elements: !1899)
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1898, file: !1877, line: 49, baseType: !1357, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1898, file: !1877, line: 50, baseType: !270, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1898, file: !1877, line: 51, baseType: !1891, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1876, file: !1877, line: 61, baseType: !1904, size: 256)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1877, line: 55, size: 256, elements: !1905)
!1905 = !{!1906, !1907, !1908, !1909, !1911}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1904, file: !1877, line: 56, baseType: !1357, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1904, file: !1877, line: 57, baseType: !270, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1904, file: !1877, line: 58, baseType: !73, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1904, file: !1877, line: 59, baseType: !1910, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !98, line: 94, baseType: !99)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1904, file: !1877, line: 60, baseType: !1910, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1876, file: !1877, line: 95, baseType: !1913, size: 256)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1877, line: 64, size: 256, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1913, file: !1877, line: 65, baseType: !76, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !1877, line: 77, baseType: !1917, size: 192, offset: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1913, file: !1877, line: 77, size: 192, elements: !1918)
!1918 = !{!1919, !1920, !1927}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1917, file: !1877, line: 82, baseType: !1102, size: 16)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1917, file: !1877, line: 88, baseType: !1921, size: 192)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1917, file: !1877, line: 84, size: 192, elements: !1922)
!1922 = !{!1923, !1925, !1926}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1921, file: !1877, line: 85, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !1227)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1921, file: !1877, line: 86, baseType: !76, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1921, file: !1877, line: 87, baseType: !76, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1917, file: !1877, line: 93, baseType: !1928, size: 96)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1917, file: !1877, line: 90, size: 96, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1928, file: !1877, line: 91, baseType: !1924, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1928, file: !1877, line: 92, baseType: !71, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1876, file: !1877, line: 101, baseType: !1933, size: 128)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1877, line: 98, size: 128, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1933, file: !1877, line: 99, baseType: !77, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1933, file: !1877, line: 100, baseType: !73, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1876, file: !1877, line: 108, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1877, line: 104, size: 128, elements: !1939)
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1938, file: !1877, line: 105, baseType: !76, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1938, file: !1877, line: 106, baseType: !73, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1938, file: !1877, line: 107, baseType: !7, size: 32, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1114, file: !1115, line: 1067, baseType: !1728, offset: 11136)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1114, file: !1115, line: 1099, baseType: !1945, size: 64, offset: 11136)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1115, line: 56, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1114, file: !1115, line: 1103, baseType: !128, size: 128, offset: 11200)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1114, file: !1115, line: 1104, baseType: !1949, size: 64, offset: 11328)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1115, line: 46, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1114, file: !1115, line: 1105, baseType: !1086, size: 192, offset: 11392)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1114, file: !1115, line: 1106, baseType: !7, size: 32, offset: 11584)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1114, file: !1115, line: 1109, baseType: !1954, size: 128, offset: 11648)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1955, size: 128, elements: !1460)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1115, line: 51, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1114, file: !1115, line: 1110, baseType: !1086, size: 192, offset: 11776)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1114, file: !1115, line: 1111, baseType: !128, size: 128, offset: 11968)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1114, file: !1115, line: 1173, baseType: !1960, size: 64, offset: 12096)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1962, line: 62, size: 256, align: 256, elements: !1963)
!1962 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964, !1965, !1966, !1971}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1961, file: !1962, line: 75, baseType: !71, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1961, file: !1962, line: 90, baseType: !71, size: 32, offset: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1961, file: !1962, line: 124, baseType: !1967, size: 64, offset: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !1962, line: 109, size: 64, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1967, file: !1962, line: 110, baseType: !455, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1967, file: !1962, line: 112, baseType: !455, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1962, line: 144, baseType: !71, size: 32, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1114, file: !1115, line: 1174, baseType: !69, size: 32, offset: 12160)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1114, file: !1115, line: 1179, baseType: !74, size: 64, offset: 12224)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1114, file: !1115, line: 1182, baseType: !1975, size: 128, offset: 12288)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1064, line: 76, size: 128, elements: !1976)
!1976 = !{!1977, !1982, !1983}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1975, file: !1064, line: 85, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1979, line: 7, size: 64, elements: !1980)
!1979 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1980 = !{!1981}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1978, file: !1979, line: 12, baseType: !1264, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1975, file: !1064, line: 88, baseType: !233, size: 8, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1975, file: !1064, line: 95, baseType: !233, size: 8, offset: 72)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !1115, line: 1184, baseType: !1985, size: 128, offset: 12416)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !1115, line: 1184, size: 128, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1985, file: !1115, line: 1185, baseType: !1127, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1985, file: !1115, line: 1186, baseType: !402, size: 128, align: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1114, file: !1115, line: 1190, baseType: !1990, size: 64, offset: 12544)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1115, line: 53, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1114, file: !1115, line: 1192, baseType: !1993, size: 128, offset: 12608)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1064, line: 64, size: 128, elements: !1994)
!1994 = !{!1995, !1996, !1997}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1993, file: !1064, line: 65, baseType: !734, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1993, file: !1064, line: 67, baseType: !71, size: 32, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1993, file: !1064, line: 68, baseType: !71, size: 32, offset: 96)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1114, file: !1115, line: 1206, baseType: !73, size: 32, offset: 12736)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1114, file: !1115, line: 1207, baseType: !73, size: 32, offset: 12768)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1114, file: !1115, line: 1209, baseType: !74, size: 64, offset: 12800)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1114, file: !1115, line: 1219, baseType: !454, size: 64, offset: 12864)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1114, file: !1115, line: 1220, baseType: !454, size: 64, offset: 12928)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1114, file: !1115, line: 1317, baseType: !73, size: 32, offset: 12992)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1114, file: !1115, line: 1319, baseType: !1113, size: 64, offset: 13056)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1114, file: !1115, line: 1322, baseType: !2006, size: 64, offset: 13120)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2008, line: 9, flags: DIFlagFwdDecl)
!2008 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1114, file: !1115, line: 1326, baseType: !1127, size: 32, offset: 13184)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1114, file: !1115, line: 1342, baseType: !76, size: 64, offset: 13248)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1114, file: !1115, line: 1343, baseType: !455, size: 64, offset: 13312)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1114, file: !1115, line: 1344, baseType: !454, size: 64, offset: 13376)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1114, file: !1115, line: 1345, baseType: !455, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1114, file: !1115, line: 1346, baseType: !455, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1114, file: !1115, line: 1347, baseType: !455, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1114, file: !1115, line: 1348, baseType: !402, size: 128, align: 64, offset: 13504)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1114, file: !1115, line: 1358, baseType: !2018, size: 34816, offset: 13824)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2019, line: 485, size: 34816, elements: !2020)
!2019 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2020 = !{!2021, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2050, !2051, !2052, !2053, !2054, !2055, !2058, !2059, !2060}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2018, file: !2019, line: 487, baseType: !2022, size: 192)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2023, size: 192, elements: !181)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2024, line: 16, size: 64, elements: !2025)
!2024 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2023, file: !2024, line: 17, baseType: !852, size: 16)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2023, file: !2024, line: 18, baseType: !852, size: 16, offset: 16)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2023, file: !2024, line: 19, baseType: !852, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2023, file: !2024, line: 19, baseType: !852, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2023, file: !2024, line: 19, baseType: !852, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2023, file: !2024, line: 19, baseType: !852, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2023, file: !2024, line: 19, baseType: !852, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2023, file: !2024, line: 20, baseType: !852, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2023, file: !2024, line: 20, baseType: !852, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2023, file: !2024, line: 20, baseType: !852, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2023, file: !2024, line: 20, baseType: !852, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2023, file: !2024, line: 20, baseType: !852, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2023, file: !2024, line: 20, baseType: !852, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2018, file: !2019, line: 491, baseType: !74, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2018, file: !2019, line: 495, baseType: !91, size: 16, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2018, file: !2019, line: 496, baseType: !91, size: 16, offset: 272)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2018, file: !2019, line: 497, baseType: !91, size: 16, offset: 288)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2018, file: !2019, line: 498, baseType: !91, size: 16, offset: 304)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2018, file: !2019, line: 502, baseType: !74, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2018, file: !2019, line: 503, baseType: !74, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2018, file: !2019, line: 514, baseType: !2047, size: 256, offset: 448)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2048, size: 256, elements: !1068)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2019, line: 483, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2018, file: !2019, line: 516, baseType: !74, size: 64, offset: 704)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2018, file: !2019, line: 518, baseType: !74, size: 64, offset: 768)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2018, file: !2019, line: 520, baseType: !74, size: 64, offset: 832)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2018, file: !2019, line: 521, baseType: !74, size: 64, offset: 896)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2018, file: !2019, line: 522, baseType: !74, size: 64, offset: 960)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2018, file: !2019, line: 528, baseType: !2056, size: 64, offset: 1024)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2019, line: 10, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2018, file: !2019, line: 535, baseType: !74, size: 64, offset: 1088)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2018, file: !2019, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2018, file: !2019, line: 540, baseType: !2061, size: 33280, offset: 1536)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2062, line: 317, size: 33280, elements: !2063)
!2062 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2063 = !{!2064, !2065, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2061, file: !2062, line: 330, baseType: !7, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2061, file: !2062, line: 337, baseType: !74, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2061, file: !2062, line: 348, baseType: !2067, size: 32768, offset: 512)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2062, line: 304, size: 32768, elements: !2068)
!2068 = !{!2069, !2084, !2123, !2173, !2186}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2067, file: !2062, line: 305, baseType: !2070, size: 896)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2062, line: 12, size: 896, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2083}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2070, file: !2062, line: 13, baseType: !69, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2070, file: !2062, line: 14, baseType: !69, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2070, file: !2062, line: 15, baseType: !69, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2070, file: !2062, line: 16, baseType: !69, size: 32, offset: 96)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2070, file: !2062, line: 17, baseType: !69, size: 32, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2070, file: !2062, line: 18, baseType: !69, size: 32, offset: 160)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2070, file: !2062, line: 19, baseType: !69, size: 32, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2070, file: !2062, line: 22, baseType: !2080, size: 640, offset: 224)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 640, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 20)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2070, file: !2062, line: 25, baseType: !69, size: 32, offset: 864)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2067, file: !2062, line: 306, baseType: !2085, size: 4096, align: 128)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2062, line: 34, size: 4096, align: 128, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2106, !2107, !2108, !2112, !2114, !2118}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2085, file: !2062, line: 35, baseType: !852, size: 16)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2085, file: !2062, line: 36, baseType: !852, size: 16, offset: 16)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2085, file: !2062, line: 37, baseType: !852, size: 16, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2085, file: !2062, line: 38, baseType: !852, size: 16, offset: 48)
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !2085, file: !2062, line: 39, baseType: !2092, size: 128, offset: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2085, file: !2062, line: 39, size: 128, elements: !2093)
!2093 = !{!2094, !2099}
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2092, file: !2062, line: 40, baseType: !2095, size: 128)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2062, line: 40, size: 128, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2095, file: !2062, line: 41, baseType: !454, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2095, file: !2062, line: 42, baseType: !454, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2092, file: !2062, line: 44, baseType: !2100, size: 128)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2062, line: 44, size: 128, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2100, file: !2062, line: 45, baseType: !69, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2100, file: !2062, line: 46, baseType: !69, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2100, file: !2062, line: 47, baseType: !69, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2100, file: !2062, line: 48, baseType: !69, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2085, file: !2062, line: 51, baseType: !69, size: 32, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2085, file: !2062, line: 52, baseType: !69, size: 32, offset: 224)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2085, file: !2062, line: 55, baseType: !2109, size: 1024, offset: 256)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1024, elements: !2110)
!2110 = !{!2111}
!2111 = !DISubrange(count: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2085, file: !2062, line: 58, baseType: !2113, size: 2048, offset: 1280)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2048, elements: !185)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2085, file: !2062, line: 60, baseType: !2115, size: 384, offset: 3328)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 384, elements: !2116)
!2116 = !{!2117}
!2117 = !DISubrange(count: 12)
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2085, file: !2062, line: 62, baseType: !2119, size: 384, offset: 3712)
!2119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2085, file: !2062, line: 62, size: 384, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2119, file: !2062, line: 63, baseType: !2115, size: 384)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2119, file: !2062, line: 64, baseType: !2115, size: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2067, file: !2062, line: 307, baseType: !2124, size: 1088)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2062, line: 79, size: 1088, elements: !2125)
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2172}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2124, file: !2062, line: 80, baseType: !69, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2124, file: !2062, line: 81, baseType: !69, size: 32, offset: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2124, file: !2062, line: 82, baseType: !69, size: 32, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2124, file: !2062, line: 83, baseType: !69, size: 32, offset: 96)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2124, file: !2062, line: 84, baseType: !69, size: 32, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2124, file: !2062, line: 85, baseType: !69, size: 32, offset: 160)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2124, file: !2062, line: 86, baseType: !69, size: 32, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2124, file: !2062, line: 88, baseType: !2080, size: 640, offset: 224)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2124, file: !2062, line: 89, baseType: !1249, size: 8, offset: 864)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2124, file: !2062, line: 90, baseType: !1249, size: 8, offset: 872)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2124, file: !2062, line: 91, baseType: !1249, size: 8, offset: 880)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2124, file: !2062, line: 92, baseType: !1249, size: 8, offset: 888)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2124, file: !2062, line: 93, baseType: !1249, size: 8, offset: 896)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2124, file: !2062, line: 94, baseType: !1249, size: 8, offset: 904)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2124, file: !2062, line: 95, baseType: !2141, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2143, line: 11, size: 128, elements: !2144)
!2143 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2142, file: !2143, line: 12, baseType: !77, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2142, file: !2143, line: 13, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2149, line: 56, size: 1344, elements: !2150)
!2149 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2148, file: !2149, line: 61, baseType: !74, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2148, file: !2149, line: 62, baseType: !74, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2148, file: !2149, line: 63, baseType: !74, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2148, file: !2149, line: 64, baseType: !74, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2148, file: !2149, line: 65, baseType: !74, size: 64, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2148, file: !2149, line: 66, baseType: !74, size: 64, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2148, file: !2149, line: 68, baseType: !74, size: 64, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2148, file: !2149, line: 69, baseType: !74, size: 64, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2148, file: !2149, line: 70, baseType: !74, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2148, file: !2149, line: 71, baseType: !74, size: 64, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2148, file: !2149, line: 72, baseType: !74, size: 64, offset: 640)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2148, file: !2149, line: 73, baseType: !74, size: 64, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2148, file: !2149, line: 74, baseType: !74, size: 64, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2148, file: !2149, line: 75, baseType: !74, size: 64, offset: 832)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2148, file: !2149, line: 76, baseType: !74, size: 64, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2148, file: !2149, line: 81, baseType: !74, size: 64, offset: 960)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2148, file: !2149, line: 83, baseType: !74, size: 64, offset: 1024)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2148, file: !2149, line: 84, baseType: !74, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !2149, line: 85, baseType: !74, size: 64, offset: 1152)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2148, file: !2149, line: 86, baseType: !74, size: 64, offset: 1216)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2148, file: !2149, line: 87, baseType: !74, size: 64, offset: 1280)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2124, file: !2062, line: 96, baseType: !69, size: 32, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2067, file: !2062, line: 308, baseType: !2174, size: 4608, align: 512)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2062, line: 289, size: 4608, align: 512, elements: !2175)
!2175 = !{!2176, !2177, !2184}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2174, file: !2062, line: 290, baseType: !2085, size: 4096, align: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2174, file: !2062, line: 291, baseType: !2178, size: 512, offset: 4096)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2062, line: 268, size: 512, elements: !2179)
!2179 = !{!2180, !2181, !2182}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2178, file: !2062, line: 269, baseType: !454, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2178, file: !2062, line: 270, baseType: !454, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2178, file: !2062, line: 271, baseType: !2183, size: 384, offset: 128)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 384, elements: !1516)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2174, file: !2062, line: 292, baseType: !2185, offset: 4608)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1249, elements: !1614)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2067, file: !2062, line: 309, baseType: !2187, size: 32768)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1249, size: 32768, elements: !2188)
!2188 = !{!2189}
!2189 = !DISubrange(count: 4096)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1110, file: !736, line: 378, baseType: !2191, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1106, file: !736, line: 384, baseType: !1393, size: 192, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !971, file: !736, line: 500, baseType: !140, offset: 6656)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !971, file: !736, line: 501, baseType: !2195, size: 64, offset: 6656)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !736, line: 387, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !971, file: !736, line: 516, baseType: !1604, size: 64, offset: 6720)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !971, file: !736, line: 519, baseType: !389, size: 64, offset: 6784)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !971, file: !736, line: 521, baseType: !2200, size: 64, offset: 6848)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !736, line: 521, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !971, file: !736, line: 545, baseType: !284, size: 32, offset: 6912)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !971, file: !736, line: 548, baseType: !233, size: 8, offset: 6944)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !971, file: !736, line: 550, baseType: !2205, offset: 6952)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2206, line: 142, elements: !154)
!2206 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !971, file: !736, line: 554, baseType: !1849, size: 256, offset: 6976)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !971, file: !736, line: 557, baseType: !69, size: 32, offset: 7232)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !968, file: !736, line: 565, baseType: !2210, offset: 7296)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, elements: !2211)
!2211 = !{!2212}
!2212 = !DISubrange(count: -1)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !964, file: !736, line: 151, baseType: !284, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !957, file: !736, line: 156, baseType: !140, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 159, baseType: !2216, size: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 159, size: 128, elements: !2217)
!2217 = !{!2218, !2221}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2216, file: !736, line: 161, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !736, line: 161, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2216, file: !736, line: 162, baseType: !76, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !740, file: !736, line: 176, baseType: !402, size: 128, align: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !736, line: 179, baseType: !2224, size: 32, offset: 384)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !736, line: 179, size: 32, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2224, file: !736, line: 184, baseType: !284, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2224, file: !736, line: 192, baseType: !7, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2224, file: !736, line: 194, baseType: !7, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2224, file: !736, line: 195, baseType: !73, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !735, file: !736, line: 199, baseType: !284, size: 32, offset: 416)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !673, file: !37, line: 1964, baseType: !2232, size: 64, offset: 1344)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!77, !613, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2237, line: 12, size: 256, elements: !2238)
!2237 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !{!2239, !2240, !2241, !2242, !2243}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2236, file: !2237, line: 13, baseType: !75, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2236, file: !2237, line: 16, baseType: !73, size: 32, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2236, file: !2237, line: 23, baseType: !74, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2236, file: !2237, line: 30, baseType: !74, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2236, file: !2237, line: 33, baseType: !2244, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !736, line: 27, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !673, file: !37, line: 1966, baseType: !2232, size: 64, offset: 1408)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !614, file: !37, line: 1424, baseType: !2248, size: 64, offset: 448)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2251)
!2251 = !{!2252, !2298, !2302, !2306, !2307, !2308, !2309, !2310, !2315, !2320, !2324}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2250, file: !31, line: 323, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!73, !2256}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2283, !2284, !2285}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2257, file: !31, line: 295, baseType: !655, size: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2257, file: !31, line: 296, baseType: !128, size: 128, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2257, file: !31, line: 297, baseType: !128, size: 128, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2257, file: !31, line: 298, baseType: !128, size: 128, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2257, file: !31, line: 299, baseType: !1086, size: 192, offset: 512)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2257, file: !31, line: 300, baseType: !140, offset: 704)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2257, file: !31, line: 301, baseType: !284, size: 32, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2257, file: !31, line: 302, baseType: !613, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2257, file: !31, line: 303, baseType: !2268, size: 64, offset: 832)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2269)
!2269 = !{!2270, !2282}
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !31, line: 69, baseType: !2271, size: 32)
!2271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !31, line: 69, size: 32, elements: !2272)
!2272 = !{!2273, !2274, !2275}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2271, file: !31, line: 70, baseType: !264, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2271, file: !31, line: 71, baseType: !272, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2271, file: !31, line: 72, baseType: !2276, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2277, line: 24, baseType: !2278)
!2277 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2277, line: 22, size: 32, elements: !2279)
!2279 = !{!2280}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2278, file: !2277, line: 23, baseType: !2281, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2277, line: 20, baseType: !270)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2268, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2257, file: !31, line: 304, baseType: !546, size: 64, offset: 896)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2257, file: !31, line: 305, baseType: !74, size: 64, offset: 960)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2257, file: !31, line: 306, baseType: !2286, size: 576, offset: 1024)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2287)
!2287 = !{!2288, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2286, file: !31, line: 206, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !548)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2286, file: !31, line: 207, baseType: !2289, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2286, file: !31, line: 208, baseType: !2289, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2286, file: !31, line: 209, baseType: !2289, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2286, file: !31, line: 210, baseType: !2289, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2286, file: !31, line: 211, baseType: !2289, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2286, file: !31, line: 212, baseType: !2289, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2286, file: !31, line: 213, baseType: !554, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2286, file: !31, line: 214, baseType: !554, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2250, file: !31, line: 324, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!2256, !613, !73}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2250, file: !31, line: 325, baseType: !2303, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !2256}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2250, file: !31, line: 326, baseType: !2253, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2250, file: !31, line: 327, baseType: !2253, size: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2250, file: !31, line: 328, baseType: !2253, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2250, file: !31, line: 329, baseType: !701, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2250, file: !31, line: 332, baseType: !2311, size: 64, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2314, !462}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2250, file: !31, line: 333, baseType: !2316, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!73, !462, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2250, file: !31, line: 335, baseType: !2321, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!73, !462, !2314}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2250, file: !31, line: 337, baseType: !2325, size: 64, offset: 640)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!73, !613, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !614, file: !37, line: 1425, baseType: !2330, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2333)
!2333 = !{!2334, !2338, !2339, !2343, !2344, !2345, !2360, !2383, !2387, !2388, !2411}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2332, file: !31, line: 429, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!73, !613, !73, !73, !564}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2332, file: !31, line: 430, baseType: !701, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2332, file: !31, line: 431, baseType: !2340, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!73, !613, !7}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2332, file: !31, line: 432, baseType: !2340, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2332, file: !31, line: 433, baseType: !701, size: 64, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2332, file: !31, line: 434, baseType: !2346, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!73, !613, !73, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2350, file: !31, line: 416, baseType: !73, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2350, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2350, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2350, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2350, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2350, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2350, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2350, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2332, file: !31, line: 435, baseType: !2361, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!73, !613, !2268, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2365, file: !31, line: 344, baseType: !73, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2365, file: !31, line: 345, baseType: !454, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2365, file: !31, line: 346, baseType: !454, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2365, file: !31, line: 347, baseType: !454, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2365, file: !31, line: 348, baseType: !454, size: 64, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2365, file: !31, line: 349, baseType: !454, size: 64, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2365, file: !31, line: 350, baseType: !454, size: 64, offset: 384)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2365, file: !31, line: 351, baseType: !770, size: 64, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2365, file: !31, line: 353, baseType: !770, size: 64, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2365, file: !31, line: 354, baseType: !73, size: 32, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2365, file: !31, line: 355, baseType: !73, size: 32, offset: 608)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2365, file: !31, line: 356, baseType: !454, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2365, file: !31, line: 357, baseType: !454, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2365, file: !31, line: 358, baseType: !454, size: 64, offset: 768)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2365, file: !31, line: 359, baseType: !770, size: 64, offset: 832)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2365, file: !31, line: 360, baseType: !73, size: 32, offset: 896)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2332, file: !31, line: 436, baseType: !2384, size: 64, offset: 448)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!73, !613, !2328, !2364}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2332, file: !31, line: 438, baseType: !2361, size: 64, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2332, file: !31, line: 439, baseType: !2389, size: 64, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!73, !613, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2394)
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2393, file: !31, line: 410, baseType: !7, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2393, file: !31, line: 411, baseType: !2397, size: 1344, offset: 64)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2398, size: 1344, elements: !181)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2399)
!2399 = !{!2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2410}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2398, file: !31, line: 396, baseType: !7, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2398, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2398, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2398, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2398, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2398, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2398, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2398, file: !31, line: 404, baseType: !456, size: 64, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2398, file: !31, line: 405, baseType: !2409, size: 64, offset: 320)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !68, line: 126, baseType: !454)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2398, file: !31, line: 406, baseType: !2409, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2332, file: !31, line: 440, baseType: !2340, size: 64, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !614, file: !37, line: 1426, baseType: !2413, size: 64, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2415)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !614, file: !37, line: 1427, baseType: !74, size: 64, offset: 640)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !614, file: !37, line: 1428, baseType: !74, size: 64, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !614, file: !37, line: 1429, baseType: !74, size: 64, offset: 768)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !614, file: !37, line: 1430, baseType: !419, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !614, file: !37, line: 1431, baseType: !760, size: 256, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !614, file: !37, line: 1432, baseType: !73, size: 32, offset: 1152)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !614, file: !37, line: 1433, baseType: !284, size: 32, offset: 1184)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !614, file: !37, line: 1437, baseType: !2424, size: 64, offset: 1216)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2427)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !614, file: !37, line: 1449, baseType: !2429, size: 64, offset: 1280)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !435, line: 34, size: 64, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2429, file: !435, line: 35, baseType: !438, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !614, file: !37, line: 1450, baseType: !128, size: 128, offset: 1344)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !614, file: !37, line: 1451, baseType: !2434, size: 64, offset: 1472)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !614, file: !37, line: 1452, baseType: !1815, size: 64, offset: 1536)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !614, file: !37, line: 1453, baseType: !2438, size: 64, offset: 1600)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !614, file: !37, line: 1454, baseType: !655, size: 128, offset: 1664)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !614, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !614, file: !37, line: 1456, baseType: !2443, size: 2432, offset: 1856)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2449, !2481}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2443, file: !31, line: 519, baseType: !7, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2443, file: !31, line: 520, baseType: !760, size: 256, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2443, file: !31, line: 521, baseType: !2448, size: 192, offset: 320)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 192, elements: !181)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2443, file: !31, line: 522, baseType: !2450, size: 1728, offset: 512)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2451, size: 1728, elements: !181)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2452)
!2452 = !{!2453, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2451, file: !31, line: 223, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2456)
!2456 = !{!2457, !2458, !2471, !2472}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2455, file: !31, line: 444, baseType: !73, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2455, file: !31, line: 445, baseType: !2459, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2461)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2461, file: !31, line: 311, baseType: !701, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2461, file: !31, line: 312, baseType: !701, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2461, file: !31, line: 313, baseType: !701, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2461, file: !31, line: 314, baseType: !701, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2461, file: !31, line: 315, baseType: !2253, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2461, file: !31, line: 316, baseType: !2253, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2461, file: !31, line: 317, baseType: !2253, size: 64, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2461, file: !31, line: 318, baseType: !2325, size: 64, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2455, file: !31, line: 446, baseType: !646, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2455, file: !31, line: 447, baseType: !2454, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2451, file: !31, line: 224, baseType: !73, size: 32, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2451, file: !31, line: 226, baseType: !128, size: 128, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2451, file: !31, line: 227, baseType: !74, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2451, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2451, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2451, file: !31, line: 230, baseType: !2289, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2451, file: !31, line: 231, baseType: !2289, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2451, file: !31, line: 232, baseType: !76, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2443, file: !31, line: 523, baseType: !2482, size: 192, offset: 2240)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2459, size: 192, elements: !181)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !614, file: !37, line: 1458, baseType: !2484, size: 2112, offset: 4288)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2485)
!2485 = !{!2486, !2487, !2488}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2484, file: !37, line: 1411, baseType: !73, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2484, file: !37, line: 1412, baseType: !362, size: 128, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2484, file: !37, line: 1413, baseType: !2489, size: 1920, offset: 192)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2490, size: 1920, elements: !181)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2491, line: 12, size: 640, elements: !2492)
!2491 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2492 = !{!2493, !2501, !2503, !2508, !2509}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2490, file: !2491, line: 13, baseType: !2494, size: 320)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2495, line: 17, size: 320, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2496 = !{!2497, !2498, !2499, !2500}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2494, file: !2495, line: 18, baseType: !73, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2494, file: !2495, line: 19, baseType: !73, size: 32, offset: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2494, file: !2495, line: 20, baseType: !362, size: 128, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2494, file: !2495, line: 22, baseType: !402, size: 128, align: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2490, file: !2491, line: 14, baseType: !2502, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2490, file: !2491, line: 15, baseType: !2504, size: 64, offset: 384)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2505, line: 16, size: 64, elements: !2506)
!2505 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2506 = !{!2507}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2504, file: !2505, line: 17, baseType: !1113, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2490, file: !2491, line: 16, baseType: !362, size: 128, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2490, file: !2491, line: 17, baseType: !284, size: 32, offset: 576)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !614, file: !37, line: 1465, baseType: !76, size: 64, offset: 6400)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !614, file: !37, line: 1468, baseType: !69, size: 32, offset: 6464)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !614, file: !37, line: 1470, baseType: !554, size: 64, offset: 6528)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !614, file: !37, line: 1471, baseType: !554, size: 64, offset: 6592)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !614, file: !37, line: 1473, baseType: !71, size: 32, offset: 6656)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !614, file: !37, line: 1474, baseType: !2516, size: 64, offset: 6720)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !614, file: !37, line: 1477, baseType: !2519, size: 256, offset: 6784)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !2110)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !614, file: !37, line: 1478, baseType: !2521, size: 128, offset: 7040)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2522, line: 18, baseType: !2523)
!2522 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2522, line: 16, size: 128, elements: !2524)
!2524 = !{!2525}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2523, file: !2522, line: 17, baseType: !2526, size: 128)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1250, size: 128, elements: !1626)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !614, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !614, file: !37, line: 1481, baseType: !2529, size: 32, offset: 7200)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !68, line: 150, baseType: !7)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !614, file: !37, line: 1487, baseType: !1086, size: 192, offset: 7232)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !614, file: !37, line: 1493, baseType: !86, size: 64, offset: 7424)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !614, file: !37, line: 1495, baseType: !2533, size: 64, offset: 7488)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2535)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !417, line: 135, size: 1024, align: 512, elements: !2536)
!2536 = !{!2537, !2541, !2542, !2549, !2555, !2559, !2563, !2567, !2568, !2572, !2576, !2581, !2585}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2535, file: !417, line: 136, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!73, !419, !7}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2535, file: !417, line: 137, baseType: !2538, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2535, file: !417, line: 138, baseType: !2543, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!73, !2546, !2548}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2535, file: !417, line: 139, baseType: !2550, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!73, !2546, !7, !86, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2535, file: !417, line: 141, baseType: !2556, size: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!73, !2546}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2535, file: !417, line: 142, baseType: !2560, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!73, !419}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2535, file: !417, line: 143, baseType: !2564, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !419}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2535, file: !417, line: 144, baseType: !2564, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2535, file: !417, line: 145, baseType: !2569, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !419, !462}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2535, file: !417, line: 146, baseType: !2573, size: 64, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!100, !419, !100, !73}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2535, file: !417, line: 147, baseType: !2577, size: 64, offset: 640)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!415, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2535, file: !417, line: 148, baseType: !2582, size: 64, offset: 704)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!73, !564, !233}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2535, file: !417, line: 149, baseType: !2586, size: 64, offset: 768)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!419, !419, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !614, file: !37, line: 1500, baseType: !73, size: 32, offset: 7552)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !614, file: !37, line: 1502, baseType: !2593, size: 448, offset: 7616)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2237, line: 60, size: 448, elements: !2594)
!2594 = !{!2595, !2600, !2601, !2602, !2603, !2604, !2605}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2593, file: !2237, line: 61, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!74, !2599, !2235}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2593, file: !2237, line: 63, baseType: !2596, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2593, file: !2237, line: 66, baseType: !77, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2593, file: !2237, line: 67, baseType: !73, size: 32, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2593, file: !2237, line: 68, baseType: !7, size: 32, offset: 224)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2593, file: !2237, line: 71, baseType: !128, size: 128, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2593, file: !2237, line: 77, baseType: !2606, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !614, file: !37, line: 1505, baseType: !764, size: 64, offset: 8064)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !614, file: !37, line: 1508, baseType: !764, size: 64, offset: 8128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !614, file: !37, line: 1511, baseType: !73, size: 32, offset: 8192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !614, file: !37, line: 1514, baseType: !902, size: 32, offset: 8224)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !614, file: !37, line: 1517, baseType: !2612, size: 64, offset: 8256)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1850, line: 18, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !614, file: !37, line: 1518, baseType: !651, size: 64, offset: 8320)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !614, file: !37, line: 1525, baseType: !1604, size: 64, offset: 8384)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !614, file: !37, line: 1532, baseType: !2617, size: 64, offset: 8448)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2618, line: 52, size: 64, elements: !2619)
!2618 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2619 = !{!2620}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2617, file: !2618, line: 53, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2618, line: 40, size: 256, elements: !2623)
!2623 = !{!2624, !2625, !2630}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2622, file: !2618, line: 42, baseType: !140)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2622, file: !2618, line: 44, baseType: !2626, size: 192)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2618, line: 28, size: 192, elements: !2627)
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2626, file: !2618, line: 29, baseType: !128, size: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2626, file: !2618, line: 31, baseType: !77, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2622, file: !2618, line: 49, baseType: !77, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !614, file: !37, line: 1533, baseType: !2617, size: 64, offset: 8512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !614, file: !37, line: 1534, baseType: !402, size: 128, align: 64, offset: 8576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !614, file: !37, line: 1535, baseType: !1849, size: 256, offset: 8704)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !614, file: !37, line: 1537, baseType: !1086, size: 192, offset: 8960)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !614, file: !37, line: 1542, baseType: !73, size: 32, offset: 9152)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !614, file: !37, line: 1545, baseType: !140, offset: 9184)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !614, file: !37, line: 1546, baseType: !128, size: 128, offset: 9216)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !614, file: !37, line: 1548, baseType: !140, offset: 9344)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !614, file: !37, line: 1549, baseType: !128, size: 128, offset: 9344)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !463, file: !37, line: 624, baseType: !747, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !463, file: !37, line: 631, baseType: !74, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !37, line: 639, baseType: !2643, size: 32, offset: 384)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !37, line: 639, size: 32, elements: !2644)
!2644 = !{!2645, !2647}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2643, file: !37, line: 640, baseType: !2646, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2643, file: !37, line: 641, baseType: !7, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !463, file: !37, line: 643, baseType: !528, size: 32, offset: 416)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !463, file: !37, line: 644, baseType: !546, size: 64, offset: 448)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !463, file: !37, line: 645, baseType: !550, size: 128, offset: 512)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !463, file: !37, line: 646, baseType: !550, size: 128, offset: 640)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !463, file: !37, line: 647, baseType: !550, size: 128, offset: 768)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !463, file: !37, line: 648, baseType: !140, offset: 896)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !463, file: !37, line: 649, baseType: !91, size: 16, offset: 896)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !463, file: !37, line: 650, baseType: !1249, size: 8, offset: 912)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !463, file: !37, line: 651, baseType: !1249, size: 8, offset: 920)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !463, file: !37, line: 652, baseType: !2409, size: 64, offset: 960)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !463, file: !37, line: 659, baseType: !74, size: 64, offset: 1024)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !463, file: !37, line: 660, baseType: !760, size: 256, offset: 1088)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !463, file: !37, line: 662, baseType: !74, size: 64, offset: 1344)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !463, file: !37, line: 663, baseType: !74, size: 64, offset: 1408)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !463, file: !37, line: 665, baseType: !655, size: 128, offset: 1472)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !463, file: !37, line: 666, baseType: !128, size: 128, offset: 1600)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !463, file: !37, line: 675, baseType: !128, size: 128, offset: 1728)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !463, file: !37, line: 676, baseType: !128, size: 128, offset: 1856)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !463, file: !37, line: 677, baseType: !128, size: 128, offset: 1984)
!2667 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !37, line: 678, baseType: !2668, size: 128, offset: 2112)
!2668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !37, line: 678, size: 128, elements: !2669)
!2669 = !{!2670, !2671}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2668, file: !37, line: 679, baseType: !651, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2668, file: !37, line: 680, baseType: !402, size: 128, align: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !463, file: !37, line: 682, baseType: !766, size: 64, offset: 2240)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !463, file: !37, line: 683, baseType: !766, size: 64, offset: 2304)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !463, file: !37, line: 684, baseType: !284, size: 32, offset: 2368)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !463, file: !37, line: 685, baseType: !284, size: 32, offset: 2400)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !463, file: !37, line: 686, baseType: !284, size: 32, offset: 2432)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !463, file: !37, line: 688, baseType: !284, size: 32, offset: 2464)
!2678 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !37, line: 690, baseType: !2679, size: 64, offset: 2496)
!2679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !37, line: 690, size: 64, elements: !2680)
!2680 = !{!2681, !2904}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2679, file: !37, line: 691, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2685)
!2685 = !{!2686, !2687, !2691, !2696, !2700, !2701, !2702, !2706, !2719, !2720, !2728, !2732, !2733, !2737, !2738, !2742, !2747, !2748, !2752, !2756, !2864, !2868, !2869, !2873, !2874, !2878, !2882, !2887, !2891, !2895, !2899, !2903}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2684, file: !37, line: 1823, baseType: !646, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2684, file: !37, line: 1824, baseType: !2688, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!546, !389, !546, !73}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2684, file: !37, line: 1825, baseType: !2692, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!96, !389, !100, !105, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2684, file: !37, line: 1826, baseType: !2697, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!96, !389, !86, !105, !2695}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2684, file: !37, line: 1827, baseType: !837, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2684, file: !37, line: 1828, baseType: !837, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2684, file: !37, line: 1829, baseType: !2703, size: 64, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!73, !840, !233}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2684, file: !37, line: 1830, baseType: !2707, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!73, !389, !2710}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2712)
!2712 = !{!2713, !2718}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2711, file: !37, line: 1777, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2715)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!73, !2710, !86, !73, !546, !454, !7}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2711, file: !37, line: 1778, baseType: !546, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2684, file: !37, line: 1831, baseType: !2707, size: 64, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2684, file: !37, line: 1832, baseType: !2721, size: 64, offset: 576)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!2724, !389, !2726}
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2725, line: 52, baseType: !7)
!2725 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !281, line: 27, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2684, file: !37, line: 1833, baseType: !2729, size: 64, offset: 640)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!77, !389, !7, !74}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2684, file: !37, line: 1834, baseType: !2729, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2684, file: !37, line: 1835, baseType: !2734, size: 64, offset: 768)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!73, !389, !974}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2684, file: !37, line: 1836, baseType: !74, size: 64, offset: 832)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2684, file: !37, line: 1837, baseType: !2739, size: 64, offset: 896)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!73, !462, !389}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2684, file: !37, line: 1838, baseType: !2743, size: 64, offset: 960)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!73, !389, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !76)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2684, file: !37, line: 1839, baseType: !2739, size: 64, offset: 1024)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2684, file: !37, line: 1840, baseType: !2749, size: 64, offset: 1088)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!73, !389, !546, !546, !73}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2684, file: !37, line: 1841, baseType: !2753, size: 64, offset: 1152)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!73, !73, !389, !73}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2684, file: !37, line: 1842, baseType: !2757, size: 64, offset: 1216)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!73, !389, !73, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2794, !2795, !2796, !2809, !2840}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2761, file: !37, line: 1063, baseType: !2760, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2761, file: !37, line: 1064, baseType: !128, size: 128, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2761, file: !37, line: 1065, baseType: !655, size: 128, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2761, file: !37, line: 1066, baseType: !128, size: 128, offset: 320)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2761, file: !37, line: 1069, baseType: !128, size: 128, offset: 448)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2761, file: !37, line: 1072, baseType: !2746, size: 64, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2761, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2761, file: !37, line: 1074, baseType: !460, size: 8, offset: 672)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2761, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2761, file: !37, line: 1076, baseType: !73, size: 32, offset: 736)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2761, file: !37, line: 1077, baseType: !362, size: 128, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2761, file: !37, line: 1078, baseType: !389, size: 64, offset: 896)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2761, file: !37, line: 1079, baseType: !546, size: 64, offset: 960)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2761, file: !37, line: 1080, baseType: !546, size: 64, offset: 1024)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2761, file: !37, line: 1082, baseType: !2778, size: 64, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2780)
!2780 = !{!2781, !2789, !2790, !2791, !2792, !2793}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2779, file: !37, line: 1315, baseType: !2782)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2783, line: 20, baseType: !2784)
!2783 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2783, line: 11, elements: !2785)
!2785 = !{!2786}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2784, file: !2783, line: 12, baseType: !2787)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !152, line: 33, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 31, elements: !154)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2779, file: !37, line: 1316, baseType: !73, size: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2779, file: !37, line: 1317, baseType: !73, size: 32, offset: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2779, file: !37, line: 1318, baseType: !2778, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2779, file: !37, line: 1319, baseType: !389, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2779, file: !37, line: 1320, baseType: !402, size: 128, align: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2761, file: !37, line: 1084, baseType: !74, size: 64, offset: 1152)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2761, file: !37, line: 1085, baseType: !74, size: 64, offset: 1216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2761, file: !37, line: 1087, baseType: !2797, size: 64, offset: 1280)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !2800)
!2800 = !{!2801, !2805}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2799, file: !37, line: 1012, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2760, !2760}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2799, file: !37, line: 1013, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !2760}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2761, file: !37, line: 1088, baseType: !2810, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2812)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !2813)
!2813 = !{!2814, !2818, !2822, !2823, !2827, !2831, !2835, !2839}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2812, file: !37, line: 1017, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!2746, !2746}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2812, file: !37, line: 1018, baseType: !2819, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !2746}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2812, file: !37, line: 1019, baseType: !2806, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2812, file: !37, line: 1020, baseType: !2824, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!73, !2760, !73}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2812, file: !37, line: 1021, baseType: !2828, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!233, !2760}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2812, file: !37, line: 1022, baseType: !2832, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!73, !2760, !73, !131}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2812, file: !37, line: 1023, baseType: !2836, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !2760, !814}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2812, file: !37, line: 1024, baseType: !2828, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2761, file: !37, line: 1097, baseType: !2841, size: 256, offset: 1408)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2761, file: !37, line: 1089, size: 256, elements: !2842)
!2842 = !{!2843, !2852, !2858}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2841, file: !37, line: 1090, baseType: !2844, size: 256)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2845, line: 10, size: 256, elements: !2846)
!2845 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2846 = !{!2847, !2848, !2851}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2844, file: !2845, line: 11, baseType: !69, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2844, file: !2845, line: 12, baseType: !2849, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2845, line: 5, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2844, file: !2845, line: 13, baseType: !128, size: 128, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2841, file: !37, line: 1091, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2845, line: 17, size: 64, elements: !2854)
!2854 = !{!2855}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2853, file: !2845, line: 18, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2845, line: 16, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2841, file: !37, line: 1096, baseType: !2859, size: 192)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !37, line: 1092, size: 192, elements: !2860)
!2860 = !{!2861, !2862, !2863}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2859, file: !37, line: 1093, baseType: !128, size: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2859, file: !37, line: 1094, baseType: !73, size: 32, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2859, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2684, file: !37, line: 1843, baseType: !2865, size: 64, offset: 1280)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!96, !389, !734, !73, !105, !2695, !73}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2684, file: !37, line: 1844, baseType: !1014, size: 64, offset: 1344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2684, file: !37, line: 1845, baseType: !2870, size: 64, offset: 1408)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!73, !73}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2684, file: !37, line: 1846, baseType: !2757, size: 64, offset: 1472)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2684, file: !37, line: 1847, baseType: !2875, size: 64, offset: 1536)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!96, !1990, !389, !2695, !105, !7}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2684, file: !37, line: 1848, baseType: !2879, size: 64, offset: 1600)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!96, !389, !2695, !1990, !105, !7}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2684, file: !37, line: 1849, baseType: !2883, size: 64, offset: 1664)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!73, !389, !77, !2886, !814}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2684, file: !37, line: 1850, baseType: !2888, size: 64, offset: 1728)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!77, !389, !73, !546, !546}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2684, file: !37, line: 1852, baseType: !2892, size: 64, offset: 1792)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !341, !389}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2684, file: !37, line: 1856, baseType: !2896, size: 64, offset: 1856)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!96, !389, !546, !389, !546, !105, !7}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2684, file: !37, line: 1858, baseType: !2900, size: 64, offset: 1920)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!546, !389, !546, !389, !546, !546, !7}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2684, file: !37, line: 1861, baseType: !2749, size: 64, offset: 1984)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2679, file: !37, line: 692, baseType: !680, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !463, file: !37, line: 694, baseType: !2906, size: 64, offset: 2560)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2912}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2907, file: !37, line: 1101, baseType: !140)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2907, file: !37, line: 1102, baseType: !128, size: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2907, file: !37, line: 1103, baseType: !128, size: 128, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2907, file: !37, line: 1104, baseType: !128, size: 128, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !463, file: !37, line: 695, baseType: !748, size: 1216, align: 64, offset: 2624)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !463, file: !37, line: 696, baseType: !128, size: 128, offset: 3840)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !37, line: 697, baseType: !2916, size: 64, offset: 3968)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !37, line: 697, size: 64, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2923, !2924}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2916, file: !37, line: 698, baseType: !1990, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2916, file: !37, line: 699, baseType: !2434, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2916, file: !37, line: 700, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2916, file: !37, line: 701, baseType: !100, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2916, file: !37, line: 702, baseType: !7, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !463, file: !37, line: 705, baseType: !71, size: 32, offset: 4032)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !463, file: !37, line: 708, baseType: !71, size: 32, offset: 4064)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !463, file: !37, line: 709, baseType: !2516, size: 64, offset: 4096)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !463, file: !37, line: 720, baseType: !76, size: 64, offset: 4160)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !420, file: !417, line: 98, baseType: !2930, size: 256, offset: 448)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 256, elements: !2110)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !420, file: !417, line: 101, baseType: !2932, size: 32, offset: 704)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2933, line: 25, size: 32, elements: !2934)
!2933 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2934 = !{!2935}
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !2933, line: 26, baseType: !2936, size: 32)
!2936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2932, file: !2933, line: 26, size: 32, elements: !2937)
!2937 = !{!2938}
!2938 = !DIDerivedType(tag: DW_TAG_member, scope: !2936, file: !2933, line: 30, baseType: !2939, size: 32)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2936, file: !2933, line: 30, size: 32, elements: !2940)
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2939, file: !2933, line: 31, baseType: !140)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2939, file: !2933, line: 32, baseType: !73, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !420, file: !417, line: 102, baseType: !2533, size: 64, offset: 768)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !420, file: !417, line: 103, baseType: !613, size: 64, offset: 832)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !420, file: !417, line: 104, baseType: !74, size: 64, offset: 896)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !420, file: !417, line: 105, baseType: !76, size: 64, offset: 960)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !417, line: 107, baseType: !2948, size: 128, offset: 1024)
!2948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !417, line: 107, size: 128, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2948, file: !417, line: 108, baseType: !128, size: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2948, file: !417, line: 109, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !420, file: !417, line: 111, baseType: !128, size: 128, offset: 1152)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !420, file: !417, line: 112, baseType: !128, size: 128, offset: 1280)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !420, file: !417, line: 120, baseType: !2956, size: 128, offset: 1408)
!2956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !417, line: 116, size: 128, elements: !2957)
!2957 = !{!2958, !2959, !2960}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2956, file: !417, line: 117, baseType: !655, size: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2956, file: !417, line: 118, baseType: !434, size: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2956, file: !417, line: 119, baseType: !402, size: 128, align: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !390, file: !37, line: 922, baseType: !462, size: 64, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !390, file: !37, line: 923, baseType: !2682, size: 64, offset: 320)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !390, file: !37, line: 929, baseType: !140, offset: 384)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !390, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !390, file: !37, line: 931, baseType: !764, size: 64, offset: 448)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !390, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !390, file: !37, line: 933, baseType: !2529, size: 32, offset: 544)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !390, file: !37, line: 934, baseType: !1086, size: 192, offset: 576)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !390, file: !37, line: 935, baseType: !546, size: 64, offset: 768)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !390, file: !37, line: 936, baseType: !2971, size: 192, offset: 832)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2971, file: !37, line: 886, baseType: !2782)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2971, file: !37, line: 887, baseType: !1368, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2971, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2971, file: !37, line: 889, baseType: !264, size: 32, offset: 96)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2971, file: !37, line: 889, baseType: !264, size: 32, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2971, file: !37, line: 890, baseType: !73, size: 32, offset: 160)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !390, file: !37, line: 937, baseType: !1438, size: 64, offset: 1024)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !390, file: !37, line: 938, baseType: !2981, size: 256, offset: 1088)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2981, file: !37, line: 897, baseType: !74, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2981, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2981, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2981, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2981, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2981, file: !37, line: 904, baseType: !546, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !390, file: !37, line: 940, baseType: !454, size: 64, offset: 1344)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !390, file: !37, line: 945, baseType: !76, size: 64, offset: 1408)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !390, file: !37, line: 949, baseType: !128, size: 128, offset: 1472)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !390, file: !37, line: 950, baseType: !128, size: 128, offset: 1600)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !390, file: !37, line: 952, baseType: !747, size: 64, offset: 1728)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !390, file: !37, line: 953, baseType: !902, size: 32, offset: 1792)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !390, file: !37, line: 954, baseType: !902, size: 32, offset: 1824)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !385, file: !281, line: 201, baseType: !341, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !385, file: !281, line: 202, baseType: !76, size: 64, offset: 192)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !385, file: !281, line: 205, baseType: !1086, size: 192, offset: 256)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !385, file: !281, line: 206, baseType: !1086, size: 192, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !385, file: !281, line: 207, baseType: !73, size: 32, offset: 640)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !385, file: !281, line: 208, baseType: !128, size: 128, offset: 704)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !385, file: !281, line: 209, baseType: !100, size: 64, offset: 832)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !385, file: !281, line: 211, baseType: !105, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !385, file: !281, line: 212, baseType: !233, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !385, file: !281, line: 213, baseType: !233, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !385, file: !281, line: 214, baseType: !1002, size: 64, offset: 1024)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !378, file: !281, line: 223, baseType: !3008, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !384}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !378, file: !281, line: 236, baseType: !3012, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!73, !341, !76}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !378, file: !281, line: 238, baseType: !3016, size: 64, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!76, !341, !2695}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !378, file: !281, line: 239, baseType: !3020, size: 64, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!76, !341, !76, !2695}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !378, file: !281, line: 240, baseType: !3024, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !341, !76}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !378, file: !281, line: 242, baseType: !3028, size: 64, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!96, !384, !100, !105, !546}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !378, file: !281, line: 252, baseType: !105, size: 64, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !378, file: !281, line: 259, baseType: !233, size: 8, offset: 512)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !378, file: !281, line: 260, baseType: !3028, size: 64, offset: 576)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !378, file: !281, line: 263, baseType: !3035, size: 64, offset: 640)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!2724, !384, !2726}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !378, file: !281, line: 266, baseType: !3039, size: 64, offset: 704)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!73, !384, !974}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !373, file: !281, line: 109, baseType: !3043, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !281, line: 31, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !373, file: !281, line: 110, baseType: !546, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !373, file: !281, line: 111, baseType: !279, size: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !280, file: !281, line: 148, baseType: !76, size: 64, offset: 768)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !280, file: !281, line: 154, baseType: !454, size: 64, offset: 832)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !281, line: 156, baseType: !91, size: 16, offset: 896)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !280, file: !281, line: 157, baseType: !90, size: 16, offset: 912)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !280, file: !281, line: 158, baseType: !3052, size: 64, offset: 960)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !281, line: 32, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !123, file: !124, line: 71, baseType: !3055, size: 32, offset: 448)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3056, line: 19, size: 32, elements: !3057)
!3056 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3057 = !{!3058}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3055, file: !3056, line: 20, baseType: !1127, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !123, file: !124, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !123, file: !124, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !123, file: !124, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !123, file: !124, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !123, file: !124, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !115, file: !83, line: 88, baseType: !3065, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!90, !122, !3068, !73}
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !83, line: 168, size: 448, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3078, !3079}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3069, file: !83, line: 169, baseType: !82, size: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3069, file: !83, line: 170, baseType: !105, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3069, file: !83, line: 171, baseType: !76, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3069, file: !83, line: 172, baseType: !3075, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!96, !389, !122, !3068, !100, !546, !105}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3069, file: !83, line: 174, baseType: !3075, size: 64, offset: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3069, file: !83, line: 176, baseType: !3080, size: 64, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!73, !389, !122, !3068, !974}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !115, file: !83, line: 90, baseType: !216, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !115, file: !83, line: 91, baseType: !3085, size: 64, offset: 256)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3086 = !DIGlobalVariableExpression(var: !3087, expr: !DIExpression())
!3087 = distinct !DIGlobalVariable(name: "xen_pmu_attrs", scope: !2, file: !3, line: 501, type: !3088, isLocal: true, isDefinition: true)
!3088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 192, elements: !181)
!3089 = !DIGlobalVariableExpression(var: !3090, expr: !DIExpression())
!3090 = distinct !DIGlobalVariable(name: "pmu_mode_attr", scope: !2, file: !3, line: 463, type: !79, isLocal: true, isDefinition: true)
!3091 = !DIGlobalVariableExpression(var: !3092, expr: !DIExpression())
!3092 = distinct !DIGlobalVariable(name: "pmu_modes", scope: !2, file: !3, line: 409, type: !3093, isLocal: true, isDefinition: true)
!3093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3094, size: 512, elements: !1068)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu_mode", file: !3, line: 404, size: 128, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3094, file: !3, line: 405, baseType: !86, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3094, file: !3, line: 406, baseType: !67, size: 32, offset: 64)
!3098 = !DIGlobalVariableExpression(var: !3099, expr: !DIExpression())
!3099 = distinct !DIGlobalVariable(name: "pmu_features_attr", scope: !2, file: !3, line: 499, type: !79, isLocal: true, isDefinition: true)
!3100 = !DIGlobalVariableExpression(var: !3101, expr: !DIExpression())
!3101 = distinct !DIGlobalVariable(name: "xen_properties_group", scope: !2, file: !3, line: 393, type: !114, isLocal: true, isDefinition: true)
!3102 = !DIGlobalVariableExpression(var: !3103, expr: !DIExpression())
!3103 = distinct !DIGlobalVariable(name: "xen_properties_attrs", scope: !2, file: !3, line: 383, type: !3104, isLocal: true, isDefinition: true)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 448, elements: !3105)
!3105 = !{!3106}
!3106 = !DISubrange(count: 7)
!3107 = !DIGlobalVariableExpression(var: !3108, expr: !DIExpression())
!3108 = distinct !DIGlobalVariable(name: "capabilities_attr", scope: !2, file: !3, line: 267, type: !79, isLocal: true, isDefinition: true)
!3109 = !DIGlobalVariableExpression(var: !3110, expr: !DIExpression())
!3110 = distinct !DIGlobalVariable(name: "changeset_attr", scope: !2, file: !3, line: 285, type: !79, isLocal: true, isDefinition: true)
!3111 = !DIGlobalVariableExpression(var: !3112, expr: !DIExpression())
!3112 = distinct !DIGlobalVariable(name: "virtual_start_attr", scope: !2, file: !3, line: 305, type: !79, isLocal: true, isDefinition: true)
!3113 = !DIGlobalVariableExpression(var: !3114, expr: !DIExpression())
!3114 = distinct !DIGlobalVariable(name: "pagesize_attr", scope: !2, file: !3, line: 318, type: !79, isLocal: true, isDefinition: true)
!3115 = !DIGlobalVariableExpression(var: !3116, expr: !DIExpression())
!3116 = distinct !DIGlobalVariable(name: "features_attr", scope: !2, file: !3, line: 354, type: !79, isLocal: true, isDefinition: true)
!3117 = !DIGlobalVariableExpression(var: !3118, expr: !DIExpression())
!3118 = distinct !DIGlobalVariable(name: "buildid_attr", scope: !2, file: !3, line: 381, type: !79, isLocal: true, isDefinition: true)
!3119 = !DIGlobalVariableExpression(var: !3120, expr: !DIExpression())
!3120 = distinct !DIGlobalVariable(name: "uuid_attr", scope: !2, file: !3, line: 169, type: !79, isLocal: true, isDefinition: true)
!3121 = !DIGlobalVariableExpression(var: !3122, expr: !DIExpression())
!3122 = distinct !DIGlobalVariable(name: "xen_compilation_group", scope: !2, file: !3, line: 239, type: !114, isLocal: true, isDefinition: true)
!3123 = !DIGlobalVariableExpression(var: !3124, expr: !DIExpression())
!3124 = distinct !DIGlobalVariable(name: "xen_compile_attrs", scope: !2, file: !3, line: 232, type: !3125, isLocal: true, isDefinition: true)
!3125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !1068)
!3126 = !DIGlobalVariableExpression(var: !3127, expr: !DIExpression())
!3127 = distinct !DIGlobalVariable(name: "compiler_attr", scope: !2, file: !3, line: 194, type: !79, isLocal: true, isDefinition: true)
!3128 = !DIGlobalVariableExpression(var: !3129, expr: !DIExpression())
!3129 = distinct !DIGlobalVariable(name: "compiled_by_attr", scope: !2, file: !3, line: 212, type: !79, isLocal: true, isDefinition: true)
!3130 = !DIGlobalVariableExpression(var: !3131, expr: !DIExpression())
!3131 = distinct !DIGlobalVariable(name: "compile_date_attr", scope: !2, file: !3, line: 230, type: !79, isLocal: true, isDefinition: true)
!3132 = !DIGlobalVariableExpression(var: !3133, expr: !DIExpression())
!3133 = distinct !DIGlobalVariable(name: "version_group", scope: !2, file: !3, line: 125, type: !114, isLocal: true, isDefinition: true)
!3134 = !DIGlobalVariableExpression(var: !3135, expr: !DIExpression())
!3135 = distinct !DIGlobalVariable(name: "version_attrs", scope: !2, file: !3, line: 118, type: !3125, isLocal: true, isDefinition: true)
!3136 = !DIGlobalVariableExpression(var: !3137, expr: !DIExpression())
!3137 = distinct !DIGlobalVariable(name: "major_attr", scope: !2, file: !3, line: 88, type: !79, isLocal: true, isDefinition: true)
!3138 = !DIGlobalVariableExpression(var: !3139, expr: !DIExpression())
!3139 = distinct !DIGlobalVariable(name: "minor_attr", scope: !2, file: !3, line: 98, type: !79, isLocal: true, isDefinition: true)
!3140 = !DIGlobalVariableExpression(var: !3141, expr: !DIExpression())
!3141 = distinct !DIGlobalVariable(name: "extra_attr", scope: !2, file: !3, line: 116, type: !79, isLocal: true, isDefinition: true)
!3142 = !DIGlobalVariableExpression(var: !3143, expr: !DIExpression())
!3143 = distinct !DIGlobalVariable(name: "guest_type_attr", scope: !2, file: !3, line: 72, type: !79, isLocal: true, isDefinition: true)
!3144 = !DIGlobalVariableExpression(var: !3145, expr: !DIExpression())
!3145 = distinct !DIGlobalVariable(name: "type_attr", scope: !2, file: !3, line: 43, type: !79, isLocal: true, isDefinition: true)
!3146 = !DIGlobalVariableExpression(var: !3147, expr: !DIExpression())
!3147 = distinct !DIGlobalVariable(name: "hyp_sysfs_kobj_type", scope: !2, file: !3, line: 598, type: !195, isLocal: true, isDefinition: true)
!3148 = !DIGlobalVariableExpression(var: !3149, expr: !DIExpression())
!3149 = distinct !DIGlobalVariable(name: "hyp_sysfs_ops", scope: !2, file: !3, line: 593, type: !203, isLocal: true, isDefinition: true)
!3150 = !{!"rsp"}
!3151 = !{i32 7, !"Dwarf Version", i32 4}
!3152 = !{i32 2, !"Debug Info Version", i32 3}
!3153 = !{i32 1, !"wchar_size", i32 2}
!3154 = !{i32 1, !"Code Model", i32 2}
!3155 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3156 = distinct !DISubprogram(name: "hyper_sysfs_init", scope: !3, file: !3, line: 518, type: !3157, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!73}
!3159 = !DILocalVariable(name: "ret", scope: !3156, file: !3, line: 520, type: !73)
!3160 = !DILocation(line: 520, column: 6, scope: !3156)
!3161 = !DILocation(line: 522, column: 7, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 522, column: 6)
!3163 = !DILocation(line: 522, column: 6, scope: !3156)
!3164 = !DILocation(line: 523, column: 3, scope: !3162)
!3165 = !DILocation(line: 525, column: 8, scope: !3156)
!3166 = !DILocation(line: 525, column: 6, scope: !3156)
!3167 = !DILocation(line: 526, column: 6, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 526, column: 6)
!3169 = !DILocation(line: 526, column: 6, scope: !3156)
!3170 = !DILocation(line: 527, column: 3, scope: !3168)
!3171 = !DILocation(line: 528, column: 8, scope: !3156)
!3172 = !DILocation(line: 528, column: 6, scope: !3156)
!3173 = !DILocation(line: 529, column: 6, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 529, column: 6)
!3175 = !DILocation(line: 529, column: 6, scope: !3156)
!3176 = !DILocation(line: 530, column: 3, scope: !3174)
!3177 = !DILocation(line: 531, column: 8, scope: !3156)
!3178 = !DILocation(line: 531, column: 6, scope: !3156)
!3179 = !DILocation(line: 532, column: 6, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 532, column: 6)
!3181 = !DILocation(line: 532, column: 6, scope: !3156)
!3182 = !DILocation(line: 533, column: 3, scope: !3180)
!3183 = !DILocation(line: 534, column: 8, scope: !3156)
!3184 = !DILocation(line: 534, column: 6, scope: !3156)
!3185 = !DILocation(line: 535, column: 6, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 535, column: 6)
!3187 = !DILocation(line: 535, column: 6, scope: !3156)
!3188 = !DILocation(line: 536, column: 3, scope: !3186)
!3189 = !DILocation(line: 537, column: 8, scope: !3156)
!3190 = !DILocation(line: 537, column: 6, scope: !3156)
!3191 = !DILocation(line: 538, column: 6, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 538, column: 6)
!3193 = !DILocation(line: 538, column: 6, scope: !3156)
!3194 = !DILocation(line: 539, column: 3, scope: !3192)
!3195 = !DILocation(line: 540, column: 8, scope: !3156)
!3196 = !DILocation(line: 540, column: 6, scope: !3156)
!3197 = !DILocation(line: 541, column: 6, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 541, column: 6)
!3199 = !DILocation(line: 541, column: 6, scope: !3156)
!3200 = !DILocation(line: 542, column: 3, scope: !3198)
!3201 = !DILocation(line: 544, column: 6, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 544, column: 6)
!3203 = !DILocation(line: 544, column: 6, scope: !3156)
!3204 = !DILocation(line: 545, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 544, column: 28)
!3206 = !DILocation(line: 545, column: 7, scope: !3205)
!3207 = !DILocation(line: 546, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 546, column: 7)
!3209 = !DILocation(line: 546, column: 7, scope: !3205)
!3210 = !DILocation(line: 547, column: 23, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 546, column: 12)
!3212 = !DILocation(line: 547, column: 4, scope: !3211)
!3213 = !DILocation(line: 549, column: 4, scope: !3211)
!3214 = !DILocation(line: 551, column: 2, scope: !3205)
!3215 = !DILocation(line: 553, column: 2, scope: !3156)
!3216 = !DILabel(scope: !3156, name: "prop_out", file: !3, line: 555)
!3217 = !DILocation(line: 555, column: 1, scope: !3156)
!3218 = !DILocation(line: 556, column: 20, scope: !3156)
!3219 = !DILocation(line: 556, column: 2, scope: !3156)
!3220 = !DILabel(scope: !3156, name: "uuid_out", file: !3, line: 557)
!3221 = !DILocation(line: 557, column: 1, scope: !3156)
!3222 = !DILocation(line: 558, column: 21, scope: !3156)
!3223 = !DILocation(line: 558, column: 2, scope: !3156)
!3224 = !DILabel(scope: !3156, name: "comp_out", file: !3, line: 559)
!3225 = !DILocation(line: 559, column: 1, scope: !3156)
!3226 = !DILocation(line: 560, column: 21, scope: !3156)
!3227 = !DILocation(line: 560, column: 2, scope: !3156)
!3228 = !DILabel(scope: !3156, name: "version_out", file: !3, line: 561)
!3229 = !DILocation(line: 561, column: 1, scope: !3156)
!3230 = !DILocation(line: 562, column: 20, scope: !3156)
!3231 = !DILocation(line: 562, column: 2, scope: !3156)
!3232 = !DILabel(scope: !3156, name: "guest_type_out", file: !3, line: 563)
!3233 = !DILocation(line: 563, column: 1, scope: !3156)
!3234 = !DILocation(line: 564, column: 20, scope: !3156)
!3235 = !DILocation(line: 564, column: 2, scope: !3156)
!3236 = !DILabel(scope: !3156, name: "out", file: !3, line: 565)
!3237 = !DILocation(line: 565, column: 1, scope: !3156)
!3238 = !DILocation(line: 566, column: 9, scope: !3156)
!3239 = !DILocation(line: 566, column: 2, scope: !3156)
!3240 = !DILocation(line: 567, column: 1, scope: !3156)
!3241 = distinct !DISubprogram(name: "hypervisor_subsys_init", scope: !3, file: !3, line: 602, type: !3157, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3242 = !DILocation(line: 604, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 604, column: 6)
!3244 = !DILocation(line: 604, column: 6, scope: !3241)
!3245 = !DILocation(line: 605, column: 3, scope: !3243)
!3246 = !DILocation(line: 607, column: 2, scope: !3241)
!3247 = !DILocation(line: 607, column: 19, scope: !3241)
!3248 = !DILocation(line: 607, column: 25, scope: !3241)
!3249 = !DILocation(line: 608, column: 2, scope: !3241)
!3250 = !DILocation(line: 609, column: 1, scope: !3241)
!3251 = distinct !DISubprogram(name: "xen_sysfs_type_init", scope: !3, file: !3, line: 45, type: !3157, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3252 = !DILocation(line: 47, column: 27, scope: !3251)
!3253 = !DILocation(line: 47, column: 9, scope: !3251)
!3254 = !DILocation(line: 47, column: 2, scope: !3251)
!3255 = distinct !DISubprogram(name: "xen_sysfs_guest_type_init", scope: !3, file: !3, line: 74, type: !3157, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3256 = !DILocation(line: 76, column: 27, scope: !3255)
!3257 = !DILocation(line: 76, column: 9, scope: !3255)
!3258 = !DILocation(line: 76, column: 2, scope: !3255)
!3259 = distinct !DISubprogram(name: "xen_sysfs_version_init", scope: !3, file: !3, line: 130, type: !3157, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3260 = !DILocation(line: 132, column: 28, scope: !3259)
!3261 = !DILocation(line: 132, column: 9, scope: !3259)
!3262 = !DILocation(line: 132, column: 2, scope: !3259)
!3263 = distinct !DISubprogram(name: "xen_sysfs_compilation_init", scope: !3, file: !3, line: 244, type: !3157, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3264 = !DILocation(line: 246, column: 28, scope: !3263)
!3265 = !DILocation(line: 246, column: 9, scope: !3263)
!3266 = !DILocation(line: 246, column: 2, scope: !3263)
!3267 = distinct !DISubprogram(name: "xen_sysfs_uuid_init", scope: !3, file: !3, line: 171, type: !3157, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3268 = !DILocation(line: 173, column: 27, scope: !3267)
!3269 = !DILocation(line: 173, column: 9, scope: !3267)
!3270 = !DILocation(line: 173, column: 2, scope: !3267)
!3271 = distinct !DISubprogram(name: "xen_sysfs_properties_init", scope: !3, file: !3, line: 398, type: !3157, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3272 = !DILocation(line: 400, column: 28, scope: !3271)
!3273 = !DILocation(line: 400, column: 9, scope: !3271)
!3274 = !DILocation(line: 400, column: 2, scope: !3271)
!3275 = distinct !DISubprogram(name: "xen_sysfs_pmu_init", scope: !3, file: !3, line: 512, type: !3157, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3276 = !DILocation(line: 514, column: 28, scope: !3275)
!3277 = !DILocation(line: 514, column: 9, scope: !3275)
!3278 = !DILocation(line: 514, column: 2, scope: !3275)
!3279 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !83, file: !83, line: 602, type: !3280, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !122, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!3284 = !DILocalVariable(name: "kobj", arg: 1, scope: !3279, file: !83, line: 602, type: !122)
!3285 = !DILocation(line: 602, column: 54, scope: !3279)
!3286 = !DILocalVariable(name: "attr", arg: 2, scope: !3279, file: !83, line: 603, type: !3282)
!3287 = !DILocation(line: 603, column: 34, scope: !3279)
!3288 = !DILocation(line: 605, column: 23, scope: !3279)
!3289 = !DILocation(line: 605, column: 29, scope: !3279)
!3290 = !DILocation(line: 605, column: 2, scope: !3279)
!3291 = !DILocation(line: 606, column: 1, scope: !3279)
!3292 = distinct !DISubprogram(name: "sysfs_create_file", scope: !83, file: !83, line: 596, type: !3293, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!73, !122, !3282}
!3295 = !DILocalVariable(name: "kobj", arg: 1, scope: !3292, file: !83, line: 596, type: !122)
!3296 = !DILocation(line: 596, column: 66, scope: !3292)
!3297 = !DILocalVariable(name: "attr", arg: 2, scope: !3292, file: !83, line: 597, type: !3282)
!3298 = !DILocation(line: 597, column: 32, scope: !3292)
!3299 = !DILocation(line: 599, column: 30, scope: !3292)
!3300 = !DILocation(line: 599, column: 36, scope: !3292)
!3301 = !DILocation(line: 599, column: 9, scope: !3292)
!3302 = !DILocation(line: 599, column: 2, scope: !3292)
!3303 = distinct !DISubprogram(name: "pmu_mode_show", scope: !3, file: !3, line: 442, type: !94, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3304 = !DILocalVariable(name: "attr", arg: 1, scope: !3303, file: !3, line: 442, type: !78)
!3305 = !DILocation(line: 442, column: 53, scope: !3303)
!3306 = !DILocalVariable(name: "buffer", arg: 2, scope: !3303, file: !3, line: 442, type: !100)
!3307 = !DILocation(line: 442, column: 65, scope: !3303)
!3308 = !DILocalVariable(name: "ret", scope: !3303, file: !3, line: 444, type: !73)
!3309 = !DILocation(line: 444, column: 6, scope: !3303)
!3310 = !DILocalVariable(name: "xp", scope: !3303, file: !3, line: 445, type: !3311)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_pmu_params", file: !3312, line: 30, size: 192, elements: !3313)
!3312 = !DIFile(filename: "./include/xen/interface/xenpmu.h", directory: "/home/lizy2001/genbc/linux")
!3313 = !{!3314, !3319, !3321, !3322}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3311, file: !3312, line: 35, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3311, file: !3312, line: 32, size: 64, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "maj", scope: !3315, file: !3312, line: 33, baseType: !67, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3315, file: !3312, line: 34, baseType: !67, size: 32, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3311, file: !3312, line: 36, baseType: !3320, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !68, line: 107, baseType: !454)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "vcpu", scope: !3311, file: !3312, line: 39, baseType: !67, size: 32, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3311, file: !3312, line: 40, baseType: !67, size: 32, offset: 160)
!3323 = !DILocation(line: 445, column: 24, scope: !3303)
!3324 = !DILocalVariable(name: "i", scope: !3303, file: !3, line: 446, type: !73)
!3325 = !DILocation(line: 446, column: 6, scope: !3303)
!3326 = !DILocalVariable(name: "mode", scope: !3303, file: !3, line: 447, type: !67)
!3327 = !DILocation(line: 447, column: 11, scope: !3303)
!3328 = !DILocation(line: 449, column: 5, scope: !3303)
!3329 = !DILocation(line: 449, column: 13, scope: !3303)
!3330 = !DILocation(line: 449, column: 17, scope: !3303)
!3331 = !DILocation(line: 450, column: 5, scope: !3303)
!3332 = !DILocation(line: 450, column: 13, scope: !3303)
!3333 = !DILocation(line: 450, column: 17, scope: !3303)
!3334 = !DILocation(line: 451, column: 46, scope: !3303)
!3335 = !DILocation(line: 451, column: 8, scope: !3303)
!3336 = !DILocation(line: 451, column: 6, scope: !3303)
!3337 = !DILocation(line: 452, column: 6, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 452, column: 6)
!3339 = !DILocation(line: 452, column: 6, scope: !3303)
!3340 = !DILocation(line: 453, column: 10, scope: !3338)
!3341 = !DILocation(line: 453, column: 3, scope: !3338)
!3342 = !DILocation(line: 455, column: 22, scope: !3303)
!3343 = !DILocation(line: 455, column: 9, scope: !3303)
!3344 = !DILocation(line: 455, column: 7, scope: !3303)
!3345 = !DILocation(line: 456, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 456, column: 2)
!3347 = !DILocation(line: 456, column: 7, scope: !3346)
!3348 = !DILocation(line: 456, column: 14, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 456, column: 2)
!3350 = !DILocation(line: 456, column: 16, scope: !3349)
!3351 = !DILocation(line: 456, column: 2, scope: !3346)
!3352 = !DILocation(line: 457, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 457, column: 7)
!3354 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 456, column: 46)
!3355 = !DILocation(line: 457, column: 25, scope: !3353)
!3356 = !DILocation(line: 457, column: 15, scope: !3353)
!3357 = !DILocation(line: 457, column: 28, scope: !3353)
!3358 = !DILocation(line: 457, column: 12, scope: !3353)
!3359 = !DILocation(line: 457, column: 7, scope: !3354)
!3360 = !DILocation(line: 458, column: 19, scope: !3353)
!3361 = !DILocation(line: 458, column: 45, scope: !3353)
!3362 = !DILocation(line: 458, column: 35, scope: !3353)
!3363 = !DILocation(line: 458, column: 48, scope: !3353)
!3364 = !DILocation(line: 458, column: 11, scope: !3353)
!3365 = !DILocation(line: 458, column: 4, scope: !3353)
!3366 = !DILocation(line: 459, column: 2, scope: !3354)
!3367 = !DILocation(line: 456, column: 42, scope: !3349)
!3368 = !DILocation(line: 456, column: 2, scope: !3349)
!3369 = distinct !{!3369, !3351, !3370}
!3370 = !DILocation(line: 459, column: 2, scope: !3346)
!3371 = !DILocation(line: 461, column: 2, scope: !3303)
!3372 = !DILocation(line: 462, column: 1, scope: !3303)
!3373 = distinct !DISubprogram(name: "pmu_mode_store", scope: !3, file: !3, line: 416, type: !103, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3374 = !DILocalVariable(name: "attr", arg: 1, scope: !3373, file: !3, line: 416, type: !78)
!3375 = !DILocation(line: 416, column: 54, scope: !3373)
!3376 = !DILocalVariable(name: "buffer", arg: 2, scope: !3373, file: !3, line: 417, type: !86)
!3377 = !DILocation(line: 417, column: 22, scope: !3373)
!3378 = !DILocalVariable(name: "len", arg: 3, scope: !3373, file: !3, line: 417, type: !105)
!3379 = !DILocation(line: 417, column: 37, scope: !3373)
!3380 = !DILocalVariable(name: "ret", scope: !3373, file: !3, line: 419, type: !73)
!3381 = !DILocation(line: 419, column: 6, scope: !3373)
!3382 = !DILocalVariable(name: "xp", scope: !3373, file: !3, line: 420, type: !3311)
!3383 = !DILocation(line: 420, column: 24, scope: !3373)
!3384 = !DILocalVariable(name: "i", scope: !3373, file: !3, line: 421, type: !73)
!3385 = !DILocation(line: 421, column: 6, scope: !3373)
!3386 = !DILocation(line: 423, column: 9, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 423, column: 2)
!3388 = !DILocation(line: 423, column: 7, scope: !3387)
!3389 = !DILocation(line: 423, column: 14, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 423, column: 2)
!3391 = !DILocation(line: 423, column: 16, scope: !3390)
!3392 = !DILocation(line: 423, column: 2, scope: !3387)
!3393 = !DILocation(line: 424, column: 15, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 424, column: 7)
!3395 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 423, column: 46)
!3396 = !DILocation(line: 424, column: 33, scope: !3394)
!3397 = !DILocation(line: 424, column: 23, scope: !3394)
!3398 = !DILocation(line: 424, column: 36, scope: !3394)
!3399 = !DILocation(line: 424, column: 42, scope: !3394)
!3400 = !DILocation(line: 424, column: 46, scope: !3394)
!3401 = !DILocation(line: 424, column: 7, scope: !3394)
!3402 = !DILocation(line: 424, column: 51, scope: !3394)
!3403 = !DILocation(line: 424, column: 7, scope: !3395)
!3404 = !DILocation(line: 425, column: 23, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 424, column: 57)
!3406 = !DILocation(line: 425, column: 13, scope: !3405)
!3407 = !DILocation(line: 425, column: 26, scope: !3405)
!3408 = !DILocation(line: 425, column: 7, scope: !3405)
!3409 = !DILocation(line: 425, column: 11, scope: !3405)
!3410 = !DILocation(line: 426, column: 4, scope: !3405)
!3411 = !DILocation(line: 428, column: 2, scope: !3395)
!3412 = !DILocation(line: 423, column: 42, scope: !3390)
!3413 = !DILocation(line: 423, column: 2, scope: !3390)
!3414 = distinct !{!3414, !3392, !3415}
!3415 = !DILocation(line: 428, column: 2, scope: !3387)
!3416 = !DILocation(line: 430, column: 6, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 430, column: 6)
!3418 = !DILocation(line: 430, column: 8, scope: !3417)
!3419 = !DILocation(line: 430, column: 6, scope: !3373)
!3420 = !DILocation(line: 431, column: 3, scope: !3417)
!3421 = !DILocation(line: 433, column: 5, scope: !3373)
!3422 = !DILocation(line: 433, column: 13, scope: !3373)
!3423 = !DILocation(line: 433, column: 17, scope: !3373)
!3424 = !DILocation(line: 434, column: 5, scope: !3373)
!3425 = !DILocation(line: 434, column: 13, scope: !3373)
!3426 = !DILocation(line: 434, column: 17, scope: !3373)
!3427 = !DILocation(line: 435, column: 46, scope: !3373)
!3428 = !DILocation(line: 435, column: 8, scope: !3373)
!3429 = !DILocation(line: 435, column: 6, scope: !3373)
!3430 = !DILocation(line: 436, column: 6, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 436, column: 6)
!3432 = !DILocation(line: 436, column: 6, scope: !3373)
!3433 = !DILocation(line: 437, column: 10, scope: !3431)
!3434 = !DILocation(line: 437, column: 3, scope: !3431)
!3435 = !DILocation(line: 439, column: 9, scope: !3373)
!3436 = !DILocation(line: 439, column: 2, scope: !3373)
!3437 = !DILocation(line: 440, column: 1, scope: !3373)
!3438 = distinct !DISubprogram(name: "HYPERVISOR_xenpmu_op", scope: !3439, file: !3439, line: 433, type: !3440, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3439 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!73, !7, !76}
!3442 = !DILocalVariable(name: "op", arg: 1, scope: !3438, file: !3439, line: 433, type: !7)
!3443 = !DILocation(line: 433, column: 35, scope: !3438)
!3444 = !DILocalVariable(name: "arg", arg: 2, scope: !3438, file: !3439, line: 433, type: !76)
!3445 = !DILocation(line: 433, column: 45, scope: !3438)
!3446 = !DILocalVariable(name: "__res", scope: !3447, file: !3439, line: 435, type: !74)
!3447 = distinct !DILexicalBlock(scope: !3438, file: !3439, line: 435, column: 9)
!3448 = !DILocation(line: 435, column: 9, scope: !3447)
!3449 = !DILocalVariable(name: "__arg1", scope: !3447, file: !3439, line: 435, type: !74)
!3450 = !DILocalVariable(name: "__arg2", scope: !3447, file: !3439, line: 435, type: !74)
!3451 = !DILocalVariable(name: "__arg3", scope: !3447, file: !3439, line: 435, type: !74)
!3452 = !DILocalVariable(name: "__arg4", scope: !3447, file: !3439, line: 435, type: !74)
!3453 = !DILocalVariable(name: "__arg5", scope: !3447, file: !3439, line: 435, type: !74)
!3454 = !{i32 -2142911549}
!3455 = !DILocation(line: 435, column: 2, scope: !3438)
!3456 = distinct !DISubprogram(name: "pmu_features_show", scope: !3, file: !3, line: 486, type: !94, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3457 = !DILocalVariable(name: "attr", arg: 1, scope: !3456, file: !3, line: 486, type: !78)
!3458 = !DILocation(line: 486, column: 57, scope: !3456)
!3459 = !DILocalVariable(name: "buffer", arg: 2, scope: !3456, file: !3, line: 486, type: !100)
!3460 = !DILocation(line: 486, column: 69, scope: !3456)
!3461 = !DILocalVariable(name: "ret", scope: !3456, file: !3, line: 488, type: !73)
!3462 = !DILocation(line: 488, column: 6, scope: !3456)
!3463 = !DILocalVariable(name: "xp", scope: !3456, file: !3, line: 489, type: !3311)
!3464 = !DILocation(line: 489, column: 24, scope: !3456)
!3465 = !DILocation(line: 491, column: 5, scope: !3456)
!3466 = !DILocation(line: 491, column: 13, scope: !3456)
!3467 = !DILocation(line: 491, column: 17, scope: !3456)
!3468 = !DILocation(line: 492, column: 5, scope: !3456)
!3469 = !DILocation(line: 492, column: 13, scope: !3456)
!3470 = !DILocation(line: 492, column: 17, scope: !3456)
!3471 = !DILocation(line: 493, column: 49, scope: !3456)
!3472 = !DILocation(line: 493, column: 8, scope: !3456)
!3473 = !DILocation(line: 493, column: 6, scope: !3456)
!3474 = !DILocation(line: 494, column: 6, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 494, column: 6)
!3476 = !DILocation(line: 494, column: 6, scope: !3456)
!3477 = !DILocation(line: 495, column: 10, scope: !3475)
!3478 = !DILocation(line: 495, column: 3, scope: !3475)
!3479 = !DILocation(line: 497, column: 17, scope: !3456)
!3480 = !DILocation(line: 497, column: 48, scope: !3456)
!3481 = !DILocation(line: 497, column: 35, scope: !3456)
!3482 = !DILocation(line: 497, column: 9, scope: !3456)
!3483 = !DILocation(line: 497, column: 2, scope: !3456)
!3484 = !DILocation(line: 498, column: 1, scope: !3456)
!3485 = distinct !DISubprogram(name: "pmu_features_store", scope: !3, file: !3, line: 465, type: !103, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3486 = !DILocalVariable(name: "attr", arg: 1, scope: !3485, file: !3, line: 465, type: !78)
!3487 = !DILocation(line: 465, column: 58, scope: !3485)
!3488 = !DILocalVariable(name: "buffer", arg: 2, scope: !3485, file: !3, line: 466, type: !86)
!3489 = !DILocation(line: 466, column: 19, scope: !3485)
!3490 = !DILocalVariable(name: "len", arg: 3, scope: !3485, file: !3, line: 466, type: !105)
!3491 = !DILocation(line: 466, column: 34, scope: !3485)
!3492 = !DILocalVariable(name: "ret", scope: !3485, file: !3, line: 468, type: !73)
!3493 = !DILocation(line: 468, column: 6, scope: !3485)
!3494 = !DILocalVariable(name: "features", scope: !3485, file: !3, line: 469, type: !67)
!3495 = !DILocation(line: 469, column: 11, scope: !3485)
!3496 = !DILocalVariable(name: "xp", scope: !3485, file: !3, line: 470, type: !3311)
!3497 = !DILocation(line: 470, column: 24, scope: !3485)
!3498 = !DILocation(line: 472, column: 18, scope: !3485)
!3499 = !DILocation(line: 472, column: 8, scope: !3485)
!3500 = !DILocation(line: 472, column: 6, scope: !3485)
!3501 = !DILocation(line: 473, column: 6, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 473, column: 6)
!3503 = !DILocation(line: 473, column: 6, scope: !3485)
!3504 = !DILocation(line: 474, column: 10, scope: !3502)
!3505 = !DILocation(line: 474, column: 3, scope: !3502)
!3506 = !DILocation(line: 476, column: 11, scope: !3485)
!3507 = !DILocation(line: 476, column: 5, scope: !3485)
!3508 = !DILocation(line: 476, column: 9, scope: !3485)
!3509 = !DILocation(line: 477, column: 5, scope: !3485)
!3510 = !DILocation(line: 477, column: 13, scope: !3485)
!3511 = !DILocation(line: 477, column: 17, scope: !3485)
!3512 = !DILocation(line: 478, column: 5, scope: !3485)
!3513 = !DILocation(line: 478, column: 13, scope: !3485)
!3514 = !DILocation(line: 478, column: 17, scope: !3485)
!3515 = !DILocation(line: 479, column: 49, scope: !3485)
!3516 = !DILocation(line: 479, column: 8, scope: !3485)
!3517 = !DILocation(line: 479, column: 6, scope: !3485)
!3518 = !DILocation(line: 480, column: 6, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 480, column: 6)
!3520 = !DILocation(line: 480, column: 6, scope: !3485)
!3521 = !DILocation(line: 481, column: 10, scope: !3519)
!3522 = !DILocation(line: 481, column: 3, scope: !3519)
!3523 = !DILocation(line: 483, column: 9, scope: !3485)
!3524 = !DILocation(line: 483, column: 2, scope: !3485)
!3525 = !DILocation(line: 484, column: 1, scope: !3485)
!3526 = distinct !DISubprogram(name: "kstrtou32", scope: !3527, file: !3527, line: 405, type: !3528, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3527 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!73, !86, !7, !1312}
!3530 = !DILocalVariable(name: "s", arg: 1, scope: !3526, file: !3527, line: 405, type: !86)
!3531 = !DILocation(line: 405, column: 54, scope: !3526)
!3532 = !DILocalVariable(name: "base", arg: 2, scope: !3526, file: !3527, line: 405, type: !7)
!3533 = !DILocation(line: 405, column: 70, scope: !3526)
!3534 = !DILocalVariable(name: "res", arg: 3, scope: !3526, file: !3527, line: 405, type: !1312)
!3535 = !DILocation(line: 405, column: 81, scope: !3526)
!3536 = !DILocation(line: 407, column: 20, scope: !3526)
!3537 = !DILocation(line: 407, column: 23, scope: !3526)
!3538 = !DILocation(line: 407, column: 29, scope: !3526)
!3539 = !DILocation(line: 407, column: 9, scope: !3526)
!3540 = !DILocation(line: 407, column: 2, scope: !3526)
!3541 = distinct !DISubprogram(name: "capabilities_show", scope: !3, file: !3, line: 251, type: !94, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3542 = !DILocalVariable(name: "s", arg: 1, scope: !3543, file: !60, line: 445, type: !928)
!3543 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !60, file: !60, line: 445, type: !3544, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!76, !928, !75, !105}
!3546 = !DILocation(line: 445, column: 72, scope: !3543, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 552, column: 10, scope: !3548, inlinedAt: !3553)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !60, line: 540, column: 34)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !60, line: 540, column: 6)
!3550 = distinct !DISubprogram(name: "kmalloc", scope: !60, file: !60, line: 538, type: !3551, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!76, !105, !75}
!3553 = distinct !DILocation(line: 256, column: 9, scope: !3541)
!3554 = !DILocalVariable(name: "flags", arg: 2, scope: !3543, file: !60, line: 446, type: !75)
!3555 = !DILocation(line: 446, column: 9, scope: !3543, inlinedAt: !3547)
!3556 = !DILocalVariable(name: "size", arg: 3, scope: !3543, file: !60, line: 446, type: !105)
!3557 = !DILocation(line: 446, column: 23, scope: !3543, inlinedAt: !3547)
!3558 = !DILocalVariable(name: "ret", scope: !3543, file: !60, line: 448, type: !76)
!3559 = !DILocation(line: 448, column: 8, scope: !3543, inlinedAt: !3547)
!3560 = !DILocalVariable(name: "flags", arg: 1, scope: !3561, file: !60, line: 318, type: !75)
!3561 = distinct !DISubprogram(name: "kmalloc_type", scope: !60, file: !60, line: 318, type: !3562, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!59, !75}
!3564 = !DILocation(line: 318, column: 67, scope: !3561, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 553, column: 20, scope: !3548, inlinedAt: !3553)
!3566 = !DILocalVariable(name: "size", arg: 1, scope: !3567, file: !60, line: 346, type: !105)
!3567 = distinct !DISubprogram(name: "kmalloc_index", scope: !60, file: !60, line: 346, type: !3568, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!7, !105}
!3570 = !DILocation(line: 346, column: 58, scope: !3567, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 547, column: 11, scope: !3548, inlinedAt: !3553)
!3572 = !DILocalVariable(name: "size", arg: 1, scope: !3573, file: !60, line: 472, type: !105)
!3573 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !60, file: !60, line: 472, type: !3574, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!76, !105, !75, !7}
!3576 = !DILocation(line: 472, column: 28, scope: !3573, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 481, column: 9, scope: !3578, inlinedAt: !3579)
!3578 = distinct !DISubprogram(name: "kmalloc_large", scope: !60, file: !60, line: 478, type: !3551, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3579 = distinct !DILocation(line: 545, column: 11, scope: !3580, inlinedAt: !3553)
!3580 = distinct !DILexicalBlock(scope: !3548, file: !60, line: 544, column: 7)
!3581 = !DILocalVariable(name: "flags", arg: 2, scope: !3573, file: !60, line: 472, type: !75)
!3582 = !DILocation(line: 472, column: 40, scope: !3573, inlinedAt: !3577)
!3583 = !DILocalVariable(name: "order", arg: 3, scope: !3573, file: !60, line: 472, type: !7)
!3584 = !DILocation(line: 472, column: 60, scope: !3573, inlinedAt: !3577)
!3585 = !DILocalVariable(name: "size", arg: 1, scope: !3578, file: !60, line: 478, type: !105)
!3586 = !DILocation(line: 478, column: 51, scope: !3578, inlinedAt: !3579)
!3587 = !DILocalVariable(name: "flags", arg: 2, scope: !3578, file: !60, line: 478, type: !75)
!3588 = !DILocation(line: 478, column: 63, scope: !3578, inlinedAt: !3579)
!3589 = !DILocalVariable(name: "order", scope: !3578, file: !60, line: 480, type: !7)
!3590 = !DILocation(line: 480, column: 15, scope: !3578, inlinedAt: !3579)
!3591 = !DILocalVariable(name: "size", arg: 1, scope: !3550, file: !60, line: 538, type: !105)
!3592 = !DILocation(line: 538, column: 45, scope: !3550, inlinedAt: !3553)
!3593 = !DILocalVariable(name: "flags", arg: 2, scope: !3550, file: !60, line: 538, type: !75)
!3594 = !DILocation(line: 538, column: 57, scope: !3550, inlinedAt: !3553)
!3595 = !DILocalVariable(name: "index", scope: !3548, file: !60, line: 542, type: !7)
!3596 = !DILocation(line: 542, column: 16, scope: !3548, inlinedAt: !3553)
!3597 = !DILocalVariable(name: "attr", arg: 1, scope: !3541, file: !3, line: 251, type: !78)
!3598 = !DILocation(line: 251, column: 57, scope: !3541)
!3599 = !DILocalVariable(name: "buffer", arg: 2, scope: !3541, file: !3, line: 251, type: !100)
!3600 = !DILocation(line: 251, column: 69, scope: !3541)
!3601 = !DILocalVariable(name: "ret", scope: !3541, file: !3, line: 253, type: !73)
!3602 = !DILocation(line: 253, column: 6, scope: !3541)
!3603 = !DILocalVariable(name: "caps", scope: !3541, file: !3, line: 254, type: !100)
!3604 = !DILocation(line: 254, column: 8, scope: !3541)
!3605 = !DILocation(line: 540, column: 27, scope: !3549, inlinedAt: !3553)
!3606 = !DILocation(line: 540, column: 6, scope: !3549, inlinedAt: !3553)
!3607 = !DILocation(line: 540, column: 6, scope: !3550, inlinedAt: !3553)
!3608 = !DILocation(line: 544, column: 7, scope: !3580, inlinedAt: !3553)
!3609 = !DILocation(line: 544, column: 12, scope: !3580, inlinedAt: !3553)
!3610 = !DILocation(line: 544, column: 7, scope: !3548, inlinedAt: !3553)
!3611 = !DILocation(line: 545, column: 25, scope: !3580, inlinedAt: !3553)
!3612 = !DILocation(line: 545, column: 31, scope: !3580, inlinedAt: !3553)
!3613 = !DILocation(line: 480, column: 33, scope: !3578, inlinedAt: !3579)
!3614 = !DILocation(line: 480, column: 23, scope: !3578, inlinedAt: !3579)
!3615 = !DILocation(line: 481, column: 29, scope: !3578, inlinedAt: !3579)
!3616 = !DILocation(line: 481, column: 35, scope: !3578, inlinedAt: !3579)
!3617 = !DILocation(line: 481, column: 42, scope: !3578, inlinedAt: !3579)
!3618 = !DILocation(line: 474, column: 23, scope: !3573, inlinedAt: !3577)
!3619 = !DILocation(line: 474, column: 29, scope: !3573, inlinedAt: !3577)
!3620 = !DILocation(line: 474, column: 36, scope: !3573, inlinedAt: !3577)
!3621 = !DILocation(line: 474, column: 9, scope: !3573, inlinedAt: !3577)
!3622 = !DILocation(line: 545, column: 4, scope: !3580, inlinedAt: !3553)
!3623 = !DILocation(line: 547, column: 25, scope: !3548, inlinedAt: !3553)
!3624 = !DILocation(line: 348, column: 7, scope: !3625, inlinedAt: !3571)
!3625 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 348, column: 6)
!3626 = !DILocation(line: 348, column: 6, scope: !3567, inlinedAt: !3571)
!3627 = !DILocation(line: 349, column: 3, scope: !3625, inlinedAt: !3571)
!3628 = !DILocation(line: 351, column: 6, scope: !3629, inlinedAt: !3571)
!3629 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 351, column: 6)
!3630 = !DILocation(line: 351, column: 11, scope: !3629, inlinedAt: !3571)
!3631 = !DILocation(line: 351, column: 6, scope: !3567, inlinedAt: !3571)
!3632 = !DILocation(line: 352, column: 3, scope: !3629, inlinedAt: !3571)
!3633 = !DILocation(line: 354, column: 32, scope: !3634, inlinedAt: !3571)
!3634 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 354, column: 6)
!3635 = !DILocation(line: 354, column: 37, scope: !3634, inlinedAt: !3571)
!3636 = !DILocation(line: 354, column: 42, scope: !3634, inlinedAt: !3571)
!3637 = !DILocation(line: 354, column: 45, scope: !3634, inlinedAt: !3571)
!3638 = !DILocation(line: 354, column: 50, scope: !3634, inlinedAt: !3571)
!3639 = !DILocation(line: 354, column: 6, scope: !3567, inlinedAt: !3571)
!3640 = !DILocation(line: 355, column: 3, scope: !3634, inlinedAt: !3571)
!3641 = !DILocation(line: 356, column: 32, scope: !3642, inlinedAt: !3571)
!3642 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 356, column: 6)
!3643 = !DILocation(line: 356, column: 37, scope: !3642, inlinedAt: !3571)
!3644 = !DILocation(line: 356, column: 43, scope: !3642, inlinedAt: !3571)
!3645 = !DILocation(line: 356, column: 46, scope: !3642, inlinedAt: !3571)
!3646 = !DILocation(line: 356, column: 51, scope: !3642, inlinedAt: !3571)
!3647 = !DILocation(line: 356, column: 6, scope: !3567, inlinedAt: !3571)
!3648 = !DILocation(line: 357, column: 3, scope: !3642, inlinedAt: !3571)
!3649 = !DILocation(line: 358, column: 6, scope: !3650, inlinedAt: !3571)
!3650 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 358, column: 6)
!3651 = !DILocation(line: 358, column: 11, scope: !3650, inlinedAt: !3571)
!3652 = !DILocation(line: 358, column: 6, scope: !3567, inlinedAt: !3571)
!3653 = !DILocation(line: 358, column: 26, scope: !3650, inlinedAt: !3571)
!3654 = !DILocation(line: 359, column: 6, scope: !3655, inlinedAt: !3571)
!3655 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 359, column: 6)
!3656 = !DILocation(line: 359, column: 11, scope: !3655, inlinedAt: !3571)
!3657 = !DILocation(line: 359, column: 6, scope: !3567, inlinedAt: !3571)
!3658 = !DILocation(line: 359, column: 26, scope: !3655, inlinedAt: !3571)
!3659 = !DILocation(line: 360, column: 6, scope: !3660, inlinedAt: !3571)
!3660 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 360, column: 6)
!3661 = !DILocation(line: 360, column: 11, scope: !3660, inlinedAt: !3571)
!3662 = !DILocation(line: 360, column: 6, scope: !3567, inlinedAt: !3571)
!3663 = !DILocation(line: 360, column: 26, scope: !3660, inlinedAt: !3571)
!3664 = !DILocation(line: 361, column: 6, scope: !3665, inlinedAt: !3571)
!3665 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 361, column: 6)
!3666 = !DILocation(line: 361, column: 11, scope: !3665, inlinedAt: !3571)
!3667 = !DILocation(line: 361, column: 6, scope: !3567, inlinedAt: !3571)
!3668 = !DILocation(line: 361, column: 26, scope: !3665, inlinedAt: !3571)
!3669 = !DILocation(line: 362, column: 6, scope: !3670, inlinedAt: !3571)
!3670 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 362, column: 6)
!3671 = !DILocation(line: 362, column: 11, scope: !3670, inlinedAt: !3571)
!3672 = !DILocation(line: 362, column: 6, scope: !3567, inlinedAt: !3571)
!3673 = !DILocation(line: 362, column: 26, scope: !3670, inlinedAt: !3571)
!3674 = !DILocation(line: 363, column: 6, scope: !3675, inlinedAt: !3571)
!3675 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 363, column: 6)
!3676 = !DILocation(line: 363, column: 11, scope: !3675, inlinedAt: !3571)
!3677 = !DILocation(line: 363, column: 6, scope: !3567, inlinedAt: !3571)
!3678 = !DILocation(line: 363, column: 26, scope: !3675, inlinedAt: !3571)
!3679 = !DILocation(line: 364, column: 6, scope: !3680, inlinedAt: !3571)
!3680 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 364, column: 6)
!3681 = !DILocation(line: 364, column: 11, scope: !3680, inlinedAt: !3571)
!3682 = !DILocation(line: 364, column: 6, scope: !3567, inlinedAt: !3571)
!3683 = !DILocation(line: 364, column: 26, scope: !3680, inlinedAt: !3571)
!3684 = !DILocation(line: 365, column: 6, scope: !3685, inlinedAt: !3571)
!3685 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 365, column: 6)
!3686 = !DILocation(line: 365, column: 11, scope: !3685, inlinedAt: !3571)
!3687 = !DILocation(line: 365, column: 6, scope: !3567, inlinedAt: !3571)
!3688 = !DILocation(line: 365, column: 26, scope: !3685, inlinedAt: !3571)
!3689 = !DILocation(line: 366, column: 6, scope: !3690, inlinedAt: !3571)
!3690 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 366, column: 6)
!3691 = !DILocation(line: 366, column: 11, scope: !3690, inlinedAt: !3571)
!3692 = !DILocation(line: 366, column: 6, scope: !3567, inlinedAt: !3571)
!3693 = !DILocation(line: 366, column: 26, scope: !3690, inlinedAt: !3571)
!3694 = !DILocation(line: 367, column: 6, scope: !3695, inlinedAt: !3571)
!3695 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 367, column: 6)
!3696 = !DILocation(line: 367, column: 11, scope: !3695, inlinedAt: !3571)
!3697 = !DILocation(line: 367, column: 6, scope: !3567, inlinedAt: !3571)
!3698 = !DILocation(line: 367, column: 26, scope: !3695, inlinedAt: !3571)
!3699 = !DILocation(line: 368, column: 6, scope: !3700, inlinedAt: !3571)
!3700 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 368, column: 6)
!3701 = !DILocation(line: 368, column: 11, scope: !3700, inlinedAt: !3571)
!3702 = !DILocation(line: 368, column: 6, scope: !3567, inlinedAt: !3571)
!3703 = !DILocation(line: 368, column: 26, scope: !3700, inlinedAt: !3571)
!3704 = !DILocation(line: 369, column: 6, scope: !3705, inlinedAt: !3571)
!3705 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 369, column: 6)
!3706 = !DILocation(line: 369, column: 11, scope: !3705, inlinedAt: !3571)
!3707 = !DILocation(line: 369, column: 6, scope: !3567, inlinedAt: !3571)
!3708 = !DILocation(line: 369, column: 26, scope: !3705, inlinedAt: !3571)
!3709 = !DILocation(line: 370, column: 6, scope: !3710, inlinedAt: !3571)
!3710 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 370, column: 6)
!3711 = !DILocation(line: 370, column: 11, scope: !3710, inlinedAt: !3571)
!3712 = !DILocation(line: 370, column: 6, scope: !3567, inlinedAt: !3571)
!3713 = !DILocation(line: 370, column: 26, scope: !3710, inlinedAt: !3571)
!3714 = !DILocation(line: 371, column: 6, scope: !3715, inlinedAt: !3571)
!3715 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 371, column: 6)
!3716 = !DILocation(line: 371, column: 11, scope: !3715, inlinedAt: !3571)
!3717 = !DILocation(line: 371, column: 6, scope: !3567, inlinedAt: !3571)
!3718 = !DILocation(line: 371, column: 26, scope: !3715, inlinedAt: !3571)
!3719 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !3571)
!3720 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 372, column: 6)
!3721 = !DILocation(line: 372, column: 11, scope: !3720, inlinedAt: !3571)
!3722 = !DILocation(line: 372, column: 6, scope: !3567, inlinedAt: !3571)
!3723 = !DILocation(line: 372, column: 26, scope: !3720, inlinedAt: !3571)
!3724 = !DILocation(line: 373, column: 6, scope: !3725, inlinedAt: !3571)
!3725 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 373, column: 6)
!3726 = !DILocation(line: 373, column: 11, scope: !3725, inlinedAt: !3571)
!3727 = !DILocation(line: 373, column: 6, scope: !3567, inlinedAt: !3571)
!3728 = !DILocation(line: 373, column: 26, scope: !3725, inlinedAt: !3571)
!3729 = !DILocation(line: 374, column: 6, scope: !3730, inlinedAt: !3571)
!3730 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 374, column: 6)
!3731 = !DILocation(line: 374, column: 11, scope: !3730, inlinedAt: !3571)
!3732 = !DILocation(line: 374, column: 6, scope: !3567, inlinedAt: !3571)
!3733 = !DILocation(line: 374, column: 26, scope: !3730, inlinedAt: !3571)
!3734 = !DILocation(line: 375, column: 6, scope: !3735, inlinedAt: !3571)
!3735 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 375, column: 6)
!3736 = !DILocation(line: 375, column: 11, scope: !3735, inlinedAt: !3571)
!3737 = !DILocation(line: 375, column: 6, scope: !3567, inlinedAt: !3571)
!3738 = !DILocation(line: 375, column: 27, scope: !3735, inlinedAt: !3571)
!3739 = !DILocation(line: 376, column: 6, scope: !3740, inlinedAt: !3571)
!3740 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 376, column: 6)
!3741 = !DILocation(line: 376, column: 11, scope: !3740, inlinedAt: !3571)
!3742 = !DILocation(line: 376, column: 6, scope: !3567, inlinedAt: !3571)
!3743 = !DILocation(line: 376, column: 32, scope: !3740, inlinedAt: !3571)
!3744 = !DILocation(line: 377, column: 6, scope: !3745, inlinedAt: !3571)
!3745 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 377, column: 6)
!3746 = !DILocation(line: 377, column: 11, scope: !3745, inlinedAt: !3571)
!3747 = !DILocation(line: 377, column: 6, scope: !3567, inlinedAt: !3571)
!3748 = !DILocation(line: 377, column: 32, scope: !3745, inlinedAt: !3571)
!3749 = !DILocation(line: 378, column: 6, scope: !3750, inlinedAt: !3571)
!3750 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 378, column: 6)
!3751 = !DILocation(line: 378, column: 11, scope: !3750, inlinedAt: !3571)
!3752 = !DILocation(line: 378, column: 6, scope: !3567, inlinedAt: !3571)
!3753 = !DILocation(line: 378, column: 32, scope: !3750, inlinedAt: !3571)
!3754 = !DILocation(line: 379, column: 6, scope: !3755, inlinedAt: !3571)
!3755 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 379, column: 6)
!3756 = !DILocation(line: 379, column: 11, scope: !3755, inlinedAt: !3571)
!3757 = !DILocation(line: 379, column: 6, scope: !3567, inlinedAt: !3571)
!3758 = !DILocation(line: 379, column: 33, scope: !3755, inlinedAt: !3571)
!3759 = !DILocation(line: 380, column: 6, scope: !3760, inlinedAt: !3571)
!3760 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 380, column: 6)
!3761 = !DILocation(line: 380, column: 11, scope: !3760, inlinedAt: !3571)
!3762 = !DILocation(line: 380, column: 6, scope: !3567, inlinedAt: !3571)
!3763 = !DILocation(line: 380, column: 33, scope: !3760, inlinedAt: !3571)
!3764 = !DILocation(line: 381, column: 6, scope: !3765, inlinedAt: !3571)
!3765 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 381, column: 6)
!3766 = !DILocation(line: 381, column: 11, scope: !3765, inlinedAt: !3571)
!3767 = !DILocation(line: 381, column: 6, scope: !3567, inlinedAt: !3571)
!3768 = !DILocation(line: 381, column: 33, scope: !3765, inlinedAt: !3571)
!3769 = !DILocation(line: 382, column: 2, scope: !3770, inlinedAt: !3571)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !60, line: 382, column: 2)
!3771 = distinct !DILexicalBlock(scope: !3567, file: !60, line: 382, column: 2)
!3772 = !{i32 -2144642443, i32 -2144642414, i32 -2144642368, i32 -2144642310, i32 -2144642256, i32 -2144642202, i32 -2144642147, i32 -2144642116}
!3773 = !DILocation(line: 382, column: 2, scope: !3774, inlinedAt: !3571)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !60, line: 382, column: 2)
!3775 = distinct !DILexicalBlock(scope: !3771, file: !60, line: 382, column: 2)
!3776 = !{i32 -2144641673, i32 -2144641666, i32 -2144641612, i32 -2144641581, i32 -2144641551}
!3777 = !DILocation(line: 382, column: 2, scope: !3775, inlinedAt: !3571)
!3778 = !DILocation(line: 386, column: 1, scope: !3567, inlinedAt: !3571)
!3779 = !DILocation(line: 547, column: 9, scope: !3548, inlinedAt: !3553)
!3780 = !DILocation(line: 549, column: 8, scope: !3781, inlinedAt: !3553)
!3781 = distinct !DILexicalBlock(scope: !3548, file: !60, line: 549, column: 7)
!3782 = !DILocation(line: 549, column: 7, scope: !3548, inlinedAt: !3553)
!3783 = !DILocation(line: 550, column: 4, scope: !3781, inlinedAt: !3553)
!3784 = !DILocation(line: 553, column: 33, scope: !3548, inlinedAt: !3553)
!3785 = !DILocation(line: 325, column: 6, scope: !3786, inlinedAt: !3565)
!3786 = distinct !DILexicalBlock(scope: !3561, file: !60, line: 325, column: 6)
!3787 = !DILocation(line: 325, column: 6, scope: !3561, inlinedAt: !3565)
!3788 = !DILocation(line: 326, column: 3, scope: !3786, inlinedAt: !3565)
!3789 = !DILocation(line: 332, column: 9, scope: !3561, inlinedAt: !3565)
!3790 = !DILocation(line: 332, column: 15, scope: !3561, inlinedAt: !3565)
!3791 = !DILocation(line: 332, column: 2, scope: !3561, inlinedAt: !3565)
!3792 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !3565)
!3793 = !DILocation(line: 553, column: 5, scope: !3548, inlinedAt: !3553)
!3794 = !DILocation(line: 553, column: 41, scope: !3548, inlinedAt: !3553)
!3795 = !DILocation(line: 554, column: 5, scope: !3548, inlinedAt: !3553)
!3796 = !DILocation(line: 554, column: 12, scope: !3548, inlinedAt: !3553)
!3797 = !DILocation(line: 448, column: 31, scope: !3543, inlinedAt: !3547)
!3798 = !DILocation(line: 448, column: 34, scope: !3543, inlinedAt: !3547)
!3799 = !DILocation(line: 448, column: 14, scope: !3543, inlinedAt: !3547)
!3800 = !DILocation(line: 450, column: 22, scope: !3543, inlinedAt: !3547)
!3801 = !DILocation(line: 450, column: 25, scope: !3543, inlinedAt: !3547)
!3802 = !DILocation(line: 450, column: 30, scope: !3543, inlinedAt: !3547)
!3803 = !DILocation(line: 450, column: 36, scope: !3543, inlinedAt: !3547)
!3804 = !DILocation(line: 450, column: 8, scope: !3543, inlinedAt: !3547)
!3805 = !DILocation(line: 450, column: 6, scope: !3543, inlinedAt: !3547)
!3806 = !DILocation(line: 451, column: 9, scope: !3543, inlinedAt: !3547)
!3807 = !DILocation(line: 552, column: 3, scope: !3548, inlinedAt: !3553)
!3808 = !DILocation(line: 557, column: 19, scope: !3550, inlinedAt: !3553)
!3809 = !DILocation(line: 557, column: 25, scope: !3550, inlinedAt: !3553)
!3810 = !DILocation(line: 557, column: 9, scope: !3550, inlinedAt: !3553)
!3811 = !DILocation(line: 557, column: 2, scope: !3550, inlinedAt: !3553)
!3812 = !DILocation(line: 558, column: 1, scope: !3550, inlinedAt: !3553)
!3813 = !DILocation(line: 256, column: 7, scope: !3541)
!3814 = !DILocation(line: 257, column: 6, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 257, column: 6)
!3816 = !DILocation(line: 257, column: 6, scope: !3541)
!3817 = !DILocation(line: 258, column: 53, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 257, column: 12)
!3819 = !DILocation(line: 258, column: 9, scope: !3818)
!3820 = !DILocation(line: 258, column: 7, scope: !3818)
!3821 = !DILocation(line: 259, column: 8, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 259, column: 7)
!3823 = !DILocation(line: 259, column: 7, scope: !3818)
!3824 = !DILocation(line: 260, column: 18, scope: !3822)
!3825 = !DILocation(line: 260, column: 34, scope: !3822)
!3826 = !DILocation(line: 260, column: 10, scope: !3822)
!3827 = !DILocation(line: 260, column: 8, scope: !3822)
!3828 = !DILocation(line: 260, column: 4, scope: !3822)
!3829 = !DILocation(line: 261, column: 9, scope: !3818)
!3830 = !DILocation(line: 261, column: 3, scope: !3818)
!3831 = !DILocation(line: 262, column: 2, scope: !3818)
!3832 = !DILocation(line: 264, column: 9, scope: !3541)
!3833 = !DILocation(line: 264, column: 2, scope: !3541)
!3834 = distinct !DISubprogram(name: "HYPERVISOR_xen_version", scope: !3439, file: !3439, line: 362, type: !3835, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!73, !73, !76}
!3837 = !DILocalVariable(name: "cmd", arg: 1, scope: !3834, file: !3439, line: 362, type: !73)
!3838 = !DILocation(line: 362, column: 28, scope: !3834)
!3839 = !DILocalVariable(name: "arg", arg: 2, scope: !3834, file: !3439, line: 362, type: !76)
!3840 = !DILocation(line: 362, column: 39, scope: !3834)
!3841 = !DILocalVariable(name: "__res", scope: !3842, file: !3439, line: 364, type: !74)
!3842 = distinct !DILexicalBlock(scope: !3834, file: !3439, line: 364, column: 9)
!3843 = !DILocation(line: 364, column: 9, scope: !3842)
!3844 = !DILocalVariable(name: "__arg1", scope: !3842, file: !3439, line: 364, type: !74)
!3845 = !DILocalVariable(name: "__arg2", scope: !3842, file: !3439, line: 364, type: !74)
!3846 = !DILocalVariable(name: "__arg3", scope: !3842, file: !3439, line: 364, type: !74)
!3847 = !DILocalVariable(name: "__arg4", scope: !3842, file: !3439, line: 364, type: !74)
!3848 = !DILocalVariable(name: "__arg5", scope: !3842, file: !3439, line: 364, type: !74)
!3849 = !{i32 -2142925738}
!3850 = !DILocation(line: 364, column: 2, scope: !3834)
!3851 = distinct !DISubprogram(name: "get_order", scope: !3852, file: !3852, line: 29, type: !3853, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3852 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!73, !74}
!3855 = !DILocalVariable(name: "x", arg: 1, scope: !3856, file: !3857, line: 366, type: !455)
!3856 = distinct !DISubprogram(name: "fls64", scope: !3857, file: !3857, line: 366, type: !3858, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3857 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!73, !455}
!3860 = !DILocation(line: 366, column: 40, scope: !3856, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 46, column: 9, scope: !3851)
!3862 = !DILocalVariable(name: "bitpos", scope: !3856, file: !3857, line: 368, type: !73)
!3863 = !DILocation(line: 368, column: 6, scope: !3856, inlinedAt: !3861)
!3864 = !DILocalVariable(name: "size", arg: 1, scope: !3851, file: !3852, line: 29, type: !74)
!3865 = !DILocation(line: 29, column: 63, scope: !3851)
!3866 = !DILocation(line: 31, column: 27, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3851, file: !3852, line: 31, column: 6)
!3868 = !DILocation(line: 31, column: 6, scope: !3867)
!3869 = !DILocation(line: 31, column: 6, scope: !3851)
!3870 = !DILocation(line: 32, column: 8, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !3852, line: 32, column: 7)
!3872 = distinct !DILexicalBlock(scope: !3867, file: !3852, line: 31, column: 34)
!3873 = !DILocation(line: 32, column: 7, scope: !3872)
!3874 = !DILocation(line: 33, column: 4, scope: !3871)
!3875 = !DILocation(line: 35, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3872, file: !3852, line: 35, column: 7)
!3877 = !DILocation(line: 35, column: 12, scope: !3876)
!3878 = !DILocation(line: 35, column: 7, scope: !3872)
!3879 = !DILocation(line: 36, column: 4, scope: !3876)
!3880 = !DILocation(line: 38, column: 10, scope: !3872)
!3881 = !DILocation(line: 38, column: 28, scope: !3872)
!3882 = !DILocation(line: 38, column: 41, scope: !3872)
!3883 = !DILocation(line: 38, column: 3, scope: !3872)
!3884 = !DILocation(line: 41, column: 6, scope: !3851)
!3885 = !DILocation(line: 42, column: 7, scope: !3851)
!3886 = !DILocation(line: 46, column: 15, scope: !3851)
!3887 = !DILocation(line: 374, column: 2, scope: !3856, inlinedAt: !3861)
!3888 = !DILocation(line: 376, column: 14, scope: !3856, inlinedAt: !3861)
!3889 = !{i32 312869}
!3890 = !DILocation(line: 377, column: 9, scope: !3856, inlinedAt: !3861)
!3891 = !DILocation(line: 377, column: 16, scope: !3856, inlinedAt: !3861)
!3892 = !DILocation(line: 46, column: 2, scope: !3851)
!3893 = !DILocation(line: 48, column: 1, scope: !3851)
!3894 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3895, file: !3895, line: 30, type: !3896, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3895 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!73, !454}
!3898 = !DILocation(line: 366, column: 40, scope: !3856, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 32, column: 9, scope: !3894)
!3900 = !DILocation(line: 368, column: 6, scope: !3856, inlinedAt: !3899)
!3901 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !3895, line: 30, type: !454)
!3902 = !DILocation(line: 30, column: 21, scope: !3894)
!3903 = !DILocation(line: 32, column: 15, scope: !3894)
!3904 = !DILocation(line: 374, column: 2, scope: !3856, inlinedAt: !3899)
!3905 = !DILocation(line: 376, column: 14, scope: !3856, inlinedAt: !3899)
!3906 = !DILocation(line: 377, column: 9, scope: !3856, inlinedAt: !3899)
!3907 = !DILocation(line: 377, column: 16, scope: !3856, inlinedAt: !3899)
!3908 = !DILocation(line: 32, column: 18, scope: !3894)
!3909 = !DILocation(line: 32, column: 2, scope: !3894)
!3910 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2008, file: !2008, line: 137, type: !3911, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!76, !928, !243, !105, !75}
!3913 = !DILocalVariable(name: "s", arg: 1, scope: !3910, file: !2008, line: 137, type: !928)
!3914 = !DILocation(line: 137, column: 54, scope: !3910)
!3915 = !DILocalVariable(name: "object", arg: 2, scope: !3910, file: !2008, line: 137, type: !243)
!3916 = !DILocation(line: 137, column: 69, scope: !3910)
!3917 = !DILocalVariable(name: "size", arg: 3, scope: !3910, file: !2008, line: 138, type: !105)
!3918 = !DILocation(line: 138, column: 12, scope: !3910)
!3919 = !DILocalVariable(name: "flags", arg: 4, scope: !3910, file: !2008, line: 138, type: !75)
!3920 = !DILocation(line: 138, column: 24, scope: !3910)
!3921 = !DILocation(line: 140, column: 17, scope: !3910)
!3922 = !DILocation(line: 140, column: 2, scope: !3910)
!3923 = distinct !DISubprogram(name: "changeset_show", scope: !3, file: !3, line: 269, type: !94, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3924 = !DILocation(line: 445, column: 72, scope: !3543, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 552, column: 10, scope: !3548, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 274, column: 9, scope: !3923)
!3927 = !DILocation(line: 446, column: 9, scope: !3543, inlinedAt: !3925)
!3928 = !DILocation(line: 446, column: 23, scope: !3543, inlinedAt: !3925)
!3929 = !DILocation(line: 448, column: 8, scope: !3543, inlinedAt: !3925)
!3930 = !DILocation(line: 318, column: 67, scope: !3561, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 553, column: 20, scope: !3548, inlinedAt: !3926)
!3932 = !DILocation(line: 346, column: 58, scope: !3567, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 547, column: 11, scope: !3548, inlinedAt: !3926)
!3934 = !DILocation(line: 472, column: 28, scope: !3573, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 481, column: 9, scope: !3578, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 545, column: 11, scope: !3580, inlinedAt: !3926)
!3937 = !DILocation(line: 472, column: 40, scope: !3573, inlinedAt: !3935)
!3938 = !DILocation(line: 472, column: 60, scope: !3573, inlinedAt: !3935)
!3939 = !DILocation(line: 478, column: 51, scope: !3578, inlinedAt: !3936)
!3940 = !DILocation(line: 478, column: 63, scope: !3578, inlinedAt: !3936)
!3941 = !DILocation(line: 480, column: 15, scope: !3578, inlinedAt: !3936)
!3942 = !DILocation(line: 538, column: 45, scope: !3550, inlinedAt: !3926)
!3943 = !DILocation(line: 538, column: 57, scope: !3550, inlinedAt: !3926)
!3944 = !DILocation(line: 542, column: 16, scope: !3548, inlinedAt: !3926)
!3945 = !DILocalVariable(name: "attr", arg: 1, scope: !3923, file: !3, line: 269, type: !78)
!3946 = !DILocation(line: 269, column: 54, scope: !3923)
!3947 = !DILocalVariable(name: "buffer", arg: 2, scope: !3923, file: !3, line: 269, type: !100)
!3948 = !DILocation(line: 269, column: 66, scope: !3923)
!3949 = !DILocalVariable(name: "ret", scope: !3923, file: !3, line: 271, type: !73)
!3950 = !DILocation(line: 271, column: 6, scope: !3923)
!3951 = !DILocalVariable(name: "cset", scope: !3923, file: !3, line: 272, type: !100)
!3952 = !DILocation(line: 272, column: 8, scope: !3923)
!3953 = !DILocation(line: 540, column: 27, scope: !3549, inlinedAt: !3926)
!3954 = !DILocation(line: 540, column: 6, scope: !3549, inlinedAt: !3926)
!3955 = !DILocation(line: 540, column: 6, scope: !3550, inlinedAt: !3926)
!3956 = !DILocation(line: 544, column: 7, scope: !3580, inlinedAt: !3926)
!3957 = !DILocation(line: 544, column: 12, scope: !3580, inlinedAt: !3926)
!3958 = !DILocation(line: 544, column: 7, scope: !3548, inlinedAt: !3926)
!3959 = !DILocation(line: 545, column: 25, scope: !3580, inlinedAt: !3926)
!3960 = !DILocation(line: 545, column: 31, scope: !3580, inlinedAt: !3926)
!3961 = !DILocation(line: 480, column: 33, scope: !3578, inlinedAt: !3936)
!3962 = !DILocation(line: 480, column: 23, scope: !3578, inlinedAt: !3936)
!3963 = !DILocation(line: 481, column: 29, scope: !3578, inlinedAt: !3936)
!3964 = !DILocation(line: 481, column: 35, scope: !3578, inlinedAt: !3936)
!3965 = !DILocation(line: 481, column: 42, scope: !3578, inlinedAt: !3936)
!3966 = !DILocation(line: 474, column: 23, scope: !3573, inlinedAt: !3935)
!3967 = !DILocation(line: 474, column: 29, scope: !3573, inlinedAt: !3935)
!3968 = !DILocation(line: 474, column: 36, scope: !3573, inlinedAt: !3935)
!3969 = !DILocation(line: 474, column: 9, scope: !3573, inlinedAt: !3935)
!3970 = !DILocation(line: 545, column: 4, scope: !3580, inlinedAt: !3926)
!3971 = !DILocation(line: 547, column: 25, scope: !3548, inlinedAt: !3926)
!3972 = !DILocation(line: 348, column: 7, scope: !3625, inlinedAt: !3933)
!3973 = !DILocation(line: 348, column: 6, scope: !3567, inlinedAt: !3933)
!3974 = !DILocation(line: 349, column: 3, scope: !3625, inlinedAt: !3933)
!3975 = !DILocation(line: 351, column: 6, scope: !3629, inlinedAt: !3933)
!3976 = !DILocation(line: 351, column: 11, scope: !3629, inlinedAt: !3933)
!3977 = !DILocation(line: 351, column: 6, scope: !3567, inlinedAt: !3933)
!3978 = !DILocation(line: 352, column: 3, scope: !3629, inlinedAt: !3933)
!3979 = !DILocation(line: 354, column: 32, scope: !3634, inlinedAt: !3933)
!3980 = !DILocation(line: 354, column: 37, scope: !3634, inlinedAt: !3933)
!3981 = !DILocation(line: 354, column: 42, scope: !3634, inlinedAt: !3933)
!3982 = !DILocation(line: 354, column: 45, scope: !3634, inlinedAt: !3933)
!3983 = !DILocation(line: 354, column: 50, scope: !3634, inlinedAt: !3933)
!3984 = !DILocation(line: 354, column: 6, scope: !3567, inlinedAt: !3933)
!3985 = !DILocation(line: 355, column: 3, scope: !3634, inlinedAt: !3933)
!3986 = !DILocation(line: 356, column: 32, scope: !3642, inlinedAt: !3933)
!3987 = !DILocation(line: 356, column: 37, scope: !3642, inlinedAt: !3933)
!3988 = !DILocation(line: 356, column: 43, scope: !3642, inlinedAt: !3933)
!3989 = !DILocation(line: 356, column: 46, scope: !3642, inlinedAt: !3933)
!3990 = !DILocation(line: 356, column: 51, scope: !3642, inlinedAt: !3933)
!3991 = !DILocation(line: 356, column: 6, scope: !3567, inlinedAt: !3933)
!3992 = !DILocation(line: 357, column: 3, scope: !3642, inlinedAt: !3933)
!3993 = !DILocation(line: 358, column: 6, scope: !3650, inlinedAt: !3933)
!3994 = !DILocation(line: 358, column: 11, scope: !3650, inlinedAt: !3933)
!3995 = !DILocation(line: 358, column: 6, scope: !3567, inlinedAt: !3933)
!3996 = !DILocation(line: 358, column: 26, scope: !3650, inlinedAt: !3933)
!3997 = !DILocation(line: 359, column: 6, scope: !3655, inlinedAt: !3933)
!3998 = !DILocation(line: 359, column: 11, scope: !3655, inlinedAt: !3933)
!3999 = !DILocation(line: 359, column: 6, scope: !3567, inlinedAt: !3933)
!4000 = !DILocation(line: 359, column: 26, scope: !3655, inlinedAt: !3933)
!4001 = !DILocation(line: 360, column: 6, scope: !3660, inlinedAt: !3933)
!4002 = !DILocation(line: 360, column: 11, scope: !3660, inlinedAt: !3933)
!4003 = !DILocation(line: 360, column: 6, scope: !3567, inlinedAt: !3933)
!4004 = !DILocation(line: 360, column: 26, scope: !3660, inlinedAt: !3933)
!4005 = !DILocation(line: 361, column: 6, scope: !3665, inlinedAt: !3933)
!4006 = !DILocation(line: 361, column: 11, scope: !3665, inlinedAt: !3933)
!4007 = !DILocation(line: 361, column: 6, scope: !3567, inlinedAt: !3933)
!4008 = !DILocation(line: 361, column: 26, scope: !3665, inlinedAt: !3933)
!4009 = !DILocation(line: 362, column: 6, scope: !3670, inlinedAt: !3933)
!4010 = !DILocation(line: 362, column: 11, scope: !3670, inlinedAt: !3933)
!4011 = !DILocation(line: 362, column: 6, scope: !3567, inlinedAt: !3933)
!4012 = !DILocation(line: 362, column: 26, scope: !3670, inlinedAt: !3933)
!4013 = !DILocation(line: 363, column: 6, scope: !3675, inlinedAt: !3933)
!4014 = !DILocation(line: 363, column: 11, scope: !3675, inlinedAt: !3933)
!4015 = !DILocation(line: 363, column: 6, scope: !3567, inlinedAt: !3933)
!4016 = !DILocation(line: 363, column: 26, scope: !3675, inlinedAt: !3933)
!4017 = !DILocation(line: 364, column: 6, scope: !3680, inlinedAt: !3933)
!4018 = !DILocation(line: 364, column: 11, scope: !3680, inlinedAt: !3933)
!4019 = !DILocation(line: 364, column: 6, scope: !3567, inlinedAt: !3933)
!4020 = !DILocation(line: 364, column: 26, scope: !3680, inlinedAt: !3933)
!4021 = !DILocation(line: 365, column: 6, scope: !3685, inlinedAt: !3933)
!4022 = !DILocation(line: 365, column: 11, scope: !3685, inlinedAt: !3933)
!4023 = !DILocation(line: 365, column: 6, scope: !3567, inlinedAt: !3933)
!4024 = !DILocation(line: 365, column: 26, scope: !3685, inlinedAt: !3933)
!4025 = !DILocation(line: 366, column: 6, scope: !3690, inlinedAt: !3933)
!4026 = !DILocation(line: 366, column: 11, scope: !3690, inlinedAt: !3933)
!4027 = !DILocation(line: 366, column: 6, scope: !3567, inlinedAt: !3933)
!4028 = !DILocation(line: 366, column: 26, scope: !3690, inlinedAt: !3933)
!4029 = !DILocation(line: 367, column: 6, scope: !3695, inlinedAt: !3933)
!4030 = !DILocation(line: 367, column: 11, scope: !3695, inlinedAt: !3933)
!4031 = !DILocation(line: 367, column: 6, scope: !3567, inlinedAt: !3933)
!4032 = !DILocation(line: 367, column: 26, scope: !3695, inlinedAt: !3933)
!4033 = !DILocation(line: 368, column: 6, scope: !3700, inlinedAt: !3933)
!4034 = !DILocation(line: 368, column: 11, scope: !3700, inlinedAt: !3933)
!4035 = !DILocation(line: 368, column: 6, scope: !3567, inlinedAt: !3933)
!4036 = !DILocation(line: 368, column: 26, scope: !3700, inlinedAt: !3933)
!4037 = !DILocation(line: 369, column: 6, scope: !3705, inlinedAt: !3933)
!4038 = !DILocation(line: 369, column: 11, scope: !3705, inlinedAt: !3933)
!4039 = !DILocation(line: 369, column: 6, scope: !3567, inlinedAt: !3933)
!4040 = !DILocation(line: 369, column: 26, scope: !3705, inlinedAt: !3933)
!4041 = !DILocation(line: 370, column: 6, scope: !3710, inlinedAt: !3933)
!4042 = !DILocation(line: 370, column: 11, scope: !3710, inlinedAt: !3933)
!4043 = !DILocation(line: 370, column: 6, scope: !3567, inlinedAt: !3933)
!4044 = !DILocation(line: 370, column: 26, scope: !3710, inlinedAt: !3933)
!4045 = !DILocation(line: 371, column: 6, scope: !3715, inlinedAt: !3933)
!4046 = !DILocation(line: 371, column: 11, scope: !3715, inlinedAt: !3933)
!4047 = !DILocation(line: 371, column: 6, scope: !3567, inlinedAt: !3933)
!4048 = !DILocation(line: 371, column: 26, scope: !3715, inlinedAt: !3933)
!4049 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !3933)
!4050 = !DILocation(line: 372, column: 11, scope: !3720, inlinedAt: !3933)
!4051 = !DILocation(line: 372, column: 6, scope: !3567, inlinedAt: !3933)
!4052 = !DILocation(line: 372, column: 26, scope: !3720, inlinedAt: !3933)
!4053 = !DILocation(line: 373, column: 6, scope: !3725, inlinedAt: !3933)
!4054 = !DILocation(line: 373, column: 11, scope: !3725, inlinedAt: !3933)
!4055 = !DILocation(line: 373, column: 6, scope: !3567, inlinedAt: !3933)
!4056 = !DILocation(line: 373, column: 26, scope: !3725, inlinedAt: !3933)
!4057 = !DILocation(line: 374, column: 6, scope: !3730, inlinedAt: !3933)
!4058 = !DILocation(line: 374, column: 11, scope: !3730, inlinedAt: !3933)
!4059 = !DILocation(line: 374, column: 6, scope: !3567, inlinedAt: !3933)
!4060 = !DILocation(line: 374, column: 26, scope: !3730, inlinedAt: !3933)
!4061 = !DILocation(line: 375, column: 6, scope: !3735, inlinedAt: !3933)
!4062 = !DILocation(line: 375, column: 11, scope: !3735, inlinedAt: !3933)
!4063 = !DILocation(line: 375, column: 6, scope: !3567, inlinedAt: !3933)
!4064 = !DILocation(line: 375, column: 27, scope: !3735, inlinedAt: !3933)
!4065 = !DILocation(line: 376, column: 6, scope: !3740, inlinedAt: !3933)
!4066 = !DILocation(line: 376, column: 11, scope: !3740, inlinedAt: !3933)
!4067 = !DILocation(line: 376, column: 6, scope: !3567, inlinedAt: !3933)
!4068 = !DILocation(line: 376, column: 32, scope: !3740, inlinedAt: !3933)
!4069 = !DILocation(line: 377, column: 6, scope: !3745, inlinedAt: !3933)
!4070 = !DILocation(line: 377, column: 11, scope: !3745, inlinedAt: !3933)
!4071 = !DILocation(line: 377, column: 6, scope: !3567, inlinedAt: !3933)
!4072 = !DILocation(line: 377, column: 32, scope: !3745, inlinedAt: !3933)
!4073 = !DILocation(line: 378, column: 6, scope: !3750, inlinedAt: !3933)
!4074 = !DILocation(line: 378, column: 11, scope: !3750, inlinedAt: !3933)
!4075 = !DILocation(line: 378, column: 6, scope: !3567, inlinedAt: !3933)
!4076 = !DILocation(line: 378, column: 32, scope: !3750, inlinedAt: !3933)
!4077 = !DILocation(line: 379, column: 6, scope: !3755, inlinedAt: !3933)
!4078 = !DILocation(line: 379, column: 11, scope: !3755, inlinedAt: !3933)
!4079 = !DILocation(line: 379, column: 6, scope: !3567, inlinedAt: !3933)
!4080 = !DILocation(line: 379, column: 33, scope: !3755, inlinedAt: !3933)
!4081 = !DILocation(line: 380, column: 6, scope: !3760, inlinedAt: !3933)
!4082 = !DILocation(line: 380, column: 11, scope: !3760, inlinedAt: !3933)
!4083 = !DILocation(line: 380, column: 6, scope: !3567, inlinedAt: !3933)
!4084 = !DILocation(line: 380, column: 33, scope: !3760, inlinedAt: !3933)
!4085 = !DILocation(line: 381, column: 6, scope: !3765, inlinedAt: !3933)
!4086 = !DILocation(line: 381, column: 11, scope: !3765, inlinedAt: !3933)
!4087 = !DILocation(line: 381, column: 6, scope: !3567, inlinedAt: !3933)
!4088 = !DILocation(line: 381, column: 33, scope: !3765, inlinedAt: !3933)
!4089 = !DILocation(line: 382, column: 2, scope: !3770, inlinedAt: !3933)
!4090 = !DILocation(line: 382, column: 2, scope: !3774, inlinedAt: !3933)
!4091 = !DILocation(line: 382, column: 2, scope: !3775, inlinedAt: !3933)
!4092 = !DILocation(line: 386, column: 1, scope: !3567, inlinedAt: !3933)
!4093 = !DILocation(line: 547, column: 9, scope: !3548, inlinedAt: !3926)
!4094 = !DILocation(line: 549, column: 8, scope: !3781, inlinedAt: !3926)
!4095 = !DILocation(line: 549, column: 7, scope: !3548, inlinedAt: !3926)
!4096 = !DILocation(line: 550, column: 4, scope: !3781, inlinedAt: !3926)
!4097 = !DILocation(line: 553, column: 33, scope: !3548, inlinedAt: !3926)
!4098 = !DILocation(line: 325, column: 6, scope: !3786, inlinedAt: !3931)
!4099 = !DILocation(line: 325, column: 6, scope: !3561, inlinedAt: !3931)
!4100 = !DILocation(line: 326, column: 3, scope: !3786, inlinedAt: !3931)
!4101 = !DILocation(line: 332, column: 9, scope: !3561, inlinedAt: !3931)
!4102 = !DILocation(line: 332, column: 15, scope: !3561, inlinedAt: !3931)
!4103 = !DILocation(line: 332, column: 2, scope: !3561, inlinedAt: !3931)
!4104 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !3931)
!4105 = !DILocation(line: 553, column: 5, scope: !3548, inlinedAt: !3926)
!4106 = !DILocation(line: 553, column: 41, scope: !3548, inlinedAt: !3926)
!4107 = !DILocation(line: 554, column: 5, scope: !3548, inlinedAt: !3926)
!4108 = !DILocation(line: 554, column: 12, scope: !3548, inlinedAt: !3926)
!4109 = !DILocation(line: 448, column: 31, scope: !3543, inlinedAt: !3925)
!4110 = !DILocation(line: 448, column: 34, scope: !3543, inlinedAt: !3925)
!4111 = !DILocation(line: 448, column: 14, scope: !3543, inlinedAt: !3925)
!4112 = !DILocation(line: 450, column: 22, scope: !3543, inlinedAt: !3925)
!4113 = !DILocation(line: 450, column: 25, scope: !3543, inlinedAt: !3925)
!4114 = !DILocation(line: 450, column: 30, scope: !3543, inlinedAt: !3925)
!4115 = !DILocation(line: 450, column: 36, scope: !3543, inlinedAt: !3925)
!4116 = !DILocation(line: 450, column: 8, scope: !3543, inlinedAt: !3925)
!4117 = !DILocation(line: 450, column: 6, scope: !3543, inlinedAt: !3925)
!4118 = !DILocation(line: 451, column: 9, scope: !3543, inlinedAt: !3925)
!4119 = !DILocation(line: 552, column: 3, scope: !3548, inlinedAt: !3926)
!4120 = !DILocation(line: 557, column: 19, scope: !3550, inlinedAt: !3926)
!4121 = !DILocation(line: 557, column: 25, scope: !3550, inlinedAt: !3926)
!4122 = !DILocation(line: 557, column: 9, scope: !3550, inlinedAt: !3926)
!4123 = !DILocation(line: 557, column: 2, scope: !3550, inlinedAt: !3926)
!4124 = !DILocation(line: 558, column: 1, scope: !3550, inlinedAt: !3926)
!4125 = !DILocation(line: 274, column: 7, scope: !3923)
!4126 = !DILocation(line: 275, column: 6, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 275, column: 6)
!4128 = !DILocation(line: 275, column: 6, scope: !3923)
!4129 = !DILocation(line: 276, column: 50, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 275, column: 12)
!4131 = !DILocation(line: 276, column: 9, scope: !4130)
!4132 = !DILocation(line: 276, column: 7, scope: !4130)
!4133 = !DILocation(line: 277, column: 8, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 277, column: 7)
!4135 = !DILocation(line: 277, column: 7, scope: !4130)
!4136 = !DILocation(line: 278, column: 18, scope: !4134)
!4137 = !DILocation(line: 278, column: 34, scope: !4134)
!4138 = !DILocation(line: 278, column: 10, scope: !4134)
!4139 = !DILocation(line: 278, column: 8, scope: !4134)
!4140 = !DILocation(line: 278, column: 4, scope: !4134)
!4141 = !DILocation(line: 279, column: 9, scope: !4130)
!4142 = !DILocation(line: 279, column: 3, scope: !4130)
!4143 = !DILocation(line: 280, column: 2, scope: !4130)
!4144 = !DILocation(line: 282, column: 9, scope: !3923)
!4145 = !DILocation(line: 282, column: 2, scope: !3923)
!4146 = distinct !DISubprogram(name: "virtual_start_show", scope: !3, file: !3, line: 287, type: !94, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4147 = !DILocation(line: 445, column: 72, scope: !3543, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 552, column: 10, scope: !3548, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 292, column: 10, scope: !4146)
!4150 = !DILocation(line: 446, column: 9, scope: !3543, inlinedAt: !4148)
!4151 = !DILocation(line: 446, column: 23, scope: !3543, inlinedAt: !4148)
!4152 = !DILocation(line: 448, column: 8, scope: !3543, inlinedAt: !4148)
!4153 = !DILocation(line: 318, column: 67, scope: !3561, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 553, column: 20, scope: !3548, inlinedAt: !4149)
!4155 = !DILocation(line: 346, column: 58, scope: !3567, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 547, column: 11, scope: !3548, inlinedAt: !4149)
!4157 = !DILocation(line: 472, column: 28, scope: !3573, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 481, column: 9, scope: !3578, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 545, column: 11, scope: !3580, inlinedAt: !4149)
!4160 = !DILocation(line: 472, column: 40, scope: !3573, inlinedAt: !4158)
!4161 = !DILocation(line: 472, column: 60, scope: !3573, inlinedAt: !4158)
!4162 = !DILocation(line: 478, column: 51, scope: !3578, inlinedAt: !4159)
!4163 = !DILocation(line: 478, column: 63, scope: !3578, inlinedAt: !4159)
!4164 = !DILocation(line: 480, column: 15, scope: !3578, inlinedAt: !4159)
!4165 = !DILocation(line: 538, column: 45, scope: !3550, inlinedAt: !4149)
!4166 = !DILocation(line: 538, column: 57, scope: !3550, inlinedAt: !4149)
!4167 = !DILocation(line: 542, column: 16, scope: !3548, inlinedAt: !4149)
!4168 = !DILocalVariable(name: "attr", arg: 1, scope: !4146, file: !3, line: 287, type: !78)
!4169 = !DILocation(line: 287, column: 58, scope: !4146)
!4170 = !DILocalVariable(name: "buffer", arg: 2, scope: !4146, file: !3, line: 287, type: !100)
!4171 = !DILocation(line: 287, column: 70, scope: !4146)
!4172 = !DILocalVariable(name: "ret", scope: !4146, file: !3, line: 289, type: !73)
!4173 = !DILocation(line: 289, column: 6, scope: !4146)
!4174 = !DILocalVariable(name: "parms", scope: !4146, file: !3, line: 290, type: !4175)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_platform_parameters", file: !4177, line: 48, size: 64, elements: !4178)
!4177 = !DIFile(filename: "./include/xen/interface/version.h", directory: "/home/lizy2001/genbc/linux")
!4178 = !{!4179}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "virt_start", scope: !4176, file: !4177, line: 49, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_ulong_t", file: !4181, line: 81, baseType: !74)
!4181 = !DIFile(filename: "./arch/x86/include/asm/xen/interface.h", directory: "/home/lizy2001/genbc/linux")
!4182 = !DILocation(line: 290, column: 34, scope: !4146)
!4183 = !DILocation(line: 540, column: 27, scope: !3549, inlinedAt: !4149)
!4184 = !DILocation(line: 540, column: 6, scope: !3549, inlinedAt: !4149)
!4185 = !DILocation(line: 540, column: 6, scope: !3550, inlinedAt: !4149)
!4186 = !DILocation(line: 544, column: 7, scope: !3580, inlinedAt: !4149)
!4187 = !DILocation(line: 544, column: 12, scope: !3580, inlinedAt: !4149)
!4188 = !DILocation(line: 544, column: 7, scope: !3548, inlinedAt: !4149)
!4189 = !DILocation(line: 545, column: 25, scope: !3580, inlinedAt: !4149)
!4190 = !DILocation(line: 545, column: 31, scope: !3580, inlinedAt: !4149)
!4191 = !DILocation(line: 480, column: 33, scope: !3578, inlinedAt: !4159)
!4192 = !DILocation(line: 480, column: 23, scope: !3578, inlinedAt: !4159)
!4193 = !DILocation(line: 481, column: 29, scope: !3578, inlinedAt: !4159)
!4194 = !DILocation(line: 481, column: 35, scope: !3578, inlinedAt: !4159)
!4195 = !DILocation(line: 481, column: 42, scope: !3578, inlinedAt: !4159)
!4196 = !DILocation(line: 474, column: 23, scope: !3573, inlinedAt: !4158)
!4197 = !DILocation(line: 474, column: 29, scope: !3573, inlinedAt: !4158)
!4198 = !DILocation(line: 474, column: 36, scope: !3573, inlinedAt: !4158)
!4199 = !DILocation(line: 474, column: 9, scope: !3573, inlinedAt: !4158)
!4200 = !DILocation(line: 545, column: 4, scope: !3580, inlinedAt: !4149)
!4201 = !DILocation(line: 547, column: 25, scope: !3548, inlinedAt: !4149)
!4202 = !DILocation(line: 348, column: 7, scope: !3625, inlinedAt: !4156)
!4203 = !DILocation(line: 348, column: 6, scope: !3567, inlinedAt: !4156)
!4204 = !DILocation(line: 349, column: 3, scope: !3625, inlinedAt: !4156)
!4205 = !DILocation(line: 351, column: 6, scope: !3629, inlinedAt: !4156)
!4206 = !DILocation(line: 351, column: 11, scope: !3629, inlinedAt: !4156)
!4207 = !DILocation(line: 351, column: 6, scope: !3567, inlinedAt: !4156)
!4208 = !DILocation(line: 352, column: 3, scope: !3629, inlinedAt: !4156)
!4209 = !DILocation(line: 354, column: 32, scope: !3634, inlinedAt: !4156)
!4210 = !DILocation(line: 354, column: 37, scope: !3634, inlinedAt: !4156)
!4211 = !DILocation(line: 354, column: 42, scope: !3634, inlinedAt: !4156)
!4212 = !DILocation(line: 354, column: 45, scope: !3634, inlinedAt: !4156)
!4213 = !DILocation(line: 354, column: 50, scope: !3634, inlinedAt: !4156)
!4214 = !DILocation(line: 354, column: 6, scope: !3567, inlinedAt: !4156)
!4215 = !DILocation(line: 355, column: 3, scope: !3634, inlinedAt: !4156)
!4216 = !DILocation(line: 356, column: 32, scope: !3642, inlinedAt: !4156)
!4217 = !DILocation(line: 356, column: 37, scope: !3642, inlinedAt: !4156)
!4218 = !DILocation(line: 356, column: 43, scope: !3642, inlinedAt: !4156)
!4219 = !DILocation(line: 356, column: 46, scope: !3642, inlinedAt: !4156)
!4220 = !DILocation(line: 356, column: 51, scope: !3642, inlinedAt: !4156)
!4221 = !DILocation(line: 356, column: 6, scope: !3567, inlinedAt: !4156)
!4222 = !DILocation(line: 357, column: 3, scope: !3642, inlinedAt: !4156)
!4223 = !DILocation(line: 358, column: 6, scope: !3650, inlinedAt: !4156)
!4224 = !DILocation(line: 358, column: 11, scope: !3650, inlinedAt: !4156)
!4225 = !DILocation(line: 358, column: 6, scope: !3567, inlinedAt: !4156)
!4226 = !DILocation(line: 358, column: 26, scope: !3650, inlinedAt: !4156)
!4227 = !DILocation(line: 359, column: 6, scope: !3655, inlinedAt: !4156)
!4228 = !DILocation(line: 359, column: 11, scope: !3655, inlinedAt: !4156)
!4229 = !DILocation(line: 359, column: 6, scope: !3567, inlinedAt: !4156)
!4230 = !DILocation(line: 359, column: 26, scope: !3655, inlinedAt: !4156)
!4231 = !DILocation(line: 360, column: 6, scope: !3660, inlinedAt: !4156)
!4232 = !DILocation(line: 360, column: 11, scope: !3660, inlinedAt: !4156)
!4233 = !DILocation(line: 360, column: 6, scope: !3567, inlinedAt: !4156)
!4234 = !DILocation(line: 360, column: 26, scope: !3660, inlinedAt: !4156)
!4235 = !DILocation(line: 361, column: 6, scope: !3665, inlinedAt: !4156)
!4236 = !DILocation(line: 361, column: 11, scope: !3665, inlinedAt: !4156)
!4237 = !DILocation(line: 361, column: 6, scope: !3567, inlinedAt: !4156)
!4238 = !DILocation(line: 361, column: 26, scope: !3665, inlinedAt: !4156)
!4239 = !DILocation(line: 362, column: 6, scope: !3670, inlinedAt: !4156)
!4240 = !DILocation(line: 362, column: 11, scope: !3670, inlinedAt: !4156)
!4241 = !DILocation(line: 362, column: 6, scope: !3567, inlinedAt: !4156)
!4242 = !DILocation(line: 362, column: 26, scope: !3670, inlinedAt: !4156)
!4243 = !DILocation(line: 363, column: 6, scope: !3675, inlinedAt: !4156)
!4244 = !DILocation(line: 363, column: 11, scope: !3675, inlinedAt: !4156)
!4245 = !DILocation(line: 363, column: 6, scope: !3567, inlinedAt: !4156)
!4246 = !DILocation(line: 363, column: 26, scope: !3675, inlinedAt: !4156)
!4247 = !DILocation(line: 364, column: 6, scope: !3680, inlinedAt: !4156)
!4248 = !DILocation(line: 364, column: 11, scope: !3680, inlinedAt: !4156)
!4249 = !DILocation(line: 364, column: 6, scope: !3567, inlinedAt: !4156)
!4250 = !DILocation(line: 364, column: 26, scope: !3680, inlinedAt: !4156)
!4251 = !DILocation(line: 365, column: 6, scope: !3685, inlinedAt: !4156)
!4252 = !DILocation(line: 365, column: 11, scope: !3685, inlinedAt: !4156)
!4253 = !DILocation(line: 365, column: 6, scope: !3567, inlinedAt: !4156)
!4254 = !DILocation(line: 365, column: 26, scope: !3685, inlinedAt: !4156)
!4255 = !DILocation(line: 366, column: 6, scope: !3690, inlinedAt: !4156)
!4256 = !DILocation(line: 366, column: 11, scope: !3690, inlinedAt: !4156)
!4257 = !DILocation(line: 366, column: 6, scope: !3567, inlinedAt: !4156)
!4258 = !DILocation(line: 366, column: 26, scope: !3690, inlinedAt: !4156)
!4259 = !DILocation(line: 367, column: 6, scope: !3695, inlinedAt: !4156)
!4260 = !DILocation(line: 367, column: 11, scope: !3695, inlinedAt: !4156)
!4261 = !DILocation(line: 367, column: 6, scope: !3567, inlinedAt: !4156)
!4262 = !DILocation(line: 367, column: 26, scope: !3695, inlinedAt: !4156)
!4263 = !DILocation(line: 368, column: 6, scope: !3700, inlinedAt: !4156)
!4264 = !DILocation(line: 368, column: 11, scope: !3700, inlinedAt: !4156)
!4265 = !DILocation(line: 368, column: 6, scope: !3567, inlinedAt: !4156)
!4266 = !DILocation(line: 368, column: 26, scope: !3700, inlinedAt: !4156)
!4267 = !DILocation(line: 369, column: 6, scope: !3705, inlinedAt: !4156)
!4268 = !DILocation(line: 369, column: 11, scope: !3705, inlinedAt: !4156)
!4269 = !DILocation(line: 369, column: 6, scope: !3567, inlinedAt: !4156)
!4270 = !DILocation(line: 369, column: 26, scope: !3705, inlinedAt: !4156)
!4271 = !DILocation(line: 370, column: 6, scope: !3710, inlinedAt: !4156)
!4272 = !DILocation(line: 370, column: 11, scope: !3710, inlinedAt: !4156)
!4273 = !DILocation(line: 370, column: 6, scope: !3567, inlinedAt: !4156)
!4274 = !DILocation(line: 370, column: 26, scope: !3710, inlinedAt: !4156)
!4275 = !DILocation(line: 371, column: 6, scope: !3715, inlinedAt: !4156)
!4276 = !DILocation(line: 371, column: 11, scope: !3715, inlinedAt: !4156)
!4277 = !DILocation(line: 371, column: 6, scope: !3567, inlinedAt: !4156)
!4278 = !DILocation(line: 371, column: 26, scope: !3715, inlinedAt: !4156)
!4279 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !4156)
!4280 = !DILocation(line: 372, column: 11, scope: !3720, inlinedAt: !4156)
!4281 = !DILocation(line: 372, column: 6, scope: !3567, inlinedAt: !4156)
!4282 = !DILocation(line: 372, column: 26, scope: !3720, inlinedAt: !4156)
!4283 = !DILocation(line: 373, column: 6, scope: !3725, inlinedAt: !4156)
!4284 = !DILocation(line: 373, column: 11, scope: !3725, inlinedAt: !4156)
!4285 = !DILocation(line: 373, column: 6, scope: !3567, inlinedAt: !4156)
!4286 = !DILocation(line: 373, column: 26, scope: !3725, inlinedAt: !4156)
!4287 = !DILocation(line: 374, column: 6, scope: !3730, inlinedAt: !4156)
!4288 = !DILocation(line: 374, column: 11, scope: !3730, inlinedAt: !4156)
!4289 = !DILocation(line: 374, column: 6, scope: !3567, inlinedAt: !4156)
!4290 = !DILocation(line: 374, column: 26, scope: !3730, inlinedAt: !4156)
!4291 = !DILocation(line: 375, column: 6, scope: !3735, inlinedAt: !4156)
!4292 = !DILocation(line: 375, column: 11, scope: !3735, inlinedAt: !4156)
!4293 = !DILocation(line: 375, column: 6, scope: !3567, inlinedAt: !4156)
!4294 = !DILocation(line: 375, column: 27, scope: !3735, inlinedAt: !4156)
!4295 = !DILocation(line: 376, column: 6, scope: !3740, inlinedAt: !4156)
!4296 = !DILocation(line: 376, column: 11, scope: !3740, inlinedAt: !4156)
!4297 = !DILocation(line: 376, column: 6, scope: !3567, inlinedAt: !4156)
!4298 = !DILocation(line: 376, column: 32, scope: !3740, inlinedAt: !4156)
!4299 = !DILocation(line: 377, column: 6, scope: !3745, inlinedAt: !4156)
!4300 = !DILocation(line: 377, column: 11, scope: !3745, inlinedAt: !4156)
!4301 = !DILocation(line: 377, column: 6, scope: !3567, inlinedAt: !4156)
!4302 = !DILocation(line: 377, column: 32, scope: !3745, inlinedAt: !4156)
!4303 = !DILocation(line: 378, column: 6, scope: !3750, inlinedAt: !4156)
!4304 = !DILocation(line: 378, column: 11, scope: !3750, inlinedAt: !4156)
!4305 = !DILocation(line: 378, column: 6, scope: !3567, inlinedAt: !4156)
!4306 = !DILocation(line: 378, column: 32, scope: !3750, inlinedAt: !4156)
!4307 = !DILocation(line: 379, column: 6, scope: !3755, inlinedAt: !4156)
!4308 = !DILocation(line: 379, column: 11, scope: !3755, inlinedAt: !4156)
!4309 = !DILocation(line: 379, column: 6, scope: !3567, inlinedAt: !4156)
!4310 = !DILocation(line: 379, column: 33, scope: !3755, inlinedAt: !4156)
!4311 = !DILocation(line: 380, column: 6, scope: !3760, inlinedAt: !4156)
!4312 = !DILocation(line: 380, column: 11, scope: !3760, inlinedAt: !4156)
!4313 = !DILocation(line: 380, column: 6, scope: !3567, inlinedAt: !4156)
!4314 = !DILocation(line: 380, column: 33, scope: !3760, inlinedAt: !4156)
!4315 = !DILocation(line: 381, column: 6, scope: !3765, inlinedAt: !4156)
!4316 = !DILocation(line: 381, column: 11, scope: !3765, inlinedAt: !4156)
!4317 = !DILocation(line: 381, column: 6, scope: !3567, inlinedAt: !4156)
!4318 = !DILocation(line: 381, column: 33, scope: !3765, inlinedAt: !4156)
!4319 = !DILocation(line: 382, column: 2, scope: !3770, inlinedAt: !4156)
!4320 = !DILocation(line: 382, column: 2, scope: !3774, inlinedAt: !4156)
!4321 = !DILocation(line: 382, column: 2, scope: !3775, inlinedAt: !4156)
!4322 = !DILocation(line: 386, column: 1, scope: !3567, inlinedAt: !4156)
!4323 = !DILocation(line: 547, column: 9, scope: !3548, inlinedAt: !4149)
!4324 = !DILocation(line: 549, column: 8, scope: !3781, inlinedAt: !4149)
!4325 = !DILocation(line: 549, column: 7, scope: !3548, inlinedAt: !4149)
!4326 = !DILocation(line: 550, column: 4, scope: !3781, inlinedAt: !4149)
!4327 = !DILocation(line: 553, column: 33, scope: !3548, inlinedAt: !4149)
!4328 = !DILocation(line: 325, column: 6, scope: !3786, inlinedAt: !4154)
!4329 = !DILocation(line: 325, column: 6, scope: !3561, inlinedAt: !4154)
!4330 = !DILocation(line: 326, column: 3, scope: !3786, inlinedAt: !4154)
!4331 = !DILocation(line: 332, column: 9, scope: !3561, inlinedAt: !4154)
!4332 = !DILocation(line: 332, column: 15, scope: !3561, inlinedAt: !4154)
!4333 = !DILocation(line: 332, column: 2, scope: !3561, inlinedAt: !4154)
!4334 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !4154)
!4335 = !DILocation(line: 553, column: 5, scope: !3548, inlinedAt: !4149)
!4336 = !DILocation(line: 553, column: 41, scope: !3548, inlinedAt: !4149)
!4337 = !DILocation(line: 554, column: 5, scope: !3548, inlinedAt: !4149)
!4338 = !DILocation(line: 554, column: 12, scope: !3548, inlinedAt: !4149)
!4339 = !DILocation(line: 448, column: 31, scope: !3543, inlinedAt: !4148)
!4340 = !DILocation(line: 448, column: 34, scope: !3543, inlinedAt: !4148)
!4341 = !DILocation(line: 448, column: 14, scope: !3543, inlinedAt: !4148)
!4342 = !DILocation(line: 450, column: 22, scope: !3543, inlinedAt: !4148)
!4343 = !DILocation(line: 450, column: 25, scope: !3543, inlinedAt: !4148)
!4344 = !DILocation(line: 450, column: 30, scope: !3543, inlinedAt: !4148)
!4345 = !DILocation(line: 450, column: 36, scope: !3543, inlinedAt: !4148)
!4346 = !DILocation(line: 450, column: 8, scope: !3543, inlinedAt: !4148)
!4347 = !DILocation(line: 450, column: 6, scope: !3543, inlinedAt: !4148)
!4348 = !DILocation(line: 451, column: 9, scope: !3543, inlinedAt: !4148)
!4349 = !DILocation(line: 552, column: 3, scope: !3548, inlinedAt: !4149)
!4350 = !DILocation(line: 557, column: 19, scope: !3550, inlinedAt: !4149)
!4351 = !DILocation(line: 557, column: 25, scope: !3550, inlinedAt: !4149)
!4352 = !DILocation(line: 557, column: 9, scope: !3550, inlinedAt: !4149)
!4353 = !DILocation(line: 557, column: 2, scope: !3550, inlinedAt: !4149)
!4354 = !DILocation(line: 558, column: 1, scope: !3550, inlinedAt: !4149)
!4355 = !DILocation(line: 292, column: 10, scope: !4146)
!4356 = !DILocation(line: 292, column: 8, scope: !4146)
!4357 = !DILocation(line: 293, column: 6, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 293, column: 6)
!4359 = !DILocation(line: 293, column: 6, scope: !4146)
!4360 = !DILocation(line: 295, column: 11, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 293, column: 13)
!4362 = !DILocation(line: 294, column: 9, scope: !4361)
!4363 = !DILocation(line: 294, column: 7, scope: !4361)
!4364 = !DILocation(line: 296, column: 8, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 296, column: 7)
!4366 = !DILocation(line: 296, column: 7, scope: !4361)
!4367 = !DILocation(line: 297, column: 18, scope: !4365)
!4368 = !DILocation(line: 298, column: 11, scope: !4365)
!4369 = !DILocation(line: 298, column: 18, scope: !4365)
!4370 = !DILocation(line: 297, column: 10, scope: !4365)
!4371 = !DILocation(line: 297, column: 8, scope: !4365)
!4372 = !DILocation(line: 297, column: 4, scope: !4365)
!4373 = !DILocation(line: 299, column: 9, scope: !4361)
!4374 = !DILocation(line: 299, column: 3, scope: !4361)
!4375 = !DILocation(line: 300, column: 2, scope: !4361)
!4376 = !DILocation(line: 302, column: 9, scope: !4146)
!4377 = !DILocation(line: 302, column: 2, scope: !4146)
!4378 = distinct !DISubprogram(name: "pagesize_show", scope: !3, file: !3, line: 307, type: !94, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4379 = !DILocalVariable(name: "attr", arg: 1, scope: !4378, file: !3, line: 307, type: !78)
!4380 = !DILocation(line: 307, column: 53, scope: !4378)
!4381 = !DILocalVariable(name: "buffer", arg: 2, scope: !4378, file: !3, line: 307, type: !100)
!4382 = !DILocation(line: 307, column: 65, scope: !4378)
!4383 = !DILocalVariable(name: "ret", scope: !4378, file: !3, line: 309, type: !73)
!4384 = !DILocation(line: 309, column: 6, scope: !4378)
!4385 = !DILocation(line: 311, column: 8, scope: !4378)
!4386 = !DILocation(line: 311, column: 6, scope: !4378)
!4387 = !DILocation(line: 312, column: 6, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 312, column: 6)
!4389 = !DILocation(line: 312, column: 10, scope: !4388)
!4390 = !DILocation(line: 312, column: 6, scope: !4378)
!4391 = !DILocation(line: 313, column: 17, scope: !4388)
!4392 = !DILocation(line: 313, column: 33, scope: !4388)
!4393 = !DILocation(line: 313, column: 9, scope: !4388)
!4394 = !DILocation(line: 313, column: 7, scope: !4388)
!4395 = !DILocation(line: 313, column: 3, scope: !4388)
!4396 = !DILocation(line: 315, column: 9, scope: !4378)
!4397 = !DILocation(line: 315, column: 2, scope: !4378)
!4398 = distinct !DISubprogram(name: "features_show", scope: !3, file: !3, line: 333, type: !94, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4399 = !DILocalVariable(name: "attr", arg: 1, scope: !4398, file: !3, line: 333, type: !78)
!4400 = !DILocation(line: 333, column: 53, scope: !4398)
!4401 = !DILocalVariable(name: "buffer", arg: 2, scope: !4398, file: !3, line: 333, type: !100)
!4402 = !DILocation(line: 333, column: 65, scope: !4398)
!4403 = !DILocalVariable(name: "len", scope: !4398, file: !3, line: 335, type: !96)
!4404 = !DILocation(line: 335, column: 10, scope: !4398)
!4405 = !DILocalVariable(name: "i", scope: !4398, file: !3, line: 336, type: !73)
!4406 = !DILocation(line: 336, column: 6, scope: !4398)
!4407 = !DILocation(line: 338, column: 6, scope: !4398)
!4408 = !DILocation(line: 339, column: 9, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 339, column: 2)
!4410 = !DILocation(line: 339, column: 7, scope: !4409)
!4411 = !DILocation(line: 339, column: 33, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 339, column: 2)
!4413 = !DILocation(line: 339, column: 35, scope: !4412)
!4414 = !DILocation(line: 339, column: 2, scope: !4409)
!4415 = !DILocalVariable(name: "ret", scope: !4416, file: !3, line: 340, type: !73)
!4416 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 339, column: 46)
!4417 = !DILocation(line: 340, column: 7, scope: !4416)
!4418 = !DILocation(line: 340, column: 30, scope: !4416)
!4419 = !DILocation(line: 340, column: 33, scope: !4416)
!4420 = !DILocation(line: 340, column: 42, scope: !4416)
!4421 = !DILocation(line: 340, column: 40, scope: !4416)
!4422 = !DILocation(line: 340, column: 13, scope: !4416)
!4423 = !DILocation(line: 341, column: 7, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 341, column: 7)
!4425 = !DILocation(line: 341, column: 11, scope: !4424)
!4426 = !DILocation(line: 341, column: 7, scope: !4416)
!4427 = !DILocation(line: 342, column: 8, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 342, column: 8)
!4429 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 341, column: 16)
!4430 = !DILocation(line: 342, column: 12, scope: !4428)
!4431 = !DILocation(line: 342, column: 8, scope: !4429)
!4432 = !DILocation(line: 343, column: 11, scope: !4428)
!4433 = !DILocation(line: 343, column: 9, scope: !4428)
!4434 = !DILocation(line: 343, column: 5, scope: !4428)
!4435 = !DILocation(line: 344, column: 4, scope: !4429)
!4436 = !DILocation(line: 346, column: 10, scope: !4416)
!4437 = !DILocation(line: 346, column: 7, scope: !4416)
!4438 = !DILocation(line: 347, column: 2, scope: !4416)
!4439 = !DILocation(line: 339, column: 42, scope: !4412)
!4440 = !DILocation(line: 339, column: 2, scope: !4412)
!4441 = distinct !{!4441, !4414, !4442}
!4442 = !DILocation(line: 347, column: 2, scope: !4409)
!4443 = !DILocation(line: 348, column: 6, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 348, column: 6)
!4445 = !DILocation(line: 348, column: 10, scope: !4444)
!4446 = !DILocation(line: 348, column: 6, scope: !4398)
!4447 = !DILocation(line: 349, column: 3, scope: !4444)
!4448 = !DILocation(line: 349, column: 13, scope: !4444)
!4449 = !DILocation(line: 349, column: 17, scope: !4444)
!4450 = !DILocation(line: 351, column: 9, scope: !4398)
!4451 = !DILocation(line: 351, column: 2, scope: !4398)
!4452 = distinct !DISubprogram(name: "xen_feature_show", scope: !3, file: !3, line: 320, type: !4453, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!96, !73, !100}
!4455 = !DILocalVariable(name: "index", arg: 1, scope: !4452, file: !3, line: 320, type: !73)
!4456 = !DILocation(line: 320, column: 37, scope: !4452)
!4457 = !DILocalVariable(name: "buffer", arg: 2, scope: !4452, file: !3, line: 320, type: !100)
!4458 = !DILocation(line: 320, column: 50, scope: !4452)
!4459 = !DILocalVariable(name: "ret", scope: !4452, file: !3, line: 322, type: !96)
!4460 = !DILocation(line: 322, column: 10, scope: !4452)
!4461 = !DILocalVariable(name: "info", scope: !4452, file: !3, line: 323, type: !4462)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_feature_info", file: !4177, line: 53, size: 64, elements: !4463)
!4463 = !{!4464, !4465}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "submap_idx", scope: !4462, file: !4177, line: 54, baseType: !7, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "submap", scope: !4462, file: !4177, line: 55, baseType: !67, size: 32, offset: 32)
!4466 = !DILocation(line: 323, column: 26, scope: !4452)
!4467 = !DILocation(line: 325, column: 20, scope: !4452)
!4468 = !DILocation(line: 325, column: 7, scope: !4452)
!4469 = !DILocation(line: 325, column: 18, scope: !4452)
!4470 = !DILocation(line: 326, column: 52, scope: !4452)
!4471 = !DILocation(line: 326, column: 8, scope: !4452)
!4472 = !DILocation(line: 326, column: 6, scope: !4452)
!4473 = !DILocation(line: 327, column: 7, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 327, column: 6)
!4475 = !DILocation(line: 327, column: 6, scope: !4452)
!4476 = !DILocation(line: 328, column: 17, scope: !4474)
!4477 = !DILocation(line: 328, column: 38, scope: !4474)
!4478 = !DILocation(line: 328, column: 9, scope: !4474)
!4479 = !DILocation(line: 328, column: 7, scope: !4474)
!4480 = !DILocation(line: 328, column: 3, scope: !4474)
!4481 = !DILocation(line: 330, column: 9, scope: !4452)
!4482 = !DILocation(line: 330, column: 2, scope: !4452)
!4483 = distinct !DISubprogram(name: "buildid_show", scope: !3, file: !3, line: 356, type: !94, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4484 = !DILocation(line: 445, column: 72, scope: !3543, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 552, column: 10, scope: !3548, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 368, column: 12, scope: !4483)
!4487 = !DILocation(line: 446, column: 9, scope: !3543, inlinedAt: !4485)
!4488 = !DILocation(line: 446, column: 23, scope: !3543, inlinedAt: !4485)
!4489 = !DILocation(line: 448, column: 8, scope: !3543, inlinedAt: !4485)
!4490 = !DILocation(line: 318, column: 67, scope: !3561, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 553, column: 20, scope: !3548, inlinedAt: !4486)
!4492 = !DILocation(line: 346, column: 58, scope: !3567, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 547, column: 11, scope: !3548, inlinedAt: !4486)
!4494 = !DILocation(line: 472, column: 28, scope: !3573, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 481, column: 9, scope: !3578, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 545, column: 11, scope: !3580, inlinedAt: !4486)
!4497 = !DILocation(line: 472, column: 40, scope: !3573, inlinedAt: !4495)
!4498 = !DILocation(line: 472, column: 60, scope: !3573, inlinedAt: !4495)
!4499 = !DILocation(line: 478, column: 51, scope: !3578, inlinedAt: !4496)
!4500 = !DILocation(line: 478, column: 63, scope: !3578, inlinedAt: !4496)
!4501 = !DILocation(line: 480, column: 15, scope: !3578, inlinedAt: !4496)
!4502 = !DILocation(line: 538, column: 45, scope: !3550, inlinedAt: !4486)
!4503 = !DILocation(line: 538, column: 57, scope: !3550, inlinedAt: !4486)
!4504 = !DILocation(line: 542, column: 16, scope: !3548, inlinedAt: !4486)
!4505 = !DILocalVariable(name: "attr", arg: 1, scope: !4483, file: !3, line: 356, type: !78)
!4506 = !DILocation(line: 356, column: 52, scope: !4483)
!4507 = !DILocalVariable(name: "buffer", arg: 2, scope: !4483, file: !3, line: 356, type: !100)
!4508 = !DILocation(line: 356, column: 64, scope: !4483)
!4509 = !DILocalVariable(name: "ret", scope: !4483, file: !3, line: 358, type: !96)
!4510 = !DILocation(line: 358, column: 10, scope: !4483)
!4511 = !DILocalVariable(name: "buildid", scope: !4483, file: !3, line: 359, type: !4512)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_build_id", file: !4177, line: 77, size: 32, elements: !4514)
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4513, file: !4177, line: 78, baseType: !67, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4513, file: !4177, line: 79, baseType: !4517, offset: 32)
!4517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, elements: !2211)
!4518 = !DILocation(line: 359, column: 23, scope: !4483)
!4519 = !DILocation(line: 361, column: 8, scope: !4483)
!4520 = !DILocation(line: 361, column: 6, scope: !4483)
!4521 = !DILocation(line: 362, column: 6, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 362, column: 6)
!4523 = !DILocation(line: 362, column: 10, scope: !4522)
!4524 = !DILocation(line: 362, column: 6, scope: !4483)
!4525 = !DILocation(line: 363, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 363, column: 7)
!4527 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 362, column: 15)
!4528 = !DILocation(line: 363, column: 11, scope: !4526)
!4529 = !DILocation(line: 363, column: 7, scope: !4527)
!4530 = !DILocation(line: 364, column: 18, scope: !4526)
!4531 = !DILocation(line: 364, column: 10, scope: !4526)
!4532 = !DILocation(line: 364, column: 8, scope: !4526)
!4533 = !DILocation(line: 364, column: 4, scope: !4526)
!4534 = !DILocation(line: 365, column: 10, scope: !4527)
!4535 = !DILocation(line: 365, column: 3, scope: !4527)
!4536 = !DILocation(line: 368, column: 39, scope: !4483)
!4537 = !DILocation(line: 368, column: 37, scope: !4483)
!4538 = !DILocation(line: 540, column: 27, scope: !3549, inlinedAt: !4486)
!4539 = !DILocation(line: 540, column: 6, scope: !3549, inlinedAt: !4486)
!4540 = !DILocation(line: 540, column: 6, scope: !3550, inlinedAt: !4486)
!4541 = !DILocation(line: 544, column: 7, scope: !3580, inlinedAt: !4486)
!4542 = !DILocation(line: 544, column: 12, scope: !3580, inlinedAt: !4486)
!4543 = !DILocation(line: 544, column: 7, scope: !3548, inlinedAt: !4486)
!4544 = !DILocation(line: 545, column: 25, scope: !3580, inlinedAt: !4486)
!4545 = !DILocation(line: 545, column: 31, scope: !3580, inlinedAt: !4486)
!4546 = !DILocation(line: 480, column: 33, scope: !3578, inlinedAt: !4496)
!4547 = !DILocation(line: 480, column: 23, scope: !3578, inlinedAt: !4496)
!4548 = !DILocation(line: 481, column: 29, scope: !3578, inlinedAt: !4496)
!4549 = !DILocation(line: 481, column: 35, scope: !3578, inlinedAt: !4496)
!4550 = !DILocation(line: 481, column: 42, scope: !3578, inlinedAt: !4496)
!4551 = !DILocation(line: 474, column: 23, scope: !3573, inlinedAt: !4495)
!4552 = !DILocation(line: 474, column: 29, scope: !3573, inlinedAt: !4495)
!4553 = !DILocation(line: 474, column: 36, scope: !3573, inlinedAt: !4495)
!4554 = !DILocation(line: 474, column: 9, scope: !3573, inlinedAt: !4495)
!4555 = !DILocation(line: 545, column: 4, scope: !3580, inlinedAt: !4486)
!4556 = !DILocation(line: 547, column: 25, scope: !3548, inlinedAt: !4486)
!4557 = !DILocation(line: 348, column: 7, scope: !3625, inlinedAt: !4493)
!4558 = !DILocation(line: 348, column: 6, scope: !3567, inlinedAt: !4493)
!4559 = !DILocation(line: 349, column: 3, scope: !3625, inlinedAt: !4493)
!4560 = !DILocation(line: 351, column: 6, scope: !3629, inlinedAt: !4493)
!4561 = !DILocation(line: 351, column: 11, scope: !3629, inlinedAt: !4493)
!4562 = !DILocation(line: 351, column: 6, scope: !3567, inlinedAt: !4493)
!4563 = !DILocation(line: 352, column: 3, scope: !3629, inlinedAt: !4493)
!4564 = !DILocation(line: 354, column: 32, scope: !3634, inlinedAt: !4493)
!4565 = !DILocation(line: 354, column: 37, scope: !3634, inlinedAt: !4493)
!4566 = !DILocation(line: 354, column: 42, scope: !3634, inlinedAt: !4493)
!4567 = !DILocation(line: 354, column: 45, scope: !3634, inlinedAt: !4493)
!4568 = !DILocation(line: 354, column: 50, scope: !3634, inlinedAt: !4493)
!4569 = !DILocation(line: 354, column: 6, scope: !3567, inlinedAt: !4493)
!4570 = !DILocation(line: 355, column: 3, scope: !3634, inlinedAt: !4493)
!4571 = !DILocation(line: 356, column: 32, scope: !3642, inlinedAt: !4493)
!4572 = !DILocation(line: 356, column: 37, scope: !3642, inlinedAt: !4493)
!4573 = !DILocation(line: 356, column: 43, scope: !3642, inlinedAt: !4493)
!4574 = !DILocation(line: 356, column: 46, scope: !3642, inlinedAt: !4493)
!4575 = !DILocation(line: 356, column: 51, scope: !3642, inlinedAt: !4493)
!4576 = !DILocation(line: 356, column: 6, scope: !3567, inlinedAt: !4493)
!4577 = !DILocation(line: 357, column: 3, scope: !3642, inlinedAt: !4493)
!4578 = !DILocation(line: 358, column: 6, scope: !3650, inlinedAt: !4493)
!4579 = !DILocation(line: 358, column: 11, scope: !3650, inlinedAt: !4493)
!4580 = !DILocation(line: 358, column: 6, scope: !3567, inlinedAt: !4493)
!4581 = !DILocation(line: 358, column: 26, scope: !3650, inlinedAt: !4493)
!4582 = !DILocation(line: 359, column: 6, scope: !3655, inlinedAt: !4493)
!4583 = !DILocation(line: 359, column: 11, scope: !3655, inlinedAt: !4493)
!4584 = !DILocation(line: 359, column: 6, scope: !3567, inlinedAt: !4493)
!4585 = !DILocation(line: 359, column: 26, scope: !3655, inlinedAt: !4493)
!4586 = !DILocation(line: 360, column: 6, scope: !3660, inlinedAt: !4493)
!4587 = !DILocation(line: 360, column: 11, scope: !3660, inlinedAt: !4493)
!4588 = !DILocation(line: 360, column: 6, scope: !3567, inlinedAt: !4493)
!4589 = !DILocation(line: 360, column: 26, scope: !3660, inlinedAt: !4493)
!4590 = !DILocation(line: 361, column: 6, scope: !3665, inlinedAt: !4493)
!4591 = !DILocation(line: 361, column: 11, scope: !3665, inlinedAt: !4493)
!4592 = !DILocation(line: 361, column: 6, scope: !3567, inlinedAt: !4493)
!4593 = !DILocation(line: 361, column: 26, scope: !3665, inlinedAt: !4493)
!4594 = !DILocation(line: 362, column: 6, scope: !3670, inlinedAt: !4493)
!4595 = !DILocation(line: 362, column: 11, scope: !3670, inlinedAt: !4493)
!4596 = !DILocation(line: 362, column: 6, scope: !3567, inlinedAt: !4493)
!4597 = !DILocation(line: 362, column: 26, scope: !3670, inlinedAt: !4493)
!4598 = !DILocation(line: 363, column: 6, scope: !3675, inlinedAt: !4493)
!4599 = !DILocation(line: 363, column: 11, scope: !3675, inlinedAt: !4493)
!4600 = !DILocation(line: 363, column: 6, scope: !3567, inlinedAt: !4493)
!4601 = !DILocation(line: 363, column: 26, scope: !3675, inlinedAt: !4493)
!4602 = !DILocation(line: 364, column: 6, scope: !3680, inlinedAt: !4493)
!4603 = !DILocation(line: 364, column: 11, scope: !3680, inlinedAt: !4493)
!4604 = !DILocation(line: 364, column: 6, scope: !3567, inlinedAt: !4493)
!4605 = !DILocation(line: 364, column: 26, scope: !3680, inlinedAt: !4493)
!4606 = !DILocation(line: 365, column: 6, scope: !3685, inlinedAt: !4493)
!4607 = !DILocation(line: 365, column: 11, scope: !3685, inlinedAt: !4493)
!4608 = !DILocation(line: 365, column: 6, scope: !3567, inlinedAt: !4493)
!4609 = !DILocation(line: 365, column: 26, scope: !3685, inlinedAt: !4493)
!4610 = !DILocation(line: 366, column: 6, scope: !3690, inlinedAt: !4493)
!4611 = !DILocation(line: 366, column: 11, scope: !3690, inlinedAt: !4493)
!4612 = !DILocation(line: 366, column: 6, scope: !3567, inlinedAt: !4493)
!4613 = !DILocation(line: 366, column: 26, scope: !3690, inlinedAt: !4493)
!4614 = !DILocation(line: 367, column: 6, scope: !3695, inlinedAt: !4493)
!4615 = !DILocation(line: 367, column: 11, scope: !3695, inlinedAt: !4493)
!4616 = !DILocation(line: 367, column: 6, scope: !3567, inlinedAt: !4493)
!4617 = !DILocation(line: 367, column: 26, scope: !3695, inlinedAt: !4493)
!4618 = !DILocation(line: 368, column: 6, scope: !3700, inlinedAt: !4493)
!4619 = !DILocation(line: 368, column: 11, scope: !3700, inlinedAt: !4493)
!4620 = !DILocation(line: 368, column: 6, scope: !3567, inlinedAt: !4493)
!4621 = !DILocation(line: 368, column: 26, scope: !3700, inlinedAt: !4493)
!4622 = !DILocation(line: 369, column: 6, scope: !3705, inlinedAt: !4493)
!4623 = !DILocation(line: 369, column: 11, scope: !3705, inlinedAt: !4493)
!4624 = !DILocation(line: 369, column: 6, scope: !3567, inlinedAt: !4493)
!4625 = !DILocation(line: 369, column: 26, scope: !3705, inlinedAt: !4493)
!4626 = !DILocation(line: 370, column: 6, scope: !3710, inlinedAt: !4493)
!4627 = !DILocation(line: 370, column: 11, scope: !3710, inlinedAt: !4493)
!4628 = !DILocation(line: 370, column: 6, scope: !3567, inlinedAt: !4493)
!4629 = !DILocation(line: 370, column: 26, scope: !3710, inlinedAt: !4493)
!4630 = !DILocation(line: 371, column: 6, scope: !3715, inlinedAt: !4493)
!4631 = !DILocation(line: 371, column: 11, scope: !3715, inlinedAt: !4493)
!4632 = !DILocation(line: 371, column: 6, scope: !3567, inlinedAt: !4493)
!4633 = !DILocation(line: 371, column: 26, scope: !3715, inlinedAt: !4493)
!4634 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !4493)
!4635 = !DILocation(line: 372, column: 11, scope: !3720, inlinedAt: !4493)
!4636 = !DILocation(line: 372, column: 6, scope: !3567, inlinedAt: !4493)
!4637 = !DILocation(line: 372, column: 26, scope: !3720, inlinedAt: !4493)
!4638 = !DILocation(line: 373, column: 6, scope: !3725, inlinedAt: !4493)
!4639 = !DILocation(line: 373, column: 11, scope: !3725, inlinedAt: !4493)
!4640 = !DILocation(line: 373, column: 6, scope: !3567, inlinedAt: !4493)
!4641 = !DILocation(line: 373, column: 26, scope: !3725, inlinedAt: !4493)
!4642 = !DILocation(line: 374, column: 6, scope: !3730, inlinedAt: !4493)
!4643 = !DILocation(line: 374, column: 11, scope: !3730, inlinedAt: !4493)
!4644 = !DILocation(line: 374, column: 6, scope: !3567, inlinedAt: !4493)
!4645 = !DILocation(line: 374, column: 26, scope: !3730, inlinedAt: !4493)
!4646 = !DILocation(line: 375, column: 6, scope: !3735, inlinedAt: !4493)
!4647 = !DILocation(line: 375, column: 11, scope: !3735, inlinedAt: !4493)
!4648 = !DILocation(line: 375, column: 6, scope: !3567, inlinedAt: !4493)
!4649 = !DILocation(line: 375, column: 27, scope: !3735, inlinedAt: !4493)
!4650 = !DILocation(line: 376, column: 6, scope: !3740, inlinedAt: !4493)
!4651 = !DILocation(line: 376, column: 11, scope: !3740, inlinedAt: !4493)
!4652 = !DILocation(line: 376, column: 6, scope: !3567, inlinedAt: !4493)
!4653 = !DILocation(line: 376, column: 32, scope: !3740, inlinedAt: !4493)
!4654 = !DILocation(line: 377, column: 6, scope: !3745, inlinedAt: !4493)
!4655 = !DILocation(line: 377, column: 11, scope: !3745, inlinedAt: !4493)
!4656 = !DILocation(line: 377, column: 6, scope: !3567, inlinedAt: !4493)
!4657 = !DILocation(line: 377, column: 32, scope: !3745, inlinedAt: !4493)
!4658 = !DILocation(line: 378, column: 6, scope: !3750, inlinedAt: !4493)
!4659 = !DILocation(line: 378, column: 11, scope: !3750, inlinedAt: !4493)
!4660 = !DILocation(line: 378, column: 6, scope: !3567, inlinedAt: !4493)
!4661 = !DILocation(line: 378, column: 32, scope: !3750, inlinedAt: !4493)
!4662 = !DILocation(line: 379, column: 6, scope: !3755, inlinedAt: !4493)
!4663 = !DILocation(line: 379, column: 11, scope: !3755, inlinedAt: !4493)
!4664 = !DILocation(line: 379, column: 6, scope: !3567, inlinedAt: !4493)
!4665 = !DILocation(line: 379, column: 33, scope: !3755, inlinedAt: !4493)
!4666 = !DILocation(line: 380, column: 6, scope: !3760, inlinedAt: !4493)
!4667 = !DILocation(line: 380, column: 11, scope: !3760, inlinedAt: !4493)
!4668 = !DILocation(line: 380, column: 6, scope: !3567, inlinedAt: !4493)
!4669 = !DILocation(line: 380, column: 33, scope: !3760, inlinedAt: !4493)
!4670 = !DILocation(line: 381, column: 6, scope: !3765, inlinedAt: !4493)
!4671 = !DILocation(line: 381, column: 11, scope: !3765, inlinedAt: !4493)
!4672 = !DILocation(line: 381, column: 6, scope: !3567, inlinedAt: !4493)
!4673 = !DILocation(line: 381, column: 33, scope: !3765, inlinedAt: !4493)
!4674 = !DILocation(line: 382, column: 2, scope: !3770, inlinedAt: !4493)
!4675 = !DILocation(line: 382, column: 2, scope: !3774, inlinedAt: !4493)
!4676 = !DILocation(line: 382, column: 2, scope: !3775, inlinedAt: !4493)
!4677 = !DILocation(line: 386, column: 1, scope: !3567, inlinedAt: !4493)
!4678 = !DILocation(line: 547, column: 9, scope: !3548, inlinedAt: !4486)
!4679 = !DILocation(line: 549, column: 8, scope: !3781, inlinedAt: !4486)
!4680 = !DILocation(line: 549, column: 7, scope: !3548, inlinedAt: !4486)
!4681 = !DILocation(line: 550, column: 4, scope: !3781, inlinedAt: !4486)
!4682 = !DILocation(line: 553, column: 33, scope: !3548, inlinedAt: !4486)
!4683 = !DILocation(line: 325, column: 6, scope: !3786, inlinedAt: !4491)
!4684 = !DILocation(line: 325, column: 6, scope: !3561, inlinedAt: !4491)
!4685 = !DILocation(line: 326, column: 3, scope: !3786, inlinedAt: !4491)
!4686 = !DILocation(line: 332, column: 9, scope: !3561, inlinedAt: !4491)
!4687 = !DILocation(line: 332, column: 15, scope: !3561, inlinedAt: !4491)
!4688 = !DILocation(line: 332, column: 2, scope: !3561, inlinedAt: !4491)
!4689 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !4491)
!4690 = !DILocation(line: 553, column: 5, scope: !3548, inlinedAt: !4486)
!4691 = !DILocation(line: 553, column: 41, scope: !3548, inlinedAt: !4486)
!4692 = !DILocation(line: 554, column: 5, scope: !3548, inlinedAt: !4486)
!4693 = !DILocation(line: 554, column: 12, scope: !3548, inlinedAt: !4486)
!4694 = !DILocation(line: 448, column: 31, scope: !3543, inlinedAt: !4485)
!4695 = !DILocation(line: 448, column: 34, scope: !3543, inlinedAt: !4485)
!4696 = !DILocation(line: 448, column: 14, scope: !3543, inlinedAt: !4485)
!4697 = !DILocation(line: 450, column: 22, scope: !3543, inlinedAt: !4485)
!4698 = !DILocation(line: 450, column: 25, scope: !3543, inlinedAt: !4485)
!4699 = !DILocation(line: 450, column: 30, scope: !3543, inlinedAt: !4485)
!4700 = !DILocation(line: 450, column: 36, scope: !3543, inlinedAt: !4485)
!4701 = !DILocation(line: 450, column: 8, scope: !3543, inlinedAt: !4485)
!4702 = !DILocation(line: 450, column: 6, scope: !3543, inlinedAt: !4485)
!4703 = !DILocation(line: 451, column: 9, scope: !3543, inlinedAt: !4485)
!4704 = !DILocation(line: 552, column: 3, scope: !3548, inlinedAt: !4486)
!4705 = !DILocation(line: 557, column: 19, scope: !3550, inlinedAt: !4486)
!4706 = !DILocation(line: 557, column: 25, scope: !3550, inlinedAt: !4486)
!4707 = !DILocation(line: 557, column: 9, scope: !3550, inlinedAt: !4486)
!4708 = !DILocation(line: 557, column: 2, scope: !3550, inlinedAt: !4486)
!4709 = !DILocation(line: 558, column: 1, scope: !3550, inlinedAt: !4486)
!4710 = !DILocation(line: 368, column: 12, scope: !4483)
!4711 = !DILocation(line: 368, column: 10, scope: !4483)
!4712 = !DILocation(line: 369, column: 7, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 369, column: 6)
!4714 = !DILocation(line: 369, column: 6, scope: !4483)
!4715 = !DILocation(line: 370, column: 3, scope: !4713)
!4716 = !DILocation(line: 372, column: 17, scope: !4483)
!4717 = !DILocation(line: 372, column: 2, scope: !4483)
!4718 = !DILocation(line: 372, column: 11, scope: !4483)
!4719 = !DILocation(line: 372, column: 15, scope: !4483)
!4720 = !DILocation(line: 373, column: 48, scope: !4483)
!4721 = !DILocation(line: 373, column: 8, scope: !4483)
!4722 = !DILocation(line: 373, column: 6, scope: !4483)
!4723 = !DILocation(line: 374, column: 6, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 374, column: 6)
!4725 = !DILocation(line: 374, column: 10, scope: !4724)
!4726 = !DILocation(line: 374, column: 6, scope: !4483)
!4727 = !DILocation(line: 375, column: 17, scope: !4724)
!4728 = !DILocation(line: 375, column: 31, scope: !4724)
!4729 = !DILocation(line: 375, column: 40, scope: !4724)
!4730 = !DILocation(line: 375, column: 9, scope: !4724)
!4731 = !DILocation(line: 375, column: 7, scope: !4724)
!4732 = !DILocation(line: 375, column: 3, scope: !4724)
!4733 = !DILocation(line: 376, column: 8, scope: !4483)
!4734 = !DILocation(line: 376, column: 2, scope: !4483)
!4735 = !DILocation(line: 378, column: 9, scope: !4483)
!4736 = !DILocation(line: 378, column: 2, scope: !4483)
!4737 = !DILocation(line: 379, column: 1, scope: !4483)
!4738 = distinct !DISubprogram(name: "uuid_show", scope: !3, file: !3, line: 158, type: !94, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4739 = !DILocalVariable(name: "attr", arg: 1, scope: !4738, file: !3, line: 158, type: !78)
!4740 = !DILocation(line: 158, column: 49, scope: !4738)
!4741 = !DILocalVariable(name: "buffer", arg: 2, scope: !4738, file: !3, line: 158, type: !100)
!4742 = !DILocation(line: 158, column: 61, scope: !4738)
!4743 = !DILocalVariable(name: "uuid", scope: !4738, file: !3, line: 160, type: !4744)
!4744 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_domain_handle_t", file: !4745, line: 746, baseType: !4746)
!4745 = !DIFile(filename: "./include/xen/interface/xen.h", directory: "/home/lizy2001/genbc/linux")
!4746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4747, size: 128, elements: !1626)
!4747 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !68, line: 102, baseType: !1249)
!4748 = !DILocation(line: 160, column: 22, scope: !4738)
!4749 = !DILocalVariable(name: "ret", scope: !4738, file: !3, line: 161, type: !73)
!4750 = !DILocation(line: 161, column: 6, scope: !4738)
!4751 = !DILocation(line: 162, column: 52, scope: !4738)
!4752 = !DILocation(line: 162, column: 8, scope: !4738)
!4753 = !DILocation(line: 162, column: 6, scope: !4738)
!4754 = !DILocation(line: 163, column: 6, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 163, column: 6)
!4756 = !DILocation(line: 163, column: 6, scope: !4738)
!4757 = !DILocation(line: 164, column: 29, scope: !4755)
!4758 = !DILocation(line: 164, column: 35, scope: !4755)
!4759 = !DILocation(line: 164, column: 10, scope: !4755)
!4760 = !DILocation(line: 164, column: 3, scope: !4755)
!4761 = !DILocation(line: 165, column: 16, scope: !4738)
!4762 = !DILocation(line: 165, column: 33, scope: !4738)
!4763 = !DILocation(line: 165, column: 8, scope: !4738)
!4764 = !DILocation(line: 165, column: 6, scope: !4738)
!4765 = !DILocation(line: 166, column: 9, scope: !4738)
!4766 = !DILocation(line: 166, column: 2, scope: !4738)
!4767 = !DILocation(line: 167, column: 1, scope: !4738)
!4768 = distinct !DISubprogram(name: "uuid_show_fallback", scope: !3, file: !3, line: 137, type: !94, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4769 = !DILocalVariable(name: "attr", arg: 1, scope: !4768, file: !3, line: 137, type: !78)
!4770 = !DILocation(line: 137, column: 58, scope: !4768)
!4771 = !DILocalVariable(name: "buffer", arg: 2, scope: !4768, file: !3, line: 137, type: !100)
!4772 = !DILocation(line: 137, column: 70, scope: !4768)
!4773 = !DILocalVariable(name: "vm", scope: !4768, file: !3, line: 139, type: !100)
!4774 = !DILocation(line: 139, column: 8, scope: !4768)
!4775 = !DILocalVariable(name: "val", scope: !4768, file: !3, line: 139, type: !100)
!4776 = !DILocation(line: 139, column: 13, scope: !4768)
!4777 = !DILocalVariable(name: "ret", scope: !4768, file: !3, line: 140, type: !73)
!4778 = !DILocation(line: 140, column: 6, scope: !4768)
!4779 = !DILocation(line: 143, column: 7, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 143, column: 6)
!4781 = !DILocation(line: 143, column: 6, scope: !4768)
!4782 = !DILocation(line: 144, column: 3, scope: !4780)
!4783 = !DILocation(line: 146, column: 19, scope: !4768)
!4784 = !DILocation(line: 146, column: 7, scope: !4768)
!4785 = !DILocation(line: 146, column: 5, scope: !4768)
!4786 = !DILocation(line: 147, column: 13, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 147, column: 6)
!4788 = !DILocation(line: 147, column: 6, scope: !4787)
!4789 = !DILocation(line: 147, column: 6, scope: !4768)
!4790 = !DILocation(line: 148, column: 18, scope: !4787)
!4791 = !DILocation(line: 148, column: 10, scope: !4787)
!4792 = !DILocation(line: 148, column: 3, scope: !4787)
!4793 = !DILocation(line: 149, column: 20, scope: !4768)
!4794 = !DILocation(line: 149, column: 29, scope: !4768)
!4795 = !DILocation(line: 149, column: 8, scope: !4768)
!4796 = !DILocation(line: 149, column: 6, scope: !4768)
!4797 = !DILocation(line: 150, column: 8, scope: !4768)
!4798 = !DILocation(line: 150, column: 2, scope: !4768)
!4799 = !DILocation(line: 151, column: 13, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 151, column: 6)
!4801 = !DILocation(line: 151, column: 6, scope: !4800)
!4802 = !DILocation(line: 151, column: 6, scope: !4768)
!4803 = !DILocation(line: 152, column: 18, scope: !4800)
!4804 = !DILocation(line: 152, column: 10, scope: !4800)
!4805 = !DILocation(line: 152, column: 3, scope: !4800)
!4806 = !DILocation(line: 153, column: 16, scope: !4768)
!4807 = !DILocation(line: 153, column: 32, scope: !4768)
!4808 = !DILocation(line: 153, column: 8, scope: !4768)
!4809 = !DILocation(line: 153, column: 6, scope: !4768)
!4810 = !DILocation(line: 154, column: 8, scope: !4768)
!4811 = !DILocation(line: 154, column: 2, scope: !4768)
!4812 = !DILocation(line: 155, column: 9, scope: !4768)
!4813 = !DILocation(line: 155, column: 2, scope: !4768)
!4814 = !DILocation(line: 156, column: 1, scope: !4768)
!4815 = distinct !DISubprogram(name: "IS_ERR", scope: !4816, file: !4816, line: 34, type: !4817, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4816 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!233, !243}
!4819 = !DILocalVariable(name: "ptr", arg: 1, scope: !4815, file: !4816, line: 34, type: !243)
!4820 = !DILocation(line: 34, column: 60, scope: !4815)
!4821 = !DILocation(line: 36, column: 9, scope: !4815)
!4822 = !DILocation(line: 36, column: 2, scope: !4815)
!4823 = distinct !DISubprogram(name: "PTR_ERR", scope: !4816, file: !4816, line: 29, type: !4824, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!77, !243}
!4826 = !DILocalVariable(name: "ptr", arg: 1, scope: !4823, file: !4816, line: 29, type: !243)
!4827 = !DILocation(line: 29, column: 61, scope: !4823)
!4828 = !DILocation(line: 31, column: 16, scope: !4823)
!4829 = !DILocation(line: 31, column: 9, scope: !4823)
!4830 = !DILocation(line: 31, column: 2, scope: !4823)
!4831 = distinct !DISubprogram(name: "compiler_show", scope: !3, file: !3, line: 178, type: !94, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!4832 = !DILocation(line: 445, column: 72, scope: !3543, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 552, column: 10, scope: !3548, inlinedAt: !4834)
!4834 = distinct !DILocation(line: 183, column: 9, scope: !4831)
!4835 = !DILocation(line: 446, column: 9, scope: !3543, inlinedAt: !4833)
!4836 = !DILocation(line: 446, column: 23, scope: !3543, inlinedAt: !4833)
!4837 = !DILocation(line: 448, column: 8, scope: !3543, inlinedAt: !4833)
!4838 = !DILocation(line: 318, column: 67, scope: !3561, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 553, column: 20, scope: !3548, inlinedAt: !4834)
!4840 = !DILocation(line: 346, column: 58, scope: !3567, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 547, column: 11, scope: !3548, inlinedAt: !4834)
!4842 = !DILocation(line: 472, column: 28, scope: !3573, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 481, column: 9, scope: !3578, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 545, column: 11, scope: !3580, inlinedAt: !4834)
!4845 = !DILocation(line: 472, column: 40, scope: !3573, inlinedAt: !4843)
!4846 = !DILocation(line: 472, column: 60, scope: !3573, inlinedAt: !4843)
!4847 = !DILocation(line: 478, column: 51, scope: !3578, inlinedAt: !4844)
!4848 = !DILocation(line: 478, column: 63, scope: !3578, inlinedAt: !4844)
!4849 = !DILocation(line: 480, column: 15, scope: !3578, inlinedAt: !4844)
!4850 = !DILocation(line: 538, column: 45, scope: !3550, inlinedAt: !4834)
!4851 = !DILocation(line: 538, column: 57, scope: !3550, inlinedAt: !4834)
!4852 = !DILocation(line: 542, column: 16, scope: !3548, inlinedAt: !4834)
!4853 = !DILocalVariable(name: "attr", arg: 1, scope: !4831, file: !3, line: 178, type: !78)
!4854 = !DILocation(line: 178, column: 53, scope: !4831)
!4855 = !DILocalVariable(name: "buffer", arg: 2, scope: !4831, file: !3, line: 178, type: !100)
!4856 = !DILocation(line: 178, column: 65, scope: !4831)
!4857 = !DILocalVariable(name: "ret", scope: !4831, file: !3, line: 180, type: !73)
!4858 = !DILocation(line: 180, column: 6, scope: !4831)
!4859 = !DILocalVariable(name: "info", scope: !4831, file: !3, line: 181, type: !4860)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_compile_info", file: !4177, line: 28, size: 1152, elements: !4862)
!4862 = !{!4863, !4865, !4866, !4867}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "compiler", scope: !4861, file: !4177, line: 29, baseType: !4864, size: 512)
!4864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 512, elements: !185)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "compile_by", scope: !4861, file: !4177, line: 30, baseType: !1625, size: 128, offset: 512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "compile_domain", scope: !4861, file: !4177, line: 31, baseType: !2519, size: 256, offset: 640)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "compile_date", scope: !4861, file: !4177, line: 32, baseType: !2519, size: 256, offset: 896)
!4868 = !DILocation(line: 181, column: 27, scope: !4831)
!4869 = !DILocation(line: 540, column: 27, scope: !3549, inlinedAt: !4834)
!4870 = !DILocation(line: 540, column: 6, scope: !3549, inlinedAt: !4834)
!4871 = !DILocation(line: 540, column: 6, scope: !3550, inlinedAt: !4834)
!4872 = !DILocation(line: 544, column: 7, scope: !3580, inlinedAt: !4834)
!4873 = !DILocation(line: 544, column: 12, scope: !3580, inlinedAt: !4834)
!4874 = !DILocation(line: 544, column: 7, scope: !3548, inlinedAt: !4834)
!4875 = !DILocation(line: 545, column: 25, scope: !3580, inlinedAt: !4834)
!4876 = !DILocation(line: 545, column: 31, scope: !3580, inlinedAt: !4834)
!4877 = !DILocation(line: 480, column: 33, scope: !3578, inlinedAt: !4844)
!4878 = !DILocation(line: 480, column: 23, scope: !3578, inlinedAt: !4844)
!4879 = !DILocation(line: 481, column: 29, scope: !3578, inlinedAt: !4844)
!4880 = !DILocation(line: 481, column: 35, scope: !3578, inlinedAt: !4844)
!4881 = !DILocation(line: 481, column: 42, scope: !3578, inlinedAt: !4844)
!4882 = !DILocation(line: 474, column: 23, scope: !3573, inlinedAt: !4843)
!4883 = !DILocation(line: 474, column: 29, scope: !3573, inlinedAt: !4843)
!4884 = !DILocation(line: 474, column: 36, scope: !3573, inlinedAt: !4843)
!4885 = !DILocation(line: 474, column: 9, scope: !3573, inlinedAt: !4843)
!4886 = !DILocation(line: 545, column: 4, scope: !3580, inlinedAt: !4834)
!4887 = !DILocation(line: 547, column: 25, scope: !3548, inlinedAt: !4834)
!4888 = !DILocation(line: 348, column: 7, scope: !3625, inlinedAt: !4841)
!4889 = !DILocation(line: 348, column: 6, scope: !3567, inlinedAt: !4841)
!4890 = !DILocation(line: 349, column: 3, scope: !3625, inlinedAt: !4841)
!4891 = !DILocation(line: 351, column: 6, scope: !3629, inlinedAt: !4841)
!4892 = !DILocation(line: 351, column: 11, scope: !3629, inlinedAt: !4841)
!4893 = !DILocation(line: 351, column: 6, scope: !3567, inlinedAt: !4841)
!4894 = !DILocation(line: 352, column: 3, scope: !3629, inlinedAt: !4841)
!4895 = !DILocation(line: 354, column: 32, scope: !3634, inlinedAt: !4841)
!4896 = !DILocation(line: 354, column: 37, scope: !3634, inlinedAt: !4841)
!4897 = !DILocation(line: 354, column: 42, scope: !3634, inlinedAt: !4841)
!4898 = !DILocation(line: 354, column: 45, scope: !3634, inlinedAt: !4841)
!4899 = !DILocation(line: 354, column: 50, scope: !3634, inlinedAt: !4841)
!4900 = !DILocation(line: 354, column: 6, scope: !3567, inlinedAt: !4841)
!4901 = !DILocation(line: 355, column: 3, scope: !3634, inlinedAt: !4841)
!4902 = !DILocation(line: 356, column: 32, scope: !3642, inlinedAt: !4841)
!4903 = !DILocation(line: 356, column: 37, scope: !3642, inlinedAt: !4841)
!4904 = !DILocation(line: 356, column: 43, scope: !3642, inlinedAt: !4841)
!4905 = !DILocation(line: 356, column: 46, scope: !3642, inlinedAt: !4841)
!4906 = !DILocation(line: 356, column: 51, scope: !3642, inlinedAt: !4841)
!4907 = !DILocation(line: 356, column: 6, scope: !3567, inlinedAt: !4841)
!4908 = !DILocation(line: 357, column: 3, scope: !3642, inlinedAt: !4841)
!4909 = !DILocation(line: 358, column: 6, scope: !3650, inlinedAt: !4841)
!4910 = !DILocation(line: 358, column: 11, scope: !3650, inlinedAt: !4841)
!4911 = !DILocation(line: 358, column: 6, scope: !3567, inlinedAt: !4841)
!4912 = !DILocation(line: 358, column: 26, scope: !3650, inlinedAt: !4841)
!4913 = !DILocation(line: 359, column: 6, scope: !3655, inlinedAt: !4841)
!4914 = !DILocation(line: 359, column: 11, scope: !3655, inlinedAt: !4841)
!4915 = !DILocation(line: 359, column: 6, scope: !3567, inlinedAt: !4841)
!4916 = !DILocation(line: 359, column: 26, scope: !3655, inlinedAt: !4841)
!4917 = !DILocation(line: 360, column: 6, scope: !3660, inlinedAt: !4841)
!4918 = !DILocation(line: 360, column: 11, scope: !3660, inlinedAt: !4841)
!4919 = !DILocation(line: 360, column: 6, scope: !3567, inlinedAt: !4841)
!4920 = !DILocation(line: 360, column: 26, scope: !3660, inlinedAt: !4841)
!4921 = !DILocation(line: 361, column: 6, scope: !3665, inlinedAt: !4841)
!4922 = !DILocation(line: 361, column: 11, scope: !3665, inlinedAt: !4841)
!4923 = !DILocation(line: 361, column: 6, scope: !3567, inlinedAt: !4841)
!4924 = !DILocation(line: 361, column: 26, scope: !3665, inlinedAt: !4841)
!4925 = !DILocation(line: 362, column: 6, scope: !3670, inlinedAt: !4841)
!4926 = !DILocation(line: 362, column: 11, scope: !3670, inlinedAt: !4841)
!4927 = !DILocation(line: 362, column: 6, scope: !3567, inlinedAt: !4841)
!4928 = !DILocation(line: 362, column: 26, scope: !3670, inlinedAt: !4841)
!4929 = !DILocation(line: 363, column: 6, scope: !3675, inlinedAt: !4841)
!4930 = !DILocation(line: 363, column: 11, scope: !3675, inlinedAt: !4841)
!4931 = !DILocation(line: 363, column: 6, scope: !3567, inlinedAt: !4841)
!4932 = !DILocation(line: 363, column: 26, scope: !3675, inlinedAt: !4841)
!4933 = !DILocation(line: 364, column: 6, scope: !3680, inlinedAt: !4841)
!4934 = !DILocation(line: 364, column: 11, scope: !3680, inlinedAt: !4841)
!4935 = !DILocation(line: 364, column: 6, scope: !3567, inlinedAt: !4841)
!4936 = !DILocation(line: 364, column: 26, scope: !3680, inlinedAt: !4841)
!4937 = !DILocation(line: 365, column: 6, scope: !3685, inlinedAt: !4841)
!4938 = !DILocation(line: 365, column: 11, scope: !3685, inlinedAt: !4841)
!4939 = !DILocation(line: 365, column: 6, scope: !3567, inlinedAt: !4841)
!4940 = !DILocation(line: 365, column: 26, scope: !3685, inlinedAt: !4841)
!4941 = !DILocation(line: 366, column: 6, scope: !3690, inlinedAt: !4841)
!4942 = !DILocation(line: 366, column: 11, scope: !3690, inlinedAt: !4841)
!4943 = !DILocation(line: 366, column: 6, scope: !3567, inlinedAt: !4841)
!4944 = !DILocation(line: 366, column: 26, scope: !3690, inlinedAt: !4841)
!4945 = !DILocation(line: 367, column: 6, scope: !3695, inlinedAt: !4841)
!4946 = !DILocation(line: 367, column: 11, scope: !3695, inlinedAt: !4841)
!4947 = !DILocation(line: 367, column: 6, scope: !3567, inlinedAt: !4841)
!4948 = !DILocation(line: 367, column: 26, scope: !3695, inlinedAt: !4841)
!4949 = !DILocation(line: 368, column: 6, scope: !3700, inlinedAt: !4841)
!4950 = !DILocation(line: 368, column: 11, scope: !3700, inlinedAt: !4841)
!4951 = !DILocation(line: 368, column: 6, scope: !3567, inlinedAt: !4841)
!4952 = !DILocation(line: 368, column: 26, scope: !3700, inlinedAt: !4841)
!4953 = !DILocation(line: 369, column: 6, scope: !3705, inlinedAt: !4841)
!4954 = !DILocation(line: 369, column: 11, scope: !3705, inlinedAt: !4841)
!4955 = !DILocation(line: 369, column: 6, scope: !3567, inlinedAt: !4841)
!4956 = !DILocation(line: 369, column: 26, scope: !3705, inlinedAt: !4841)
!4957 = !DILocation(line: 370, column: 6, scope: !3710, inlinedAt: !4841)
!4958 = !DILocation(line: 370, column: 11, scope: !3710, inlinedAt: !4841)
!4959 = !DILocation(line: 370, column: 6, scope: !3567, inlinedAt: !4841)
!4960 = !DILocation(line: 370, column: 26, scope: !3710, inlinedAt: !4841)
!4961 = !DILocation(line: 371, column: 6, scope: !3715, inlinedAt: !4841)
!4962 = !DILocation(line: 371, column: 11, scope: !3715, inlinedAt: !4841)
!4963 = !DILocation(line: 371, column: 6, scope: !3567, inlinedAt: !4841)
!4964 = !DILocation(line: 371, column: 26, scope: !3715, inlinedAt: !4841)
!4965 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !4841)
!4966 = !DILocation(line: 372, column: 11, scope: !3720, inlinedAt: !4841)
!4967 = !DILocation(line: 372, column: 6, scope: !3567, inlinedAt: !4841)
!4968 = !DILocation(line: 372, column: 26, scope: !3720, inlinedAt: !4841)
!4969 = !DILocation(line: 373, column: 6, scope: !3725, inlinedAt: !4841)
!4970 = !DILocation(line: 373, column: 11, scope: !3725, inlinedAt: !4841)
!4971 = !DILocation(line: 373, column: 6, scope: !3567, inlinedAt: !4841)
!4972 = !DILocation(line: 373, column: 26, scope: !3725, inlinedAt: !4841)
!4973 = !DILocation(line: 374, column: 6, scope: !3730, inlinedAt: !4841)
!4974 = !DILocation(line: 374, column: 11, scope: !3730, inlinedAt: !4841)
!4975 = !DILocation(line: 374, column: 6, scope: !3567, inlinedAt: !4841)
!4976 = !DILocation(line: 374, column: 26, scope: !3730, inlinedAt: !4841)
!4977 = !DILocation(line: 375, column: 6, scope: !3735, inlinedAt: !4841)
!4978 = !DILocation(line: 375, column: 11, scope: !3735, inlinedAt: !4841)
!4979 = !DILocation(line: 375, column: 6, scope: !3567, inlinedAt: !4841)
!4980 = !DILocation(line: 375, column: 27, scope: !3735, inlinedAt: !4841)
!4981 = !DILocation(line: 376, column: 6, scope: !3740, inlinedAt: !4841)
!4982 = !DILocation(line: 376, column: 11, scope: !3740, inlinedAt: !4841)
!4983 = !DILocation(line: 376, column: 6, scope: !3567, inlinedAt: !4841)
!4984 = !DILocation(line: 376, column: 32, scope: !3740, inlinedAt: !4841)
!4985 = !DILocation(line: 377, column: 6, scope: !3745, inlinedAt: !4841)
!4986 = !DILocation(line: 377, column: 11, scope: !3745, inlinedAt: !4841)
!4987 = !DILocation(line: 377, column: 6, scope: !3567, inlinedAt: !4841)
!4988 = !DILocation(line: 377, column: 32, scope: !3745, inlinedAt: !4841)
!4989 = !DILocation(line: 378, column: 6, scope: !3750, inlinedAt: !4841)
!4990 = !DILocation(line: 378, column: 11, scope: !3750, inlinedAt: !4841)
!4991 = !DILocation(line: 378, column: 6, scope: !3567, inlinedAt: !4841)
!4992 = !DILocation(line: 378, column: 32, scope: !3750, inlinedAt: !4841)
!4993 = !DILocation(line: 379, column: 6, scope: !3755, inlinedAt: !4841)
!4994 = !DILocation(line: 379, column: 11, scope: !3755, inlinedAt: !4841)
!4995 = !DILocation(line: 379, column: 6, scope: !3567, inlinedAt: !4841)
!4996 = !DILocation(line: 379, column: 33, scope: !3755, inlinedAt: !4841)
!4997 = !DILocation(line: 380, column: 6, scope: !3760, inlinedAt: !4841)
!4998 = !DILocation(line: 380, column: 11, scope: !3760, inlinedAt: !4841)
!4999 = !DILocation(line: 380, column: 6, scope: !3567, inlinedAt: !4841)
!5000 = !DILocation(line: 380, column: 33, scope: !3760, inlinedAt: !4841)
!5001 = !DILocation(line: 381, column: 6, scope: !3765, inlinedAt: !4841)
!5002 = !DILocation(line: 381, column: 11, scope: !3765, inlinedAt: !4841)
!5003 = !DILocation(line: 381, column: 6, scope: !3567, inlinedAt: !4841)
!5004 = !DILocation(line: 381, column: 33, scope: !3765, inlinedAt: !4841)
!5005 = !DILocation(line: 382, column: 2, scope: !3770, inlinedAt: !4841)
!5006 = !DILocation(line: 382, column: 2, scope: !3774, inlinedAt: !4841)
!5007 = !DILocation(line: 382, column: 2, scope: !3775, inlinedAt: !4841)
!5008 = !DILocation(line: 386, column: 1, scope: !3567, inlinedAt: !4841)
!5009 = !DILocation(line: 547, column: 9, scope: !3548, inlinedAt: !4834)
!5010 = !DILocation(line: 549, column: 8, scope: !3781, inlinedAt: !4834)
!5011 = !DILocation(line: 549, column: 7, scope: !3548, inlinedAt: !4834)
!5012 = !DILocation(line: 550, column: 4, scope: !3781, inlinedAt: !4834)
!5013 = !DILocation(line: 553, column: 33, scope: !3548, inlinedAt: !4834)
!5014 = !DILocation(line: 325, column: 6, scope: !3786, inlinedAt: !4839)
!5015 = !DILocation(line: 325, column: 6, scope: !3561, inlinedAt: !4839)
!5016 = !DILocation(line: 326, column: 3, scope: !3786, inlinedAt: !4839)
!5017 = !DILocation(line: 332, column: 9, scope: !3561, inlinedAt: !4839)
!5018 = !DILocation(line: 332, column: 15, scope: !3561, inlinedAt: !4839)
!5019 = !DILocation(line: 332, column: 2, scope: !3561, inlinedAt: !4839)
!5020 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !4839)
!5021 = !DILocation(line: 553, column: 5, scope: !3548, inlinedAt: !4834)
!5022 = !DILocation(line: 553, column: 41, scope: !3548, inlinedAt: !4834)
!5023 = !DILocation(line: 554, column: 5, scope: !3548, inlinedAt: !4834)
!5024 = !DILocation(line: 554, column: 12, scope: !3548, inlinedAt: !4834)
!5025 = !DILocation(line: 448, column: 31, scope: !3543, inlinedAt: !4833)
!5026 = !DILocation(line: 448, column: 34, scope: !3543, inlinedAt: !4833)
!5027 = !DILocation(line: 448, column: 14, scope: !3543, inlinedAt: !4833)
!5028 = !DILocation(line: 450, column: 22, scope: !3543, inlinedAt: !4833)
!5029 = !DILocation(line: 450, column: 25, scope: !3543, inlinedAt: !4833)
!5030 = !DILocation(line: 450, column: 30, scope: !3543, inlinedAt: !4833)
!5031 = !DILocation(line: 450, column: 36, scope: !3543, inlinedAt: !4833)
!5032 = !DILocation(line: 450, column: 8, scope: !3543, inlinedAt: !4833)
!5033 = !DILocation(line: 450, column: 6, scope: !3543, inlinedAt: !4833)
!5034 = !DILocation(line: 451, column: 9, scope: !3543, inlinedAt: !4833)
!5035 = !DILocation(line: 552, column: 3, scope: !3548, inlinedAt: !4834)
!5036 = !DILocation(line: 557, column: 19, scope: !3550, inlinedAt: !4834)
!5037 = !DILocation(line: 557, column: 25, scope: !3550, inlinedAt: !4834)
!5038 = !DILocation(line: 557, column: 9, scope: !3550, inlinedAt: !4834)
!5039 = !DILocation(line: 557, column: 2, scope: !3550, inlinedAt: !4834)
!5040 = !DILocation(line: 558, column: 1, scope: !3550, inlinedAt: !4834)
!5041 = !DILocation(line: 183, column: 9, scope: !4831)
!5042 = !DILocation(line: 183, column: 7, scope: !4831)
!5043 = !DILocation(line: 184, column: 6, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 184, column: 6)
!5045 = !DILocation(line: 184, column: 6, scope: !4831)
!5046 = !DILocation(line: 185, column: 53, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 184, column: 12)
!5048 = !DILocation(line: 185, column: 9, scope: !5047)
!5049 = !DILocation(line: 185, column: 7, scope: !5047)
!5050 = !DILocation(line: 186, column: 8, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 186, column: 7)
!5052 = !DILocation(line: 186, column: 7, scope: !5047)
!5053 = !DILocation(line: 187, column: 18, scope: !5051)
!5054 = !DILocation(line: 187, column: 34, scope: !5051)
!5055 = !DILocation(line: 187, column: 40, scope: !5051)
!5056 = !DILocation(line: 187, column: 10, scope: !5051)
!5057 = !DILocation(line: 187, column: 8, scope: !5051)
!5058 = !DILocation(line: 187, column: 4, scope: !5051)
!5059 = !DILocation(line: 188, column: 9, scope: !5047)
!5060 = !DILocation(line: 188, column: 3, scope: !5047)
!5061 = !DILocation(line: 189, column: 2, scope: !5047)
!5062 = !DILocation(line: 191, column: 9, scope: !4831)
!5063 = !DILocation(line: 191, column: 2, scope: !4831)
!5064 = distinct !DISubprogram(name: "compiled_by_show", scope: !3, file: !3, line: 196, type: !94, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5065 = !DILocation(line: 445, column: 72, scope: !3543, inlinedAt: !5066)
!5066 = distinct !DILocation(line: 552, column: 10, scope: !3548, inlinedAt: !5067)
!5067 = distinct !DILocation(line: 201, column: 9, scope: !5064)
!5068 = !DILocation(line: 446, column: 9, scope: !3543, inlinedAt: !5066)
!5069 = !DILocation(line: 446, column: 23, scope: !3543, inlinedAt: !5066)
!5070 = !DILocation(line: 448, column: 8, scope: !3543, inlinedAt: !5066)
!5071 = !DILocation(line: 318, column: 67, scope: !3561, inlinedAt: !5072)
!5072 = distinct !DILocation(line: 553, column: 20, scope: !3548, inlinedAt: !5067)
!5073 = !DILocation(line: 346, column: 58, scope: !3567, inlinedAt: !5074)
!5074 = distinct !DILocation(line: 547, column: 11, scope: !3548, inlinedAt: !5067)
!5075 = !DILocation(line: 472, column: 28, scope: !3573, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 481, column: 9, scope: !3578, inlinedAt: !5077)
!5077 = distinct !DILocation(line: 545, column: 11, scope: !3580, inlinedAt: !5067)
!5078 = !DILocation(line: 472, column: 40, scope: !3573, inlinedAt: !5076)
!5079 = !DILocation(line: 472, column: 60, scope: !3573, inlinedAt: !5076)
!5080 = !DILocation(line: 478, column: 51, scope: !3578, inlinedAt: !5077)
!5081 = !DILocation(line: 478, column: 63, scope: !3578, inlinedAt: !5077)
!5082 = !DILocation(line: 480, column: 15, scope: !3578, inlinedAt: !5077)
!5083 = !DILocation(line: 538, column: 45, scope: !3550, inlinedAt: !5067)
!5084 = !DILocation(line: 538, column: 57, scope: !3550, inlinedAt: !5067)
!5085 = !DILocation(line: 542, column: 16, scope: !3548, inlinedAt: !5067)
!5086 = !DILocalVariable(name: "attr", arg: 1, scope: !5064, file: !3, line: 196, type: !78)
!5087 = !DILocation(line: 196, column: 56, scope: !5064)
!5088 = !DILocalVariable(name: "buffer", arg: 2, scope: !5064, file: !3, line: 196, type: !100)
!5089 = !DILocation(line: 196, column: 68, scope: !5064)
!5090 = !DILocalVariable(name: "ret", scope: !5064, file: !3, line: 198, type: !73)
!5091 = !DILocation(line: 198, column: 6, scope: !5064)
!5092 = !DILocalVariable(name: "info", scope: !5064, file: !3, line: 199, type: !4860)
!5093 = !DILocation(line: 199, column: 27, scope: !5064)
!5094 = !DILocation(line: 540, column: 27, scope: !3549, inlinedAt: !5067)
!5095 = !DILocation(line: 540, column: 6, scope: !3549, inlinedAt: !5067)
!5096 = !DILocation(line: 540, column: 6, scope: !3550, inlinedAt: !5067)
!5097 = !DILocation(line: 544, column: 7, scope: !3580, inlinedAt: !5067)
!5098 = !DILocation(line: 544, column: 12, scope: !3580, inlinedAt: !5067)
!5099 = !DILocation(line: 544, column: 7, scope: !3548, inlinedAt: !5067)
!5100 = !DILocation(line: 545, column: 25, scope: !3580, inlinedAt: !5067)
!5101 = !DILocation(line: 545, column: 31, scope: !3580, inlinedAt: !5067)
!5102 = !DILocation(line: 480, column: 33, scope: !3578, inlinedAt: !5077)
!5103 = !DILocation(line: 480, column: 23, scope: !3578, inlinedAt: !5077)
!5104 = !DILocation(line: 481, column: 29, scope: !3578, inlinedAt: !5077)
!5105 = !DILocation(line: 481, column: 35, scope: !3578, inlinedAt: !5077)
!5106 = !DILocation(line: 481, column: 42, scope: !3578, inlinedAt: !5077)
!5107 = !DILocation(line: 474, column: 23, scope: !3573, inlinedAt: !5076)
!5108 = !DILocation(line: 474, column: 29, scope: !3573, inlinedAt: !5076)
!5109 = !DILocation(line: 474, column: 36, scope: !3573, inlinedAt: !5076)
!5110 = !DILocation(line: 474, column: 9, scope: !3573, inlinedAt: !5076)
!5111 = !DILocation(line: 545, column: 4, scope: !3580, inlinedAt: !5067)
!5112 = !DILocation(line: 547, column: 25, scope: !3548, inlinedAt: !5067)
!5113 = !DILocation(line: 348, column: 7, scope: !3625, inlinedAt: !5074)
!5114 = !DILocation(line: 348, column: 6, scope: !3567, inlinedAt: !5074)
!5115 = !DILocation(line: 349, column: 3, scope: !3625, inlinedAt: !5074)
!5116 = !DILocation(line: 351, column: 6, scope: !3629, inlinedAt: !5074)
!5117 = !DILocation(line: 351, column: 11, scope: !3629, inlinedAt: !5074)
!5118 = !DILocation(line: 351, column: 6, scope: !3567, inlinedAt: !5074)
!5119 = !DILocation(line: 352, column: 3, scope: !3629, inlinedAt: !5074)
!5120 = !DILocation(line: 354, column: 32, scope: !3634, inlinedAt: !5074)
!5121 = !DILocation(line: 354, column: 37, scope: !3634, inlinedAt: !5074)
!5122 = !DILocation(line: 354, column: 42, scope: !3634, inlinedAt: !5074)
!5123 = !DILocation(line: 354, column: 45, scope: !3634, inlinedAt: !5074)
!5124 = !DILocation(line: 354, column: 50, scope: !3634, inlinedAt: !5074)
!5125 = !DILocation(line: 354, column: 6, scope: !3567, inlinedAt: !5074)
!5126 = !DILocation(line: 355, column: 3, scope: !3634, inlinedAt: !5074)
!5127 = !DILocation(line: 356, column: 32, scope: !3642, inlinedAt: !5074)
!5128 = !DILocation(line: 356, column: 37, scope: !3642, inlinedAt: !5074)
!5129 = !DILocation(line: 356, column: 43, scope: !3642, inlinedAt: !5074)
!5130 = !DILocation(line: 356, column: 46, scope: !3642, inlinedAt: !5074)
!5131 = !DILocation(line: 356, column: 51, scope: !3642, inlinedAt: !5074)
!5132 = !DILocation(line: 356, column: 6, scope: !3567, inlinedAt: !5074)
!5133 = !DILocation(line: 357, column: 3, scope: !3642, inlinedAt: !5074)
!5134 = !DILocation(line: 358, column: 6, scope: !3650, inlinedAt: !5074)
!5135 = !DILocation(line: 358, column: 11, scope: !3650, inlinedAt: !5074)
!5136 = !DILocation(line: 358, column: 6, scope: !3567, inlinedAt: !5074)
!5137 = !DILocation(line: 358, column: 26, scope: !3650, inlinedAt: !5074)
!5138 = !DILocation(line: 359, column: 6, scope: !3655, inlinedAt: !5074)
!5139 = !DILocation(line: 359, column: 11, scope: !3655, inlinedAt: !5074)
!5140 = !DILocation(line: 359, column: 6, scope: !3567, inlinedAt: !5074)
!5141 = !DILocation(line: 359, column: 26, scope: !3655, inlinedAt: !5074)
!5142 = !DILocation(line: 360, column: 6, scope: !3660, inlinedAt: !5074)
!5143 = !DILocation(line: 360, column: 11, scope: !3660, inlinedAt: !5074)
!5144 = !DILocation(line: 360, column: 6, scope: !3567, inlinedAt: !5074)
!5145 = !DILocation(line: 360, column: 26, scope: !3660, inlinedAt: !5074)
!5146 = !DILocation(line: 361, column: 6, scope: !3665, inlinedAt: !5074)
!5147 = !DILocation(line: 361, column: 11, scope: !3665, inlinedAt: !5074)
!5148 = !DILocation(line: 361, column: 6, scope: !3567, inlinedAt: !5074)
!5149 = !DILocation(line: 361, column: 26, scope: !3665, inlinedAt: !5074)
!5150 = !DILocation(line: 362, column: 6, scope: !3670, inlinedAt: !5074)
!5151 = !DILocation(line: 362, column: 11, scope: !3670, inlinedAt: !5074)
!5152 = !DILocation(line: 362, column: 6, scope: !3567, inlinedAt: !5074)
!5153 = !DILocation(line: 362, column: 26, scope: !3670, inlinedAt: !5074)
!5154 = !DILocation(line: 363, column: 6, scope: !3675, inlinedAt: !5074)
!5155 = !DILocation(line: 363, column: 11, scope: !3675, inlinedAt: !5074)
!5156 = !DILocation(line: 363, column: 6, scope: !3567, inlinedAt: !5074)
!5157 = !DILocation(line: 363, column: 26, scope: !3675, inlinedAt: !5074)
!5158 = !DILocation(line: 364, column: 6, scope: !3680, inlinedAt: !5074)
!5159 = !DILocation(line: 364, column: 11, scope: !3680, inlinedAt: !5074)
!5160 = !DILocation(line: 364, column: 6, scope: !3567, inlinedAt: !5074)
!5161 = !DILocation(line: 364, column: 26, scope: !3680, inlinedAt: !5074)
!5162 = !DILocation(line: 365, column: 6, scope: !3685, inlinedAt: !5074)
!5163 = !DILocation(line: 365, column: 11, scope: !3685, inlinedAt: !5074)
!5164 = !DILocation(line: 365, column: 6, scope: !3567, inlinedAt: !5074)
!5165 = !DILocation(line: 365, column: 26, scope: !3685, inlinedAt: !5074)
!5166 = !DILocation(line: 366, column: 6, scope: !3690, inlinedAt: !5074)
!5167 = !DILocation(line: 366, column: 11, scope: !3690, inlinedAt: !5074)
!5168 = !DILocation(line: 366, column: 6, scope: !3567, inlinedAt: !5074)
!5169 = !DILocation(line: 366, column: 26, scope: !3690, inlinedAt: !5074)
!5170 = !DILocation(line: 367, column: 6, scope: !3695, inlinedAt: !5074)
!5171 = !DILocation(line: 367, column: 11, scope: !3695, inlinedAt: !5074)
!5172 = !DILocation(line: 367, column: 6, scope: !3567, inlinedAt: !5074)
!5173 = !DILocation(line: 367, column: 26, scope: !3695, inlinedAt: !5074)
!5174 = !DILocation(line: 368, column: 6, scope: !3700, inlinedAt: !5074)
!5175 = !DILocation(line: 368, column: 11, scope: !3700, inlinedAt: !5074)
!5176 = !DILocation(line: 368, column: 6, scope: !3567, inlinedAt: !5074)
!5177 = !DILocation(line: 368, column: 26, scope: !3700, inlinedAt: !5074)
!5178 = !DILocation(line: 369, column: 6, scope: !3705, inlinedAt: !5074)
!5179 = !DILocation(line: 369, column: 11, scope: !3705, inlinedAt: !5074)
!5180 = !DILocation(line: 369, column: 6, scope: !3567, inlinedAt: !5074)
!5181 = !DILocation(line: 369, column: 26, scope: !3705, inlinedAt: !5074)
!5182 = !DILocation(line: 370, column: 6, scope: !3710, inlinedAt: !5074)
!5183 = !DILocation(line: 370, column: 11, scope: !3710, inlinedAt: !5074)
!5184 = !DILocation(line: 370, column: 6, scope: !3567, inlinedAt: !5074)
!5185 = !DILocation(line: 370, column: 26, scope: !3710, inlinedAt: !5074)
!5186 = !DILocation(line: 371, column: 6, scope: !3715, inlinedAt: !5074)
!5187 = !DILocation(line: 371, column: 11, scope: !3715, inlinedAt: !5074)
!5188 = !DILocation(line: 371, column: 6, scope: !3567, inlinedAt: !5074)
!5189 = !DILocation(line: 371, column: 26, scope: !3715, inlinedAt: !5074)
!5190 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !5074)
!5191 = !DILocation(line: 372, column: 11, scope: !3720, inlinedAt: !5074)
!5192 = !DILocation(line: 372, column: 6, scope: !3567, inlinedAt: !5074)
!5193 = !DILocation(line: 372, column: 26, scope: !3720, inlinedAt: !5074)
!5194 = !DILocation(line: 373, column: 6, scope: !3725, inlinedAt: !5074)
!5195 = !DILocation(line: 373, column: 11, scope: !3725, inlinedAt: !5074)
!5196 = !DILocation(line: 373, column: 6, scope: !3567, inlinedAt: !5074)
!5197 = !DILocation(line: 373, column: 26, scope: !3725, inlinedAt: !5074)
!5198 = !DILocation(line: 374, column: 6, scope: !3730, inlinedAt: !5074)
!5199 = !DILocation(line: 374, column: 11, scope: !3730, inlinedAt: !5074)
!5200 = !DILocation(line: 374, column: 6, scope: !3567, inlinedAt: !5074)
!5201 = !DILocation(line: 374, column: 26, scope: !3730, inlinedAt: !5074)
!5202 = !DILocation(line: 375, column: 6, scope: !3735, inlinedAt: !5074)
!5203 = !DILocation(line: 375, column: 11, scope: !3735, inlinedAt: !5074)
!5204 = !DILocation(line: 375, column: 6, scope: !3567, inlinedAt: !5074)
!5205 = !DILocation(line: 375, column: 27, scope: !3735, inlinedAt: !5074)
!5206 = !DILocation(line: 376, column: 6, scope: !3740, inlinedAt: !5074)
!5207 = !DILocation(line: 376, column: 11, scope: !3740, inlinedAt: !5074)
!5208 = !DILocation(line: 376, column: 6, scope: !3567, inlinedAt: !5074)
!5209 = !DILocation(line: 376, column: 32, scope: !3740, inlinedAt: !5074)
!5210 = !DILocation(line: 377, column: 6, scope: !3745, inlinedAt: !5074)
!5211 = !DILocation(line: 377, column: 11, scope: !3745, inlinedAt: !5074)
!5212 = !DILocation(line: 377, column: 6, scope: !3567, inlinedAt: !5074)
!5213 = !DILocation(line: 377, column: 32, scope: !3745, inlinedAt: !5074)
!5214 = !DILocation(line: 378, column: 6, scope: !3750, inlinedAt: !5074)
!5215 = !DILocation(line: 378, column: 11, scope: !3750, inlinedAt: !5074)
!5216 = !DILocation(line: 378, column: 6, scope: !3567, inlinedAt: !5074)
!5217 = !DILocation(line: 378, column: 32, scope: !3750, inlinedAt: !5074)
!5218 = !DILocation(line: 379, column: 6, scope: !3755, inlinedAt: !5074)
!5219 = !DILocation(line: 379, column: 11, scope: !3755, inlinedAt: !5074)
!5220 = !DILocation(line: 379, column: 6, scope: !3567, inlinedAt: !5074)
!5221 = !DILocation(line: 379, column: 33, scope: !3755, inlinedAt: !5074)
!5222 = !DILocation(line: 380, column: 6, scope: !3760, inlinedAt: !5074)
!5223 = !DILocation(line: 380, column: 11, scope: !3760, inlinedAt: !5074)
!5224 = !DILocation(line: 380, column: 6, scope: !3567, inlinedAt: !5074)
!5225 = !DILocation(line: 380, column: 33, scope: !3760, inlinedAt: !5074)
!5226 = !DILocation(line: 381, column: 6, scope: !3765, inlinedAt: !5074)
!5227 = !DILocation(line: 381, column: 11, scope: !3765, inlinedAt: !5074)
!5228 = !DILocation(line: 381, column: 6, scope: !3567, inlinedAt: !5074)
!5229 = !DILocation(line: 381, column: 33, scope: !3765, inlinedAt: !5074)
!5230 = !DILocation(line: 382, column: 2, scope: !3770, inlinedAt: !5074)
!5231 = !DILocation(line: 382, column: 2, scope: !3774, inlinedAt: !5074)
!5232 = !DILocation(line: 382, column: 2, scope: !3775, inlinedAt: !5074)
!5233 = !DILocation(line: 386, column: 1, scope: !3567, inlinedAt: !5074)
!5234 = !DILocation(line: 547, column: 9, scope: !3548, inlinedAt: !5067)
!5235 = !DILocation(line: 549, column: 8, scope: !3781, inlinedAt: !5067)
!5236 = !DILocation(line: 549, column: 7, scope: !3548, inlinedAt: !5067)
!5237 = !DILocation(line: 550, column: 4, scope: !3781, inlinedAt: !5067)
!5238 = !DILocation(line: 553, column: 33, scope: !3548, inlinedAt: !5067)
!5239 = !DILocation(line: 325, column: 6, scope: !3786, inlinedAt: !5072)
!5240 = !DILocation(line: 325, column: 6, scope: !3561, inlinedAt: !5072)
!5241 = !DILocation(line: 326, column: 3, scope: !3786, inlinedAt: !5072)
!5242 = !DILocation(line: 332, column: 9, scope: !3561, inlinedAt: !5072)
!5243 = !DILocation(line: 332, column: 15, scope: !3561, inlinedAt: !5072)
!5244 = !DILocation(line: 332, column: 2, scope: !3561, inlinedAt: !5072)
!5245 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !5072)
!5246 = !DILocation(line: 553, column: 5, scope: !3548, inlinedAt: !5067)
!5247 = !DILocation(line: 553, column: 41, scope: !3548, inlinedAt: !5067)
!5248 = !DILocation(line: 554, column: 5, scope: !3548, inlinedAt: !5067)
!5249 = !DILocation(line: 554, column: 12, scope: !3548, inlinedAt: !5067)
!5250 = !DILocation(line: 448, column: 31, scope: !3543, inlinedAt: !5066)
!5251 = !DILocation(line: 448, column: 34, scope: !3543, inlinedAt: !5066)
!5252 = !DILocation(line: 448, column: 14, scope: !3543, inlinedAt: !5066)
!5253 = !DILocation(line: 450, column: 22, scope: !3543, inlinedAt: !5066)
!5254 = !DILocation(line: 450, column: 25, scope: !3543, inlinedAt: !5066)
!5255 = !DILocation(line: 450, column: 30, scope: !3543, inlinedAt: !5066)
!5256 = !DILocation(line: 450, column: 36, scope: !3543, inlinedAt: !5066)
!5257 = !DILocation(line: 450, column: 8, scope: !3543, inlinedAt: !5066)
!5258 = !DILocation(line: 450, column: 6, scope: !3543, inlinedAt: !5066)
!5259 = !DILocation(line: 451, column: 9, scope: !3543, inlinedAt: !5066)
!5260 = !DILocation(line: 552, column: 3, scope: !3548, inlinedAt: !5067)
!5261 = !DILocation(line: 557, column: 19, scope: !3550, inlinedAt: !5067)
!5262 = !DILocation(line: 557, column: 25, scope: !3550, inlinedAt: !5067)
!5263 = !DILocation(line: 557, column: 9, scope: !3550, inlinedAt: !5067)
!5264 = !DILocation(line: 557, column: 2, scope: !3550, inlinedAt: !5067)
!5265 = !DILocation(line: 558, column: 1, scope: !3550, inlinedAt: !5067)
!5266 = !DILocation(line: 201, column: 9, scope: !5064)
!5267 = !DILocation(line: 201, column: 7, scope: !5064)
!5268 = !DILocation(line: 202, column: 6, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 202, column: 6)
!5270 = !DILocation(line: 202, column: 6, scope: !5064)
!5271 = !DILocation(line: 203, column: 53, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 202, column: 12)
!5273 = !DILocation(line: 203, column: 9, scope: !5272)
!5274 = !DILocation(line: 203, column: 7, scope: !5272)
!5275 = !DILocation(line: 204, column: 8, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 204, column: 7)
!5277 = !DILocation(line: 204, column: 7, scope: !5272)
!5278 = !DILocation(line: 205, column: 18, scope: !5276)
!5279 = !DILocation(line: 205, column: 34, scope: !5276)
!5280 = !DILocation(line: 205, column: 40, scope: !5276)
!5281 = !DILocation(line: 205, column: 10, scope: !5276)
!5282 = !DILocation(line: 205, column: 8, scope: !5276)
!5283 = !DILocation(line: 205, column: 4, scope: !5276)
!5284 = !DILocation(line: 206, column: 9, scope: !5272)
!5285 = !DILocation(line: 206, column: 3, scope: !5272)
!5286 = !DILocation(line: 207, column: 2, scope: !5272)
!5287 = !DILocation(line: 209, column: 9, scope: !5064)
!5288 = !DILocation(line: 209, column: 2, scope: !5064)
!5289 = distinct !DISubprogram(name: "compile_date_show", scope: !3, file: !3, line: 214, type: !94, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5290 = !DILocation(line: 445, column: 72, scope: !3543, inlinedAt: !5291)
!5291 = distinct !DILocation(line: 552, column: 10, scope: !3548, inlinedAt: !5292)
!5292 = distinct !DILocation(line: 219, column: 9, scope: !5289)
!5293 = !DILocation(line: 446, column: 9, scope: !3543, inlinedAt: !5291)
!5294 = !DILocation(line: 446, column: 23, scope: !3543, inlinedAt: !5291)
!5295 = !DILocation(line: 448, column: 8, scope: !3543, inlinedAt: !5291)
!5296 = !DILocation(line: 318, column: 67, scope: !3561, inlinedAt: !5297)
!5297 = distinct !DILocation(line: 553, column: 20, scope: !3548, inlinedAt: !5292)
!5298 = !DILocation(line: 346, column: 58, scope: !3567, inlinedAt: !5299)
!5299 = distinct !DILocation(line: 547, column: 11, scope: !3548, inlinedAt: !5292)
!5300 = !DILocation(line: 472, column: 28, scope: !3573, inlinedAt: !5301)
!5301 = distinct !DILocation(line: 481, column: 9, scope: !3578, inlinedAt: !5302)
!5302 = distinct !DILocation(line: 545, column: 11, scope: !3580, inlinedAt: !5292)
!5303 = !DILocation(line: 472, column: 40, scope: !3573, inlinedAt: !5301)
!5304 = !DILocation(line: 472, column: 60, scope: !3573, inlinedAt: !5301)
!5305 = !DILocation(line: 478, column: 51, scope: !3578, inlinedAt: !5302)
!5306 = !DILocation(line: 478, column: 63, scope: !3578, inlinedAt: !5302)
!5307 = !DILocation(line: 480, column: 15, scope: !3578, inlinedAt: !5302)
!5308 = !DILocation(line: 538, column: 45, scope: !3550, inlinedAt: !5292)
!5309 = !DILocation(line: 538, column: 57, scope: !3550, inlinedAt: !5292)
!5310 = !DILocation(line: 542, column: 16, scope: !3548, inlinedAt: !5292)
!5311 = !DILocalVariable(name: "attr", arg: 1, scope: !5289, file: !3, line: 214, type: !78)
!5312 = !DILocation(line: 214, column: 57, scope: !5289)
!5313 = !DILocalVariable(name: "buffer", arg: 2, scope: !5289, file: !3, line: 214, type: !100)
!5314 = !DILocation(line: 214, column: 69, scope: !5289)
!5315 = !DILocalVariable(name: "ret", scope: !5289, file: !3, line: 216, type: !73)
!5316 = !DILocation(line: 216, column: 6, scope: !5289)
!5317 = !DILocalVariable(name: "info", scope: !5289, file: !3, line: 217, type: !4860)
!5318 = !DILocation(line: 217, column: 27, scope: !5289)
!5319 = !DILocation(line: 540, column: 27, scope: !3549, inlinedAt: !5292)
!5320 = !DILocation(line: 540, column: 6, scope: !3549, inlinedAt: !5292)
!5321 = !DILocation(line: 540, column: 6, scope: !3550, inlinedAt: !5292)
!5322 = !DILocation(line: 544, column: 7, scope: !3580, inlinedAt: !5292)
!5323 = !DILocation(line: 544, column: 12, scope: !3580, inlinedAt: !5292)
!5324 = !DILocation(line: 544, column: 7, scope: !3548, inlinedAt: !5292)
!5325 = !DILocation(line: 545, column: 25, scope: !3580, inlinedAt: !5292)
!5326 = !DILocation(line: 545, column: 31, scope: !3580, inlinedAt: !5292)
!5327 = !DILocation(line: 480, column: 33, scope: !3578, inlinedAt: !5302)
!5328 = !DILocation(line: 480, column: 23, scope: !3578, inlinedAt: !5302)
!5329 = !DILocation(line: 481, column: 29, scope: !3578, inlinedAt: !5302)
!5330 = !DILocation(line: 481, column: 35, scope: !3578, inlinedAt: !5302)
!5331 = !DILocation(line: 481, column: 42, scope: !3578, inlinedAt: !5302)
!5332 = !DILocation(line: 474, column: 23, scope: !3573, inlinedAt: !5301)
!5333 = !DILocation(line: 474, column: 29, scope: !3573, inlinedAt: !5301)
!5334 = !DILocation(line: 474, column: 36, scope: !3573, inlinedAt: !5301)
!5335 = !DILocation(line: 474, column: 9, scope: !3573, inlinedAt: !5301)
!5336 = !DILocation(line: 545, column: 4, scope: !3580, inlinedAt: !5292)
!5337 = !DILocation(line: 547, column: 25, scope: !3548, inlinedAt: !5292)
!5338 = !DILocation(line: 348, column: 7, scope: !3625, inlinedAt: !5299)
!5339 = !DILocation(line: 348, column: 6, scope: !3567, inlinedAt: !5299)
!5340 = !DILocation(line: 349, column: 3, scope: !3625, inlinedAt: !5299)
!5341 = !DILocation(line: 351, column: 6, scope: !3629, inlinedAt: !5299)
!5342 = !DILocation(line: 351, column: 11, scope: !3629, inlinedAt: !5299)
!5343 = !DILocation(line: 351, column: 6, scope: !3567, inlinedAt: !5299)
!5344 = !DILocation(line: 352, column: 3, scope: !3629, inlinedAt: !5299)
!5345 = !DILocation(line: 354, column: 32, scope: !3634, inlinedAt: !5299)
!5346 = !DILocation(line: 354, column: 37, scope: !3634, inlinedAt: !5299)
!5347 = !DILocation(line: 354, column: 42, scope: !3634, inlinedAt: !5299)
!5348 = !DILocation(line: 354, column: 45, scope: !3634, inlinedAt: !5299)
!5349 = !DILocation(line: 354, column: 50, scope: !3634, inlinedAt: !5299)
!5350 = !DILocation(line: 354, column: 6, scope: !3567, inlinedAt: !5299)
!5351 = !DILocation(line: 355, column: 3, scope: !3634, inlinedAt: !5299)
!5352 = !DILocation(line: 356, column: 32, scope: !3642, inlinedAt: !5299)
!5353 = !DILocation(line: 356, column: 37, scope: !3642, inlinedAt: !5299)
!5354 = !DILocation(line: 356, column: 43, scope: !3642, inlinedAt: !5299)
!5355 = !DILocation(line: 356, column: 46, scope: !3642, inlinedAt: !5299)
!5356 = !DILocation(line: 356, column: 51, scope: !3642, inlinedAt: !5299)
!5357 = !DILocation(line: 356, column: 6, scope: !3567, inlinedAt: !5299)
!5358 = !DILocation(line: 357, column: 3, scope: !3642, inlinedAt: !5299)
!5359 = !DILocation(line: 358, column: 6, scope: !3650, inlinedAt: !5299)
!5360 = !DILocation(line: 358, column: 11, scope: !3650, inlinedAt: !5299)
!5361 = !DILocation(line: 358, column: 6, scope: !3567, inlinedAt: !5299)
!5362 = !DILocation(line: 358, column: 26, scope: !3650, inlinedAt: !5299)
!5363 = !DILocation(line: 359, column: 6, scope: !3655, inlinedAt: !5299)
!5364 = !DILocation(line: 359, column: 11, scope: !3655, inlinedAt: !5299)
!5365 = !DILocation(line: 359, column: 6, scope: !3567, inlinedAt: !5299)
!5366 = !DILocation(line: 359, column: 26, scope: !3655, inlinedAt: !5299)
!5367 = !DILocation(line: 360, column: 6, scope: !3660, inlinedAt: !5299)
!5368 = !DILocation(line: 360, column: 11, scope: !3660, inlinedAt: !5299)
!5369 = !DILocation(line: 360, column: 6, scope: !3567, inlinedAt: !5299)
!5370 = !DILocation(line: 360, column: 26, scope: !3660, inlinedAt: !5299)
!5371 = !DILocation(line: 361, column: 6, scope: !3665, inlinedAt: !5299)
!5372 = !DILocation(line: 361, column: 11, scope: !3665, inlinedAt: !5299)
!5373 = !DILocation(line: 361, column: 6, scope: !3567, inlinedAt: !5299)
!5374 = !DILocation(line: 361, column: 26, scope: !3665, inlinedAt: !5299)
!5375 = !DILocation(line: 362, column: 6, scope: !3670, inlinedAt: !5299)
!5376 = !DILocation(line: 362, column: 11, scope: !3670, inlinedAt: !5299)
!5377 = !DILocation(line: 362, column: 6, scope: !3567, inlinedAt: !5299)
!5378 = !DILocation(line: 362, column: 26, scope: !3670, inlinedAt: !5299)
!5379 = !DILocation(line: 363, column: 6, scope: !3675, inlinedAt: !5299)
!5380 = !DILocation(line: 363, column: 11, scope: !3675, inlinedAt: !5299)
!5381 = !DILocation(line: 363, column: 6, scope: !3567, inlinedAt: !5299)
!5382 = !DILocation(line: 363, column: 26, scope: !3675, inlinedAt: !5299)
!5383 = !DILocation(line: 364, column: 6, scope: !3680, inlinedAt: !5299)
!5384 = !DILocation(line: 364, column: 11, scope: !3680, inlinedAt: !5299)
!5385 = !DILocation(line: 364, column: 6, scope: !3567, inlinedAt: !5299)
!5386 = !DILocation(line: 364, column: 26, scope: !3680, inlinedAt: !5299)
!5387 = !DILocation(line: 365, column: 6, scope: !3685, inlinedAt: !5299)
!5388 = !DILocation(line: 365, column: 11, scope: !3685, inlinedAt: !5299)
!5389 = !DILocation(line: 365, column: 6, scope: !3567, inlinedAt: !5299)
!5390 = !DILocation(line: 365, column: 26, scope: !3685, inlinedAt: !5299)
!5391 = !DILocation(line: 366, column: 6, scope: !3690, inlinedAt: !5299)
!5392 = !DILocation(line: 366, column: 11, scope: !3690, inlinedAt: !5299)
!5393 = !DILocation(line: 366, column: 6, scope: !3567, inlinedAt: !5299)
!5394 = !DILocation(line: 366, column: 26, scope: !3690, inlinedAt: !5299)
!5395 = !DILocation(line: 367, column: 6, scope: !3695, inlinedAt: !5299)
!5396 = !DILocation(line: 367, column: 11, scope: !3695, inlinedAt: !5299)
!5397 = !DILocation(line: 367, column: 6, scope: !3567, inlinedAt: !5299)
!5398 = !DILocation(line: 367, column: 26, scope: !3695, inlinedAt: !5299)
!5399 = !DILocation(line: 368, column: 6, scope: !3700, inlinedAt: !5299)
!5400 = !DILocation(line: 368, column: 11, scope: !3700, inlinedAt: !5299)
!5401 = !DILocation(line: 368, column: 6, scope: !3567, inlinedAt: !5299)
!5402 = !DILocation(line: 368, column: 26, scope: !3700, inlinedAt: !5299)
!5403 = !DILocation(line: 369, column: 6, scope: !3705, inlinedAt: !5299)
!5404 = !DILocation(line: 369, column: 11, scope: !3705, inlinedAt: !5299)
!5405 = !DILocation(line: 369, column: 6, scope: !3567, inlinedAt: !5299)
!5406 = !DILocation(line: 369, column: 26, scope: !3705, inlinedAt: !5299)
!5407 = !DILocation(line: 370, column: 6, scope: !3710, inlinedAt: !5299)
!5408 = !DILocation(line: 370, column: 11, scope: !3710, inlinedAt: !5299)
!5409 = !DILocation(line: 370, column: 6, scope: !3567, inlinedAt: !5299)
!5410 = !DILocation(line: 370, column: 26, scope: !3710, inlinedAt: !5299)
!5411 = !DILocation(line: 371, column: 6, scope: !3715, inlinedAt: !5299)
!5412 = !DILocation(line: 371, column: 11, scope: !3715, inlinedAt: !5299)
!5413 = !DILocation(line: 371, column: 6, scope: !3567, inlinedAt: !5299)
!5414 = !DILocation(line: 371, column: 26, scope: !3715, inlinedAt: !5299)
!5415 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !5299)
!5416 = !DILocation(line: 372, column: 11, scope: !3720, inlinedAt: !5299)
!5417 = !DILocation(line: 372, column: 6, scope: !3567, inlinedAt: !5299)
!5418 = !DILocation(line: 372, column: 26, scope: !3720, inlinedAt: !5299)
!5419 = !DILocation(line: 373, column: 6, scope: !3725, inlinedAt: !5299)
!5420 = !DILocation(line: 373, column: 11, scope: !3725, inlinedAt: !5299)
!5421 = !DILocation(line: 373, column: 6, scope: !3567, inlinedAt: !5299)
!5422 = !DILocation(line: 373, column: 26, scope: !3725, inlinedAt: !5299)
!5423 = !DILocation(line: 374, column: 6, scope: !3730, inlinedAt: !5299)
!5424 = !DILocation(line: 374, column: 11, scope: !3730, inlinedAt: !5299)
!5425 = !DILocation(line: 374, column: 6, scope: !3567, inlinedAt: !5299)
!5426 = !DILocation(line: 374, column: 26, scope: !3730, inlinedAt: !5299)
!5427 = !DILocation(line: 375, column: 6, scope: !3735, inlinedAt: !5299)
!5428 = !DILocation(line: 375, column: 11, scope: !3735, inlinedAt: !5299)
!5429 = !DILocation(line: 375, column: 6, scope: !3567, inlinedAt: !5299)
!5430 = !DILocation(line: 375, column: 27, scope: !3735, inlinedAt: !5299)
!5431 = !DILocation(line: 376, column: 6, scope: !3740, inlinedAt: !5299)
!5432 = !DILocation(line: 376, column: 11, scope: !3740, inlinedAt: !5299)
!5433 = !DILocation(line: 376, column: 6, scope: !3567, inlinedAt: !5299)
!5434 = !DILocation(line: 376, column: 32, scope: !3740, inlinedAt: !5299)
!5435 = !DILocation(line: 377, column: 6, scope: !3745, inlinedAt: !5299)
!5436 = !DILocation(line: 377, column: 11, scope: !3745, inlinedAt: !5299)
!5437 = !DILocation(line: 377, column: 6, scope: !3567, inlinedAt: !5299)
!5438 = !DILocation(line: 377, column: 32, scope: !3745, inlinedAt: !5299)
!5439 = !DILocation(line: 378, column: 6, scope: !3750, inlinedAt: !5299)
!5440 = !DILocation(line: 378, column: 11, scope: !3750, inlinedAt: !5299)
!5441 = !DILocation(line: 378, column: 6, scope: !3567, inlinedAt: !5299)
!5442 = !DILocation(line: 378, column: 32, scope: !3750, inlinedAt: !5299)
!5443 = !DILocation(line: 379, column: 6, scope: !3755, inlinedAt: !5299)
!5444 = !DILocation(line: 379, column: 11, scope: !3755, inlinedAt: !5299)
!5445 = !DILocation(line: 379, column: 6, scope: !3567, inlinedAt: !5299)
!5446 = !DILocation(line: 379, column: 33, scope: !3755, inlinedAt: !5299)
!5447 = !DILocation(line: 380, column: 6, scope: !3760, inlinedAt: !5299)
!5448 = !DILocation(line: 380, column: 11, scope: !3760, inlinedAt: !5299)
!5449 = !DILocation(line: 380, column: 6, scope: !3567, inlinedAt: !5299)
!5450 = !DILocation(line: 380, column: 33, scope: !3760, inlinedAt: !5299)
!5451 = !DILocation(line: 381, column: 6, scope: !3765, inlinedAt: !5299)
!5452 = !DILocation(line: 381, column: 11, scope: !3765, inlinedAt: !5299)
!5453 = !DILocation(line: 381, column: 6, scope: !3567, inlinedAt: !5299)
!5454 = !DILocation(line: 381, column: 33, scope: !3765, inlinedAt: !5299)
!5455 = !DILocation(line: 382, column: 2, scope: !3770, inlinedAt: !5299)
!5456 = !DILocation(line: 382, column: 2, scope: !3774, inlinedAt: !5299)
!5457 = !DILocation(line: 382, column: 2, scope: !3775, inlinedAt: !5299)
!5458 = !DILocation(line: 386, column: 1, scope: !3567, inlinedAt: !5299)
!5459 = !DILocation(line: 547, column: 9, scope: !3548, inlinedAt: !5292)
!5460 = !DILocation(line: 549, column: 8, scope: !3781, inlinedAt: !5292)
!5461 = !DILocation(line: 549, column: 7, scope: !3548, inlinedAt: !5292)
!5462 = !DILocation(line: 550, column: 4, scope: !3781, inlinedAt: !5292)
!5463 = !DILocation(line: 553, column: 33, scope: !3548, inlinedAt: !5292)
!5464 = !DILocation(line: 325, column: 6, scope: !3786, inlinedAt: !5297)
!5465 = !DILocation(line: 325, column: 6, scope: !3561, inlinedAt: !5297)
!5466 = !DILocation(line: 326, column: 3, scope: !3786, inlinedAt: !5297)
!5467 = !DILocation(line: 332, column: 9, scope: !3561, inlinedAt: !5297)
!5468 = !DILocation(line: 332, column: 15, scope: !3561, inlinedAt: !5297)
!5469 = !DILocation(line: 332, column: 2, scope: !3561, inlinedAt: !5297)
!5470 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !5297)
!5471 = !DILocation(line: 553, column: 5, scope: !3548, inlinedAt: !5292)
!5472 = !DILocation(line: 553, column: 41, scope: !3548, inlinedAt: !5292)
!5473 = !DILocation(line: 554, column: 5, scope: !3548, inlinedAt: !5292)
!5474 = !DILocation(line: 554, column: 12, scope: !3548, inlinedAt: !5292)
!5475 = !DILocation(line: 448, column: 31, scope: !3543, inlinedAt: !5291)
!5476 = !DILocation(line: 448, column: 34, scope: !3543, inlinedAt: !5291)
!5477 = !DILocation(line: 448, column: 14, scope: !3543, inlinedAt: !5291)
!5478 = !DILocation(line: 450, column: 22, scope: !3543, inlinedAt: !5291)
!5479 = !DILocation(line: 450, column: 25, scope: !3543, inlinedAt: !5291)
!5480 = !DILocation(line: 450, column: 30, scope: !3543, inlinedAt: !5291)
!5481 = !DILocation(line: 450, column: 36, scope: !3543, inlinedAt: !5291)
!5482 = !DILocation(line: 450, column: 8, scope: !3543, inlinedAt: !5291)
!5483 = !DILocation(line: 450, column: 6, scope: !3543, inlinedAt: !5291)
!5484 = !DILocation(line: 451, column: 9, scope: !3543, inlinedAt: !5291)
!5485 = !DILocation(line: 552, column: 3, scope: !3548, inlinedAt: !5292)
!5486 = !DILocation(line: 557, column: 19, scope: !3550, inlinedAt: !5292)
!5487 = !DILocation(line: 557, column: 25, scope: !3550, inlinedAt: !5292)
!5488 = !DILocation(line: 557, column: 9, scope: !3550, inlinedAt: !5292)
!5489 = !DILocation(line: 557, column: 2, scope: !3550, inlinedAt: !5292)
!5490 = !DILocation(line: 558, column: 1, scope: !3550, inlinedAt: !5292)
!5491 = !DILocation(line: 219, column: 9, scope: !5289)
!5492 = !DILocation(line: 219, column: 7, scope: !5289)
!5493 = !DILocation(line: 220, column: 6, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 220, column: 6)
!5495 = !DILocation(line: 220, column: 6, scope: !5289)
!5496 = !DILocation(line: 221, column: 53, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 220, column: 12)
!5498 = !DILocation(line: 221, column: 9, scope: !5497)
!5499 = !DILocation(line: 221, column: 7, scope: !5497)
!5500 = !DILocation(line: 222, column: 8, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 222, column: 7)
!5502 = !DILocation(line: 222, column: 7, scope: !5497)
!5503 = !DILocation(line: 223, column: 18, scope: !5501)
!5504 = !DILocation(line: 223, column: 34, scope: !5501)
!5505 = !DILocation(line: 223, column: 40, scope: !5501)
!5506 = !DILocation(line: 223, column: 10, scope: !5501)
!5507 = !DILocation(line: 223, column: 8, scope: !5501)
!5508 = !DILocation(line: 223, column: 4, scope: !5501)
!5509 = !DILocation(line: 224, column: 9, scope: !5497)
!5510 = !DILocation(line: 224, column: 3, scope: !5497)
!5511 = !DILocation(line: 225, column: 2, scope: !5497)
!5512 = !DILocation(line: 227, column: 9, scope: !5289)
!5513 = !DILocation(line: 227, column: 2, scope: !5289)
!5514 = distinct !DISubprogram(name: "major_show", scope: !3, file: !3, line: 80, type: !94, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5515 = !DILocalVariable(name: "attr", arg: 1, scope: !5514, file: !3, line: 80, type: !78)
!5516 = !DILocation(line: 80, column: 50, scope: !5514)
!5517 = !DILocalVariable(name: "buffer", arg: 2, scope: !5514, file: !3, line: 80, type: !100)
!5518 = !DILocation(line: 80, column: 62, scope: !5514)
!5519 = !DILocalVariable(name: "version", scope: !5514, file: !3, line: 82, type: !73)
!5520 = !DILocation(line: 82, column: 6, scope: !5514)
!5521 = !DILocation(line: 82, column: 16, scope: !5514)
!5522 = !DILocation(line: 83, column: 6, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 83, column: 6)
!5524 = !DILocation(line: 83, column: 6, scope: !5514)
!5525 = !DILocation(line: 84, column: 18, scope: !5523)
!5526 = !DILocation(line: 84, column: 34, scope: !5523)
!5527 = !DILocation(line: 84, column: 42, scope: !5523)
!5528 = !DILocation(line: 84, column: 10, scope: !5523)
!5529 = !DILocation(line: 84, column: 3, scope: !5523)
!5530 = !DILocation(line: 85, column: 2, scope: !5514)
!5531 = !DILocation(line: 86, column: 1, scope: !5514)
!5532 = distinct !DISubprogram(name: "minor_show", scope: !3, file: !3, line: 90, type: !94, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5533 = !DILocalVariable(name: "attr", arg: 1, scope: !5532, file: !3, line: 90, type: !78)
!5534 = !DILocation(line: 90, column: 50, scope: !5532)
!5535 = !DILocalVariable(name: "buffer", arg: 2, scope: !5532, file: !3, line: 90, type: !100)
!5536 = !DILocation(line: 90, column: 62, scope: !5532)
!5537 = !DILocalVariable(name: "version", scope: !5532, file: !3, line: 92, type: !73)
!5538 = !DILocation(line: 92, column: 6, scope: !5532)
!5539 = !DILocation(line: 92, column: 16, scope: !5532)
!5540 = !DILocation(line: 93, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 93, column: 6)
!5542 = !DILocation(line: 93, column: 6, scope: !5532)
!5543 = !DILocation(line: 94, column: 18, scope: !5541)
!5544 = !DILocation(line: 94, column: 34, scope: !5541)
!5545 = !DILocation(line: 94, column: 42, scope: !5541)
!5546 = !DILocation(line: 94, column: 10, scope: !5541)
!5547 = !DILocation(line: 94, column: 3, scope: !5541)
!5548 = !DILocation(line: 95, column: 2, scope: !5532)
!5549 = !DILocation(line: 96, column: 1, scope: !5532)
!5550 = distinct !DISubprogram(name: "extra_show", scope: !3, file: !3, line: 100, type: !94, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5551 = !DILocation(line: 445, column: 72, scope: !3543, inlinedAt: !5552)
!5552 = distinct !DILocation(line: 552, column: 10, scope: !3548, inlinedAt: !5553)
!5553 = distinct !DILocation(line: 105, column: 10, scope: !5550)
!5554 = !DILocation(line: 446, column: 9, scope: !3543, inlinedAt: !5552)
!5555 = !DILocation(line: 446, column: 23, scope: !3543, inlinedAt: !5552)
!5556 = !DILocation(line: 448, column: 8, scope: !3543, inlinedAt: !5552)
!5557 = !DILocation(line: 318, column: 67, scope: !3561, inlinedAt: !5558)
!5558 = distinct !DILocation(line: 553, column: 20, scope: !3548, inlinedAt: !5553)
!5559 = !DILocation(line: 346, column: 58, scope: !3567, inlinedAt: !5560)
!5560 = distinct !DILocation(line: 547, column: 11, scope: !3548, inlinedAt: !5553)
!5561 = !DILocation(line: 472, column: 28, scope: !3573, inlinedAt: !5562)
!5562 = distinct !DILocation(line: 481, column: 9, scope: !3578, inlinedAt: !5563)
!5563 = distinct !DILocation(line: 545, column: 11, scope: !3580, inlinedAt: !5553)
!5564 = !DILocation(line: 472, column: 40, scope: !3573, inlinedAt: !5562)
!5565 = !DILocation(line: 472, column: 60, scope: !3573, inlinedAt: !5562)
!5566 = !DILocation(line: 478, column: 51, scope: !3578, inlinedAt: !5563)
!5567 = !DILocation(line: 478, column: 63, scope: !3578, inlinedAt: !5563)
!5568 = !DILocation(line: 480, column: 15, scope: !3578, inlinedAt: !5563)
!5569 = !DILocation(line: 538, column: 45, scope: !3550, inlinedAt: !5553)
!5570 = !DILocation(line: 538, column: 57, scope: !3550, inlinedAt: !5553)
!5571 = !DILocation(line: 542, column: 16, scope: !3548, inlinedAt: !5553)
!5572 = !DILocalVariable(name: "attr", arg: 1, scope: !5550, file: !3, line: 100, type: !78)
!5573 = !DILocation(line: 100, column: 50, scope: !5550)
!5574 = !DILocalVariable(name: "buffer", arg: 2, scope: !5550, file: !3, line: 100, type: !100)
!5575 = !DILocation(line: 100, column: 62, scope: !5550)
!5576 = !DILocalVariable(name: "ret", scope: !5550, file: !3, line: 102, type: !73)
!5577 = !DILocation(line: 102, column: 6, scope: !5550)
!5578 = !DILocalVariable(name: "extra", scope: !5550, file: !3, line: 103, type: !100)
!5579 = !DILocation(line: 103, column: 8, scope: !5550)
!5580 = !DILocation(line: 540, column: 27, scope: !3549, inlinedAt: !5553)
!5581 = !DILocation(line: 540, column: 6, scope: !3549, inlinedAt: !5553)
!5582 = !DILocation(line: 540, column: 6, scope: !3550, inlinedAt: !5553)
!5583 = !DILocation(line: 544, column: 7, scope: !3580, inlinedAt: !5553)
!5584 = !DILocation(line: 544, column: 12, scope: !3580, inlinedAt: !5553)
!5585 = !DILocation(line: 544, column: 7, scope: !3548, inlinedAt: !5553)
!5586 = !DILocation(line: 545, column: 25, scope: !3580, inlinedAt: !5553)
!5587 = !DILocation(line: 545, column: 31, scope: !3580, inlinedAt: !5553)
!5588 = !DILocation(line: 480, column: 33, scope: !3578, inlinedAt: !5563)
!5589 = !DILocation(line: 480, column: 23, scope: !3578, inlinedAt: !5563)
!5590 = !DILocation(line: 481, column: 29, scope: !3578, inlinedAt: !5563)
!5591 = !DILocation(line: 481, column: 35, scope: !3578, inlinedAt: !5563)
!5592 = !DILocation(line: 481, column: 42, scope: !3578, inlinedAt: !5563)
!5593 = !DILocation(line: 474, column: 23, scope: !3573, inlinedAt: !5562)
!5594 = !DILocation(line: 474, column: 29, scope: !3573, inlinedAt: !5562)
!5595 = !DILocation(line: 474, column: 36, scope: !3573, inlinedAt: !5562)
!5596 = !DILocation(line: 474, column: 9, scope: !3573, inlinedAt: !5562)
!5597 = !DILocation(line: 545, column: 4, scope: !3580, inlinedAt: !5553)
!5598 = !DILocation(line: 547, column: 25, scope: !3548, inlinedAt: !5553)
!5599 = !DILocation(line: 348, column: 7, scope: !3625, inlinedAt: !5560)
!5600 = !DILocation(line: 348, column: 6, scope: !3567, inlinedAt: !5560)
!5601 = !DILocation(line: 349, column: 3, scope: !3625, inlinedAt: !5560)
!5602 = !DILocation(line: 351, column: 6, scope: !3629, inlinedAt: !5560)
!5603 = !DILocation(line: 351, column: 11, scope: !3629, inlinedAt: !5560)
!5604 = !DILocation(line: 351, column: 6, scope: !3567, inlinedAt: !5560)
!5605 = !DILocation(line: 352, column: 3, scope: !3629, inlinedAt: !5560)
!5606 = !DILocation(line: 354, column: 32, scope: !3634, inlinedAt: !5560)
!5607 = !DILocation(line: 354, column: 37, scope: !3634, inlinedAt: !5560)
!5608 = !DILocation(line: 354, column: 42, scope: !3634, inlinedAt: !5560)
!5609 = !DILocation(line: 354, column: 45, scope: !3634, inlinedAt: !5560)
!5610 = !DILocation(line: 354, column: 50, scope: !3634, inlinedAt: !5560)
!5611 = !DILocation(line: 354, column: 6, scope: !3567, inlinedAt: !5560)
!5612 = !DILocation(line: 355, column: 3, scope: !3634, inlinedAt: !5560)
!5613 = !DILocation(line: 356, column: 32, scope: !3642, inlinedAt: !5560)
!5614 = !DILocation(line: 356, column: 37, scope: !3642, inlinedAt: !5560)
!5615 = !DILocation(line: 356, column: 43, scope: !3642, inlinedAt: !5560)
!5616 = !DILocation(line: 356, column: 46, scope: !3642, inlinedAt: !5560)
!5617 = !DILocation(line: 356, column: 51, scope: !3642, inlinedAt: !5560)
!5618 = !DILocation(line: 356, column: 6, scope: !3567, inlinedAt: !5560)
!5619 = !DILocation(line: 357, column: 3, scope: !3642, inlinedAt: !5560)
!5620 = !DILocation(line: 358, column: 6, scope: !3650, inlinedAt: !5560)
!5621 = !DILocation(line: 358, column: 11, scope: !3650, inlinedAt: !5560)
!5622 = !DILocation(line: 358, column: 6, scope: !3567, inlinedAt: !5560)
!5623 = !DILocation(line: 358, column: 26, scope: !3650, inlinedAt: !5560)
!5624 = !DILocation(line: 359, column: 6, scope: !3655, inlinedAt: !5560)
!5625 = !DILocation(line: 359, column: 11, scope: !3655, inlinedAt: !5560)
!5626 = !DILocation(line: 359, column: 6, scope: !3567, inlinedAt: !5560)
!5627 = !DILocation(line: 359, column: 26, scope: !3655, inlinedAt: !5560)
!5628 = !DILocation(line: 360, column: 6, scope: !3660, inlinedAt: !5560)
!5629 = !DILocation(line: 360, column: 11, scope: !3660, inlinedAt: !5560)
!5630 = !DILocation(line: 360, column: 6, scope: !3567, inlinedAt: !5560)
!5631 = !DILocation(line: 360, column: 26, scope: !3660, inlinedAt: !5560)
!5632 = !DILocation(line: 361, column: 6, scope: !3665, inlinedAt: !5560)
!5633 = !DILocation(line: 361, column: 11, scope: !3665, inlinedAt: !5560)
!5634 = !DILocation(line: 361, column: 6, scope: !3567, inlinedAt: !5560)
!5635 = !DILocation(line: 361, column: 26, scope: !3665, inlinedAt: !5560)
!5636 = !DILocation(line: 362, column: 6, scope: !3670, inlinedAt: !5560)
!5637 = !DILocation(line: 362, column: 11, scope: !3670, inlinedAt: !5560)
!5638 = !DILocation(line: 362, column: 6, scope: !3567, inlinedAt: !5560)
!5639 = !DILocation(line: 362, column: 26, scope: !3670, inlinedAt: !5560)
!5640 = !DILocation(line: 363, column: 6, scope: !3675, inlinedAt: !5560)
!5641 = !DILocation(line: 363, column: 11, scope: !3675, inlinedAt: !5560)
!5642 = !DILocation(line: 363, column: 6, scope: !3567, inlinedAt: !5560)
!5643 = !DILocation(line: 363, column: 26, scope: !3675, inlinedAt: !5560)
!5644 = !DILocation(line: 364, column: 6, scope: !3680, inlinedAt: !5560)
!5645 = !DILocation(line: 364, column: 11, scope: !3680, inlinedAt: !5560)
!5646 = !DILocation(line: 364, column: 6, scope: !3567, inlinedAt: !5560)
!5647 = !DILocation(line: 364, column: 26, scope: !3680, inlinedAt: !5560)
!5648 = !DILocation(line: 365, column: 6, scope: !3685, inlinedAt: !5560)
!5649 = !DILocation(line: 365, column: 11, scope: !3685, inlinedAt: !5560)
!5650 = !DILocation(line: 365, column: 6, scope: !3567, inlinedAt: !5560)
!5651 = !DILocation(line: 365, column: 26, scope: !3685, inlinedAt: !5560)
!5652 = !DILocation(line: 366, column: 6, scope: !3690, inlinedAt: !5560)
!5653 = !DILocation(line: 366, column: 11, scope: !3690, inlinedAt: !5560)
!5654 = !DILocation(line: 366, column: 6, scope: !3567, inlinedAt: !5560)
!5655 = !DILocation(line: 366, column: 26, scope: !3690, inlinedAt: !5560)
!5656 = !DILocation(line: 367, column: 6, scope: !3695, inlinedAt: !5560)
!5657 = !DILocation(line: 367, column: 11, scope: !3695, inlinedAt: !5560)
!5658 = !DILocation(line: 367, column: 6, scope: !3567, inlinedAt: !5560)
!5659 = !DILocation(line: 367, column: 26, scope: !3695, inlinedAt: !5560)
!5660 = !DILocation(line: 368, column: 6, scope: !3700, inlinedAt: !5560)
!5661 = !DILocation(line: 368, column: 11, scope: !3700, inlinedAt: !5560)
!5662 = !DILocation(line: 368, column: 6, scope: !3567, inlinedAt: !5560)
!5663 = !DILocation(line: 368, column: 26, scope: !3700, inlinedAt: !5560)
!5664 = !DILocation(line: 369, column: 6, scope: !3705, inlinedAt: !5560)
!5665 = !DILocation(line: 369, column: 11, scope: !3705, inlinedAt: !5560)
!5666 = !DILocation(line: 369, column: 6, scope: !3567, inlinedAt: !5560)
!5667 = !DILocation(line: 369, column: 26, scope: !3705, inlinedAt: !5560)
!5668 = !DILocation(line: 370, column: 6, scope: !3710, inlinedAt: !5560)
!5669 = !DILocation(line: 370, column: 11, scope: !3710, inlinedAt: !5560)
!5670 = !DILocation(line: 370, column: 6, scope: !3567, inlinedAt: !5560)
!5671 = !DILocation(line: 370, column: 26, scope: !3710, inlinedAt: !5560)
!5672 = !DILocation(line: 371, column: 6, scope: !3715, inlinedAt: !5560)
!5673 = !DILocation(line: 371, column: 11, scope: !3715, inlinedAt: !5560)
!5674 = !DILocation(line: 371, column: 6, scope: !3567, inlinedAt: !5560)
!5675 = !DILocation(line: 371, column: 26, scope: !3715, inlinedAt: !5560)
!5676 = !DILocation(line: 372, column: 6, scope: !3720, inlinedAt: !5560)
!5677 = !DILocation(line: 372, column: 11, scope: !3720, inlinedAt: !5560)
!5678 = !DILocation(line: 372, column: 6, scope: !3567, inlinedAt: !5560)
!5679 = !DILocation(line: 372, column: 26, scope: !3720, inlinedAt: !5560)
!5680 = !DILocation(line: 373, column: 6, scope: !3725, inlinedAt: !5560)
!5681 = !DILocation(line: 373, column: 11, scope: !3725, inlinedAt: !5560)
!5682 = !DILocation(line: 373, column: 6, scope: !3567, inlinedAt: !5560)
!5683 = !DILocation(line: 373, column: 26, scope: !3725, inlinedAt: !5560)
!5684 = !DILocation(line: 374, column: 6, scope: !3730, inlinedAt: !5560)
!5685 = !DILocation(line: 374, column: 11, scope: !3730, inlinedAt: !5560)
!5686 = !DILocation(line: 374, column: 6, scope: !3567, inlinedAt: !5560)
!5687 = !DILocation(line: 374, column: 26, scope: !3730, inlinedAt: !5560)
!5688 = !DILocation(line: 375, column: 6, scope: !3735, inlinedAt: !5560)
!5689 = !DILocation(line: 375, column: 11, scope: !3735, inlinedAt: !5560)
!5690 = !DILocation(line: 375, column: 6, scope: !3567, inlinedAt: !5560)
!5691 = !DILocation(line: 375, column: 27, scope: !3735, inlinedAt: !5560)
!5692 = !DILocation(line: 376, column: 6, scope: !3740, inlinedAt: !5560)
!5693 = !DILocation(line: 376, column: 11, scope: !3740, inlinedAt: !5560)
!5694 = !DILocation(line: 376, column: 6, scope: !3567, inlinedAt: !5560)
!5695 = !DILocation(line: 376, column: 32, scope: !3740, inlinedAt: !5560)
!5696 = !DILocation(line: 377, column: 6, scope: !3745, inlinedAt: !5560)
!5697 = !DILocation(line: 377, column: 11, scope: !3745, inlinedAt: !5560)
!5698 = !DILocation(line: 377, column: 6, scope: !3567, inlinedAt: !5560)
!5699 = !DILocation(line: 377, column: 32, scope: !3745, inlinedAt: !5560)
!5700 = !DILocation(line: 378, column: 6, scope: !3750, inlinedAt: !5560)
!5701 = !DILocation(line: 378, column: 11, scope: !3750, inlinedAt: !5560)
!5702 = !DILocation(line: 378, column: 6, scope: !3567, inlinedAt: !5560)
!5703 = !DILocation(line: 378, column: 32, scope: !3750, inlinedAt: !5560)
!5704 = !DILocation(line: 379, column: 6, scope: !3755, inlinedAt: !5560)
!5705 = !DILocation(line: 379, column: 11, scope: !3755, inlinedAt: !5560)
!5706 = !DILocation(line: 379, column: 6, scope: !3567, inlinedAt: !5560)
!5707 = !DILocation(line: 379, column: 33, scope: !3755, inlinedAt: !5560)
!5708 = !DILocation(line: 380, column: 6, scope: !3760, inlinedAt: !5560)
!5709 = !DILocation(line: 380, column: 11, scope: !3760, inlinedAt: !5560)
!5710 = !DILocation(line: 380, column: 6, scope: !3567, inlinedAt: !5560)
!5711 = !DILocation(line: 380, column: 33, scope: !3760, inlinedAt: !5560)
!5712 = !DILocation(line: 381, column: 6, scope: !3765, inlinedAt: !5560)
!5713 = !DILocation(line: 381, column: 11, scope: !3765, inlinedAt: !5560)
!5714 = !DILocation(line: 381, column: 6, scope: !3567, inlinedAt: !5560)
!5715 = !DILocation(line: 381, column: 33, scope: !3765, inlinedAt: !5560)
!5716 = !DILocation(line: 382, column: 2, scope: !3770, inlinedAt: !5560)
!5717 = !DILocation(line: 382, column: 2, scope: !3774, inlinedAt: !5560)
!5718 = !DILocation(line: 382, column: 2, scope: !3775, inlinedAt: !5560)
!5719 = !DILocation(line: 386, column: 1, scope: !3567, inlinedAt: !5560)
!5720 = !DILocation(line: 547, column: 9, scope: !3548, inlinedAt: !5553)
!5721 = !DILocation(line: 549, column: 8, scope: !3781, inlinedAt: !5553)
!5722 = !DILocation(line: 549, column: 7, scope: !3548, inlinedAt: !5553)
!5723 = !DILocation(line: 550, column: 4, scope: !3781, inlinedAt: !5553)
!5724 = !DILocation(line: 553, column: 33, scope: !3548, inlinedAt: !5553)
!5725 = !DILocation(line: 325, column: 6, scope: !3786, inlinedAt: !5558)
!5726 = !DILocation(line: 325, column: 6, scope: !3561, inlinedAt: !5558)
!5727 = !DILocation(line: 326, column: 3, scope: !3786, inlinedAt: !5558)
!5728 = !DILocation(line: 332, column: 9, scope: !3561, inlinedAt: !5558)
!5729 = !DILocation(line: 332, column: 15, scope: !3561, inlinedAt: !5558)
!5730 = !DILocation(line: 332, column: 2, scope: !3561, inlinedAt: !5558)
!5731 = !DILocation(line: 336, column: 1, scope: !3561, inlinedAt: !5558)
!5732 = !DILocation(line: 553, column: 5, scope: !3548, inlinedAt: !5553)
!5733 = !DILocation(line: 553, column: 41, scope: !3548, inlinedAt: !5553)
!5734 = !DILocation(line: 554, column: 5, scope: !3548, inlinedAt: !5553)
!5735 = !DILocation(line: 554, column: 12, scope: !3548, inlinedAt: !5553)
!5736 = !DILocation(line: 448, column: 31, scope: !3543, inlinedAt: !5552)
!5737 = !DILocation(line: 448, column: 34, scope: !3543, inlinedAt: !5552)
!5738 = !DILocation(line: 448, column: 14, scope: !3543, inlinedAt: !5552)
!5739 = !DILocation(line: 450, column: 22, scope: !3543, inlinedAt: !5552)
!5740 = !DILocation(line: 450, column: 25, scope: !3543, inlinedAt: !5552)
!5741 = !DILocation(line: 450, column: 30, scope: !3543, inlinedAt: !5552)
!5742 = !DILocation(line: 450, column: 36, scope: !3543, inlinedAt: !5552)
!5743 = !DILocation(line: 450, column: 8, scope: !3543, inlinedAt: !5552)
!5744 = !DILocation(line: 450, column: 6, scope: !3543, inlinedAt: !5552)
!5745 = !DILocation(line: 451, column: 9, scope: !3543, inlinedAt: !5552)
!5746 = !DILocation(line: 552, column: 3, scope: !3548, inlinedAt: !5553)
!5747 = !DILocation(line: 557, column: 19, scope: !3550, inlinedAt: !5553)
!5748 = !DILocation(line: 557, column: 25, scope: !3550, inlinedAt: !5553)
!5749 = !DILocation(line: 557, column: 9, scope: !3550, inlinedAt: !5553)
!5750 = !DILocation(line: 557, column: 2, scope: !3550, inlinedAt: !5553)
!5751 = !DILocation(line: 558, column: 1, scope: !3550, inlinedAt: !5553)
!5752 = !DILocation(line: 105, column: 8, scope: !5550)
!5753 = !DILocation(line: 106, column: 6, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 106, column: 6)
!5755 = !DILocation(line: 106, column: 6, scope: !5550)
!5756 = !DILocation(line: 107, column: 53, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 106, column: 13)
!5758 = !DILocation(line: 107, column: 9, scope: !5757)
!5759 = !DILocation(line: 107, column: 7, scope: !5757)
!5760 = !DILocation(line: 108, column: 8, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 108, column: 7)
!5762 = !DILocation(line: 108, column: 7, scope: !5757)
!5763 = !DILocation(line: 109, column: 18, scope: !5761)
!5764 = !DILocation(line: 109, column: 34, scope: !5761)
!5765 = !DILocation(line: 109, column: 10, scope: !5761)
!5766 = !DILocation(line: 109, column: 8, scope: !5761)
!5767 = !DILocation(line: 109, column: 4, scope: !5761)
!5768 = !DILocation(line: 110, column: 9, scope: !5757)
!5769 = !DILocation(line: 110, column: 3, scope: !5757)
!5770 = !DILocation(line: 111, column: 2, scope: !5757)
!5771 = !DILocation(line: 113, column: 9, scope: !5550)
!5772 = !DILocation(line: 113, column: 2, scope: !5550)
!5773 = distinct !DISubprogram(name: "guest_type_show", scope: !3, file: !3, line: 50, type: !94, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5774 = !DILocalVariable(name: "attr", arg: 1, scope: !5773, file: !3, line: 50, type: !78)
!5775 = !DILocation(line: 50, column: 55, scope: !5773)
!5776 = !DILocalVariable(name: "buffer", arg: 2, scope: !5773, file: !3, line: 50, type: !100)
!5777 = !DILocation(line: 50, column: 67, scope: !5773)
!5778 = !DILocalVariable(name: "type", scope: !5773, file: !3, line: 52, type: !86)
!5779 = !DILocation(line: 52, column: 14, scope: !5773)
!5780 = !DILocation(line: 54, column: 10, scope: !5773)
!5781 = !DILocation(line: 54, column: 2, scope: !5773)
!5782 = !DILocation(line: 57, column: 8, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 54, column: 27)
!5784 = !DILocation(line: 58, column: 3, scope: !5783)
!5785 = !DILocation(line: 60, column: 8, scope: !5783)
!5786 = !DILocation(line: 61, column: 3, scope: !5783)
!5787 = !DILocation(line: 63, column: 8, scope: !5783)
!5788 = !DILocation(line: 64, column: 3, scope: !5783)
!5789 = !DILocation(line: 66, column: 3, scope: !5783)
!5790 = !DILocation(line: 69, column: 17, scope: !5773)
!5791 = !DILocation(line: 69, column: 33, scope: !5773)
!5792 = !DILocation(line: 69, column: 9, scope: !5773)
!5793 = !DILocation(line: 69, column: 2, scope: !5773)
!5794 = !DILocation(line: 70, column: 1, scope: !5773)
!5795 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 38, type: !94, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5796 = !DILocalVariable(name: "attr", arg: 1, scope: !5795, file: !3, line: 38, type: !78)
!5797 = !DILocation(line: 38, column: 49, scope: !5795)
!5798 = !DILocalVariable(name: "buffer", arg: 2, scope: !5795, file: !3, line: 38, type: !100)
!5799 = !DILocation(line: 38, column: 61, scope: !5795)
!5800 = !DILocation(line: 40, column: 17, scope: !5795)
!5801 = !DILocation(line: 40, column: 9, scope: !5795)
!5802 = !DILocation(line: 40, column: 2, scope: !5795)
!5803 = distinct !DISubprogram(name: "hyp_sysfs_show", scope: !3, file: !3, line: 570, type: !208, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5804 = !DILocalVariable(name: "kobj", arg: 1, scope: !5803, file: !3, line: 570, type: !122)
!5805 = !DILocation(line: 570, column: 47, scope: !5803)
!5806 = !DILocalVariable(name: "attr", arg: 2, scope: !5803, file: !3, line: 571, type: !210)
!5807 = !DILocation(line: 571, column: 28, scope: !5803)
!5808 = !DILocalVariable(name: "buffer", arg: 3, scope: !5803, file: !3, line: 572, type: !100)
!5809 = !DILocation(line: 572, column: 16, scope: !5803)
!5810 = !DILocalVariable(name: "hyp_attr", scope: !5803, file: !3, line: 574, type: !78)
!5811 = !DILocation(line: 574, column: 25, scope: !5803)
!5812 = !DILocalVariable(name: "__mptr", scope: !5813, file: !3, line: 575, type: !76)
!5813 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 575, column: 13)
!5814 = !DILocation(line: 575, column: 13, scope: !5813)
!5815 = !DILocation(line: 575, column: 13, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 575, column: 13)
!5817 = !DILocation(line: 575, column: 11, scope: !5803)
!5818 = !DILocation(line: 576, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 576, column: 6)
!5820 = !DILocation(line: 576, column: 16, scope: !5819)
!5821 = !DILocation(line: 576, column: 6, scope: !5803)
!5822 = !DILocation(line: 577, column: 10, scope: !5819)
!5823 = !DILocation(line: 577, column: 20, scope: !5819)
!5824 = !DILocation(line: 577, column: 25, scope: !5819)
!5825 = !DILocation(line: 577, column: 35, scope: !5819)
!5826 = !DILocation(line: 577, column: 3, scope: !5819)
!5827 = !DILocation(line: 578, column: 2, scope: !5803)
!5828 = !DILocation(line: 579, column: 1, scope: !5803)
!5829 = distinct !DISubprogram(name: "hyp_sysfs_store", scope: !3, file: !3, line: 581, type: !213, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!5830 = !DILocalVariable(name: "kobj", arg: 1, scope: !5829, file: !3, line: 581, type: !122)
!5831 = !DILocation(line: 581, column: 48, scope: !5829)
!5832 = !DILocalVariable(name: "attr", arg: 2, scope: !5829, file: !3, line: 582, type: !210)
!5833 = !DILocation(line: 582, column: 29, scope: !5829)
!5834 = !DILocalVariable(name: "buffer", arg: 3, scope: !5829, file: !3, line: 583, type: !86)
!5835 = !DILocation(line: 583, column: 23, scope: !5829)
!5836 = !DILocalVariable(name: "len", arg: 4, scope: !5829, file: !3, line: 584, type: !105)
!5837 = !DILocation(line: 584, column: 18, scope: !5829)
!5838 = !DILocalVariable(name: "hyp_attr", scope: !5829, file: !3, line: 586, type: !78)
!5839 = !DILocation(line: 586, column: 25, scope: !5829)
!5840 = !DILocalVariable(name: "__mptr", scope: !5841, file: !3, line: 587, type: !76)
!5841 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 587, column: 13)
!5842 = !DILocation(line: 587, column: 13, scope: !5841)
!5843 = !DILocation(line: 587, column: 13, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 587, column: 13)
!5845 = !DILocation(line: 587, column: 11, scope: !5829)
!5846 = !DILocation(line: 588, column: 6, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 588, column: 6)
!5848 = !DILocation(line: 588, column: 16, scope: !5847)
!5849 = !DILocation(line: 588, column: 6, scope: !5829)
!5850 = !DILocation(line: 589, column: 10, scope: !5847)
!5851 = !DILocation(line: 589, column: 20, scope: !5847)
!5852 = !DILocation(line: 589, column: 26, scope: !5847)
!5853 = !DILocation(line: 589, column: 36, scope: !5847)
!5854 = !DILocation(line: 589, column: 44, scope: !5847)
!5855 = !DILocation(line: 589, column: 3, scope: !5847)
!5856 = !DILocation(line: 590, column: 2, scope: !5829)
!5857 = !DILocation(line: 591, column: 1, scope: !5829)
