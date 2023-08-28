; ModuleID = '../bcout/drivers/ntb/core.llvm.bc'
source_filename = "drivers/ntb/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ntb_driver_init6:\09\09\09"
module asm ".long\09ntb_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, i8*, i8* }
%struct.module_attribute = type { %struct.attribute, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)*, void (%struct.module*, i8*)*, i32 (%struct.module*)*, void (%struct.module*)* }
%struct.attribute = type { i8*, i16 }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
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
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
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
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.module = type opaque
%struct.module_param_attrs = type opaque
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.ntb_client = type { %struct.device_driver, %struct.ntb_client_ops }
%struct.ntb_client_ops = type { i32 (%struct.ntb_client*, %struct.ntb_dev*)*, void (%struct.ntb_client*, %struct.ntb_dev*)* }
%struct.ntb_dev = type { %struct.device, %struct.pci_dev*, i32, %struct.ntb_dev_ops*, i8*, %struct.ntb_ctx_ops*, %struct.spinlock, %struct.completion }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.ntb_dev_ops = type { i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i32)*, i32 (%struct.ntb_dev*, i32)*, i64 (%struct.ntb_dev*, i32*, i32*)*, i32 (%struct.ntb_dev*, i32, i32)*, i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i32)*, i32 (%struct.ntb_dev*, i32, i32, i64*, i64*, i64*)*, i32 (%struct.ntb_dev*, i32, i32, i64, i64)*, i32 (%struct.ntb_dev*, i32, i32)*, i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i32, i64*, i64*)*, i32 (%struct.ntb_dev*, i32, i32, i64, i64)*, i32 (%struct.ntb_dev*, i32, i32)*, i32 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*, i32)*, i64 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)*, i64 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64*, i64*, i64*, i32)*, i64 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)*, i64 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i32)*, i32 (%struct.ntb_dev*, i32, i32)*, i32 (%struct.ntb_dev*, i32, i32, i64*)*, i32 (%struct.ntb_dev*, i32, i32)*, i32 (%struct.ntb_dev*, i32, i32, i32)*, i32 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i32*, i32)*, i32 (%struct.ntb_dev*, i32, i32, i32)* }
%struct.ntb_ctx_ops = type { void (i8*)*, void (i8*, i32)*, void (i8*)* }

@__UNIQUE_ID_file234 = internal constant [25 x i8] c"ntb.file=drivers/ntb/ntb\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license235 = internal constant [25 x i8] c"ntb.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !4175
@__UNIQUE_ID_version236 = internal constant [16 x i8] c"ntb.version=1.0\00", section ".modinfo", align 1, !dbg !4180
@___modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i16 292 }, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)* @__modver_version_show, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)* null, void (%struct.module*, i8*)* null, i32 (%struct.module*)* null, void (%struct.module*)* null }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, align 8, !dbg !4245
@__modver_attr = internal constant %struct.module_version_attribute* @___modver_attr, section "__modver", align 8, !dbg !4183
@__UNIQUE_ID_author237 = internal constant [45 x i8] c"ntb.author=Allen Hubbe <Allen.Hubbe@emc.com>\00", section ".modinfo", align 1, !dbg !4228
@__UNIQUE_ID_description238 = internal constant [42 x i8] c"ntb.description=PCIe NTB Driver Framework\00", section ".modinfo", align 1, !dbg !4233
@ntb_bus = internal global %struct.bus_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* @ntb_probe, void (%struct.device*)* null, i32 (%struct.device*)* @ntb_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !4252
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__UNIQUE_ID___addressable_ntb_driver_init244 = internal global i8* bitcast (i32 ()* @ntb_driver_init to i8*), section ".discard.addressable", align 8, !dbg !4238
@__exitcall_ntb_driver_exit = internal global void ()* @ntb_driver_exit, section ".exitcall.exit", align 8, !dbg !4240
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ntb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4247
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [9 x i8*] [i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_file234, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license235, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__UNIQUE_ID_version236, i32 0, i32 0), i8* bitcast (%struct.module_version_attribute** @__modver_attr to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author237, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_description238, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_ntb_driver_init244 to i8*), i8* bitcast (void ()* @ntb_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ntb_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__ntb_register_client(%struct.ntb_client* %client, %struct.module* %mod, i8* %mod_name) #0 !dbg !4260 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.ntb_client*, align 8
  %mod.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  store %struct.ntb_client* %client, %struct.ntb_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_client** %client.addr, metadata !4263, metadata !DIExpression()), !dbg !4264
  store %struct.module* %mod, %struct.module** %mod.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %mod.addr, metadata !4265, metadata !DIExpression()), !dbg !4266
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !4267, metadata !DIExpression()), !dbg !4268
  %0 = load %struct.ntb_client*, %struct.ntb_client** %client.addr, align 8, !dbg !4269
  %tobool = icmp ne %struct.ntb_client* %0, null, !dbg !4269
  br i1 %tobool, label %if.end, label %if.then, !dbg !4271

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4272
  br label %return, !dbg !4272

if.end:                                           ; preds = %entry
  %1 = load %struct.ntb_client*, %struct.ntb_client** %client.addr, align 8, !dbg !4273
  %ops = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %1, i32 0, i32 1, !dbg !4275
  %call = call i32 @ntb_client_ops_is_valid(%struct.ntb_client_ops* %ops) #7, !dbg !4276
  %tobool1 = icmp ne i32 %call, 0, !dbg !4276
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4277

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4278
  br label %return, !dbg !4278

if.end3:                                          ; preds = %if.end
  %2 = load %struct.ntb_client*, %struct.ntb_client** %client.addr, align 8, !dbg !4279
  %drv = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %2, i32 0, i32 0, !dbg !4280
  %3 = bitcast %struct.device_driver* %drv to i8*, !dbg !4281
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 144, i1 false), !dbg !4281
  %4 = load %struct.ntb_client*, %struct.ntb_client** %client.addr, align 8, !dbg !4282
  %drv4 = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %4, i32 0, i32 0, !dbg !4283
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv4, i32 0, i32 1, !dbg !4284
  store %struct.bus_type* @ntb_bus, %struct.bus_type** %bus, align 8, !dbg !4285
  %5 = load i8*, i8** %mod_name.addr, align 8, !dbg !4286
  %6 = load %struct.ntb_client*, %struct.ntb_client** %client.addr, align 8, !dbg !4287
  %drv5 = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %6, i32 0, i32 0, !dbg !4288
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv5, i32 0, i32 0, !dbg !4289
  store i8* %5, i8** %name, align 8, !dbg !4290
  %7 = load %struct.module*, %struct.module** %mod.addr, align 8, !dbg !4291
  %8 = load %struct.ntb_client*, %struct.ntb_client** %client.addr, align 8, !dbg !4292
  %drv6 = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %8, i32 0, i32 0, !dbg !4293
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv6, i32 0, i32 2, !dbg !4294
  store %struct.module* %7, %struct.module** %owner, align 8, !dbg !4295
  %9 = load %struct.ntb_client*, %struct.ntb_client** %client.addr, align 8, !dbg !4296
  %drv7 = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %9, i32 0, i32 0, !dbg !4297
  %call8 = call i32 @driver_register(%struct.device_driver* %drv7) #7, !dbg !4298
  store i32 %call8, i32* %retval, align 4, !dbg !4299
  br label %return, !dbg !4299

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4300
  ret i32 %10, !dbg !4300
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ntb_client_ops_is_valid(%struct.ntb_client_ops* %ops) #0 !dbg !4301 {
entry:
  %ops.addr = alloca %struct.ntb_client_ops*, align 8
  store %struct.ntb_client_ops* %ops, %struct.ntb_client_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_client_ops** %ops.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  %0 = load %struct.ntb_client_ops*, %struct.ntb_client_ops** %ops.addr, align 8, !dbg !4307
  %probe = getelementptr inbounds %struct.ntb_client_ops, %struct.ntb_client_ops* %0, i32 0, i32 0, !dbg !4308
  %1 = load i32 (%struct.ntb_client*, %struct.ntb_dev*)*, i32 (%struct.ntb_client*, %struct.ntb_dev*)** %probe, align 8, !dbg !4308
  %tobool = icmp ne i32 (%struct.ntb_client*, %struct.ntb_dev*)* %1, null, !dbg !4307
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !4309

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ntb_client_ops*, %struct.ntb_client_ops** %ops.addr, align 8, !dbg !4310
  %remove = getelementptr inbounds %struct.ntb_client_ops, %struct.ntb_client_ops* %2, i32 0, i32 1, !dbg !4311
  %3 = load void (%struct.ntb_client*, %struct.ntb_dev*)*, void (%struct.ntb_client*, %struct.ntb_dev*)** %remove, align 8, !dbg !4311
  %tobool1 = icmp ne void (%struct.ntb_client*, %struct.ntb_dev*)* %3, null, !dbg !4310
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !4312

land.rhs:                                         ; preds = %land.lhs.true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ true, %land.rhs ], !dbg !4313
  %land.ext = zext i1 %4 to i32, !dbg !4312
  ret i32 %land.ext, !dbg !4314
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ntb_unregister_client(%struct.ntb_client* %client) #0 !dbg !4315 {
entry:
  %client.addr = alloca %struct.ntb_client*, align 8
  store %struct.ntb_client* %client, %struct.ntb_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_client** %client.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  %0 = load %struct.ntb_client*, %struct.ntb_client** %client.addr, align 8, !dbg !4320
  %drv = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %0, i32 0, i32 0, !dbg !4321
  call void @driver_unregister(%struct.device_driver* %drv) #7, !dbg !4322
  ret void, !dbg !4323
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ntb_register_device(%struct.ntb_dev* %ntb) #0 !dbg !4324 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4325, metadata !DIExpression()), !dbg !4331
  %retval = alloca i32, align 4
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  %0 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4336
  %tobool = icmp ne %struct.ntb_dev* %0, null, !dbg !4336
  br i1 %tobool, label %if.end, label %if.then, !dbg !4338

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4339
  br label %return, !dbg !4339

if.end:                                           ; preds = %entry
  %1 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4340
  %pdev = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %1, i32 0, i32 1, !dbg !4342
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4342
  %tobool1 = icmp ne %struct.pci_dev* %2, null, !dbg !4340
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4343

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4344
  br label %return, !dbg !4344

if.end3:                                          ; preds = %if.end
  %3 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4345
  %ops = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %3, i32 0, i32 3, !dbg !4347
  %4 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops, align 8, !dbg !4347
  %tobool4 = icmp ne %struct.ntb_dev_ops* %4, null, !dbg !4345
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4348

if.then5:                                         ; preds = %if.end3
  store i32 -22, i32* %retval, align 4, !dbg !4349
  br label %return, !dbg !4349

if.end6:                                          ; preds = %if.end3
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4350
  %ops7 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 3, !dbg !4352
  %6 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops7, align 8, !dbg !4352
  %call = call i32 @ntb_dev_ops_is_valid(%struct.ntb_dev_ops* %6) #7, !dbg !4353
  %tobool8 = icmp ne i32 %call, 0, !dbg !4353
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4354

if.then9:                                         ; preds = %if.end6
  store i32 -22, i32* %retval, align 4, !dbg !4355
  br label %return, !dbg !4355

if.end10:                                         ; preds = %if.end6
  %7 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4356
  %released = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %7, i32 0, i32 7, !dbg !4356
  call void @__init_completion(%struct.completion* %released) #7, !dbg !4356
  %8 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4357
  %dev = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %8, i32 0, i32 0, !dbg !4358
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 5, !dbg !4359
  store %struct.bus_type* @ntb_bus, %struct.bus_type** %bus, align 8, !dbg !4360
  %9 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4361
  %pdev11 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %9, i32 0, i32 1, !dbg !4362
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev11, align 8, !dbg !4362
  %dev12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !4363
  %11 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4364
  %dev13 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %11, i32 0, i32 0, !dbg !4365
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 1, !dbg !4366
  store %struct.device* %dev12, %struct.device** %parent, align 8, !dbg !4367
  %12 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4368
  %dev14 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %12, i32 0, i32 0, !dbg !4369
  %release = getelementptr inbounds %struct.device, %struct.device* %dev14, i32 0, i32 31, !dbg !4370
  store void (%struct.device*)* @ntb_dev_release, void (%struct.device*)** %release, align 8, !dbg !4371
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4372
  %dev15 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %13, i32 0, i32 0, !dbg !4373
  %14 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4374
  %pdev16 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %14, i32 0, i32 1, !dbg !4375
  %15 = load %struct.pci_dev*, %struct.pci_dev** %pdev16, align 8, !dbg !4375
  %call17 = call i8* @pci_name(%struct.pci_dev* %15) #7, !dbg !4376
  %call18 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %call17) #7, !dbg !4377
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4378
  %ctx = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %16, i32 0, i32 4, !dbg !4379
  store i8* null, i8** %ctx, align 8, !dbg !4380
  %17 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4381
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %17, i32 0, i32 5, !dbg !4382
  store %struct.ntb_ctx_ops* null, %struct.ntb_ctx_ops** %ctx_ops, align 8, !dbg !4383
  br label %do.body, !dbg !4384

do.body:                                          ; preds = %if.end10
  %18 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4385
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %18, i32 0, i32 6, !dbg !4385
  store %struct.spinlock* %ctx_lock, %struct.spinlock** %lock.addr.i, align 8
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4386
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !4387
  %rlock.i = bitcast %union.anon.3* %20 to %struct.raw_spinlock*, !dbg !4387
  %21 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4385
  %ctx_lock20 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %21, i32 0, i32 6, !dbg !4385
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4385
  %rlock = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !4385
  %23 = bitcast %struct.spinlock* %ctx_lock20 to i8*, !dbg !4385
  %24 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 1 %24, i64 0, i1 false), !dbg !4385
  br label %do.end, !dbg !4385

do.end:                                           ; preds = %do.body
  %25 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4388
  %dev21 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %25, i32 0, i32 0, !dbg !4389
  %call22 = call i32 @device_register(%struct.device* %dev21) #7, !dbg !4390
  store i32 %call22, i32* %retval, align 4, !dbg !4391
  br label %return, !dbg !4391

return:                                           ; preds = %do.end, %if.then9, %if.then5, %if.then2, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4392
  ret i32 %26, !dbg !4392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ntb_dev_ops_is_valid(%struct.ntb_dev_ops* %ops) #0 !dbg !4393 {
entry:
  %ops.addr = alloca %struct.ntb_dev_ops*, align 8
  store %struct.ntb_dev_ops* %ops, %struct.ntb_dev_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev_ops** %ops.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  %0 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4398
  %peer_port_count = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %0, i32 0, i32 1, !dbg !4399
  %1 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %peer_port_count, align 8, !dbg !4399
  %tobool = icmp ne i32 (%struct.ntb_dev*)* %1, null, !dbg !4400
  %lnot = xor i1 %tobool, true, !dbg !4400
  %lnot.ext = zext i1 %lnot to i32, !dbg !4400
  %2 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4401
  %port_number = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %2, i32 0, i32 0, !dbg !4402
  %3 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %port_number, align 8, !dbg !4402
  %tobool1 = icmp ne i32 (%struct.ntb_dev*)* %3, null, !dbg !4403
  %lnot2 = xor i1 %tobool1, true, !dbg !4403
  %lnot.ext3 = zext i1 %lnot2 to i32, !dbg !4403
  %cmp = icmp eq i32 %lnot.ext, %lnot.ext3, !dbg !4404
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4405

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4406
  %peer_port_number = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %4, i32 0, i32 2, !dbg !4407
  %5 = load i32 (%struct.ntb_dev*, i32)*, i32 (%struct.ntb_dev*, i32)** %peer_port_number, align 8, !dbg !4407
  %tobool4 = icmp ne i32 (%struct.ntb_dev*, i32)* %5, null, !dbg !4408
  %lnot5 = xor i1 %tobool4, true, !dbg !4408
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4408
  %6 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4409
  %port_number7 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %6, i32 0, i32 0, !dbg !4410
  %7 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %port_number7, align 8, !dbg !4410
  %tobool8 = icmp ne i32 (%struct.ntb_dev*)* %7, null, !dbg !4411
  %lnot9 = xor i1 %tobool8, true, !dbg !4411
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !4411
  %cmp11 = icmp eq i32 %lnot.ext6, %lnot.ext10, !dbg !4412
  br i1 %cmp11, label %land.lhs.true12, label %land.end, !dbg !4413

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4414
  %peer_port_idx = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %8, i32 0, i32 3, !dbg !4415
  %9 = load i32 (%struct.ntb_dev*, i32)*, i32 (%struct.ntb_dev*, i32)** %peer_port_idx, align 8, !dbg !4415
  %tobool13 = icmp ne i32 (%struct.ntb_dev*, i32)* %9, null, !dbg !4416
  %lnot14 = xor i1 %tobool13, true, !dbg !4416
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !4416
  %10 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4417
  %port_number16 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %10, i32 0, i32 0, !dbg !4418
  %11 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %port_number16, align 8, !dbg !4418
  %tobool17 = icmp ne i32 (%struct.ntb_dev*)* %11, null, !dbg !4419
  %lnot18 = xor i1 %tobool17, true, !dbg !4419
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4419
  %cmp20 = icmp eq i32 %lnot.ext15, %lnot.ext19, !dbg !4420
  br i1 %cmp20, label %land.lhs.true21, label %land.end, !dbg !4421

land.lhs.true21:                                  ; preds = %land.lhs.true12
  %12 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4422
  %link_is_up = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %12, i32 0, i32 4, !dbg !4423
  %13 = load i64 (%struct.ntb_dev*, i32*, i32*)*, i64 (%struct.ntb_dev*, i32*, i32*)** %link_is_up, align 8, !dbg !4423
  %tobool22 = icmp ne i64 (%struct.ntb_dev*, i32*, i32*)* %13, null, !dbg !4422
  br i1 %tobool22, label %land.lhs.true23, label %land.end, !dbg !4424

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %14 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4425
  %link_enable = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %14, i32 0, i32 5, !dbg !4426
  %15 = load i32 (%struct.ntb_dev*, i32, i32)*, i32 (%struct.ntb_dev*, i32, i32)** %link_enable, align 8, !dbg !4426
  %tobool24 = icmp ne i32 (%struct.ntb_dev*, i32, i32)* %15, null, !dbg !4425
  br i1 %tobool24, label %land.lhs.true25, label %land.end, !dbg !4427

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %16 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4428
  %link_disable = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %16, i32 0, i32 6, !dbg !4429
  %17 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %link_disable, align 8, !dbg !4429
  %tobool26 = icmp ne i32 (%struct.ntb_dev*)* %17, null, !dbg !4428
  br i1 %tobool26, label %land.lhs.true27, label %land.end, !dbg !4430

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %18 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4431
  %mw_count = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %18, i32 0, i32 7, !dbg !4432
  %19 = load i32 (%struct.ntb_dev*, i32)*, i32 (%struct.ntb_dev*, i32)** %mw_count, align 8, !dbg !4432
  %tobool28 = icmp ne i32 (%struct.ntb_dev*, i32)* %19, null, !dbg !4431
  br i1 %tobool28, label %land.lhs.true29, label %land.end, !dbg !4433

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %20 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4434
  %mw_get_align = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %20, i32 0, i32 8, !dbg !4435
  %21 = load i32 (%struct.ntb_dev*, i32, i32, i64*, i64*, i64*)*, i32 (%struct.ntb_dev*, i32, i32, i64*, i64*, i64*)** %mw_get_align, align 8, !dbg !4435
  %tobool30 = icmp ne i32 (%struct.ntb_dev*, i32, i32, i64*, i64*, i64*)* %21, null, !dbg !4434
  br i1 %tobool30, label %land.lhs.true31, label %land.end, !dbg !4436

land.lhs.true31:                                  ; preds = %land.lhs.true29
  %22 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4437
  %mw_set_trans = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %22, i32 0, i32 9, !dbg !4438
  %23 = load i32 (%struct.ntb_dev*, i32, i32, i64, i64)*, i32 (%struct.ntb_dev*, i32, i32, i64, i64)** %mw_set_trans, align 8, !dbg !4438
  %tobool32 = icmp ne i32 (%struct.ntb_dev*, i32, i32, i64, i64)* %23, null, !dbg !4437
  br i1 %tobool32, label %land.lhs.true34, label %lor.lhs.false, !dbg !4439

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %24 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4440
  %peer_mw_set_trans = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %24, i32 0, i32 13, !dbg !4441
  %25 = load i32 (%struct.ntb_dev*, i32, i32, i64, i64)*, i32 (%struct.ntb_dev*, i32, i32, i64, i64)** %peer_mw_set_trans, align 8, !dbg !4441
  %tobool33 = icmp ne i32 (%struct.ntb_dev*, i32, i32, i64, i64)* %25, null, !dbg !4440
  br i1 %tobool33, label %land.lhs.true34, label %land.end, !dbg !4442

land.lhs.true34:                                  ; preds = %lor.lhs.false, %land.lhs.true31
  %26 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4443
  %peer_mw_count = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %26, i32 0, i32 11, !dbg !4444
  %27 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %peer_mw_count, align 8, !dbg !4444
  %tobool35 = icmp ne i32 (%struct.ntb_dev*)* %27, null, !dbg !4443
  br i1 %tobool35, label %land.lhs.true36, label %land.end, !dbg !4445

land.lhs.true36:                                  ; preds = %land.lhs.true34
  %28 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4446
  %peer_mw_get_addr = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %28, i32 0, i32 12, !dbg !4447
  %29 = load i32 (%struct.ntb_dev*, i32, i64*, i64*)*, i32 (%struct.ntb_dev*, i32, i64*, i64*)** %peer_mw_get_addr, align 8, !dbg !4447
  %tobool37 = icmp ne i32 (%struct.ntb_dev*, i32, i64*, i64*)* %29, null, !dbg !4446
  br i1 %tobool37, label %land.lhs.true38, label %land.end, !dbg !4448

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %30 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4449
  %db_valid_mask = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %30, i32 0, i32 16, !dbg !4450
  %31 = load i64 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)** %db_valid_mask, align 8, !dbg !4450
  %tobool39 = icmp ne i64 (%struct.ntb_dev*)* %31, null, !dbg !4449
  br i1 %tobool39, label %land.lhs.true40, label %land.end, !dbg !4451

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %32 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4452
  %db_vector_count = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %32, i32 0, i32 17, !dbg !4453
  %33 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %db_vector_count, align 8, !dbg !4453
  %tobool41 = icmp ne i32 (%struct.ntb_dev*)* %33, null, !dbg !4454
  %lnot42 = xor i1 %tobool41, true, !dbg !4454
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !4454
  %34 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4455
  %db_vector_mask = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %34, i32 0, i32 18, !dbg !4456
  %35 = load i64 (%struct.ntb_dev*, i32)*, i64 (%struct.ntb_dev*, i32)** %db_vector_mask, align 8, !dbg !4456
  %tobool44 = icmp ne i64 (%struct.ntb_dev*, i32)* %35, null, !dbg !4457
  %lnot45 = xor i1 %tobool44, true, !dbg !4457
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !4457
  %cmp47 = icmp eq i32 %lnot.ext43, %lnot.ext46, !dbg !4458
  br i1 %cmp47, label %land.lhs.true48, label %land.end, !dbg !4459

land.lhs.true48:                                  ; preds = %land.lhs.true40
  %36 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4460
  %db_read = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %36, i32 0, i32 19, !dbg !4461
  %37 = load i64 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)** %db_read, align 8, !dbg !4461
  %tobool49 = icmp ne i64 (%struct.ntb_dev*)* %37, null, !dbg !4460
  br i1 %tobool49, label %land.lhs.true50, label %land.end, !dbg !4462

land.lhs.true50:                                  ; preds = %land.lhs.true48
  %38 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4463
  %db_clear = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %38, i32 0, i32 21, !dbg !4464
  %39 = load i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)** %db_clear, align 8, !dbg !4464
  %tobool51 = icmp ne i32 (%struct.ntb_dev*, i64)* %39, null, !dbg !4463
  br i1 %tobool51, label %land.lhs.true52, label %land.end, !dbg !4465

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %40 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4466
  %db_set_mask = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %40, i32 0, i32 23, !dbg !4467
  %41 = load i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)** %db_set_mask, align 8, !dbg !4467
  %tobool53 = icmp ne i32 (%struct.ntb_dev*, i64)* %41, null, !dbg !4466
  br i1 %tobool53, label %land.lhs.true54, label %land.end, !dbg !4468

land.lhs.true54:                                  ; preds = %land.lhs.true52
  %42 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4469
  %db_clear_mask = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %42, i32 0, i32 24, !dbg !4470
  %43 = load i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)** %db_clear_mask, align 8, !dbg !4470
  %tobool55 = icmp ne i32 (%struct.ntb_dev*, i64)* %43, null, !dbg !4469
  br i1 %tobool55, label %land.lhs.true56, label %land.end, !dbg !4471

land.lhs.true56:                                  ; preds = %land.lhs.true54
  %44 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4472
  %peer_db_set = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %44, i32 0, i32 27, !dbg !4473
  %45 = load i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)** %peer_db_set, align 8, !dbg !4473
  %tobool57 = icmp ne i32 (%struct.ntb_dev*, i64)* %45, null, !dbg !4472
  br i1 %tobool57, label %land.lhs.true58, label %land.end, !dbg !4474

land.lhs.true58:                                  ; preds = %land.lhs.true56
  %46 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4475
  %spad_read = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %46, i32 0, i32 34, !dbg !4476
  %47 = load i32 (%struct.ntb_dev*, i32)*, i32 (%struct.ntb_dev*, i32)** %spad_read, align 8, !dbg !4476
  %tobool59 = icmp ne i32 (%struct.ntb_dev*, i32)* %47, null, !dbg !4477
  %lnot60 = xor i1 %tobool59, true, !dbg !4477
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !4477
  %48 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4478
  %spad_count = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %48, i32 0, i32 33, !dbg !4479
  %49 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %spad_count, align 8, !dbg !4479
  %tobool62 = icmp ne i32 (%struct.ntb_dev*)* %49, null, !dbg !4480
  %lnot63 = xor i1 %tobool62, true, !dbg !4480
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !4480
  %cmp65 = icmp eq i32 %lnot.ext61, %lnot.ext64, !dbg !4481
  br i1 %cmp65, label %land.lhs.true66, label %land.end, !dbg !4482

land.lhs.true66:                                  ; preds = %land.lhs.true58
  %50 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4483
  %spad_write = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %50, i32 0, i32 35, !dbg !4484
  %51 = load i32 (%struct.ntb_dev*, i32, i32)*, i32 (%struct.ntb_dev*, i32, i32)** %spad_write, align 8, !dbg !4484
  %tobool67 = icmp ne i32 (%struct.ntb_dev*, i32, i32)* %51, null, !dbg !4485
  %lnot68 = xor i1 %tobool67, true, !dbg !4485
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !4485
  %52 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4486
  %spad_count70 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %52, i32 0, i32 33, !dbg !4487
  %53 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %spad_count70, align 8, !dbg !4487
  %tobool71 = icmp ne i32 (%struct.ntb_dev*)* %53, null, !dbg !4488
  %lnot72 = xor i1 %tobool71, true, !dbg !4488
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !4488
  %cmp74 = icmp eq i32 %lnot.ext69, %lnot.ext73, !dbg !4489
  br i1 %cmp74, label %land.lhs.true75, label %land.end, !dbg !4490

land.lhs.true75:                                  ; preds = %land.lhs.true66
  %54 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4491
  %peer_spad_write = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %54, i32 0, i32 38, !dbg !4492
  %55 = load i32 (%struct.ntb_dev*, i32, i32, i32)*, i32 (%struct.ntb_dev*, i32, i32, i32)** %peer_spad_write, align 8, !dbg !4492
  %tobool76 = icmp ne i32 (%struct.ntb_dev*, i32, i32, i32)* %55, null, !dbg !4493
  %lnot77 = xor i1 %tobool76, true, !dbg !4493
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !4493
  %56 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4494
  %spad_count79 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %56, i32 0, i32 33, !dbg !4495
  %57 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %spad_count79, align 8, !dbg !4495
  %tobool80 = icmp ne i32 (%struct.ntb_dev*)* %57, null, !dbg !4496
  %lnot81 = xor i1 %tobool80, true, !dbg !4496
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !4496
  %cmp83 = icmp eq i32 %lnot.ext78, %lnot.ext82, !dbg !4497
  br i1 %cmp83, label %land.lhs.true84, label %land.end, !dbg !4498

land.lhs.true84:                                  ; preds = %land.lhs.true75
  %58 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4499
  %msg_inbits = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %58, i32 0, i32 40, !dbg !4500
  %59 = load i64 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)** %msg_inbits, align 8, !dbg !4500
  %tobool85 = icmp ne i64 (%struct.ntb_dev*)* %59, null, !dbg !4501
  %lnot86 = xor i1 %tobool85, true, !dbg !4501
  %lnot.ext87 = zext i1 %lnot86 to i32, !dbg !4501
  %60 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4502
  %msg_count = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %60, i32 0, i32 39, !dbg !4503
  %61 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %msg_count, align 8, !dbg !4503
  %tobool88 = icmp ne i32 (%struct.ntb_dev*)* %61, null, !dbg !4504
  %lnot89 = xor i1 %tobool88, true, !dbg !4504
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !4504
  %cmp91 = icmp eq i32 %lnot.ext87, %lnot.ext90, !dbg !4505
  br i1 %cmp91, label %land.lhs.true92, label %land.end, !dbg !4506

land.lhs.true92:                                  ; preds = %land.lhs.true84
  %62 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4507
  %msg_outbits = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %62, i32 0, i32 41, !dbg !4508
  %63 = load i64 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)** %msg_outbits, align 8, !dbg !4508
  %tobool93 = icmp ne i64 (%struct.ntb_dev*)* %63, null, !dbg !4509
  %lnot94 = xor i1 %tobool93, true, !dbg !4509
  %lnot.ext95 = zext i1 %lnot94 to i32, !dbg !4509
  %64 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4510
  %msg_count96 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %64, i32 0, i32 39, !dbg !4511
  %65 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %msg_count96, align 8, !dbg !4511
  %tobool97 = icmp ne i32 (%struct.ntb_dev*)* %65, null, !dbg !4512
  %lnot98 = xor i1 %tobool97, true, !dbg !4512
  %lnot.ext99 = zext i1 %lnot98 to i32, !dbg !4512
  %cmp100 = icmp eq i32 %lnot.ext95, %lnot.ext99, !dbg !4513
  br i1 %cmp100, label %land.lhs.true101, label %land.end, !dbg !4514

land.lhs.true101:                                 ; preds = %land.lhs.true92
  %66 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4515
  %msg_read_sts = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %66, i32 0, i32 42, !dbg !4516
  %67 = load i64 (%struct.ntb_dev*)*, i64 (%struct.ntb_dev*)** %msg_read_sts, align 8, !dbg !4516
  %tobool102 = icmp ne i64 (%struct.ntb_dev*)* %67, null, !dbg !4517
  %lnot103 = xor i1 %tobool102, true, !dbg !4517
  %lnot.ext104 = zext i1 %lnot103 to i32, !dbg !4517
  %68 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4518
  %msg_count105 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %68, i32 0, i32 39, !dbg !4519
  %69 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %msg_count105, align 8, !dbg !4519
  %tobool106 = icmp ne i32 (%struct.ntb_dev*)* %69, null, !dbg !4520
  %lnot107 = xor i1 %tobool106, true, !dbg !4520
  %lnot.ext108 = zext i1 %lnot107 to i32, !dbg !4520
  %cmp109 = icmp eq i32 %lnot.ext104, %lnot.ext108, !dbg !4521
  br i1 %cmp109, label %land.lhs.true110, label %land.end, !dbg !4522

land.lhs.true110:                                 ; preds = %land.lhs.true101
  %70 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4523
  %msg_clear_sts = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %70, i32 0, i32 43, !dbg !4524
  %71 = load i32 (%struct.ntb_dev*, i64)*, i32 (%struct.ntb_dev*, i64)** %msg_clear_sts, align 8, !dbg !4524
  %tobool111 = icmp ne i32 (%struct.ntb_dev*, i64)* %71, null, !dbg !4525
  %lnot112 = xor i1 %tobool111, true, !dbg !4525
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !4525
  %72 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4526
  %msg_count114 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %72, i32 0, i32 39, !dbg !4527
  %73 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %msg_count114, align 8, !dbg !4527
  %tobool115 = icmp ne i32 (%struct.ntb_dev*)* %73, null, !dbg !4528
  %lnot116 = xor i1 %tobool115, true, !dbg !4528
  %lnot.ext117 = zext i1 %lnot116 to i32, !dbg !4528
  %cmp118 = icmp eq i32 %lnot.ext113, %lnot.ext117, !dbg !4529
  br i1 %cmp118, label %land.lhs.true119, label %land.end, !dbg !4530

land.lhs.true119:                                 ; preds = %land.lhs.true110
  %74 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4531
  %msg_read = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %74, i32 0, i32 46, !dbg !4532
  %75 = load i32 (%struct.ntb_dev*, i32*, i32)*, i32 (%struct.ntb_dev*, i32*, i32)** %msg_read, align 8, !dbg !4532
  %tobool120 = icmp ne i32 (%struct.ntb_dev*, i32*, i32)* %75, null, !dbg !4533
  %lnot121 = xor i1 %tobool120, true, !dbg !4533
  %lnot.ext122 = zext i1 %lnot121 to i32, !dbg !4533
  %76 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4534
  %msg_count123 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %76, i32 0, i32 39, !dbg !4535
  %77 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %msg_count123, align 8, !dbg !4535
  %tobool124 = icmp ne i32 (%struct.ntb_dev*)* %77, null, !dbg !4536
  %lnot125 = xor i1 %tobool124, true, !dbg !4536
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !4536
  %cmp127 = icmp eq i32 %lnot.ext122, %lnot.ext126, !dbg !4537
  br i1 %cmp127, label %land.lhs.true128, label %land.end, !dbg !4538

land.lhs.true128:                                 ; preds = %land.lhs.true119
  %78 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4539
  %peer_msg_write = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %78, i32 0, i32 47, !dbg !4540
  %79 = load i32 (%struct.ntb_dev*, i32, i32, i32)*, i32 (%struct.ntb_dev*, i32, i32, i32)** %peer_msg_write, align 8, !dbg !4540
  %tobool129 = icmp ne i32 (%struct.ntb_dev*, i32, i32, i32)* %79, null, !dbg !4541
  %lnot130 = xor i1 %tobool129, true, !dbg !4541
  %lnot.ext131 = zext i1 %lnot130 to i32, !dbg !4541
  %80 = load %struct.ntb_dev_ops*, %struct.ntb_dev_ops** %ops.addr, align 8, !dbg !4542
  %msg_count132 = getelementptr inbounds %struct.ntb_dev_ops, %struct.ntb_dev_ops* %80, i32 0, i32 39, !dbg !4543
  %81 = load i32 (%struct.ntb_dev*)*, i32 (%struct.ntb_dev*)** %msg_count132, align 8, !dbg !4543
  %tobool133 = icmp ne i32 (%struct.ntb_dev*)* %81, null, !dbg !4544
  %lnot134 = xor i1 %tobool133, true, !dbg !4544
  %lnot.ext135 = zext i1 %lnot134 to i32, !dbg !4544
  %cmp136 = icmp eq i32 %lnot.ext131, %lnot.ext135, !dbg !4545
  br i1 %cmp136, label %land.rhs, label %land.end, !dbg !4546

land.rhs:                                         ; preds = %land.lhs.true128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true128, %land.lhs.true119, %land.lhs.true110, %land.lhs.true101, %land.lhs.true92, %land.lhs.true84, %land.lhs.true75, %land.lhs.true66, %land.lhs.true58, %land.lhs.true56, %land.lhs.true54, %land.lhs.true52, %land.lhs.true50, %land.lhs.true48, %land.lhs.true40, %land.lhs.true38, %land.lhs.true36, %land.lhs.true34, %lor.lhs.false, %land.lhs.true29, %land.lhs.true27, %land.lhs.true25, %land.lhs.true23, %land.lhs.true21, %land.lhs.true12, %land.lhs.true, %entry
  %82 = phi i1 [ false, %land.lhs.true128 ], [ false, %land.lhs.true119 ], [ false, %land.lhs.true110 ], [ false, %land.lhs.true101 ], [ false, %land.lhs.true92 ], [ false, %land.lhs.true84 ], [ false, %land.lhs.true75 ], [ false, %land.lhs.true66 ], [ false, %land.lhs.true58 ], [ false, %land.lhs.true56 ], [ false, %land.lhs.true54 ], [ false, %land.lhs.true52 ], [ false, %land.lhs.true50 ], [ false, %land.lhs.true48 ], [ false, %land.lhs.true40 ], [ false, %land.lhs.true38 ], [ false, %land.lhs.true36 ], [ false, %land.lhs.true34 ], [ false, %lor.lhs.false ], [ false, %land.lhs.true29 ], [ false, %land.lhs.true27 ], [ false, %land.lhs.true25 ], [ false, %land.lhs.true23 ], [ false, %land.lhs.true21 ], [ false, %land.lhs.true12 ], [ false, %land.lhs.true ], [ false, %entry ], [ true, %land.rhs ], !dbg !4547
  %land.ext = zext i1 %82 to i32, !dbg !4546
  ret i32 %land.ext, !dbg !4548
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !4249 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !4549, metadata !DIExpression()), !dbg !4550
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4551
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !4552
  store i32 0, i32* %done, align 8, !dbg !4553
  br label %do.body, !dbg !4554

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4555
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !4555
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #7, !dbg !4555
  br label %do.end, !dbg !4555

do.end:                                           ; preds = %do.body
  ret void, !dbg !4557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ntb_dev_release(%struct.device* %dev) #0 !dbg !4558 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ntb = alloca %struct.ntb_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ntb_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4563, metadata !DIExpression()), !dbg !4565
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4565
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4565
  store i8* %1, i8** %__mptr, align 8, !dbg !4565
  br label %do.body, !dbg !4565

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4566

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4565
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4565
  %3 = bitcast i8* %add.ptr to %struct.ntb_dev*, !dbg !4565
  store %struct.ntb_dev* %3, %struct.ntb_dev** %tmp, align 8, !dbg !4566
  %4 = load %struct.ntb_dev*, %struct.ntb_dev** %tmp, align 8, !dbg !4565
  store %struct.ntb_dev* %4, %struct.ntb_dev** %ntb, align 8, !dbg !4562
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb, align 8, !dbg !4568
  %released = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 7, !dbg !4569
  call void @complete(%struct.completion* %released) #7, !dbg !4570
  ret void, !dbg !4571
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_name(%struct.pci_dev* %pdev) #0 !dbg !4572 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4579
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4580
  %call = call i8* @dev_name(%struct.device* %dev) #7, !dbg !4581
  ret i8* %call, !dbg !4582
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ntb_unregister_device(%struct.ntb_dev* %ntb) #0 !dbg !4583 {
entry:
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4586, metadata !DIExpression()), !dbg !4587
  %0 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4588
  %dev = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %0, i32 0, i32 0, !dbg !4589
  call void @device_unregister(%struct.device* %dev) #7, !dbg !4590
  %1 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4591
  %released = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %1, i32 0, i32 7, !dbg !4592
  call void @wait_for_completion(%struct.completion* %released) #7, !dbg !4593
  ret void, !dbg !4594
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ntb_set_ctx(%struct.ntb_dev* %ntb, i8* %ctx, %struct.ntb_ctx_ops* %ctx_ops) #0 !dbg !4595 {
entry:
  %lock.addr.i27 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i27, metadata !4598, metadata !DIExpression()), !dbg !4602
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4604, metadata !DIExpression()), !dbg !4605
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4325, metadata !DIExpression()), !dbg !4606
  %retval = alloca i32, align 4
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  %ctx.addr = alloca i8*, align 8
  %ctx_ops.addr = alloca %struct.ntb_ctx_ops*, align 8
  %irqflags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  store %struct.ntb_ctx_ops* %ctx_ops, %struct.ntb_ctx_ops** %ctx_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_ctx_ops** %ctx_ops.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata i64* %irqflags, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops.addr, align 8, !dbg !4621
  %call = call i32 @ntb_ctx_ops_is_valid(%struct.ntb_ctx_ops* %0) #7, !dbg !4623
  %tobool = icmp ne i32 %call, 0, !dbg !4623
  br i1 %tobool, label %if.end, label %if.then, !dbg !4624

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4625
  br label %return, !dbg !4625

if.end:                                           ; preds = %entry
  %1 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4626
  %ctx_ops1 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %1, i32 0, i32 5, !dbg !4628
  %2 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops1, align 8, !dbg !4628
  %tobool2 = icmp ne %struct.ntb_ctx_ops* %2, null, !dbg !4626
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4629

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4630
  br label %return, !dbg !4630

if.end4:                                          ; preds = %if.end
  br label %do.body, !dbg !4631

do.body:                                          ; preds = %if.end4
  br label %do.body5, !dbg !4632

do.body5:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4633, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4636, metadata !DIExpression()), !dbg !4635
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4635
  %conv = zext i1 %cmp to i32, !dbg !4635
  store i32 1, i32* %tmp, align 4, !dbg !4635
  %3 = load i32, i32* %tmp, align 4, !dbg !4635
  br label %do.body6, !dbg !4637

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !4638

do.body7:                                         ; preds = %do.body6
  br label %do.body8, !dbg !4639

do.body8:                                         ; preds = %do.body7
  call void @llvm.dbg.declare(metadata i64* %__dummy9, metadata !4641, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.declare(metadata i64* %__dummy210, metadata !4645, metadata !DIExpression()), !dbg !4644
  %cmp11 = icmp eq i64* %__dummy9, %__dummy210, !dbg !4644
  %conv12 = zext i1 %cmp11 to i32, !dbg !4644
  store i32 1, i32* %tmp13, align 4, !dbg !4644
  %4 = load i32, i32* %tmp13, align 4, !dbg !4644
  %call14 = call i64 @arch_local_irq_save() #7, !dbg !4646
  store i64 %call14, i64* %irqflags, align 8, !dbg !4646
  br label %do.end, !dbg !4646

do.end:                                           ; preds = %do.body8
  br label %do.end15, !dbg !4639

do.end15:                                         ; preds = %do.end
  br label %do.body16, !dbg !4638

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4647, !srcloc !4648
  br label %do.body17, !dbg !4647

do.body17:                                        ; preds = %do.body16
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4649
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 6, !dbg !4649
  store %struct.spinlock* %ctx_lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4650
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !4651
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !4651
  br label %do.end19, !dbg !4649

do.end19:                                         ; preds = %do.body17
  br label %do.end20, !dbg !4647

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !4638

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !4637

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !4632

do.end23:                                         ; preds = %do.end22
  %8 = load i8*, i8** %ctx.addr, align 8, !dbg !4652
  %9 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4654
  %ctx24 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %9, i32 0, i32 4, !dbg !4655
  store i8* %8, i8** %ctx24, align 8, !dbg !4656
  %10 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops.addr, align 8, !dbg !4657
  %11 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4658
  %ctx_ops25 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %11, i32 0, i32 5, !dbg !4659
  store %struct.ntb_ctx_ops* %10, %struct.ntb_ctx_ops** %ctx_ops25, align 8, !dbg !4660
  %12 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4661
  %ctx_lock26 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %12, i32 0, i32 6, !dbg !4662
  %13 = load i64, i64* %irqflags, align 8, !dbg !4663
  store %struct.spinlock* %ctx_lock26, %struct.spinlock** %lock.addr.i27, align 8
  store i64 %13, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !173, metadata !4664, metadata !DIExpression()) #6, !dbg !4667
  call void @llvm.dbg.declare(metadata !173, metadata !4668, metadata !DIExpression()) #6, !dbg !4667
  store i32 1, i32* %tmp.i, align 4, !dbg !4667
  %14 = load i32, i32* %tmp.i, align 4, !dbg !4667
  call void @llvm.dbg.declare(metadata !173, metadata !4669, metadata !DIExpression()) #6, !dbg !4674
  call void @llvm.dbg.declare(metadata !173, metadata !4675, metadata !DIExpression()) #6, !dbg !4674
  store i32 1, i32* %tmp8.i, align 4, !dbg !4674
  %15 = load i32, i32* %tmp8.i, align 4, !dbg !4674
  %16 = load i64, i64* %flags.addr.i, align 8, !dbg !4676
  call void @arch_local_irq_restore(i64 %16) #8, !dbg !4676
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4677, !srcloc !4679
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i27, align 8, !dbg !4680
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !4680
  %rlock.i28 = bitcast %union.anon.3* %18 to %struct.raw_spinlock*, !dbg !4680
  store i32 0, i32* %retval, align 4, !dbg !4682
  br label %return, !dbg !4682

return:                                           ; preds = %do.end23, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !4683
  ret i32 %19, !dbg !4683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ntb_ctx_ops_is_valid(%struct.ntb_ctx_ops* %ops) #0 !dbg !4684 {
entry:
  %ops.addr = alloca %struct.ntb_ctx_ops*, align 8
  store %struct.ntb_ctx_ops* %ops, %struct.ntb_ctx_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_ctx_ops** %ops.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  ret i32 1, !dbg !4689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4690 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4694, metadata !DIExpression()), !dbg !4695
  %call = call i64 @arch_local_save_flags() #7, !dbg !4696
  store i64 %call, i64* %f, align 8, !dbg !4697
  call void @arch_local_irq_disable() #7, !dbg !4698
  %0 = load i64, i64* %f, align 8, !dbg !4699
  ret i64 %0, !dbg !4700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ntb_clear_ctx(%struct.ntb_dev* %ntb) #0 !dbg !4701 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !4598, metadata !DIExpression()), !dbg !4702
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4604, metadata !DIExpression()), !dbg !4704
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4325, metadata !DIExpression()), !dbg !4705
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  %irqflags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4712, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.declare(metadata i64* %irqflags, metadata !4714, metadata !DIExpression()), !dbg !4715
  br label %do.body, !dbg !4716

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4717

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4718, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4721, metadata !DIExpression()), !dbg !4720
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4720
  %conv = zext i1 %cmp to i32, !dbg !4720
  store i32 1, i32* %tmp, align 4, !dbg !4720
  %0 = load i32, i32* %tmp, align 4, !dbg !4720
  br label %do.body2, !dbg !4722

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4723

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4724

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4726, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4730, metadata !DIExpression()), !dbg !4729
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4729
  %conv8 = zext i1 %cmp7 to i32, !dbg !4729
  store i32 1, i32* %tmp9, align 4, !dbg !4729
  %1 = load i32, i32* %tmp9, align 4, !dbg !4729
  %call = call i64 @arch_local_irq_save() #7, !dbg !4731
  store i64 %call, i64* %irqflags, align 8, !dbg !4731
  br label %do.end, !dbg !4731

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4724

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4723

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4732, !srcloc !4733
  br label %do.body12, !dbg !4732

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4734
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %2, i32 0, i32 6, !dbg !4734
  store %struct.spinlock* %ctx_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4735
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4736
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !4736
  br label %do.end14, !dbg !4734

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4732

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4723

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4722

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4717

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4737
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 5, !dbg !4739
  store %struct.ntb_ctx_ops* null, %struct.ntb_ctx_ops** %ctx_ops, align 8, !dbg !4740
  %6 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4741
  %ctx = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %6, i32 0, i32 4, !dbg !4742
  store i8* null, i8** %ctx, align 8, !dbg !4743
  %7 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4744
  %ctx_lock19 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %7, i32 0, i32 6, !dbg !4745
  %8 = load i64, i64* %irqflags, align 8, !dbg !4746
  store %struct.spinlock* %ctx_lock19, %struct.spinlock** %lock.addr.i20, align 8
  store i64 %8, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !173, metadata !4664, metadata !DIExpression()) #6, !dbg !4747
  call void @llvm.dbg.declare(metadata !173, metadata !4668, metadata !DIExpression()) #6, !dbg !4747
  store i32 1, i32* %tmp.i, align 4, !dbg !4747
  %9 = load i32, i32* %tmp.i, align 4, !dbg !4747
  call void @llvm.dbg.declare(metadata !173, metadata !4669, metadata !DIExpression()) #6, !dbg !4748
  call void @llvm.dbg.declare(metadata !173, metadata !4675, metadata !DIExpression()) #6, !dbg !4748
  store i32 1, i32* %tmp8.i, align 4, !dbg !4748
  %10 = load i32, i32* %tmp8.i, align 4, !dbg !4748
  %11 = load i64, i64* %flags.addr.i, align 8, !dbg !4749
  call void @arch_local_irq_restore(i64 %11) #8, !dbg !4749
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4750, !srcloc !4679
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !4751
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !4751
  %rlock.i21 = bitcast %union.anon.3* %13 to %struct.raw_spinlock*, !dbg !4751
  ret void, !dbg !4752
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ntb_link_event(%struct.ntb_dev* %ntb) #0 !dbg !4753 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !4598, metadata !DIExpression()), !dbg !4754
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4604, metadata !DIExpression()), !dbg !4756
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4325, metadata !DIExpression()), !dbg !4757
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  %irqflags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4764, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.declare(metadata i64* %irqflags, metadata !4766, metadata !DIExpression()), !dbg !4767
  br label %do.body, !dbg !4768

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4769

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4770, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4773, metadata !DIExpression()), !dbg !4772
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4772
  %conv = zext i1 %cmp to i32, !dbg !4772
  store i32 1, i32* %tmp, align 4, !dbg !4772
  %0 = load i32, i32* %tmp, align 4, !dbg !4772
  br label %do.body2, !dbg !4774

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4775

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4776

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4778, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4782, metadata !DIExpression()), !dbg !4781
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4781
  %conv8 = zext i1 %cmp7 to i32, !dbg !4781
  store i32 1, i32* %tmp9, align 4, !dbg !4781
  %1 = load i32, i32* %tmp9, align 4, !dbg !4781
  %call = call i64 @arch_local_irq_save() #7, !dbg !4783
  store i64 %call, i64* %irqflags, align 8, !dbg !4783
  br label %do.end, !dbg !4783

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4776

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4775

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4784, !srcloc !4785
  br label %do.body12, !dbg !4784

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4786
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %2, i32 0, i32 6, !dbg !4786
  store %struct.spinlock* %ctx_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4787
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4788
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !4788
  br label %do.end14, !dbg !4786

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4784

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4775

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4774

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4769

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4789
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 5, !dbg !4792
  %6 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops, align 8, !dbg !4792
  %tobool = icmp ne %struct.ntb_ctx_ops* %6, null, !dbg !4789
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4793

land.lhs.true:                                    ; preds = %do.end18
  %7 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4794
  %ctx_ops19 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %7, i32 0, i32 5, !dbg !4795
  %8 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops19, align 8, !dbg !4795
  %link_event = getelementptr inbounds %struct.ntb_ctx_ops, %struct.ntb_ctx_ops* %8, i32 0, i32 0, !dbg !4796
  %9 = load void (i8*)*, void (i8*)** %link_event, align 8, !dbg !4796
  %tobool20 = icmp ne void (i8*)* %9, null, !dbg !4794
  br i1 %tobool20, label %if.then, label %if.end, !dbg !4797

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4798
  %ctx_ops21 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %10, i32 0, i32 5, !dbg !4799
  %11 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops21, align 8, !dbg !4799
  %link_event22 = getelementptr inbounds %struct.ntb_ctx_ops, %struct.ntb_ctx_ops* %11, i32 0, i32 0, !dbg !4800
  %12 = load void (i8*)*, void (i8*)** %link_event22, align 8, !dbg !4800
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4801
  %ctx = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %13, i32 0, i32 4, !dbg !4802
  %14 = load i8*, i8** %ctx, align 8, !dbg !4802
  call void %12(i8* %14) #7, !dbg !4798
  br label %if.end, !dbg !4798

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end18
  %15 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4803
  %ctx_lock23 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %15, i32 0, i32 6, !dbg !4804
  %16 = load i64, i64* %irqflags, align 8, !dbg !4805
  store %struct.spinlock* %ctx_lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %16, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !173, metadata !4664, metadata !DIExpression()) #6, !dbg !4806
  call void @llvm.dbg.declare(metadata !173, metadata !4668, metadata !DIExpression()) #6, !dbg !4806
  store i32 1, i32* %tmp.i, align 4, !dbg !4806
  %17 = load i32, i32* %tmp.i, align 4, !dbg !4806
  call void @llvm.dbg.declare(metadata !173, metadata !4669, metadata !DIExpression()) #6, !dbg !4807
  call void @llvm.dbg.declare(metadata !173, metadata !4675, metadata !DIExpression()) #6, !dbg !4807
  store i32 1, i32* %tmp8.i, align 4, !dbg !4807
  %18 = load i32, i32* %tmp8.i, align 4, !dbg !4807
  %19 = load i64, i64* %flags.addr.i, align 8, !dbg !4808
  call void @arch_local_irq_restore(i64 %19) #8, !dbg !4808
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4809, !srcloc !4679
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !4810
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !4810
  %rlock.i25 = bitcast %union.anon.3* %21 to %struct.raw_spinlock*, !dbg !4810
  ret void, !dbg !4811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ntb_db_event(%struct.ntb_dev* %ntb, i32 %vector) #0 !dbg !4812 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !4598, metadata !DIExpression()), !dbg !4815
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4604, metadata !DIExpression()), !dbg !4817
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4325, metadata !DIExpression()), !dbg !4818
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  %vector.addr = alloca i32, align 4
  %irqflags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  store i32 %vector, i32* %vector.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vector.addr, metadata !4827, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.declare(metadata i64* %irqflags, metadata !4829, metadata !DIExpression()), !dbg !4830
  br label %do.body, !dbg !4831

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4832

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4833, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4836, metadata !DIExpression()), !dbg !4835
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4835
  %conv = zext i1 %cmp to i32, !dbg !4835
  store i32 1, i32* %tmp, align 4, !dbg !4835
  %0 = load i32, i32* %tmp, align 4, !dbg !4835
  br label %do.body2, !dbg !4837

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4838

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4839

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4841, metadata !DIExpression()), !dbg !4844
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4845, metadata !DIExpression()), !dbg !4844
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4844
  %conv8 = zext i1 %cmp7 to i32, !dbg !4844
  store i32 1, i32* %tmp9, align 4, !dbg !4844
  %1 = load i32, i32* %tmp9, align 4, !dbg !4844
  %call = call i64 @arch_local_irq_save() #7, !dbg !4846
  store i64 %call, i64* %irqflags, align 8, !dbg !4846
  br label %do.end, !dbg !4846

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4839

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4838

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4847, !srcloc !4848
  br label %do.body12, !dbg !4847

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4849
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %2, i32 0, i32 6, !dbg !4849
  store %struct.spinlock* %ctx_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4850
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4851
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !4851
  br label %do.end14, !dbg !4849

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4847

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4838

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4837

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4832

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4852
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 5, !dbg !4855
  %6 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops, align 8, !dbg !4855
  %tobool = icmp ne %struct.ntb_ctx_ops* %6, null, !dbg !4852
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4856

land.lhs.true:                                    ; preds = %do.end18
  %7 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4857
  %ctx_ops19 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %7, i32 0, i32 5, !dbg !4858
  %8 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops19, align 8, !dbg !4858
  %db_event = getelementptr inbounds %struct.ntb_ctx_ops, %struct.ntb_ctx_ops* %8, i32 0, i32 1, !dbg !4859
  %9 = load void (i8*, i32)*, void (i8*, i32)** %db_event, align 8, !dbg !4859
  %tobool20 = icmp ne void (i8*, i32)* %9, null, !dbg !4857
  br i1 %tobool20, label %if.then, label %if.end, !dbg !4860

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4861
  %ctx_ops21 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %10, i32 0, i32 5, !dbg !4862
  %11 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops21, align 8, !dbg !4862
  %db_event22 = getelementptr inbounds %struct.ntb_ctx_ops, %struct.ntb_ctx_ops* %11, i32 0, i32 1, !dbg !4863
  %12 = load void (i8*, i32)*, void (i8*, i32)** %db_event22, align 8, !dbg !4863
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4864
  %ctx = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %13, i32 0, i32 4, !dbg !4865
  %14 = load i8*, i8** %ctx, align 8, !dbg !4865
  %15 = load i32, i32* %vector.addr, align 4, !dbg !4866
  call void %12(i8* %14, i32 %15) #7, !dbg !4861
  br label %if.end, !dbg !4861

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end18
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4867
  %ctx_lock23 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %16, i32 0, i32 6, !dbg !4868
  %17 = load i64, i64* %irqflags, align 8, !dbg !4869
  store %struct.spinlock* %ctx_lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %17, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !173, metadata !4664, metadata !DIExpression()) #6, !dbg !4870
  call void @llvm.dbg.declare(metadata !173, metadata !4668, metadata !DIExpression()) #6, !dbg !4870
  store i32 1, i32* %tmp.i, align 4, !dbg !4870
  %18 = load i32, i32* %tmp.i, align 4, !dbg !4870
  call void @llvm.dbg.declare(metadata !173, metadata !4669, metadata !DIExpression()) #6, !dbg !4871
  call void @llvm.dbg.declare(metadata !173, metadata !4675, metadata !DIExpression()) #6, !dbg !4871
  store i32 1, i32* %tmp8.i, align 4, !dbg !4871
  %19 = load i32, i32* %tmp8.i, align 4, !dbg !4871
  %20 = load i64, i64* %flags.addr.i, align 8, !dbg !4872
  call void @arch_local_irq_restore(i64 %20) #8, !dbg !4872
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4873, !srcloc !4679
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !4874
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !4874
  %rlock.i25 = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !4874
  ret void, !dbg !4875
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ntb_msg_event(%struct.ntb_dev* %ntb) #0 !dbg !4876 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !4598, metadata !DIExpression()), !dbg !4877
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4604, metadata !DIExpression()), !dbg !4879
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4325, metadata !DIExpression()), !dbg !4880
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  %irqflags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.declare(metadata i64* %irqflags, metadata !4889, metadata !DIExpression()), !dbg !4890
  br label %do.body, !dbg !4891

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4892

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4893, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4896, metadata !DIExpression()), !dbg !4895
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4895
  %conv = zext i1 %cmp to i32, !dbg !4895
  store i32 1, i32* %tmp, align 4, !dbg !4895
  %0 = load i32, i32* %tmp, align 4, !dbg !4895
  br label %do.body2, !dbg !4897

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4898

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4899

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4901, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4905, metadata !DIExpression()), !dbg !4904
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4904
  %conv8 = zext i1 %cmp7 to i32, !dbg !4904
  store i32 1, i32* %tmp9, align 4, !dbg !4904
  %1 = load i32, i32* %tmp9, align 4, !dbg !4904
  %call = call i64 @arch_local_irq_save() #7, !dbg !4906
  store i64 %call, i64* %irqflags, align 8, !dbg !4906
  br label %do.end, !dbg !4906

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4899

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4898

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4907, !srcloc !4908
  br label %do.body12, !dbg !4907

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4909
  %ctx_lock = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %2, i32 0, i32 6, !dbg !4909
  store %struct.spinlock* %ctx_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4910
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4911
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !4911
  br label %do.end14, !dbg !4909

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4907

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4898

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4897

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4892

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4912
  %ctx_ops = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 5, !dbg !4915
  %6 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops, align 8, !dbg !4915
  %tobool = icmp ne %struct.ntb_ctx_ops* %6, null, !dbg !4912
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4916

land.lhs.true:                                    ; preds = %do.end18
  %7 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4917
  %ctx_ops19 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %7, i32 0, i32 5, !dbg !4918
  %8 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops19, align 8, !dbg !4918
  %msg_event = getelementptr inbounds %struct.ntb_ctx_ops, %struct.ntb_ctx_ops* %8, i32 0, i32 2, !dbg !4919
  %9 = load void (i8*)*, void (i8*)** %msg_event, align 8, !dbg !4919
  %tobool20 = icmp ne void (i8*)* %9, null, !dbg !4917
  br i1 %tobool20, label %if.then, label %if.end, !dbg !4920

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4921
  %ctx_ops21 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %10, i32 0, i32 5, !dbg !4922
  %11 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %ctx_ops21, align 8, !dbg !4922
  %msg_event22 = getelementptr inbounds %struct.ntb_ctx_ops, %struct.ntb_ctx_ops* %11, i32 0, i32 2, !dbg !4923
  %12 = load void (i8*)*, void (i8*)** %msg_event22, align 8, !dbg !4923
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4924
  %ctx = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %13, i32 0, i32 4, !dbg !4925
  %14 = load i8*, i8** %ctx, align 8, !dbg !4925
  call void %12(i8* %14) #7, !dbg !4921
  br label %if.end, !dbg !4921

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end18
  %15 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4926
  %ctx_lock23 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %15, i32 0, i32 6, !dbg !4927
  %16 = load i64, i64* %irqflags, align 8, !dbg !4928
  store %struct.spinlock* %ctx_lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %16, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !173, metadata !4664, metadata !DIExpression()) #6, !dbg !4929
  call void @llvm.dbg.declare(metadata !173, metadata !4668, metadata !DIExpression()) #6, !dbg !4929
  store i32 1, i32* %tmp.i, align 4, !dbg !4929
  %17 = load i32, i32* %tmp.i, align 4, !dbg !4929
  call void @llvm.dbg.declare(metadata !173, metadata !4669, metadata !DIExpression()) #6, !dbg !4930
  call void @llvm.dbg.declare(metadata !173, metadata !4675, metadata !DIExpression()) #6, !dbg !4930
  store i32 1, i32* %tmp8.i, align 4, !dbg !4930
  %18 = load i32, i32* %tmp8.i, align 4, !dbg !4930
  %19 = load i64, i64* %flags.addr.i, align 8, !dbg !4931
  call void @arch_local_irq_restore(i64 %19) #8, !dbg !4931
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4932, !srcloc !4679
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !4933
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !4933
  %rlock.i25 = bitcast %union.anon.3* %21 to %struct.raw_spinlock*, !dbg !4933
  ret void, !dbg !4934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ntb_default_port_number(%struct.ntb_dev* %ntb) #0 !dbg !4935 {
entry:
  %retval = alloca i32, align 4
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  %0 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4938
  %topo = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %0, i32 0, i32 2, !dbg !4939
  %1 = load i32, i32* %topo, align 8, !dbg !4939
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !4940

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %retval, align 4, !dbg !4941
  br label %return, !dbg !4941

sw.bb1:                                           ; preds = %entry, %entry
  store i32 1, i32* %retval, align 4, !dbg !4943
  br label %return, !dbg !4943

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4944
  br label %return, !dbg !4944

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %2 = load i32, i32* %retval, align 4, !dbg !4945
  ret i32 %2, !dbg !4945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ntb_default_peer_port_count(%struct.ntb_dev* %ntb) #0 !dbg !4946 {
entry:
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  ret i32 1, !dbg !4949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ntb_default_peer_port_number(%struct.ntb_dev* %ntb, i32 %pidx) #0 !dbg !4950 {
entry:
  %retval = alloca i32, align 4
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  %pidx.addr = alloca i32, align 4
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  store i32 %pidx, i32* %pidx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pidx.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  %0 = load i32, i32* %pidx.addr, align 4, !dbg !4955
  %cmp = icmp ne i32 %0, 0, !dbg !4957
  br i1 %cmp, label %if.then, label %if.end, !dbg !4958

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4959
  br label %return, !dbg !4959

if.end:                                           ; preds = %entry
  %1 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4960
  %topo = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %1, i32 0, i32 2, !dbg !4961
  %2 = load i32, i32* %topo, align 8, !dbg !4961
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !4962

sw.bb:                                            ; preds = %if.end, %if.end
  store i32 1, i32* %retval, align 4, !dbg !4963
  br label %return, !dbg !4963

sw.bb1:                                           ; preds = %if.end, %if.end
  store i32 0, i32* %retval, align 4, !dbg !4965
  br label %return, !dbg !4965

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4966
  br label %return, !dbg !4966

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4967
  ret i32 %3, !dbg !4967
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ntb_default_peer_port_idx(%struct.ntb_dev* %ntb, i32 %port) #0 !dbg !4968 {
entry:
  %retval = alloca i32, align 4
  %ntb.addr = alloca %struct.ntb_dev*, align 8
  %port.addr = alloca i32, align 4
  %peer_port = alloca i32, align 4
  store %struct.ntb_dev* %ntb, %struct.ntb_dev** %ntb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.declare(metadata i32* %peer_port, metadata !4973, metadata !DIExpression()), !dbg !4974
  %0 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb.addr, align 8, !dbg !4975
  %call = call i32 @ntb_default_peer_port_number(%struct.ntb_dev* %0, i32 0) #7, !dbg !4976
  store i32 %call, i32* %peer_port, align 4, !dbg !4974
  %1 = load i32, i32* %peer_port, align 4, !dbg !4977
  %cmp = icmp eq i32 %1, -22, !dbg !4979
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4980

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %port.addr, align 4, !dbg !4981
  %3 = load i32, i32* %peer_port, align 4, !dbg !4982
  %cmp1 = icmp ne i32 %2, %3, !dbg !4983
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4984

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4985
  br label %return, !dbg !4985

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4986
  br label %return, !dbg !4986

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4987
  ret i32 %4, !dbg !4987
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ntb_driver_init() #4 section ".init.text" !dbg !4988 {
entry:
  %call = call i32 @bus_register(%struct.bus_type* @ntb_bus) #7, !dbg !4991
  ret i32 %call, !dbg !4992
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ntb_driver_exit() #4 section ".exit.text" !dbg !4993 {
entry:
  call void @bus_unregister(%struct.bus_type* @ntb_bus) #7, !dbg !4994
  ret void, !dbg !4995
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #3

; Function Attrs: noredzone
declare dso_local i64 @__modver_version_show(%struct.module_attribute*, %struct.module_kobject*, i8*) #3

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4996 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5001
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5003
  %1 = load i8*, i8** %init_name, align 8, !dbg !5003
  %tobool = icmp ne i8* %1, null, !dbg !5001
  br i1 %tobool, label %if.then, label %if.end, !dbg !5004

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5005
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5006
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5006
  store i8* %3, i8** %retval, align 8, !dbg !5007
  br label %return, !dbg !5007

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5008
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5009
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !5010
  store i8* %call, i8** %retval, align 8, !dbg !5011
  br label %return, !dbg !5011

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5012
  ret i8* %5, !dbg !5012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5013 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5020
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5021
  %1 = load i8*, i8** %name, align 8, !dbg !5021
  ret i8* %1, !dbg !5022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5023 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5024, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5027, metadata !DIExpression()), !dbg !5026
  %0 = load i64, i64* %__edi, align 8, !dbg !5026
  store i64 %0, i64* %__edi, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5028, metadata !DIExpression()), !dbg !5026
  %1 = load i64, i64* %__esi, align 8, !dbg !5026
  store i64 %1, i64* %__esi, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5029, metadata !DIExpression()), !dbg !5026
  %2 = load i64, i64* %__edx, align 8, !dbg !5026
  store i64 %2, i64* %__edx, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5030, metadata !DIExpression()), !dbg !5026
  %3 = load i64, i64* %__ecx, align 8, !dbg !5026
  store i64 %3, i64* %__ecx, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5031, metadata !DIExpression()), !dbg !5026
  %4 = load i64, i64* %__eax, align 8, !dbg !5026
  store i64 %4, i64* %__eax, align 8, !dbg !5026
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5026
  %6 = call i64 @llvm.read_register.i64(metadata !4254), !dbg !5032
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !5032, !srcloc !5035
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5032
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5032
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5032
  call void @llvm.write_register.i64(metadata !4254, i64 %asmresult1), !dbg !5032
  %8 = load i64, i64* %__eax, align 8, !dbg !5032
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5036, metadata !DIExpression()), !dbg !5038
  store i64 -1, i64* %__mask, align 8, !dbg !5038
  %9 = load i64, i64* %__mask, align 8, !dbg !5038
  store i64 %9, i64* %tmp, align 8, !dbg !5038
  %10 = load i64, i64* %tmp, align 8, !dbg !5038
  %and = and i64 %8, %10, !dbg !5032
  store i64 %and, i64* %__ret, align 8, !dbg !5032
  %11 = load i64, i64* %__ret, align 8, !dbg !5026
  store i64 %11, i64* %tmp2, align 8, !dbg !5039
  %12 = load i64, i64* %tmp2, align 8, !dbg !5026
  ret i64 %12, !dbg !5040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5041 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5042, metadata !DIExpression()), !dbg !5044
  %0 = load i64, i64* %__edi, align 8, !dbg !5044
  store i64 %0, i64* %__edi, align 8, !dbg !5044
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5045, metadata !DIExpression()), !dbg !5044
  %1 = load i64, i64* %__esi, align 8, !dbg !5044
  store i64 %1, i64* %__esi, align 8, !dbg !5044
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5046, metadata !DIExpression()), !dbg !5044
  %2 = load i64, i64* %__edx, align 8, !dbg !5044
  store i64 %2, i64* %__edx, align 8, !dbg !5044
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5047, metadata !DIExpression()), !dbg !5044
  %3 = load i64, i64* %__ecx, align 8, !dbg !5044
  store i64 %3, i64* %__ecx, align 8, !dbg !5044
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5048, metadata !DIExpression()), !dbg !5044
  %4 = load i64, i64* %__eax, align 8, !dbg !5044
  store i64 %4, i64* %__eax, align 8, !dbg !5044
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5044
  %6 = call i64 @llvm.read_register.i64(metadata !4254), !dbg !5044
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !5044, !srcloc !5049
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5044
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5044
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5044
  call void @llvm.write_register.i64(metadata !4254, i64 %asmresult1), !dbg !5044
  ret void, !dbg !5050
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5051 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5056, metadata !DIExpression()), !dbg !5058
  %0 = load i64, i64* %__edi, align 8, !dbg !5058
  store i64 %0, i64* %__edi, align 8, !dbg !5058
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5059, metadata !DIExpression()), !dbg !5058
  %1 = load i64, i64* %__esi, align 8, !dbg !5058
  store i64 %1, i64* %__esi, align 8, !dbg !5058
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5060, metadata !DIExpression()), !dbg !5058
  %2 = load i64, i64* %__edx, align 8, !dbg !5058
  store i64 %2, i64* %__edx, align 8, !dbg !5058
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5061, metadata !DIExpression()), !dbg !5058
  %3 = load i64, i64* %__ecx, align 8, !dbg !5058
  store i64 %3, i64* %__ecx, align 8, !dbg !5058
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5062, metadata !DIExpression()), !dbg !5058
  %4 = load i64, i64* %__eax, align 8, !dbg !5058
  store i64 %4, i64* %__eax, align 8, !dbg !5058
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5058
  %6 = call i64 @llvm.read_register.i64(metadata !4254), !dbg !5058
  %7 = load i64, i64* %f.addr, align 8, !dbg !5058
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !5058, !srcloc !5063
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5058
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5058
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5058
  call void @llvm.write_register.i64(metadata !4254, i64 %asmresult1), !dbg !5058
  ret void, !dbg !5064
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ntb_probe(%struct.device* %dev) #0 !dbg !5065 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ntb = alloca %struct.ntb_dev*, align 8
  %client = alloca %struct.ntb_client*, align 8
  %rc = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ntb_dev*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.ntb_client*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb, metadata !5068, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.declare(metadata %struct.ntb_client** %client, metadata !5070, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5072, metadata !DIExpression()), !dbg !5073
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5074
  %call = call %struct.device* @get_device(%struct.device* %0) #7, !dbg !5075
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5076, metadata !DIExpression()), !dbg !5078
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5078
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5078
  store i8* %2, i8** %__mptr, align 8, !dbg !5078
  br label %do.body, !dbg !5078

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5079

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5078
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5078
  %4 = bitcast i8* %add.ptr to %struct.ntb_dev*, !dbg !5078
  store %struct.ntb_dev* %4, %struct.ntb_dev** %tmp, align 8, !dbg !5079
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %tmp, align 8, !dbg !5078
  store %struct.ntb_dev* %5, %struct.ntb_dev** %ntb, align 8, !dbg !5081
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5082, metadata !DIExpression()), !dbg !5084
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5084
  %driver = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 6, !dbg !5084
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5084
  %8 = bitcast %struct.device_driver* %7 to i8*, !dbg !5084
  store i8* %8, i8** %__mptr1, align 8, !dbg !5084
  br label %do.body2, !dbg !5084

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5085

do.end3:                                          ; preds = %do.body2
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !5084
  %add.ptr5 = getelementptr i8, i8* %9, i64 0, !dbg !5084
  %10 = bitcast i8* %add.ptr5 to %struct.ntb_client*, !dbg !5084
  store %struct.ntb_client* %10, %struct.ntb_client** %tmp4, align 8, !dbg !5085
  %11 = load %struct.ntb_client*, %struct.ntb_client** %tmp4, align 8, !dbg !5084
  store %struct.ntb_client* %11, %struct.ntb_client** %client, align 8, !dbg !5087
  %12 = load %struct.ntb_client*, %struct.ntb_client** %client, align 8, !dbg !5088
  %ops = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %12, i32 0, i32 1, !dbg !5089
  %probe = getelementptr inbounds %struct.ntb_client_ops, %struct.ntb_client_ops* %ops, i32 0, i32 0, !dbg !5090
  %13 = load i32 (%struct.ntb_client*, %struct.ntb_dev*)*, i32 (%struct.ntb_client*, %struct.ntb_dev*)** %probe, align 8, !dbg !5090
  %14 = load %struct.ntb_client*, %struct.ntb_client** %client, align 8, !dbg !5091
  %15 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb, align 8, !dbg !5092
  %call6 = call i32 %13(%struct.ntb_client* %14, %struct.ntb_dev* %15) #7, !dbg !5088
  store i32 %call6, i32* %rc, align 4, !dbg !5093
  %16 = load i32, i32* %rc, align 4, !dbg !5094
  %tobool = icmp ne i32 %16, 0, !dbg !5094
  br i1 %tobool, label %if.then, label %if.end, !dbg !5096

if.then:                                          ; preds = %do.end3
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5097
  call void @put_device(%struct.device* %17) #7, !dbg !5098
  br label %if.end, !dbg !5098

if.end:                                           ; preds = %if.then, %do.end3
  %18 = load i32, i32* %rc, align 4, !dbg !5099
  ret i32 %18, !dbg !5100
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ntb_remove(%struct.device* %dev) #0 !dbg !5101 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ntb = alloca %struct.ntb_dev*, align 8
  %client = alloca %struct.ntb_client*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ntb_dev*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.ntb_client*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.declare(metadata %struct.ntb_dev** %ntb, metadata !5104, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.declare(metadata %struct.ntb_client** %client, metadata !5106, metadata !DIExpression()), !dbg !5107
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5108
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !5110
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5110
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !5108
  br i1 %tobool, label %if.then, label %if.end, !dbg !5111

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5112, metadata !DIExpression()), !dbg !5115
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5115
  %3 = bitcast %struct.device* %2 to i8*, !dbg !5115
  store i8* %3, i8** %__mptr, align 8, !dbg !5115
  br label %do.body, !dbg !5115

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5116

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5115
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5115
  %5 = bitcast i8* %add.ptr to %struct.ntb_dev*, !dbg !5115
  store %struct.ntb_dev* %5, %struct.ntb_dev** %tmp, align 8, !dbg !5116
  %6 = load %struct.ntb_dev*, %struct.ntb_dev** %tmp, align 8, !dbg !5115
  store %struct.ntb_dev* %6, %struct.ntb_dev** %ntb, align 8, !dbg !5118
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5119, metadata !DIExpression()), !dbg !5121
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5121
  %driver2 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 6, !dbg !5121
  %8 = load %struct.device_driver*, %struct.device_driver** %driver2, align 8, !dbg !5121
  %9 = bitcast %struct.device_driver* %8 to i8*, !dbg !5121
  store i8* %9, i8** %__mptr1, align 8, !dbg !5121
  br label %do.body3, !dbg !5121

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5122

do.end4:                                          ; preds = %do.body3
  %10 = load i8*, i8** %__mptr1, align 8, !dbg !5121
  %add.ptr6 = getelementptr i8, i8* %10, i64 0, !dbg !5121
  %11 = bitcast i8* %add.ptr6 to %struct.ntb_client*, !dbg !5121
  store %struct.ntb_client* %11, %struct.ntb_client** %tmp5, align 8, !dbg !5122
  %12 = load %struct.ntb_client*, %struct.ntb_client** %tmp5, align 8, !dbg !5121
  store %struct.ntb_client* %12, %struct.ntb_client** %client, align 8, !dbg !5124
  %13 = load %struct.ntb_client*, %struct.ntb_client** %client, align 8, !dbg !5125
  %ops = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %13, i32 0, i32 1, !dbg !5126
  %remove = getelementptr inbounds %struct.ntb_client_ops, %struct.ntb_client_ops* %ops, i32 0, i32 1, !dbg !5127
  %14 = load void (%struct.ntb_client*, %struct.ntb_dev*)*, void (%struct.ntb_client*, %struct.ntb_dev*)** %remove, align 8, !dbg !5127
  %15 = load %struct.ntb_client*, %struct.ntb_client** %client, align 8, !dbg !5128
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %ntb, align 8, !dbg !5129
  call void %14(%struct.ntb_client* %15, %struct.ntb_dev* %16) #7, !dbg !5125
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5130
  call void @put_device(%struct.device* %17) #7, !dbg !5131
  br label %if.end, !dbg !5132

if.end:                                           ; preds = %do.end4, %entry
  ret i32 0, !dbg !5133
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4254}
!llvm.module.flags = !{!4255, !4256, !4257, !4258}
!llvm.ident = !{!4259}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file234", scope: !2, file: !3, line: 70, type: !4177, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !127, globals: !4174, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ntb/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !73, !81, !87, !93, !104, !112, !123}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !14, line: 546, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 59, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !38, line: 54, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !44, line: 296, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!51 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !53, line: 9, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !61, line: 26, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !67, line: 343, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !74, line: 524, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!80 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !74, line: 502, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 44, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ntb_topo", file: !94, line: 78, baseType: !95, size: 32, elements: !96)
!94 = !DIFile(filename: "./include/linux/ntb.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !{!97, !98, !99, !100, !101, !102, !103}
!97 = !DIEnumerator(name: "NTB_TOPO_NONE", value: -1)
!98 = !DIEnumerator(name: "NTB_TOPO_PRI", value: 0)
!99 = !DIEnumerator(name: "NTB_TOPO_SEC", value: 1)
!100 = !DIEnumerator(name: "NTB_TOPO_B2B_USD", value: 2)
!101 = !DIEnumerator(name: "NTB_TOPO_B2B_DSD", value: 3)
!102 = !DIEnumerator(name: "NTB_TOPO_SWITCH", value: 4)
!103 = !DIEnumerator(name: "NTB_TOPO_CROSSLINK", value: 5)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ntb_speed", file: !94, line: 121, baseType: !95, size: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111}
!106 = !DIEnumerator(name: "NTB_SPEED_AUTO", value: -1)
!107 = !DIEnumerator(name: "NTB_SPEED_NONE", value: 0)
!108 = !DIEnumerator(name: "NTB_SPEED_GEN1", value: 1)
!109 = !DIEnumerator(name: "NTB_SPEED_GEN2", value: 2)
!110 = !DIEnumerator(name: "NTB_SPEED_GEN3", value: 3)
!111 = !DIEnumerator(name: "NTB_SPEED_GEN4", value: 4)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ntb_width", file: !94, line: 142, baseType: !95, size: 32, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122}
!114 = !DIEnumerator(name: "NTB_WIDTH_AUTO", value: -1)
!115 = !DIEnumerator(name: "NTB_WIDTH_NONE", value: 0)
!116 = !DIEnumerator(name: "NTB_WIDTH_1", value: 1)
!117 = !DIEnumerator(name: "NTB_WIDTH_2", value: 2)
!118 = !DIEnumerator(name: "NTB_WIDTH_4", value: 4)
!119 = !DIEnumerator(name: "NTB_WIDTH_8", value: 8)
!120 = !DIEnumerator(name: "NTB_WIDTH_12", value: 12)
!121 = !DIEnumerator(name: "NTB_WIDTH_16", value: 16)
!122 = !DIEnumerator(name: "NTB_WIDTH_32", value: 32)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ntb_default_port", file: !94, line: 161, baseType: !7, size: 32, elements: !124)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "NTB_PORT_PRI_USD", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "NTB_PORT_SEC_DSD", value: 1, isUnsigned: true)
!127 = !{!128, !129, !130, !4158}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ntb_dev", file: !94, line: 417, size: 6080, elements: !132)
!132 = !{!133, !3749, !4029, !4030, !4144, !4145, !4156, !4157}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !131, file: !94, line: 418, baseType: !134, size: 5568)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !135)
!135 = !{!136, !3302, !3304, !3307, !3308, !3359, !3450, !3451, !3452, !3453, !3454, !3463, !3568, !3581, !3584, !3585, !3589, !3591, !3592, !3593, !3597, !3603, !3604, !3607, !3611, !3701, !3702, !3703, !3704, !3705, !3737, !3738, !3739, !3742, !3745, !3746, !3747, !3748}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !134, file: !67, line: 462, baseType: !137, size: 512)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !138, line: 64, size: 512, elements: !139)
!138 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !144, !151, !153, !213, !3153, !3292, !3297, !3298, !3299, !3300, !3301}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !138, line: 65, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !137, file: !138, line: 66, baseType: !145, size: 128, offset: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !146, line: 178, size: 128, elements: !147)
!146 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 179, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !146, line: 179, baseType: !149, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !137, file: !138, line: 67, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !137, file: !138, line: 68, baseType: !154, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !138, line: 192, size: 704, elements: !156)
!156 = !{!157, !158, !174, !175}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !155, file: !138, line: 193, baseType: !145, size: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !155, file: !138, line: 194, baseType: !159, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !160, line: 83, baseType: !161)
!160 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !160, line: 71, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !160, line: 72, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !160, line: 72, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !164, file: !160, line: 73, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !160, line: 20, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !167, file: !160, line: 21, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !171, line: 25, baseType: !172)
!171 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 25, elements: !173)
!173 = !{}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !155, file: !138, line: 195, baseType: !137, size: 512, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !155, file: !138, line: 196, baseType: !176, size: 64, offset: 640)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !138, line: 156, size: 192, elements: !179)
!179 = !{!180, !185, !190}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !178, file: !138, line: 157, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!95, !154, !152}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !138, line: 158, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!141, !154, !152}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !178, file: !138, line: 159, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!95, !154, !152, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !138, line: 148, size: 20736, elements: !197)
!197 = !{!198, !203, !207, !208, !212}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !196, file: !138, line: 149, baseType: !199, size: 192)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 192, elements: !201)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!201 = !{!202}
!202 = !DISubrange(count: 3)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !196, file: !138, line: 150, baseType: !204, size: 4096, offset: 192)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 4096, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !196, file: !138, line: 151, baseType: !95, size: 32, offset: 4288)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !196, file: !138, line: 152, baseType: !209, size: 16384, offset: 4320)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 16384, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 2048)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !196, file: !138, line: 153, baseType: !95, size: 32, offset: 20704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !137, file: !138, line: 69, baseType: !214, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !138, line: 138, size: 448, elements: !216)
!216 = !{!217, !221, !250, !252, !3115, !3143, !3147}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !215, file: !138, line: 139, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !152}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !215, file: !138, line: 140, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !225, line: 230, size: 128, elements: !226)
!225 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !243}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !224, file: !225, line: 231, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !152, !236, !200}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !146, line: 60, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !233, line: 73, baseType: !234)
!233 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !233, line: 15, baseType: !235)
!235 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !225, line: 30, size: 128, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !237, file: !225, line: 31, baseType: !141, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !237, file: !225, line: 32, baseType: !241, size: 16, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !146, line: 19, baseType: !242)
!242 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !224, file: !225, line: 232, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!231, !152, !236, !141, !247}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 55, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !233, line: 72, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !233, line: 16, baseType: !129)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !215, file: !138, line: 141, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !215, file: !138, line: 142, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !225, line: 84, size: 320, elements: !257)
!257 = !{!258, !259, !263, !3112, !3113}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !225, line: 85, baseType: !141, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !256, file: !225, line: 86, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!241, !152, !236, !95}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !256, file: !225, line: 88, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!241, !152, !267, !95}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !225, line: 168, size: 448, elements: !269)
!269 = !{!270, !271, !272, !273, !3107, !3108}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !268, file: !225, line: 169, baseType: !237, size: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !268, file: !225, line: 170, baseType: !247, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !268, file: !225, line: 171, baseType: !128, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !268, file: !225, line: 172, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!231, !277, !152, !267, !200, !456, !247}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !279)
!279 = !{!280, !298, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3090, !3091, !3100, !3101, !3102, !3103, !3104, !3105, !3106}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !278, file: !44, line: 920, baseType: !281, size: 128)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !44, line: 917, size: 128, elements: !282)
!282 = !{!283, !289}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !281, file: !44, line: 918, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !285, line: 58, size: 64, elements: !286)
!285 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !285, line: 59, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !281, file: !44, line: 919, baseType: !290, size: 128, align: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !146, line: 216, size: 128, align: 64, elements: !291)
!291 = !{!292, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !146, line: 217, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !290, file: !146, line: 218, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !293}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !278, file: !44, line: 921, baseType: !299, size: 128, offset: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !300, line: 8, size: 128, elements: !301)
!300 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!301 = !{!302, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !299, file: !300, line: 9, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !305, line: 18, flags: DIFlagFwdDecl)
!305 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !299, file: !300, line: 10, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !305, line: 89, size: 1536, elements: !309)
!309 = !{!310, !311, !321, !329, !330, !353, !3040, !3042, !3054, !3055, !3056, !3057, !3058, !3064, !3065, !3066}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !308, file: !305, line: 91, baseType: !7, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !308, file: !305, line: 92, baseType: !312, size: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !313, line: 277, baseType: !314)
!313 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !313, line: 277, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !314, file: !313, line: 277, baseType: !317, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !313, line: 70, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !313, line: 65, size: 32, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !318, file: !313, line: 66, baseType: !7, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !308, file: !305, line: 93, baseType: !322, size: 128, offset: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !323, line: 38, size: 128, elements: !324)
!323 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !323, line: 39, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !322, file: !323, line: 39, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !308, file: !305, line: 94, baseType: !307, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !308, file: !305, line: 95, baseType: !331, size: 128, offset: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !305, line: 47, size: 128, elements: !332)
!332 = !{!333, !349}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !305, line: 48, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !305, line: 48, size: 64, elements: !335)
!335 = !{!336, !345}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !305, line: 49, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !305, line: 49, size: 64, elements: !338)
!338 = !{!339, !344}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !337, file: !305, line: 50, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !341, line: 21, baseType: !342)
!341 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !343, line: 27, baseType: !7)
!343 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !337, file: !305, line: 50, baseType: !340, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !334, file: !305, line: 52, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !341, line: 23, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !343, line: 31, baseType: !348)
!348 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !305, line: 54, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !308, file: !305, line: 96, baseType: !354, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !356)
!356 = !{!357, !358, !359, !367, !374, !375, !523, !2751, !2752, !2753, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !3016, !3024, !3025, !3026, !3036, !3037, !3038, !3039}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !355, file: !44, line: 611, baseType: !241, size: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !355, file: !44, line: 612, baseType: !242, size: 16, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !355, file: !44, line: 613, baseType: !360, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !361, line: 23, baseType: !362)
!361 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 21, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !362, file: !361, line: 22, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !146, line: 32, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !233, line: 49, baseType: !7)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !355, file: !44, line: 614, baseType: !368, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !361, line: 28, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 26, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !369, file: !361, line: 27, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !146, line: 33, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !233, line: 50, baseType: !7)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !355, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !355, file: !44, line: 622, baseType: !376, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !379)
!379 = !{!380, !384, !397, !401, !407, !411, !417, !421, !425, !429, !433, !434, !440, !444, !470, !499, !503, !509, !514, !518, !519}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !378, file: !44, line: 1865, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!307, !354, !307, !7}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !378, file: !44, line: 1866, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!141, !307, !354, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !390, line: 10, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !396}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !389, file: !390, line: 11, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !128}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !389, file: !390, line: 12, baseType: !128, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !378, file: !44, line: 1867, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!95, !354, !95}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !378, file: !44, line: 1868, baseType: !402, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!405, !354, !95}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !378, file: !44, line: 1870, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!95, !307, !200, !95}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !378, file: !44, line: 1872, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!95, !354, !307, !241, !415}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !146, line: 30, baseType: !416)
!416 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !378, file: !44, line: 1873, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!95, !307, !354, !307}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !378, file: !44, line: 1874, baseType: !422, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!95, !354, !307}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !378, file: !44, line: 1875, baseType: !426, size: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!95, !354, !307, !141}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !378, file: !44, line: 1876, baseType: !430, size: 64, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!95, !354, !307, !241}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !378, file: !44, line: 1877, baseType: !422, size: 64, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !378, file: !44, line: 1878, baseType: !435, size: 64, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!95, !354, !307, !241, !438}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !146, line: 16, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !146, line: 13, baseType: !340)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !378, file: !44, line: 1879, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!95, !354, !307, !354, !307, !7}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !378, file: !44, line: 1881, baseType: !445, size: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!95, !307, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !459, !467, !468, !469}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !449, file: !44, line: 220, baseType: !7, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !449, file: !44, line: 221, baseType: !241, size: 16, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !449, file: !44, line: 222, baseType: !360, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !449, file: !44, line: 223, baseType: !368, size: 32, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !449, file: !44, line: 224, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !146, line: 46, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !233, line: 88, baseType: !458)
!458 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !449, file: !44, line: 225, baseType: !460, size: 128, offset: 192)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !461, line: 13, size: 128, elements: !462)
!461 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!462 = !{!463, !466}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !460, file: !461, line: 14, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !461, line: 8, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !343, line: 30, baseType: !458)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !460, file: !461, line: 15, baseType: !235, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !449, file: !44, line: 226, baseType: !460, size: 128, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !449, file: !44, line: 227, baseType: !460, size: 128, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !449, file: !44, line: 234, baseType: !277, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !378, file: !44, line: 1882, baseType: !471, size: 64, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!95, !474, !476, !340, !7}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !478, line: 22, size: 1152, elements: !479)
!478 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !481, !482, !483, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !477, file: !478, line: 23, baseType: !340, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !477, file: !478, line: 24, baseType: !241, size: 16, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !477, file: !478, line: 25, baseType: !7, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !477, file: !478, line: 26, baseType: !484, size: 32, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !146, line: 104, baseType: !340)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !477, file: !478, line: 27, baseType: !346, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !477, file: !478, line: 28, baseType: !346, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !477, file: !478, line: 37, baseType: !346, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !477, file: !478, line: 38, baseType: !438, size: 32, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !477, file: !478, line: 39, baseType: !438, size: 32, offset: 352)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !477, file: !478, line: 40, baseType: !360, size: 32, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !477, file: !478, line: 41, baseType: !368, size: 32, offset: 416)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !477, file: !478, line: 42, baseType: !456, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !477, file: !478, line: 43, baseType: !460, size: 128, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !477, file: !478, line: 44, baseType: !460, size: 128, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !477, file: !478, line: 45, baseType: !460, size: 128, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !477, file: !478, line: 46, baseType: !460, size: 128, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !477, file: !478, line: 47, baseType: !346, size: 64, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !477, file: !478, line: 48, baseType: !346, size: 64, offset: 1088)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !378, file: !44, line: 1883, baseType: !500, size: 64, offset: 960)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!231, !307, !200, !247}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !378, file: !44, line: 1884, baseType: !504, size: 64, offset: 1024)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!95, !354, !507, !346, !346}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !378, file: !44, line: 1886, baseType: !510, size: 64, offset: 1088)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!95, !354, !513, !95}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !378, file: !44, line: 1887, baseType: !515, size: 64, offset: 1152)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!95, !354, !307, !277, !7, !241}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !378, file: !44, line: 1890, baseType: !430, size: 64, offset: 1216)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !378, file: !44, line: 1891, baseType: !520, size: 64, offset: 1280)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!95, !354, !405, !95}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !355, file: !44, line: 623, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !582, !2358, !2440, !2523, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2539, !2543, !2544, !2547, !2548, !2551, !2552, !2553, !2594, !2621, !2622, !2623, !2624, !2625, !2626, !2629, !2631, !2638, !2639, !2641, !2642, !2643, !2702, !2703, !2718, !2719, !2720, !2721, !2722, !2725, !2726, !2727, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !525, file: !44, line: 1417, baseType: !145, size: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !525, file: !44, line: 1418, baseType: !438, size: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !525, file: !44, line: 1419, baseType: !352, size: 8, offset: 160)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !525, file: !44, line: 1420, baseType: !129, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !525, file: !44, line: 1421, baseType: !456, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !525, file: !44, line: 1422, baseType: !533, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !535)
!535 = !{!536, !537, !538, !545, !549, !553, !557, !561, !562, !572, !575, !576, !577, !579, !580, !581}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !534, file: !44, line: 2229, baseType: !141, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !534, file: !44, line: 2230, baseType: !95, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !534, file: !44, line: 2238, baseType: !539, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!95, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !544, line: 28, flags: DIFlagFwdDecl)
!544 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!545 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !534, file: !44, line: 2239, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !534, file: !44, line: 2240, baseType: !550, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!307, !533, !95, !141, !128}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !534, file: !44, line: 2242, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !524}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !534, file: !44, line: 2243, baseType: !558, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !560, line: 76, flags: DIFlagFwdDecl)
!560 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !44, line: 2244, baseType: !533, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !534, file: !44, line: 2245, baseType: !563, size: 64, offset: 512)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !146, line: 182, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !563, file: !146, line: 183, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !146, line: 186, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !146, line: 187, baseType: !566, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !567, file: !146, line: 187, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !534, file: !44, line: 2247, baseType: !573, offset: 576)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !574, line: 187, elements: !173)
!574 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !534, file: !44, line: 2248, baseType: !573, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !534, file: !44, line: 2249, baseType: !573, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !534, file: !44, line: 2250, baseType: !578, offset: 576)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, elements: !201)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !534, file: !44, line: 2252, baseType: !573, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !534, file: !44, line: 2253, baseType: !573, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !534, file: !44, line: 2254, baseType: !573, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !525, file: !44, line: 1423, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !586)
!586 = !{!587, !591, !595, !596, !600, !606, !610, !611, !612, !616, !620, !621, !622, !623, !629, !634, !635, !642, !643, !644, !645, !2342, !2357}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !585, file: !44, line: 1936, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!354, !524}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !585, file: !44, line: 1937, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !354}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !585, file: !44, line: 1938, baseType: !592, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !585, file: !44, line: 1940, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !354, !95}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !585, file: !44, line: 1941, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!95, !354, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !585, file: !44, line: 1942, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!95, !354}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !585, file: !44, line: 1943, baseType: !592, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !585, file: !44, line: 1944, baseType: !554, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !585, file: !44, line: 1945, baseType: !613, size: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!95, !524, !95}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !585, file: !44, line: 1946, baseType: !617, size: 64, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!95, !524}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !585, file: !44, line: 1947, baseType: !617, size: 64, offset: 640)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !585, file: !44, line: 1948, baseType: !617, size: 64, offset: 704)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !585, file: !44, line: 1949, baseType: !617, size: 64, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !585, file: !44, line: 1950, baseType: !624, size: 64, offset: 832)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!95, !307, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !585, file: !44, line: 1951, baseType: !630, size: 64, offset: 896)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!95, !524, !633, !200}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !585, file: !44, line: 1952, baseType: !554, size: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !585, file: !44, line: 1954, baseType: !636, size: 64, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!95, !639, !307}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !641, line: 539, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !585, file: !44, line: 1955, baseType: !636, size: 64, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !585, file: !44, line: 1956, baseType: !636, size: 64, offset: 1152)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !585, file: !44, line: 1957, baseType: !636, size: 64, offset: 1216)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !585, file: !44, line: 1963, baseType: !646, size: 64, offset: 1280)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!95, !524, !649, !672}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !651, line: 68, size: 512, align: 128, elements: !652)
!651 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!652 = !{!653, !654, !2334, !2341}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !651, line: 69, baseType: !129, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !651, line: 77, baseType: !655, size: 320, offset: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !651, line: 77, size: 320, elements: !656)
!656 = !{!657, !845, !850, !878, !886, !892, !2265, !2333}
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !651, line: 78, baseType: !658, size: 320)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !651, line: 78, size: 320, elements: !659)
!659 = !{!660, !661, !843, !844}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !658, file: !651, line: 84, baseType: !145, size: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !658, file: !651, line: 86, baseType: !662, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !664)
!664 = !{!665, !666, !674, !675, !680, !695, !711, !712, !713, !714, !836, !837, !840, !841, !842}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !663, file: !44, line: 452, baseType: !354, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !663, file: !44, line: 453, baseType: !667, size: 128, offset: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !668, line: 292, size: 128, elements: !669)
!668 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!669 = !{!670, !671, !673}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !667, file: !668, line: 293, baseType: !159)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !667, file: !668, line: 295, baseType: !672, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !146, line: 148, baseType: !7)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !667, file: !668, line: 296, baseType: !128, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !663, file: !44, line: 454, baseType: !672, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !663, file: !44, line: 455, baseType: !676, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !146, line: 168, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 166, size: 32, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !677, file: !146, line: 167, baseType: !95, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !663, file: !44, line: 460, baseType: !681, size: 128, offset: 256)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !682, line: 125, size: 128, elements: !683)
!682 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684, !694}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !681, file: !682, line: 126, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !682, line: 31, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !685, file: !682, line: 32, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !682, line: 24, size: 192, align: 64, elements: !690)
!690 = !{!691, !692, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !689, file: !682, line: 25, baseType: !129, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !689, file: !682, line: 26, baseType: !688, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !689, file: !682, line: 27, baseType: !688, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !681, file: !682, line: 127, baseType: !688, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !663, file: !44, line: 461, baseType: !696, size: 256, offset: 384)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !697, line: 35, size: 256, elements: !698)
!697 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!698 = !{!699, !707, !708, !710}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !696, file: !697, line: 36, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !701, line: 13, baseType: !702)
!701 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !146, line: 175, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 173, size: 64, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !703, file: !146, line: 174, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !341, line: 22, baseType: !465)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !696, file: !697, line: 42, baseType: !700, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !696, file: !697, line: 46, baseType: !709, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !160, line: 29, baseType: !167)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !696, file: !697, line: 47, baseType: !145, size: 128, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !663, file: !44, line: 462, baseType: !129, size: 64, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !663, file: !44, line: 463, baseType: !129, size: 64, offset: 704)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !663, file: !44, line: 464, baseType: !129, size: 64, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !663, file: !44, line: 465, baseType: !715, size: 64, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !718)
!718 = !{!719, !723, !727, !731, !735, !739, !745, !751, !755, !760, !764, !768, !772, !800, !804, !810, !811, !812, !816, !821, !825, !832}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !717, file: !44, line: 368, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!95, !649, !604}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !717, file: !44, line: 369, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!95, !277, !649}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !717, file: !44, line: 372, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!95, !662, !604}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !717, file: !44, line: 375, baseType: !732, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!95, !649}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !717, file: !44, line: 381, baseType: !736, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!95, !277, !662, !149, !7}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !717, file: !44, line: 383, baseType: !740, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !717, file: !44, line: 385, baseType: !746, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!95, !277, !662, !456, !7, !7, !749, !750}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !717, file: !44, line: 388, baseType: !752, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!95, !277, !662, !456, !7, !7, !649, !128}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !717, file: !44, line: 393, baseType: !756, size: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!759, !662, !759}
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !146, line: 125, baseType: !346)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !717, file: !44, line: 394, baseType: !761, size: 64, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !649, !7, !7}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !717, file: !44, line: 395, baseType: !765, size: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!95, !649, !672}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !717, file: !44, line: 396, baseType: !769, size: 64, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !649}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !717, file: !44, line: 397, baseType: !773, size: 64, offset: 768)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!231, !776, !798}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !778)
!778 = !{!779, !780, !781, !785, !786, !787, !790, !791}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !777, file: !44, line: 321, baseType: !277, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !777, file: !44, line: 326, baseType: !456, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !777, file: !44, line: 327, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !776, !235, !235}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !777, file: !44, line: 328, baseType: !128, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !777, file: !44, line: 329, baseType: !95, size: 32, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !777, file: !44, line: 330, baseType: !788, size: 16, offset: 288)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !341, line: 19, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !343, line: 24, baseType: !242)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !777, file: !44, line: 331, baseType: !788, size: 16, offset: 304)
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !44, line: 332, baseType: !792, size: 64, offset: 320)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !44, line: 332, size: 64, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !792, file: !44, line: 333, baseType: !7, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !792, file: !44, line: 334, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !717, file: !44, line: 402, baseType: !801, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!95, !662, !649, !649, !5}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !717, file: !44, line: 404, baseType: !805, size: 64, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!415, !649, !808}
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !809, line: 305, baseType: !7)
!809 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!810 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !717, file: !44, line: 405, baseType: !769, size: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !717, file: !44, line: 406, baseType: !732, size: 64, offset: 1024)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !717, file: !44, line: 407, baseType: !813, size: 64, offset: 1088)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!95, !649, !129, !129}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !717, file: !44, line: 409, baseType: !817, size: 64, offset: 1152)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !649, !820, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !717, file: !44, line: 410, baseType: !822, size: 64, offset: 1216)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!95, !662, !649}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !717, file: !44, line: 413, baseType: !826, size: 64, offset: 1280)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!95, !829, !277, !831}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !717, file: !44, line: 415, baseType: !833, size: 64, offset: 1344)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !277}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !44, line: 466, baseType: !129, size: 64, offset: 896)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !663, file: !44, line: 467, baseType: !838, size: 32, offset: 960)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !839, line: 8, baseType: !340)
!839 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!840 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !663, file: !44, line: 468, baseType: !159, offset: 992)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !663, file: !44, line: 469, baseType: !145, size: 128, offset: 1024)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !663, file: !44, line: 470, baseType: !128, size: 64, offset: 1152)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !658, file: !651, line: 87, baseType: !129, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !658, file: !651, line: 94, baseType: !129, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !651, line: 96, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !651, line: 96, size: 64, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !846, file: !651, line: 101, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !146, line: 143, baseType: !346)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !651, line: 103, baseType: !851, size: 320)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !651, line: 103, size: 320, elements: !852)
!852 = !{!853, !863, !866, !867}
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !651, line: 104, baseType: !854, size: 128)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !851, file: !651, line: 104, size: 128, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !854, file: !651, line: 105, baseType: !145, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !651, line: 106, baseType: !858, size: 128)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !651, line: 106, size: 128, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !858, file: !651, line: 107, baseType: !649, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !858, file: !651, line: 109, baseType: !95, size: 32, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !858, file: !651, line: 110, baseType: !95, size: 32, offset: 96)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !851, file: !651, line: 117, baseType: !864, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !651, line: 117, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !851, file: !651, line: 119, baseType: !128, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !651, line: 120, baseType: !868, size: 64, offset: 256)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !851, file: !651, line: 120, size: 64, elements: !869)
!869 = !{!870, !871, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !868, file: !651, line: 121, baseType: !128, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !868, file: !651, line: 122, baseType: !129, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !651, line: 123, baseType: !873, size: 32)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !651, line: 123, size: 32, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !873, file: !651, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !873, file: !651, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !873, file: !651, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !651, line: 130, baseType: !879, size: 192)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !651, line: 130, size: 192, elements: !880)
!880 = !{!881, !882, !883, !884, !885}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !879, file: !651, line: 131, baseType: !129, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !879, file: !651, line: 134, baseType: !352, size: 8, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !879, file: !651, line: 135, baseType: !352, size: 8, offset: 72)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !879, file: !651, line: 136, baseType: !676, size: 32, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !879, file: !651, line: 137, baseType: !7, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !651, line: 139, baseType: !887, size: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !651, line: 139, size: 256, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !887, file: !651, line: 140, baseType: !129, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !887, file: !651, line: 141, baseType: !676, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !887, file: !651, line: 143, baseType: !145, size: 128, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !651, line: 145, baseType: !893, size: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !651, line: 145, size: 256, elements: !894)
!894 = !{!895, !896, !898, !899, !2264}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !893, file: !651, line: 146, baseType: !129, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !893, file: !651, line: 147, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !641, line: 509, baseType: !649)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !893, file: !651, line: 148, baseType: !129, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !651, line: 149, baseType: !900, size: 64, offset: 192)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !651, line: 149, size: 64, elements: !901)
!901 = !{!902, !2263}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !900, file: !651, line: 150, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !651, line: 388, size: 7296, elements: !905)
!905 = !{!906, !2259}
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !651, line: 389, baseType: !907, size: 7296)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !904, file: !651, line: 389, size: 7296, elements: !908)
!908 = !{!909, !1027, !1028, !1029, !1033, !1034, !1035, !1036, !1037, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1078, !1086, !1089, !1135, !1136, !2243, !2244, !2247, !2248, !2249, !2252, !2253, !2254, !2257, !2258}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !907, file: !651, line: 390, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !651, line: 305, size: 1472, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !927, !928, !933, !934, !937, !1021, !1022, !1023, !1024, !1025}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !911, file: !651, line: 308, baseType: !129, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !911, file: !651, line: 309, baseType: !129, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !911, file: !651, line: 313, baseType: !910, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !911, file: !651, line: 313, baseType: !910, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !911, file: !651, line: 315, baseType: !689, size: 192, align: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !911, file: !651, line: 323, baseType: !129, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !911, file: !651, line: 327, baseType: !903, size: 64, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !911, file: !651, line: 333, baseType: !921, size: 64, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !641, line: 284, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !641, line: 284, size: 64, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !922, file: !641, line: 284, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !926, line: 19, baseType: !129)
!926 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !911, file: !651, line: 334, baseType: !129, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !911, file: !651, line: 343, baseType: !929, size: 256, offset: 704)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !651, line: 340, size: 256, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !929, file: !651, line: 341, baseType: !689, size: 192, align: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !929, file: !651, line: 342, baseType: !129, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !911, file: !651, line: 351, baseType: !145, size: 128, offset: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !911, file: !651, line: 353, baseType: !935, size: 64, offset: 1088)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !651, line: 353, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !911, file: !651, line: 356, baseType: !938, size: 64, offset: 1152)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !941)
!941 = !{!942, !946, !947, !951, !955, !995, !999, !1003, !1007, !1008, !1009, !1013, !1017}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !940, file: !14, line: 558, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !910}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !940, file: !14, line: 559, baseType: !943, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !940, file: !14, line: 560, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!95, !910, !129}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !940, file: !14, line: 561, baseType: !952, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!95, !910}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !940, file: !14, line: 562, baseType: !956, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !651, line: 682, baseType: !7)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !975, !982, !988, !989, !990, !992, !994}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !961, file: !14, line: 509, baseType: !910, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !961, file: !14, line: 511, baseType: !672, size: 32, offset: 96)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !961, file: !14, line: 512, baseType: !129, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !961, file: !14, line: 513, baseType: !129, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !961, file: !14, line: 514, baseType: !969, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !641, line: 385, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !641, line: 385, size: 64, elements: !972)
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !971, file: !641, line: 385, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !926, line: 15, baseType: !129)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !961, file: !14, line: 516, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !641, line: 359, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !641, line: 359, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !978, file: !641, line: 359, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !926, line: 16, baseType: !129)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !961, file: !14, line: 519, baseType: !983, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !926, line: 21, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 21, size: 64, elements: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !984, file: !926, line: 21, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !926, line: 14, baseType: !129)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !961, file: !14, line: 521, baseType: !649, size: 64, offset: 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !961, file: !14, line: 522, baseType: !649, size: 64, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !961, file: !14, line: 528, baseType: !991, size: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !961, file: !14, line: 532, baseType: !993, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !961, file: !14, line: 536, baseType: !897, size: 64, offset: 704)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !940, file: !14, line: 563, baseType: !996, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!959, !960, !13}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !940, file: !14, line: 565, baseType: !1000, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !960, !129, !129}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !940, file: !14, line: 567, baseType: !1004, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!129, !910}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !940, file: !14, line: 571, baseType: !956, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !940, file: !14, line: 574, baseType: !956, size: 64, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !940, file: !14, line: 579, baseType: !1010, size: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!95, !910, !129, !128, !95, !95}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !940, file: !14, line: 585, baseType: !1014, size: 64, offset: 704)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!141, !910}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !940, file: !14, line: 615, baseType: !1018, size: 64, offset: 768)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!649, !910, !129}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !911, file: !651, line: 359, baseType: !129, size: 64, offset: 1216)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !911, file: !651, line: 361, baseType: !277, size: 64, offset: 1280)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !911, file: !651, line: 362, baseType: !128, size: 64, offset: 1344)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !911, file: !651, line: 365, baseType: !700, size: 64, offset: 1408)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !911, file: !651, line: 373, baseType: !1026, offset: 1472)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !651, line: 296, elements: !173)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !907, file: !651, line: 391, baseType: !685, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !907, file: !651, line: 392, baseType: !346, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !907, file: !651, line: 394, baseType: !1030, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!129, !277, !129, !129, !129, !129}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !907, file: !651, line: 398, baseType: !129, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !907, file: !651, line: 399, baseType: !129, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !907, file: !651, line: 405, baseType: !129, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !907, file: !651, line: 406, baseType: !129, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !907, file: !651, line: 407, baseType: !1038, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !641, line: 286, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !641, line: 286, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1040, file: !641, line: 286, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !926, line: 18, baseType: !129)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !907, file: !651, line: 416, baseType: !676, size: 32, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !907, file: !651, line: 428, baseType: !676, size: 32, offset: 608)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !907, file: !651, line: 437, baseType: !676, size: 32, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !907, file: !651, line: 447, baseType: !676, size: 32, offset: 672)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !907, file: !651, line: 450, baseType: !700, size: 64, offset: 704)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !907, file: !651, line: 452, baseType: !95, size: 32, offset: 768)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !907, file: !651, line: 454, baseType: !159, offset: 800)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !907, file: !651, line: 457, baseType: !696, size: 256, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !907, file: !651, line: 459, baseType: !145, size: 128, offset: 1088)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !907, file: !651, line: 466, baseType: !129, size: 64, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !907, file: !651, line: 467, baseType: !129, size: 64, offset: 1280)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !907, file: !651, line: 469, baseType: !129, size: 64, offset: 1344)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !907, file: !651, line: 470, baseType: !129, size: 64, offset: 1408)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !907, file: !651, line: 471, baseType: !702, size: 64, offset: 1472)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !907, file: !651, line: 472, baseType: !129, size: 64, offset: 1536)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !907, file: !651, line: 473, baseType: !129, size: 64, offset: 1600)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !907, file: !651, line: 474, baseType: !129, size: 64, offset: 1664)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !907, file: !651, line: 475, baseType: !129, size: 64, offset: 1728)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !907, file: !651, line: 477, baseType: !159, offset: 1792)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !907, file: !651, line: 478, baseType: !129, size: 64, offset: 1792)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !907, file: !651, line: 478, baseType: !129, size: 64, offset: 1856)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !907, file: !651, line: 478, baseType: !129, size: 64, offset: 1920)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !907, file: !651, line: 478, baseType: !129, size: 64, offset: 1984)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !907, file: !651, line: 479, baseType: !129, size: 64, offset: 2048)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !907, file: !651, line: 479, baseType: !129, size: 64, offset: 2112)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !907, file: !651, line: 479, baseType: !129, size: 64, offset: 2176)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !907, file: !651, line: 480, baseType: !129, size: 64, offset: 2240)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !907, file: !651, line: 480, baseType: !129, size: 64, offset: 2304)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !907, file: !651, line: 480, baseType: !129, size: 64, offset: 2368)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !907, file: !651, line: 480, baseType: !129, size: 64, offset: 2432)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !907, file: !651, line: 482, baseType: !1075, size: 2816, offset: 2496)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 2816, elements: !1076)
!1076 = !{!1077}
!1077 = !DISubrange(count: 44)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !907, file: !651, line: 488, baseType: !1079, size: 256, offset: 5312)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1080, line: 60, size: 256, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1079, file: !1080, line: 61, baseType: !1083, size: 256)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 256, elements: !1084)
!1084 = !{!1085}
!1085 = !DISubrange(count: 4)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !907, file: !651, line: 490, baseType: !1087, size: 64, offset: 5568)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !651, line: 490, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !907, file: !651, line: 493, baseType: !1090, size: 896, offset: 5632)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1091, line: 53, baseType: !1092)
!1091 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1091, line: 13, size: 896, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1100, !1101, !1108, !1109, !1129, !1130, !1131}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1092, file: !1091, line: 18, baseType: !346, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1092, file: !1091, line: 28, baseType: !702, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1092, file: !1091, line: 31, baseType: !696, size: 256, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1092, file: !1091, line: 32, baseType: !1098, size: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1091, line: 32, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1092, file: !1091, line: 37, baseType: !242, size: 16, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1092, file: !1091, line: 40, baseType: !1102, size: 192, offset: 512)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1103, line: 53, size: 192, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1102, file: !1103, line: 54, baseType: !700, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1102, file: !1103, line: 55, baseType: !159, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1102, file: !1103, line: 59, baseType: !145, size: 128, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1092, file: !1091, line: 41, baseType: !128, size: 64, offset: 704)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1092, file: !1091, line: 42, baseType: !1110, size: 64, offset: 768)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1113, line: 13, size: 896, elements: !1114)
!1113 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1112, file: !1113, line: 14, baseType: !128, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1112, file: !1113, line: 15, baseType: !129, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1112, file: !1113, line: 17, baseType: !129, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1112, file: !1113, line: 17, baseType: !129, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1112, file: !1113, line: 19, baseType: !235, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1112, file: !1113, line: 21, baseType: !235, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1112, file: !1113, line: 22, baseType: !235, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1112, file: !1113, line: 23, baseType: !235, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1112, file: !1113, line: 24, baseType: !235, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1112, file: !1113, line: 25, baseType: !235, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1112, file: !1113, line: 26, baseType: !235, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1112, file: !1113, line: 27, baseType: !235, size: 64, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1112, file: !1113, line: 28, baseType: !235, size: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1112, file: !1113, line: 29, baseType: !235, size: 64, offset: 832)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1092, file: !1091, line: 44, baseType: !676, size: 32, offset: 832)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1092, file: !1091, line: 50, baseType: !788, size: 16, offset: 864)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1092, file: !1091, line: 51, baseType: !1132, size: 16, offset: 880)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !341, line: 18, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !343, line: 23, baseType: !1134)
!1134 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !907, file: !651, line: 495, baseType: !129, size: 64, offset: 6528)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !907, file: !651, line: 497, baseType: !1137, size: 64, offset: 6592)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !651, line: 381, size: 384, elements: !1139)
!1139 = !{!1140, !1141, !2242}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1138, file: !651, line: 382, baseType: !676, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1138, file: !651, line: 383, baseType: !1142, size: 128, offset: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !651, line: 376, size: 128, elements: !1143)
!1143 = !{!1144, !2240}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1142, file: !651, line: 377, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1147, line: 640, size: 48640, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149, !1155, !1157, !1158, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1175, !1193, !1204, !1289, !1290, !1291, !1302, !1303, !1305, !1306, !1307, !1308, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1387, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1425, !1427, !1428, !1429, !1441, !1442, !1443, !1444, !1445, !1446, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1470, !1475, !1659, !1660, !1661, !1662, !1666, !1669, !1672, !1675, !1678, !1681, !1782, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1828, !1829, !1830, !1831, !1832, !1837, !1838, !1839, !1842, !1843, !1846, !1849, !1852, !1855, !1898, !1901, !1902, !1981, !1982, !1985, !1986, !1989, !1990, !1991, !1995, !1996, !1997, !2010, !2011, !2012, !2022, !2027, !2030, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1146, file: !1147, line: 646, baseType: !1150, size: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1151, line: 56, size: 128, elements: !1152)
!1151 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1150, file: !1151, line: 57, baseType: !129, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1150, file: !1151, line: 58, baseType: !340, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1146, file: !1147, line: 649, baseType: !1156, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !235)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1146, file: !1147, line: 657, baseType: !128, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1146, file: !1147, line: 658, baseType: !1159, size: 32, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1160, line: 113, baseType: !1161)
!1160 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1160, line: 111, size: 32, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1161, file: !1160, line: 112, baseType: !676, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1146, file: !1147, line: 660, baseType: !7, size: 32, offset: 288)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1146, file: !1147, line: 661, baseType: !7, size: 32, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1146, file: !1147, line: 684, baseType: !95, size: 32, offset: 352)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1146, file: !1147, line: 686, baseType: !95, size: 32, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1146, file: !1147, line: 687, baseType: !95, size: 32, offset: 416)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1146, file: !1147, line: 688, baseType: !95, size: 32, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1146, file: !1147, line: 689, baseType: !7, size: 32, offset: 480)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1146, file: !1147, line: 691, baseType: !1172, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1147, line: 691, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1146, file: !1147, line: 692, baseType: !1176, size: 832, offset: 576)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1147, line: 451, size: 832, elements: !1177)
!1177 = !{!1178, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1176, file: !1147, line: 453, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1147, line: 325, size: 128, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1179, file: !1147, line: 326, baseType: !129, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1179, file: !1147, line: 327, baseType: !340, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1176, file: !1147, line: 454, baseType: !689, size: 192, align: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1176, file: !1147, line: 455, baseType: !145, size: 128, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1176, file: !1147, line: 456, baseType: !7, size: 32, offset: 448)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1176, file: !1147, line: 458, baseType: !346, size: 64, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1176, file: !1147, line: 459, baseType: !346, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1176, file: !1147, line: 460, baseType: !346, size: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1176, file: !1147, line: 461, baseType: !346, size: 64, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1176, file: !1147, line: 463, baseType: !346, size: 64, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1176, file: !1147, line: 465, baseType: !1192, offset: 832)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1147, line: 415, elements: !173)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1146, file: !1147, line: 693, baseType: !1194, size: 384, offset: 1408)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1147, line: 489, size: 384, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1194, file: !1147, line: 490, baseType: !145, size: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1194, file: !1147, line: 491, baseType: !129, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1194, file: !1147, line: 492, baseType: !129, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1194, file: !1147, line: 493, baseType: !7, size: 32, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1194, file: !1147, line: 494, baseType: !242, size: 16, offset: 288)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1194, file: !1147, line: 495, baseType: !242, size: 16, offset: 304)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1194, file: !1147, line: 497, baseType: !1203, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1146, file: !1147, line: 697, baseType: !1205, size: 1792, offset: 1792)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1147, line: 507, size: 1792, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1286, !1287}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1205, file: !1147, line: 508, baseType: !689, size: 192, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1205, file: !1147, line: 515, baseType: !346, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1205, file: !1147, line: 516, baseType: !346, size: 64, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1205, file: !1147, line: 517, baseType: !346, size: 64, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1205, file: !1147, line: 518, baseType: !346, size: 64, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1205, file: !1147, line: 519, baseType: !346, size: 64, offset: 448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1205, file: !1147, line: 526, baseType: !706, size: 64, offset: 512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1205, file: !1147, line: 527, baseType: !346, size: 64, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1205, file: !1147, line: 528, baseType: !7, size: 32, offset: 640)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1205, file: !1147, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1205, file: !1147, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1205, file: !1147, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1205, file: !1147, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1205, file: !1147, line: 563, baseType: !1221, size: 512, offset: 704)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1222)
!1222 = !{!1223, !1231, !1232, !1237, !1280, !1283, !1284, !1285}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1221, file: !20, line: 119, baseType: !1224, size: 256)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1225, line: 9, size: 256, elements: !1226)
!1225 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1224, file: !1225, line: 10, baseType: !689, size: 192, align: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1224, file: !1225, line: 11, baseType: !1229, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1230, line: 29, baseType: !706)
!1230 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1221, file: !20, line: 120, baseType: !1229, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1221, file: !20, line: 121, baseType: !1233, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!19, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1221, file: !20, line: 122, baseType: !1238, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1240)
!1240 = !{!1241, !1261, !1262, !1265, !1270, !1271, !1275, !1279}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1239, file: !20, line: 160, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1243, file: !20, line: 215, baseType: !709)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1243, file: !20, line: 216, baseType: !7, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1243, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1243, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1243, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1243, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1243, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1243, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1243, file: !20, line: 233, baseType: !1229, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1243, file: !20, line: 234, baseType: !1236, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1243, file: !20, line: 235, baseType: !1229, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1243, file: !20, line: 236, baseType: !1236, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1243, file: !20, line: 237, baseType: !1258, size: 4096, offset: 512)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1239, size: 4096, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 8)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1239, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1239, file: !20, line: 162, baseType: !1263, size: 32, offset: 96)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !146, line: 27, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !233, line: 96, baseType: !95)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1239, file: !20, line: 163, baseType: !1266, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !313, line: 276, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !313, line: 276, size: 32, elements: !1268)
!1268 = !{!1269}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1267, file: !313, line: 276, baseType: !317, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1239, file: !20, line: 164, baseType: !1236, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1239, file: !20, line: 165, baseType: !1272, size: 128, offset: 256)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1225, line: 14, size: 128, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1272, file: !1225, line: 15, baseType: !681, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1239, file: !20, line: 166, baseType: !1276, size: 64, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!1229}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1239, file: !20, line: 167, baseType: !1229, size: 64, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1221, file: !20, line: 123, baseType: !1281, size: 8, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !341, line: 17, baseType: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !343, line: 21, baseType: !352)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1221, file: !20, line: 124, baseType: !1281, size: 8, offset: 456)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1221, file: !20, line: 125, baseType: !1281, size: 8, offset: 464)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1221, file: !20, line: 126, baseType: !1281, size: 8, offset: 472)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1205, file: !1147, line: 572, baseType: !1221, size: 512, offset: 1216)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1205, file: !1147, line: 580, baseType: !1288, size: 64, offset: 1728)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1146, file: !1147, line: 721, baseType: !7, size: 32, offset: 3584)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1146, file: !1147, line: 722, baseType: !95, size: 32, offset: 3616)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1146, file: !1147, line: 723, baseType: !1292, size: 64, offset: 3648)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1295, line: 17, baseType: !1296)
!1295 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1295, line: 17, size: 64, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1296, file: !1295, line: 17, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 1)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1146, file: !1147, line: 724, baseType: !1294, size: 64, offset: 3712)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1146, file: !1147, line: 749, baseType: !1304, offset: 3776)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1147, line: 290, elements: !173)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1146, file: !1147, line: 751, baseType: !145, size: 128, offset: 3776)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1146, file: !1147, line: 757, baseType: !903, size: 64, offset: 3904)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1146, file: !1147, line: 758, baseType: !903, size: 64, offset: 3968)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1146, file: !1147, line: 761, baseType: !1309, size: 320, offset: 4032)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1080, line: 34, size: 320, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1309, file: !1080, line: 35, baseType: !346, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1309, file: !1080, line: 36, baseType: !1313, size: 256, offset: 64)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 256, elements: !1084)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1146, file: !1147, line: 766, baseType: !95, size: 32, offset: 4352)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1146, file: !1147, line: 767, baseType: !95, size: 32, offset: 4384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1146, file: !1147, line: 768, baseType: !95, size: 32, offset: 4416)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1146, file: !1147, line: 770, baseType: !95, size: 32, offset: 4448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1146, file: !1147, line: 772, baseType: !129, size: 64, offset: 4480)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1146, file: !1147, line: 775, baseType: !7, size: 32, offset: 4544)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1146, file: !1147, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1146, file: !1147, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1146, file: !1147, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1146, file: !1147, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1146, file: !1147, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1146, file: !1147, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1146, file: !1147, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1146, file: !1147, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1146, file: !1147, line: 831, baseType: !129, size: 64, offset: 4672)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1146, file: !1147, line: 833, baseType: !1330, size: 384, offset: 4736)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1331)
!1331 = !{!1332, !1337}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1330, file: !25, line: 26, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!235, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !25, line: 27, baseType: !1338, size: 320, offset: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !25, line: 27, size: 320, elements: !1339)
!1339 = !{!1340, !1350, !1377}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1338, file: !25, line: 36, baseType: !1341, size: 320)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1338, file: !25, line: 29, size: 320, elements: !1342)
!1342 = !{!1343, !1345, !1346, !1347, !1348, !1349}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1341, file: !25, line: 30, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1341, file: !25, line: 31, baseType: !340, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1341, file: !25, line: 32, baseType: !340, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1341, file: !25, line: 33, baseType: !340, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1341, file: !25, line: 34, baseType: !346, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1341, file: !25, line: 35, baseType: !1344, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1338, file: !25, line: 46, baseType: !1351, size: 192)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1338, file: !25, line: 38, size: 192, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1376}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1351, file: !25, line: 39, baseType: !1263, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1351, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !25, line: 41, baseType: !1356, size: 64, offset: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !25, line: 41, size: 64, elements: !1357)
!1357 = !{!1358, !1366}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1356, file: !25, line: 42, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1361, line: 7, size: 128, elements: !1362)
!1361 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1362 = !{!1363, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1360, file: !1361, line: 8, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !233, line: 93, baseType: !458)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1360, file: !1361, line: 9, baseType: !458, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1356, file: !25, line: 43, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1369, line: 7, size: 64, elements: !1370)
!1369 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1370 = !{!1371, !1375}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1368, file: !1369, line: 8, baseType: !1372, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1369, line: 5, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !341, line: 20, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !343, line: 26, baseType: !95)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1368, file: !1369, line: 9, baseType: !1373, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1351, file: !25, line: 45, baseType: !346, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1338, file: !25, line: 54, baseType: !1378, size: 256)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1338, file: !25, line: 48, size: 256, elements: !1379)
!1379 = !{!1380, !1383, !1384, !1385, !1386}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1378, file: !25, line: 49, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1378, file: !25, line: 50, baseType: !95, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1378, file: !25, line: 51, baseType: !95, size: 32, offset: 96)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1378, file: !25, line: 52, baseType: !129, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1378, file: !25, line: 53, baseType: !129, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1146, file: !1147, line: 835, baseType: !1388, size: 32, offset: 5120)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !146, line: 22, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !233, line: 28, baseType: !95)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1146, file: !1147, line: 836, baseType: !1388, size: 32, offset: 5152)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1146, file: !1147, line: 840, baseType: !129, size: 64, offset: 5184)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1146, file: !1147, line: 849, baseType: !1145, size: 64, offset: 5248)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1146, file: !1147, line: 852, baseType: !1145, size: 64, offset: 5312)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1146, file: !1147, line: 857, baseType: !145, size: 128, offset: 5376)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1146, file: !1147, line: 858, baseType: !145, size: 128, offset: 5504)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1146, file: !1147, line: 859, baseType: !1145, size: 64, offset: 5632)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1146, file: !1147, line: 867, baseType: !145, size: 128, offset: 5696)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1146, file: !1147, line: 868, baseType: !145, size: 128, offset: 5824)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1146, file: !1147, line: 871, baseType: !1400, size: 64, offset: 5952)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1408, !1409, !1416, !1417}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1401, file: !53, line: 61, baseType: !1159, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1401, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1401, file: !53, line: 63, baseType: !159, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1401, file: !53, line: 65, baseType: !1407, size: 256, offset: 64)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 256, elements: !1084)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1401, file: !53, line: 66, baseType: !563, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1401, file: !53, line: 68, baseType: !1410, size: 128, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1411, line: 40, baseType: !1412)
!1411 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1411, line: 36, size: 128, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1412, file: !1411, line: 37, baseType: !159)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1412, file: !1411, line: 38, baseType: !145, size: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1401, file: !53, line: 69, baseType: !290, size: 128, align: 64, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1401, file: !53, line: 70, baseType: !1418, size: 128, offset: 640)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 128, elements: !1300)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1419, file: !53, line: 55, baseType: !95, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1419, file: !53, line: 56, baseType: !1423, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1146, file: !1147, line: 872, baseType: !1426, size: 512, offset: 6016)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 512, elements: !1084)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1146, file: !1147, line: 873, baseType: !145, size: 128, offset: 6528)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1146, file: !1147, line: 874, baseType: !145, size: 128, offset: 6656)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1146, file: !1147, line: 876, baseType: !1430, size: 64, offset: 6784)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1432, line: 26, size: 192, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1431, file: !1432, line: 27, baseType: !7, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1431, file: !1432, line: 28, baseType: !1436, size: 128, offset: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1437, line: 43, size: 128, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1436, file: !1437, line: 44, baseType: !709)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1436, file: !1437, line: 45, baseType: !145, size: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1146, file: !1147, line: 879, baseType: !633, size: 64, offset: 6848)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1146, file: !1147, line: 882, baseType: !633, size: 64, offset: 6912)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1146, file: !1147, line: 884, baseType: !346, size: 64, offset: 6976)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1146, file: !1147, line: 885, baseType: !346, size: 64, offset: 7040)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1146, file: !1147, line: 890, baseType: !346, size: 64, offset: 7104)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1146, file: !1147, line: 891, baseType: !1447, size: 128, offset: 7168)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1147, line: 242, size: 128, elements: !1448)
!1448 = !{!1449, !1450, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1447, file: !1147, line: 244, baseType: !346, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1447, file: !1147, line: 245, baseType: !346, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1447, file: !1147, line: 246, baseType: !709, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1146, file: !1147, line: 900, baseType: !129, size: 64, offset: 7296)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1146, file: !1147, line: 901, baseType: !129, size: 64, offset: 7360)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1146, file: !1147, line: 904, baseType: !346, size: 64, offset: 7424)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1146, file: !1147, line: 907, baseType: !346, size: 64, offset: 7488)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1146, file: !1147, line: 910, baseType: !129, size: 64, offset: 7552)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1146, file: !1147, line: 911, baseType: !129, size: 64, offset: 7616)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1146, file: !1147, line: 914, baseType: !1459, size: 640, offset: 7680)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1460, line: 123, size: 640, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1468, !1469}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1459, file: !1460, line: 124, baseType: !1463, size: 576)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 576, elements: !201)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1460, line: 108, size: 192, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1464, file: !1460, line: 109, baseType: !346, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1464, file: !1460, line: 110, baseType: !1272, size: 128, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1459, file: !1460, line: 125, baseType: !7, size: 32, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1459, file: !1460, line: 126, baseType: !7, size: 32, offset: 608)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1146, file: !1147, line: 917, baseType: !1471, size: 192, offset: 8320)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1460, line: 134, size: 192, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1471, file: !1460, line: 135, baseType: !290, size: 128, align: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1471, file: !1460, line: 136, baseType: !7, size: 32, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1146, file: !1147, line: 923, baseType: !1476, size: 64, offset: 8512)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1479, line: 111, size: 1280, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1500, !1501, !1502, !1503, !1504, !1505, !1612, !1613, !1614, !1615, !1641, !1644, !1654}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1478, file: !1479, line: 112, baseType: !676, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1478, file: !1479, line: 120, baseType: !360, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1478, file: !1479, line: 121, baseType: !368, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1478, file: !1479, line: 122, baseType: !360, size: 32, offset: 96)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1478, file: !1479, line: 123, baseType: !368, size: 32, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1478, file: !1479, line: 124, baseType: !360, size: 32, offset: 160)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1478, file: !1479, line: 125, baseType: !368, size: 32, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1478, file: !1479, line: 126, baseType: !360, size: 32, offset: 224)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1478, file: !1479, line: 127, baseType: !368, size: 32, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1478, file: !1479, line: 128, baseType: !7, size: 32, offset: 288)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1478, file: !1479, line: 129, baseType: !1492, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1493, line: 26, baseType: !1494)
!1493 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1493, line: 24, size: 64, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1494, file: !1493, line: 25, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !1498)
!1498 = !{!1499}
!1499 = !DISubrange(count: 2)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1478, file: !1479, line: 130, baseType: !1492, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1478, file: !1479, line: 131, baseType: !1492, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1478, file: !1479, line: 132, baseType: !1492, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1478, file: !1479, line: 133, baseType: !1492, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1478, file: !1479, line: 135, baseType: !352, size: 8, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1478, file: !1479, line: 137, baseType: !1506, size: 64, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1508, line: 189, size: 1664, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510, !1511, !1514, !1519, !1520, !1523, !1524, !1529, !1530, !1531, !1532, !1534, !1535, !1536, !1537, !1538, !1576, !1597}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1507, file: !1508, line: 190, baseType: !1159, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1507, file: !1508, line: 191, baseType: !1512, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1508, line: 28, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !146, line: 98, baseType: !1373)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 192, baseType: !1515, size: 192, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 192, size: 192, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1515, file: !1508, line: 193, baseType: !145, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1515, file: !1508, line: 194, baseType: !689, size: 192, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1507, file: !1508, line: 199, baseType: !696, size: 256, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1507, file: !1508, line: 200, baseType: !1521, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1508, line: 200, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1507, file: !1508, line: 201, baseType: !128, size: 64, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 202, baseType: !1525, size: 64, offset: 640)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 202, size: 64, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1525, file: !1508, line: 203, baseType: !464, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1525, file: !1508, line: 204, baseType: !464, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1507, file: !1508, line: 206, baseType: !464, size: 64, offset: 704)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1507, file: !1508, line: 207, baseType: !360, size: 32, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1507, file: !1508, line: 208, baseType: !368, size: 32, offset: 800)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1507, file: !1508, line: 209, baseType: !1533, size: 32, offset: 832)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1508, line: 31, baseType: !484)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1507, file: !1508, line: 210, baseType: !242, size: 16, offset: 864)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1507, file: !1508, line: 211, baseType: !242, size: 16, offset: 880)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1507, file: !1508, line: 215, baseType: !1134, size: 16, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1507, file: !1508, line: 222, baseType: !129, size: 64, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 239, baseType: !1539, size: 320, offset: 1024)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 239, size: 320, elements: !1540)
!1540 = !{!1541, !1568}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1539, file: !1508, line: 240, baseType: !1542, size: 320)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1508, line: 108, size: 320, elements: !1543)
!1543 = !{!1544, !1545, !1557, !1560, !1567}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1542, file: !1508, line: 110, baseType: !129, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1508, line: 111, baseType: !1546, size: 64, offset: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1508, line: 111, size: 64, elements: !1547)
!1547 = !{!1548, !1556}
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1508, line: 112, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1546, file: !1508, line: 112, size: 64, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1549, file: !1508, line: 114, baseType: !788, size: 16)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1549, file: !1508, line: 115, baseType: !1553, size: 48, offset: 16)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 48, elements: !1554)
!1554 = !{!1555}
!1555 = !DISubrange(count: 6)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1546, file: !1508, line: 121, baseType: !129, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1542, file: !1508, line: 123, baseType: !1558, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1508, line: 96, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1542, file: !1508, line: 124, baseType: !1561, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1508, line: 102, size: 192, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1562, file: !1508, line: 103, baseType: !290, size: 128, align: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1562, file: !1508, line: 104, baseType: !1159, size: 32, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1562, file: !1508, line: 105, baseType: !415, size: 8, offset: 160)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1542, file: !1508, line: 125, baseType: !141, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1508, line: 241, baseType: !1569, size: 320)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !1508, line: 241, size: 320, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1569, file: !1508, line: 242, baseType: !129, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1569, file: !1508, line: 243, baseType: !129, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1569, file: !1508, line: 244, baseType: !1558, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1569, file: !1508, line: 245, baseType: !1561, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1569, file: !1508, line: 246, baseType: !200, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 254, baseType: !1577, size: 256, offset: 1344)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 254, size: 256, elements: !1578)
!1578 = !{!1579, !1585}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1577, file: !1508, line: 255, baseType: !1580, size: 256)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1508, line: 128, size: 256, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1580, file: !1508, line: 129, baseType: !128, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1580, file: !1508, line: 130, baseType: !1584, size: 256)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !1084)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1508, line: 256, baseType: !1586, size: 256)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !1508, line: 256, size: 256, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1586, file: !1508, line: 258, baseType: !145, size: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1586, file: !1508, line: 259, baseType: !1590, size: 128, offset: 128)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1591, line: 22, size: 128, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !{!1593, !1596}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1590, file: !1591, line: 23, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1591, line: 23, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1590, file: !1591, line: 24, baseType: !129, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1507, file: !1508, line: 274, baseType: !1598, size: 64, offset: 1600)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1508, line: 170, size: 192, elements: !1600)
!1600 = !{!1601, !1610, !1611}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1599, file: !1508, line: 171, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1508, line: 165, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!95, !1506, !1606, !1608, !1506}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1580)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1599, file: !1508, line: 172, baseType: !1506, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1599, file: !1508, line: 173, baseType: !1558, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1478, file: !1479, line: 138, baseType: !1506, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1478, file: !1479, line: 139, baseType: !1506, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1478, file: !1479, line: 140, baseType: !1506, size: 64, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1478, file: !1479, line: 145, baseType: !1616, size: 64, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1618, line: 13, size: 896, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1617, file: !1618, line: 14, baseType: !1159, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1617, file: !1618, line: 15, baseType: !676, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1617, file: !1618, line: 16, baseType: !676, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1617, file: !1618, line: 21, baseType: !700, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1617, file: !1618, line: 27, baseType: !129, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1617, file: !1618, line: 28, baseType: !129, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1617, file: !1618, line: 29, baseType: !700, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1617, file: !1618, line: 32, baseType: !567, size: 128, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1617, file: !1618, line: 33, baseType: !360, size: 32, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1617, file: !1618, line: 37, baseType: !700, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1617, file: !1618, line: 44, baseType: !1631, size: 256, offset: 640)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1632, line: 15, size: 256, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1631, file: !1632, line: 16, baseType: !709)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1631, file: !1632, line: 18, baseType: !95, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1631, file: !1632, line: 19, baseType: !95, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1631, file: !1632, line: 20, baseType: !95, size: 32, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1631, file: !1632, line: 21, baseType: !95, size: 32, offset: 96)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1631, file: !1632, line: 22, baseType: !129, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1631, file: !1632, line: 23, baseType: !129, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1478, file: !1479, line: 146, baseType: !1642, size: 64, offset: 1024)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !361, line: 18, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1478, file: !1479, line: 147, baseType: !1645, size: 64, offset: 1088)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1479, line: 25, size: 64, elements: !1647)
!1647 = !{!1648, !1649, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1646, file: !1479, line: 26, baseType: !676, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1646, file: !1479, line: 27, baseType: !95, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1646, file: !1479, line: 28, baseType: !1651, offset: 64)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, elements: !1652)
!1652 = !{!1653}
!1653 = !DISubrange(count: 0)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1479, line: 149, baseType: !1655, size: 128, offset: 1152)
!1655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1478, file: !1479, line: 149, size: 128, elements: !1656)
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1655, file: !1479, line: 150, baseType: !95, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1655, file: !1479, line: 151, baseType: !290, size: 128, align: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1146, file: !1147, line: 926, baseType: !1476, size: 64, offset: 8576)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1146, file: !1147, line: 929, baseType: !1476, size: 64, offset: 8640)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1146, file: !1147, line: 933, baseType: !1506, size: 64, offset: 8704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1146, file: !1147, line: 943, baseType: !1663, size: 128, offset: 8768)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !1664)
!1664 = !{!1665}
!1665 = !DISubrange(count: 16)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1146, file: !1147, line: 945, baseType: !1667, size: 64, offset: 8896)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1147, line: 49, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1146, file: !1147, line: 956, baseType: !1670, size: 64, offset: 8960)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1147, line: 45, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1146, file: !1147, line: 959, baseType: !1673, size: 64, offset: 9024)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1147, line: 959, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1146, file: !1147, line: 962, baseType: !1676, size: 64, offset: 9088)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1147, line: 66, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1146, file: !1147, line: 966, baseType: !1679, size: 64, offset: 9152)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1147, line: 50, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1146, file: !1147, line: 969, baseType: !1682, size: 64, offset: 9216)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1684, line: 82, size: 7296, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1721, !1730, !1731, !1733, !1734, !1735, !1738, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1768, !1769, !1776, !1777, !1778, !1779, !1780, !1781}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1683, file: !1684, line: 83, baseType: !1159, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1683, file: !1684, line: 84, baseType: !676, size: 32, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1683, file: !1684, line: 85, baseType: !95, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1683, file: !1684, line: 86, baseType: !145, size: 128, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1683, file: !1684, line: 88, baseType: !1410, size: 128, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1683, file: !1684, line: 91, baseType: !1145, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1683, file: !1684, line: 94, baseType: !1693, size: 192, offset: 448)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1694, line: 30, size: 192, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1693, file: !1694, line: 31, baseType: !145, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1693, file: !1694, line: 32, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1699, line: 25, baseType: !1700)
!1699 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1699, line: 23, size: 64, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1700, file: !1699, line: 24, baseType: !1299, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1683, file: !1684, line: 97, baseType: !563, size: 64, offset: 640)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1683, file: !1684, line: 100, baseType: !95, size: 32, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1683, file: !1684, line: 106, baseType: !95, size: 32, offset: 736)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1683, file: !1684, line: 107, baseType: !1145, size: 64, offset: 768)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1683, file: !1684, line: 110, baseType: !95, size: 32, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1683, file: !1684, line: 111, baseType: !7, size: 32, offset: 864)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1683, file: !1684, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1683, file: !1684, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1683, file: !1684, line: 128, baseType: !95, size: 32, offset: 928)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1683, file: !1684, line: 129, baseType: !145, size: 128, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1683, file: !1684, line: 132, baseType: !1221, size: 512, offset: 1088)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1683, file: !1684, line: 133, baseType: !1229, size: 64, offset: 1600)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1683, file: !1684, line: 140, baseType: !1716, size: 256, offset: 1664)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1717, size: 256, elements: !1498)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1684, line: 38, size: 128, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1717, file: !1684, line: 39, baseType: !346, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1717, file: !1684, line: 40, baseType: !346, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1683, file: !1684, line: 146, baseType: !1722, size: 192, offset: 1920)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1684, line: 66, size: 192, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1722, file: !1684, line: 67, baseType: !1725, size: 192)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1684, line: 47, size: 192, elements: !1726)
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1725, file: !1684, line: 48, baseType: !702, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1725, file: !1684, line: 49, baseType: !702, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1725, file: !1684, line: 50, baseType: !702, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1683, file: !1684, line: 150, baseType: !1459, size: 640, offset: 2112)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1683, file: !1684, line: 153, baseType: !1732, size: 256, offset: 2752)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 256, elements: !1084)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1683, file: !1684, line: 159, baseType: !1400, size: 64, offset: 3008)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1683, file: !1684, line: 162, baseType: !95, size: 32, offset: 3072)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1683, file: !1684, line: 164, baseType: !1736, size: 64, offset: 3136)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1684, line: 164, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1683, file: !1684, line: 175, baseType: !1739, size: 32, offset: 3200)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !313, line: 805, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !313, line: 798, size: 32, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1740, file: !313, line: 803, baseType: !312, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !313, line: 804, baseType: !159, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1683, file: !1684, line: 176, baseType: !346, size: 64, offset: 3264)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1683, file: !1684, line: 176, baseType: !346, size: 64, offset: 3328)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1683, file: !1684, line: 176, baseType: !346, size: 64, offset: 3392)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1683, file: !1684, line: 176, baseType: !346, size: 64, offset: 3456)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1683, file: !1684, line: 177, baseType: !346, size: 64, offset: 3520)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1683, file: !1684, line: 178, baseType: !346, size: 64, offset: 3584)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1683, file: !1684, line: 179, baseType: !1447, size: 128, offset: 3648)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1683, file: !1684, line: 180, baseType: !129, size: 64, offset: 3776)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1683, file: !1684, line: 180, baseType: !129, size: 64, offset: 3840)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1683, file: !1684, line: 180, baseType: !129, size: 64, offset: 3904)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1683, file: !1684, line: 180, baseType: !129, size: 64, offset: 3968)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1683, file: !1684, line: 181, baseType: !129, size: 64, offset: 4032)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1683, file: !1684, line: 181, baseType: !129, size: 64, offset: 4096)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1683, file: !1684, line: 181, baseType: !129, size: 64, offset: 4160)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1683, file: !1684, line: 181, baseType: !129, size: 64, offset: 4224)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1683, file: !1684, line: 182, baseType: !129, size: 64, offset: 4288)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1683, file: !1684, line: 182, baseType: !129, size: 64, offset: 4352)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1683, file: !1684, line: 182, baseType: !129, size: 64, offset: 4416)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1683, file: !1684, line: 182, baseType: !129, size: 64, offset: 4480)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1683, file: !1684, line: 183, baseType: !129, size: 64, offset: 4544)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1683, file: !1684, line: 183, baseType: !129, size: 64, offset: 4608)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1683, file: !1684, line: 184, baseType: !1766, offset: 4672)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1767, line: 12, elements: !173)
!1767 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1683, file: !1684, line: 192, baseType: !348, size: 64, offset: 4672)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1683, file: !1684, line: 203, baseType: !1770, size: 2048, offset: 4736)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1771, size: 2048, elements: !1664)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1772, line: 43, size: 128, elements: !1773)
!1772 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1771, file: !1772, line: 44, baseType: !249, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1771, file: !1772, line: 45, baseType: !249, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1683, file: !1684, line: 220, baseType: !415, size: 8, offset: 6784)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1683, file: !1684, line: 221, baseType: !1134, size: 16, offset: 6800)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1683, file: !1684, line: 222, baseType: !1134, size: 16, offset: 6816)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1683, file: !1684, line: 224, baseType: !903, size: 64, offset: 6848)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1683, file: !1684, line: 227, baseType: !1102, size: 192, offset: 6912)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1683, file: !1684, line: 233, baseType: !1102, size: 192, offset: 7104)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1146, file: !1147, line: 970, baseType: !1783, size: 64, offset: 9280)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1684, line: 20, size: 16576, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1784, file: !1684, line: 21, baseType: !159)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1784, file: !1684, line: 22, baseType: !1159, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1784, file: !1684, line: 23, baseType: !1410, size: 128, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1784, file: !1684, line: 24, baseType: !1790, size: 16384, offset: 192)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1791, size: 16384, elements: !205)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1694, line: 49, size: 256, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1791, file: !1694, line: 50, baseType: !1794, size: 256)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1694, line: 35, size: 256, elements: !1795)
!1795 = !{!1796, !1803, !1804, !1810}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1794, file: !1694, line: 37, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1798, line: 19, baseType: !1799)
!1798 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1798, line: 18, baseType: !1801)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !95}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1794, file: !1694, line: 38, baseType: !129, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1794, file: !1694, line: 44, baseType: !1805, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1798, line: 22, baseType: !1806)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1798, line: 21, baseType: !1808)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1794, file: !1694, line: 46, baseType: !1698, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1146, file: !1147, line: 971, baseType: !1698, size: 64, offset: 9344)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1146, file: !1147, line: 972, baseType: !1698, size: 64, offset: 9408)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1146, file: !1147, line: 974, baseType: !1698, size: 64, offset: 9472)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1146, file: !1147, line: 975, baseType: !1693, size: 192, offset: 9536)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1146, file: !1147, line: 976, baseType: !129, size: 64, offset: 9728)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1146, file: !1147, line: 977, baseType: !247, size: 64, offset: 9792)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1146, file: !1147, line: 978, baseType: !7, size: 32, offset: 9856)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1146, file: !1147, line: 980, baseType: !293, size: 64, offset: 9920)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1146, file: !1147, line: 989, baseType: !1820, size: 128, offset: 9984)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1821, line: 35, size: 128, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !{!1823, !1824, !1825}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1820, file: !1821, line: 36, baseType: !95, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1820, file: !1821, line: 37, baseType: !676, size: 32, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1820, file: !1821, line: 38, baseType: !1826, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1821, line: 23, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1146, file: !1147, line: 992, baseType: !346, size: 64, offset: 10112)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1146, file: !1147, line: 993, baseType: !346, size: 64, offset: 10176)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1146, file: !1147, line: 996, baseType: !159, offset: 10240)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1146, file: !1147, line: 999, baseType: !709, offset: 10240)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1146, file: !1147, line: 1001, baseType: !1833, size: 64, offset: 10240)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1147, line: 636, size: 64, elements: !1834)
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1833, file: !1147, line: 637, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1146, file: !1147, line: 1005, baseType: !681, size: 128, offset: 10304)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1146, file: !1147, line: 1007, baseType: !1145, size: 64, offset: 10432)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1146, file: !1147, line: 1009, baseType: !1840, size: 64, offset: 10496)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1147, line: 1009, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1146, file: !1147, line: 1043, baseType: !128, size: 64, offset: 10560)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1146, file: !1147, line: 1046, baseType: !1844, size: 64, offset: 10624)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1147, line: 41, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1146, file: !1147, line: 1050, baseType: !1847, size: 64, offset: 10688)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1147, line: 42, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1146, file: !1147, line: 1054, baseType: !1850, size: 64, offset: 10752)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1147, line: 55, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1146, file: !1147, line: 1056, baseType: !1853, size: 64, offset: 10816)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1147, line: 40, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1146, file: !1147, line: 1058, baseType: !1856, size: 64, offset: 10880)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1858, line: 99, size: 704, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1885, !1886}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1857, file: !1858, line: 100, baseType: !700, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1857, file: !1858, line: 101, baseType: !676, size: 32, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1857, file: !1858, line: 102, baseType: !676, size: 32, offset: 96)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !1858, line: 105, baseType: !159, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1857, file: !1858, line: 107, baseType: !242, size: 16, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1857, file: !1858, line: 109, baseType: !667, size: 128, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1857, file: !1858, line: 110, baseType: !1867, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1858, line: 73, size: 448, elements: !1869)
!1869 = !{!1870, !1873, !1874, !1879, !1884}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1868, file: !1858, line: 74, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1858, line: 74, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1868, file: !1858, line: 75, baseType: !1856, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1858, line: 83, baseType: !1875, size: 128, offset: 128)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !1858, line: 83, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1875, file: !1858, line: 84, baseType: !145, size: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1875, file: !1858, line: 85, baseType: !864, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1858, line: 87, baseType: !1880, size: 128, offset: 256)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !1858, line: 87, size: 128, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1880, file: !1858, line: 88, baseType: !567, size: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1880, file: !1858, line: 89, baseType: !290, size: 128, align: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !1858, line: 92, baseType: !7, size: 32, offset: 384)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1857, file: !1858, line: 111, baseType: !563, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1857, file: !1858, line: 113, baseType: !1887, size: 256, offset: 448)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1888, line: 102, size: 256, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1891, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1887, file: !1888, line: 103, baseType: !700, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1887, file: !1888, line: 104, baseType: !145, size: 128, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1887, file: !1888, line: 105, baseType: !1893, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1888, line: 21, baseType: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1146, file: !1147, line: 1061, baseType: !1899, size: 64, offset: 10944)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1147, line: 43, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1146, file: !1147, line: 1064, baseType: !129, size: 64, offset: 11008)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1146, file: !1147, line: 1065, baseType: !1903, size: 64, offset: 11072)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1694, line: 14, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1694, line: 12, size: 384, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !1694, line: 13, baseType: !1908, size: 384)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1694, line: 13, size: 384, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1913}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1908, file: !1694, line: 13, baseType: !95, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1908, file: !1694, line: 13, baseType: !95, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1908, file: !1694, line: 13, baseType: !95, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1908, file: !1694, line: 13, baseType: !1914, size: 256, offset: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1915, line: 32, size: 256, elements: !1916)
!1915 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1916 = !{!1917, !1922, !1935, !1941, !1950, !1970, !1975}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1914, file: !1915, line: 37, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1915, line: 34, size: 64, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1918, file: !1915, line: 35, baseType: !1389, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1918, file: !1915, line: 36, baseType: !366, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1914, file: !1915, line: 45, baseType: !1923, size: 192)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1915, line: 40, size: 192, elements: !1924)
!1924 = !{!1925, !1927, !1928, !1934}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1923, file: !1915, line: 41, baseType: !1926, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !233, line: 95, baseType: !95)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1923, file: !1915, line: 42, baseType: !95, size: 32, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1923, file: !1915, line: 43, baseType: !1929, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1915, line: 11, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1915, line: 8, size: 64, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1930, file: !1915, line: 9, baseType: !95, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1930, file: !1915, line: 10, baseType: !128, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1923, file: !1915, line: 44, baseType: !95, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1914, file: !1915, line: 52, baseType: !1936, size: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1915, line: 48, size: 128, elements: !1937)
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1936, file: !1915, line: 49, baseType: !1389, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1936, file: !1915, line: 50, baseType: !366, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1936, file: !1915, line: 51, baseType: !1929, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1914, file: !1915, line: 61, baseType: !1942, size: 256)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1915, line: 55, size: 256, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1949}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1942, file: !1915, line: 56, baseType: !1389, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1942, file: !1915, line: 57, baseType: !366, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1942, file: !1915, line: 58, baseType: !95, size: 32, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1942, file: !1915, line: 59, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !233, line: 94, baseType: !234)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1942, file: !1915, line: 60, baseType: !1948, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1914, file: !1915, line: 95, baseType: !1951, size: 256)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1915, line: 64, size: 256, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1951, file: !1915, line: 65, baseType: !128, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !1915, line: 77, baseType: !1955, size: 192, offset: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1951, file: !1915, line: 77, size: 192, elements: !1956)
!1956 = !{!1957, !1958, !1965}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1955, file: !1915, line: 82, baseType: !1134, size: 16)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1955, file: !1915, line: 88, baseType: !1959, size: 192)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !1915, line: 84, size: 192, elements: !1960)
!1960 = !{!1961, !1963, !1964}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1959, file: !1915, line: 85, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !1259)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1959, file: !1915, line: 86, baseType: !128, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1959, file: !1915, line: 87, baseType: !128, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1955, file: !1915, line: 93, baseType: !1966, size: 96)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !1915, line: 90, size: 96, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1966, file: !1915, line: 91, baseType: !1962, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1966, file: !1915, line: 92, baseType: !342, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1914, file: !1915, line: 101, baseType: !1971, size: 128)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1915, line: 98, size: 128, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1971, file: !1915, line: 99, baseType: !235, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1971, file: !1915, line: 100, baseType: !95, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1914, file: !1915, line: 108, baseType: !1976, size: 128)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1915, line: 104, size: 128, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1976, file: !1915, line: 105, baseType: !128, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1976, file: !1915, line: 106, baseType: !95, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1976, file: !1915, line: 107, baseType: !7, size: 32, offset: 96)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1146, file: !1147, line: 1067, baseType: !1766, offset: 11136)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1146, file: !1147, line: 1099, baseType: !1983, size: 64, offset: 11136)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1147, line: 56, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1146, file: !1147, line: 1103, baseType: !145, size: 128, offset: 11200)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1146, file: !1147, line: 1104, baseType: !1987, size: 64, offset: 11328)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1147, line: 46, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1146, file: !1147, line: 1105, baseType: !1102, size: 192, offset: 11392)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1146, file: !1147, line: 1106, baseType: !7, size: 32, offset: 11584)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1146, file: !1147, line: 1109, baseType: !1992, size: 128, offset: 11648)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1993, size: 128, elements: !1498)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1147, line: 51, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1146, file: !1147, line: 1110, baseType: !1102, size: 192, offset: 11776)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1146, file: !1147, line: 1111, baseType: !145, size: 128, offset: 11968)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1146, file: !1147, line: 1173, baseType: !1998, size: 64, offset: 12096)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2000, line: 62, size: 256, align: 256, elements: !2001)
!2000 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !{!2002, !2003, !2004, !2009}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1999, file: !2000, line: 75, baseType: !342, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1999, file: !2000, line: 90, baseType: !342, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1999, file: !2000, line: 124, baseType: !2005, size: 64, offset: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1999, file: !2000, line: 109, size: 64, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2005, file: !2000, line: 110, baseType: !347, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2005, file: !2000, line: 112, baseType: !347, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1999, file: !2000, line: 144, baseType: !342, size: 32, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1146, file: !1147, line: 1174, baseType: !340, size: 32, offset: 12160)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1146, file: !1147, line: 1179, baseType: !129, size: 64, offset: 12224)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1146, file: !1147, line: 1182, baseType: !2013, size: 128, offset: 12288)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1080, line: 76, size: 128, elements: !2014)
!2014 = !{!2015, !2020, !2021}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2013, file: !1080, line: 85, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2017, line: 7, size: 64, elements: !2018)
!2017 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2016, file: !2017, line: 12, baseType: !1296, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2013, file: !1080, line: 88, baseType: !415, size: 8, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2013, file: !1080, line: 95, baseType: !415, size: 8, offset: 72)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1147, line: 1184, baseType: !2023, size: 128, offset: 12416)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 1184, size: 128, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2023, file: !1147, line: 1185, baseType: !1159, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2023, file: !1147, line: 1186, baseType: !290, size: 128, align: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1146, file: !1147, line: 1190, baseType: !2028, size: 64, offset: 12544)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1147, line: 53, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1146, file: !1147, line: 1192, baseType: !2031, size: 128, offset: 12608)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1080, line: 64, size: 128, elements: !2032)
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2031, file: !1080, line: 65, baseType: !649, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2031, file: !1080, line: 67, baseType: !342, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2031, file: !1080, line: 68, baseType: !342, size: 32, offset: 96)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1146, file: !1147, line: 1206, baseType: !95, size: 32, offset: 12736)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1146, file: !1147, line: 1207, baseType: !95, size: 32, offset: 12768)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1146, file: !1147, line: 1209, baseType: !129, size: 64, offset: 12800)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1146, file: !1147, line: 1219, baseType: !346, size: 64, offset: 12864)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1146, file: !1147, line: 1220, baseType: !346, size: 64, offset: 12928)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1146, file: !1147, line: 1317, baseType: !95, size: 32, offset: 12992)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1146, file: !1147, line: 1319, baseType: !1145, size: 64, offset: 13056)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1146, file: !1147, line: 1322, baseType: !2044, size: 64, offset: 13120)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2046, line: 56, size: 512, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2056}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2045, file: !2046, line: 57, baseType: !2044, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2045, file: !2046, line: 58, baseType: !128, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2045, file: !2046, line: 59, baseType: !129, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2045, file: !2046, line: 60, baseType: !129, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2045, file: !2046, line: 61, baseType: !749, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2045, file: !2046, line: 62, baseType: !7, size: 32, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2045, file: !2046, line: 63, baseType: !2055, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !146, line: 153, baseType: !346)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2045, file: !2046, line: 64, baseType: !2057, size: 64, offset: 448)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1146, file: !1147, line: 1326, baseType: !1159, size: 32, offset: 13184)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1146, file: !1147, line: 1342, baseType: !128, size: 64, offset: 13248)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1146, file: !1147, line: 1343, baseType: !347, size: 64, offset: 13312)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1146, file: !1147, line: 1344, baseType: !346, size: 64, offset: 13376)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1146, file: !1147, line: 1345, baseType: !347, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1146, file: !1147, line: 1346, baseType: !347, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1146, file: !1147, line: 1347, baseType: !347, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1146, file: !1147, line: 1348, baseType: !290, size: 128, align: 64, offset: 13504)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1146, file: !1147, line: 1358, baseType: !2068, size: 34816, offset: 13824)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2069, line: 485, size: 34816, elements: !2070)
!2069 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2070 = !{!2071, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2100, !2101, !2102, !2103, !2104, !2105, !2108, !2109, !2110}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2068, file: !2069, line: 487, baseType: !2072, size: 192)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2073, size: 192, elements: !201)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2074, line: 16, size: 64, elements: !2075)
!2074 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2073, file: !2074, line: 17, baseType: !788, size: 16)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2073, file: !2074, line: 18, baseType: !788, size: 16, offset: 16)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2073, file: !2074, line: 19, baseType: !788, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2073, file: !2074, line: 19, baseType: !788, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2073, file: !2074, line: 19, baseType: !788, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2073, file: !2074, line: 19, baseType: !788, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2073, file: !2074, line: 19, baseType: !788, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2073, file: !2074, line: 20, baseType: !788, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2073, file: !2074, line: 20, baseType: !788, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2073, file: !2074, line: 20, baseType: !788, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2073, file: !2074, line: 20, baseType: !788, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2073, file: !2074, line: 20, baseType: !788, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2073, file: !2074, line: 20, baseType: !788, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2068, file: !2069, line: 491, baseType: !129, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2068, file: !2069, line: 495, baseType: !242, size: 16, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2068, file: !2069, line: 496, baseType: !242, size: 16, offset: 272)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2068, file: !2069, line: 497, baseType: !242, size: 16, offset: 288)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2068, file: !2069, line: 498, baseType: !242, size: 16, offset: 304)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2068, file: !2069, line: 502, baseType: !129, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2068, file: !2069, line: 503, baseType: !129, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2068, file: !2069, line: 514, baseType: !2097, size: 256, offset: 448)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 256, elements: !1084)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2069, line: 483, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2068, file: !2069, line: 516, baseType: !129, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2068, file: !2069, line: 518, baseType: !129, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2068, file: !2069, line: 520, baseType: !129, size: 64, offset: 832)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2068, file: !2069, line: 521, baseType: !129, size: 64, offset: 896)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2068, file: !2069, line: 522, baseType: !129, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2068, file: !2069, line: 528, baseType: !2106, size: 64, offset: 1024)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2069, line: 10, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2068, file: !2069, line: 535, baseType: !129, size: 64, offset: 1088)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2068, file: !2069, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2068, file: !2069, line: 540, baseType: !2111, size: 33280, offset: 1536)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2112, line: 317, size: 33280, elements: !2113)
!2112 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2111, file: !2112, line: 330, baseType: !7, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2111, file: !2112, line: 337, baseType: !129, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2111, file: !2112, line: 348, baseType: !2117, size: 32768, offset: 512)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2112, line: 304, size: 32768, elements: !2118)
!2118 = !{!2119, !2134, !2173, !2223, !2236}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2117, file: !2112, line: 305, baseType: !2120, size: 896)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2112, line: 12, size: 896, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2133}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2120, file: !2112, line: 13, baseType: !340, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2120, file: !2112, line: 14, baseType: !340, size: 32, offset: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2120, file: !2112, line: 15, baseType: !340, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2120, file: !2112, line: 16, baseType: !340, size: 32, offset: 96)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2120, file: !2112, line: 17, baseType: !340, size: 32, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2120, file: !2112, line: 18, baseType: !340, size: 32, offset: 160)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2120, file: !2112, line: 19, baseType: !340, size: 32, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2120, file: !2112, line: 22, baseType: !2130, size: 640, offset: 224)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 640, elements: !2131)
!2131 = !{!2132}
!2132 = !DISubrange(count: 20)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2120, file: !2112, line: 25, baseType: !340, size: 32, offset: 864)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2117, file: !2112, line: 306, baseType: !2135, size: 4096, align: 128)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2112, line: 34, size: 4096, align: 128, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2140, !2141, !2156, !2157, !2158, !2162, !2164, !2168}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2135, file: !2112, line: 35, baseType: !788, size: 16)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2135, file: !2112, line: 36, baseType: !788, size: 16, offset: 16)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2135, file: !2112, line: 37, baseType: !788, size: 16, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2135, file: !2112, line: 38, baseType: !788, size: 16, offset: 48)
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !2112, line: 39, baseType: !2142, size: 128, offset: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !2112, line: 39, size: 128, elements: !2143)
!2143 = !{!2144, !2149}
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !2112, line: 40, baseType: !2145, size: 128)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2142, file: !2112, line: 40, size: 128, elements: !2146)
!2146 = !{!2147, !2148}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2145, file: !2112, line: 41, baseType: !346, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2145, file: !2112, line: 42, baseType: !346, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !2112, line: 44, baseType: !2150, size: 128)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2142, file: !2112, line: 44, size: 128, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2155}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2150, file: !2112, line: 45, baseType: !340, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2150, file: !2112, line: 46, baseType: !340, size: 32, offset: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2150, file: !2112, line: 47, baseType: !340, size: 32, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2150, file: !2112, line: 48, baseType: !340, size: 32, offset: 96)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2135, file: !2112, line: 51, baseType: !340, size: 32, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2135, file: !2112, line: 52, baseType: !340, size: 32, offset: 224)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2135, file: !2112, line: 55, baseType: !2159, size: 1024, offset: 256)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !2160)
!2160 = !{!2161}
!2161 = !DISubrange(count: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2135, file: !2112, line: 58, baseType: !2163, size: 2048, offset: 1280)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2048, elements: !205)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2135, file: !2112, line: 60, baseType: !2165, size: 384, offset: 3328)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !2166)
!2166 = !{!2167}
!2167 = !DISubrange(count: 12)
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !2112, line: 62, baseType: !2169, size: 384, offset: 3712)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !2112, line: 62, size: 384, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2169, file: !2112, line: 63, baseType: !2165, size: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2169, file: !2112, line: 64, baseType: !2165, size: 384)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2117, file: !2112, line: 307, baseType: !2174, size: 1088)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2112, line: 79, size: 1088, elements: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2222}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2174, file: !2112, line: 80, baseType: !340, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2174, file: !2112, line: 81, baseType: !340, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2174, file: !2112, line: 82, baseType: !340, size: 32, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2174, file: !2112, line: 83, baseType: !340, size: 32, offset: 96)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2174, file: !2112, line: 84, baseType: !340, size: 32, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2174, file: !2112, line: 85, baseType: !340, size: 32, offset: 160)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2174, file: !2112, line: 86, baseType: !340, size: 32, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2174, file: !2112, line: 88, baseType: !2130, size: 640, offset: 224)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2174, file: !2112, line: 89, baseType: !1281, size: 8, offset: 864)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2174, file: !2112, line: 90, baseType: !1281, size: 8, offset: 872)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2174, file: !2112, line: 91, baseType: !1281, size: 8, offset: 880)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2174, file: !2112, line: 92, baseType: !1281, size: 8, offset: 888)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2174, file: !2112, line: 93, baseType: !1281, size: 8, offset: 896)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2174, file: !2112, line: 94, baseType: !1281, size: 8, offset: 904)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2174, file: !2112, line: 95, baseType: !2191, size: 64, offset: 960)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2193, line: 11, size: 128, elements: !2194)
!2193 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2194 = !{!2195, !2196}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2192, file: !2193, line: 12, baseType: !235, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2192, file: !2193, line: 13, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2199, line: 56, size: 1344, elements: !2200)
!2199 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2198, file: !2199, line: 61, baseType: !129, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2198, file: !2199, line: 62, baseType: !129, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2198, file: !2199, line: 63, baseType: !129, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2198, file: !2199, line: 64, baseType: !129, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2198, file: !2199, line: 65, baseType: !129, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2198, file: !2199, line: 66, baseType: !129, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2198, file: !2199, line: 68, baseType: !129, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2198, file: !2199, line: 69, baseType: !129, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2198, file: !2199, line: 70, baseType: !129, size: 64, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2198, file: !2199, line: 71, baseType: !129, size: 64, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2198, file: !2199, line: 72, baseType: !129, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2198, file: !2199, line: 73, baseType: !129, size: 64, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2198, file: !2199, line: 74, baseType: !129, size: 64, offset: 768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2198, file: !2199, line: 75, baseType: !129, size: 64, offset: 832)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2198, file: !2199, line: 76, baseType: !129, size: 64, offset: 896)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2198, file: !2199, line: 81, baseType: !129, size: 64, offset: 960)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2198, file: !2199, line: 83, baseType: !129, size: 64, offset: 1024)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2198, file: !2199, line: 84, baseType: !129, size: 64, offset: 1088)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2198, file: !2199, line: 85, baseType: !129, size: 64, offset: 1152)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2198, file: !2199, line: 86, baseType: !129, size: 64, offset: 1216)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2198, file: !2199, line: 87, baseType: !129, size: 64, offset: 1280)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2174, file: !2112, line: 96, baseType: !340, size: 32, offset: 1024)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2117, file: !2112, line: 308, baseType: !2224, size: 4608, align: 512)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2112, line: 289, size: 4608, align: 512, elements: !2225)
!2225 = !{!2226, !2227, !2234}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2224, file: !2112, line: 290, baseType: !2135, size: 4096, align: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2224, file: !2112, line: 291, baseType: !2228, size: 512, offset: 4096)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2112, line: 268, size: 512, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2228, file: !2112, line: 269, baseType: !346, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2228, file: !2112, line: 270, baseType: !346, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2228, file: !2112, line: 271, baseType: !2233, size: 384, offset: 128)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 384, elements: !1554)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2224, file: !2112, line: 292, baseType: !2235, offset: 4608)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1281, elements: !1652)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2117, file: !2112, line: 309, baseType: !2237, size: 32768)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1281, size: 32768, elements: !2238)
!2238 = !{!2239}
!2239 = !DISubrange(count: 4096)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1142, file: !651, line: 378, baseType: !2241, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1138, file: !651, line: 384, baseType: !1431, size: 192, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !907, file: !651, line: 500, baseType: !159, offset: 6656)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !907, file: !651, line: 501, baseType: !2245, size: 64, offset: 6656)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !651, line: 387, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !907, file: !651, line: 516, baseType: !1642, size: 64, offset: 6720)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !907, file: !651, line: 519, baseType: !277, size: 64, offset: 6784)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !907, file: !651, line: 521, baseType: !2250, size: 64, offset: 6848)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !651, line: 521, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !907, file: !651, line: 545, baseType: !676, size: 32, offset: 6912)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !907, file: !651, line: 548, baseType: !415, size: 8, offset: 6944)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !907, file: !651, line: 550, baseType: !2255, offset: 6952)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2256, line: 142, elements: !173)
!2256 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !907, file: !651, line: 554, baseType: !1887, size: 256, offset: 6976)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !907, file: !651, line: 557, baseType: !340, size: 32, offset: 7232)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !904, file: !651, line: 565, baseType: !2260, offset: 7296)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, elements: !2261)
!2261 = !{!2262}
!2262 = !DISubrange(count: -1)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !900, file: !651, line: 151, baseType: !676, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !893, file: !651, line: 156, baseType: !159, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !651, line: 159, baseType: !2266, size: 128)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !651, line: 159, size: 128, elements: !2267)
!2267 = !{!2268, !2332}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2266, file: !651, line: 161, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2271)
!2271 = !{!2272, !2282, !2303, !2304, !2305, !2306, !2307, !2319, !2320, !2321}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2270, file: !31, line: 111, baseType: !2273, size: 384)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2274)
!2274 = !{!2275, !2277, !2278, !2279, !2280, !2281}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2273, file: !31, line: 20, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2273, file: !31, line: 21, baseType: !2276, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2273, file: !31, line: 22, baseType: !2276, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2273, file: !31, line: 23, baseType: !129, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2273, file: !31, line: 24, baseType: !129, size: 64, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2273, file: !31, line: 25, baseType: !129, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2270, file: !31, line: 112, baseType: !2283, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2285, line: 105, size: 128, elements: !2286)
!2285 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2284, file: !2285, line: 110, baseType: !129, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2284, file: !2285, line: 118, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2285, line: 95, size: 448, elements: !2291)
!2291 = !{!2292, !2293, !2298, !2299, !2300, !2301, !2302}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2290, file: !2285, line: 96, baseType: !700, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2290, file: !2285, line: 97, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2285, line: 60, baseType: !2296)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !2283}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2290, file: !2285, line: 98, baseType: !2294, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2290, file: !2285, line: 99, baseType: !415, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2290, file: !2285, line: 100, baseType: !415, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2290, file: !2285, line: 101, baseType: !290, size: 128, align: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2290, file: !2285, line: 102, baseType: !2283, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2270, file: !31, line: 113, baseType: !2284, size: 128, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2270, file: !31, line: 114, baseType: !1431, size: 192, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2270, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2270, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2270, file: !31, line: 117, baseType: !2308, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2311)
!2311 = !{!2312, !2313, !2317, !2318}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2310, file: !31, line: 73, baseType: !769, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2310, file: !31, line: 78, baseType: !2314, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !2269}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2310, file: !31, line: 83, baseType: !2314, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2310, file: !31, line: 89, baseType: !956, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2270, file: !31, line: 118, baseType: !128, size: 64, offset: 896)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2270, file: !31, line: 119, baseType: !95, size: 32, offset: 960)
!2321 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !31, line: 120, baseType: !2322, size: 128, offset: 1024)
!2322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !31, line: 120, size: 128, elements: !2323)
!2323 = !{!2324, !2330}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2322, file: !31, line: 121, baseType: !2325, size: 128)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2326, line: 6, size: 128, elements: !2327)
!2326 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2327 = !{!2328, !2329}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2325, file: !2326, line: 7, baseType: !346, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2325, file: !2326, line: 8, baseType: !346, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2322, file: !31, line: 122, baseType: !2331)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2325, elements: !1652)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2266, file: !651, line: 162, baseType: !128, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !655, file: !651, line: 176, baseType: !290, size: 128, align: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !651, line: 179, baseType: !2335, size: 32, offset: 384)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !651, line: 179, size: 32, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2340}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2335, file: !651, line: 184, baseType: !676, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2335, file: !651, line: 192, baseType: !7, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2335, file: !651, line: 194, baseType: !7, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2335, file: !651, line: 195, baseType: !95, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !650, file: !651, line: 199, baseType: !676, size: 32, offset: 416)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !585, file: !44, line: 1964, baseType: !2343, size: 64, offset: 1344)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!235, !524, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2348, line: 12, size: 256, elements: !2349)
!2348 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2349 = !{!2350, !2351, !2352, !2353, !2354}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2347, file: !2348, line: 13, baseType: !672, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2347, file: !2348, line: 16, baseType: !95, size: 32, offset: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2347, file: !2348, line: 23, baseType: !129, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2347, file: !2348, line: 30, baseType: !129, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2347, file: !2348, line: 33, baseType: !2355, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !651, line: 27, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !585, file: !44, line: 1966, baseType: !2343, size: 64, offset: 1408)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !525, file: !44, line: 1424, baseType: !2359, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2361)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2362)
!2362 = !{!2363, !2409, !2413, !2417, !2418, !2419, !2420, !2421, !2426, !2431, !2435}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2361, file: !38, line: 323, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!95, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2369)
!2369 = !{!2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2394, !2395, !2396}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2368, file: !38, line: 295, baseType: !567, size: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2368, file: !38, line: 296, baseType: !145, size: 128, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2368, file: !38, line: 297, baseType: !145, size: 128, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2368, file: !38, line: 298, baseType: !145, size: 128, offset: 384)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2368, file: !38, line: 299, baseType: !1102, size: 192, offset: 512)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2368, file: !38, line: 300, baseType: !159, offset: 704)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2368, file: !38, line: 301, baseType: !676, size: 32, offset: 704)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2368, file: !38, line: 302, baseType: !524, size: 64, offset: 768)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2368, file: !38, line: 303, baseType: !2379, size: 64, offset: 832)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2380)
!2380 = !{!2381, !2393}
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !38, line: 69, baseType: !2382, size: 32)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2379, file: !38, line: 69, size: 32, elements: !2383)
!2383 = !{!2384, !2385, !2386}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2382, file: !38, line: 70, baseType: !360, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2382, file: !38, line: 71, baseType: !368, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2382, file: !38, line: 72, baseType: !2387, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2388, line: 24, baseType: !2389)
!2388 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2388, line: 22, size: 32, elements: !2390)
!2390 = !{!2391}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2389, file: !2388, line: 23, baseType: !2392, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2388, line: 20, baseType: !366)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2379, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2368, file: !38, line: 304, baseType: !456, size: 64, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2368, file: !38, line: 305, baseType: !129, size: 64, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2368, file: !38, line: 306, baseType: !2397, size: 576, offset: 1024)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2398)
!2398 = !{!2399, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2397, file: !38, line: 206, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !458)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2397, file: !38, line: 207, baseType: !2400, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2397, file: !38, line: 208, baseType: !2400, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2397, file: !38, line: 209, baseType: !2400, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2397, file: !38, line: 210, baseType: !2400, size: 64, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2397, file: !38, line: 211, baseType: !2400, size: 64, offset: 320)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2397, file: !38, line: 212, baseType: !2400, size: 64, offset: 384)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2397, file: !38, line: 213, baseType: !464, size: 64, offset: 448)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2397, file: !38, line: 214, baseType: !464, size: 64, offset: 512)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2361, file: !38, line: 324, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!2367, !524, !95}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2361, file: !38, line: 325, baseType: !2414, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !2367}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2361, file: !38, line: 326, baseType: !2364, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2361, file: !38, line: 327, baseType: !2364, size: 64, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2361, file: !38, line: 328, baseType: !2364, size: 64, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2361, file: !38, line: 329, baseType: !613, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2361, file: !38, line: 332, baseType: !2422, size: 64, offset: 448)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2425, !354}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2361, file: !38, line: 333, baseType: !2427, size: 64, offset: 512)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!95, !354, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2361, file: !38, line: 335, baseType: !2432, size: 64, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!95, !354, !2425}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2361, file: !38, line: 337, baseType: !2436, size: 64, offset: 640)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!95, !524, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !525, file: !44, line: 1425, baseType: !2441, size: 64, offset: 512)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2444)
!2444 = !{!2445, !2449, !2450, !2454, !2455, !2456, !2471, !2494, !2498, !2499, !2522}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2443, file: !38, line: 429, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!95, !524, !95, !95, !474}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2443, file: !38, line: 430, baseType: !613, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2443, file: !38, line: 431, baseType: !2451, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!95, !524, !7}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2443, file: !38, line: 432, baseType: !2451, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2443, file: !38, line: 433, baseType: !613, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2443, file: !38, line: 434, baseType: !2457, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!95, !524, !95, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2461, file: !38, line: 416, baseType: !95, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2461, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2461, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2461, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2461, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2461, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2461, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2461, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2443, file: !38, line: 435, baseType: !2472, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!95, !524, !2379, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2476, file: !38, line: 344, baseType: !95, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2476, file: !38, line: 345, baseType: !346, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2476, file: !38, line: 346, baseType: !346, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2476, file: !38, line: 347, baseType: !346, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2476, file: !38, line: 348, baseType: !346, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2476, file: !38, line: 349, baseType: !346, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2476, file: !38, line: 350, baseType: !346, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2476, file: !38, line: 351, baseType: !706, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2476, file: !38, line: 353, baseType: !706, size: 64, offset: 512)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2476, file: !38, line: 354, baseType: !95, size: 32, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2476, file: !38, line: 355, baseType: !95, size: 32, offset: 608)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2476, file: !38, line: 356, baseType: !346, size: 64, offset: 640)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2476, file: !38, line: 357, baseType: !346, size: 64, offset: 704)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2476, file: !38, line: 358, baseType: !346, size: 64, offset: 768)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2476, file: !38, line: 359, baseType: !706, size: 64, offset: 832)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2476, file: !38, line: 360, baseType: !95, size: 32, offset: 896)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2443, file: !38, line: 436, baseType: !2495, size: 64, offset: 448)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!95, !524, !2439, !2475}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2443, file: !38, line: 438, baseType: !2472, size: 64, offset: 512)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2443, file: !38, line: 439, baseType: !2500, size: 64, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!95, !524, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2505)
!2505 = !{!2506, !2507}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2504, file: !38, line: 410, baseType: !7, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2504, file: !38, line: 411, baseType: !2508, size: 1344, offset: 64)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2509, size: 1344, elements: !201)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2510)
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2521}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2509, file: !38, line: 396, baseType: !7, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2509, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2509, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2509, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2509, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2509, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2509, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2509, file: !38, line: 404, baseType: !348, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2509, file: !38, line: 405, baseType: !2520, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !146, line: 126, baseType: !346)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2509, file: !38, line: 406, baseType: !2520, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2443, file: !38, line: 440, baseType: !2451, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !525, file: !44, line: 1426, baseType: !2524, size: 64, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2526)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !525, file: !44, line: 1427, baseType: !129, size: 64, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !525, file: !44, line: 1428, baseType: !129, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !525, file: !44, line: 1429, baseType: !129, size: 64, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !525, file: !44, line: 1430, baseType: !307, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !525, file: !44, line: 1431, baseType: !696, size: 256, offset: 896)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !525, file: !44, line: 1432, baseType: !95, size: 32, offset: 1152)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !525, file: !44, line: 1433, baseType: !676, size: 32, offset: 1184)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !525, file: !44, line: 1437, baseType: !2535, size: 64, offset: 1216)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2538)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !525, file: !44, line: 1449, baseType: !2540, size: 64, offset: 1280)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !323, line: 34, size: 64, elements: !2541)
!2541 = !{!2542}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2540, file: !323, line: 35, baseType: !326, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !525, file: !44, line: 1450, baseType: !145, size: 128, offset: 1344)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !525, file: !44, line: 1451, baseType: !2545, size: 64, offset: 1472)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !525, file: !44, line: 1452, baseType: !1853, size: 64, offset: 1536)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !525, file: !44, line: 1453, baseType: !2549, size: 64, offset: 1600)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !525, file: !44, line: 1454, baseType: !567, size: 128, offset: 1664)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !525, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !525, file: !44, line: 1456, baseType: !2554, size: 2432, offset: 1856)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2560, !2592}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2554, file: !38, line: 519, baseType: !7, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2554, file: !38, line: 520, baseType: !696, size: 256, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2554, file: !38, line: 521, baseType: !2559, size: 192, offset: 320)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 192, elements: !201)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2554, file: !38, line: 522, baseType: !2561, size: 1728, offset: 512)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2562, size: 1728, elements: !201)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2563)
!2563 = !{!2564, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2562, file: !38, line: 223, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2567)
!2567 = !{!2568, !2569, !2582, !2583}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2566, file: !38, line: 444, baseType: !95, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2566, file: !38, line: 445, baseType: !2570, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2572, file: !38, line: 311, baseType: !613, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2572, file: !38, line: 312, baseType: !613, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2572, file: !38, line: 313, baseType: !613, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2572, file: !38, line: 314, baseType: !613, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2572, file: !38, line: 315, baseType: !2364, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2572, file: !38, line: 316, baseType: !2364, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2572, file: !38, line: 317, baseType: !2364, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2572, file: !38, line: 318, baseType: !2436, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2566, file: !38, line: 446, baseType: !558, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2566, file: !38, line: 447, baseType: !2565, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2562, file: !38, line: 224, baseType: !95, size: 32, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2562, file: !38, line: 226, baseType: !145, size: 128, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2562, file: !38, line: 227, baseType: !129, size: 64, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2562, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2562, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2562, file: !38, line: 230, baseType: !2400, size: 64, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2562, file: !38, line: 231, baseType: !2400, size: 64, offset: 448)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2562, file: !38, line: 232, baseType: !128, size: 64, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2554, file: !38, line: 523, baseType: !2593, size: 192, offset: 2240)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2570, size: 192, elements: !201)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !525, file: !44, line: 1458, baseType: !2595, size: 2112, offset: 4288)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2596)
!2596 = !{!2597, !2598, !2599}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2595, file: !44, line: 1411, baseType: !95, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2595, file: !44, line: 1412, baseType: !1410, size: 128, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2595, file: !44, line: 1413, baseType: !2600, size: 1920, offset: 192)
!2600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2601, size: 1920, elements: !201)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2602, line: 12, size: 640, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2603 = !{!2604, !2612, !2614, !2619, !2620}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2601, file: !2602, line: 13, baseType: !2605, size: 320)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2606, line: 17, size: 320, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2607 = !{!2608, !2609, !2610, !2611}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2605, file: !2606, line: 18, baseType: !95, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2605, file: !2606, line: 19, baseType: !95, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2605, file: !2606, line: 20, baseType: !1410, size: 128, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2605, file: !2606, line: 22, baseType: !290, size: 128, align: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2601, file: !2602, line: 14, baseType: !2613, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2601, file: !2602, line: 15, baseType: !2615, size: 64, offset: 384)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2616, line: 16, size: 64, elements: !2617)
!2616 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2617 = !{!2618}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2615, file: !2616, line: 17, baseType: !1145, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2601, file: !2602, line: 16, baseType: !1410, size: 128, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2601, file: !2602, line: 17, baseType: !676, size: 32, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !525, file: !44, line: 1465, baseType: !128, size: 64, offset: 6400)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !525, file: !44, line: 1468, baseType: !340, size: 32, offset: 6464)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !525, file: !44, line: 1470, baseType: !464, size: 64, offset: 6528)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !525, file: !44, line: 1471, baseType: !464, size: 64, offset: 6592)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !525, file: !44, line: 1473, baseType: !342, size: 32, offset: 6656)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !525, file: !44, line: 1474, baseType: !2627, size: 64, offset: 6720)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !525, file: !44, line: 1477, baseType: !2630, size: 256, offset: 6784)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !2160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !525, file: !44, line: 1478, baseType: !2632, size: 128, offset: 7040)
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2633, line: 18, baseType: !2634)
!2633 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2633, line: 16, size: 128, elements: !2635)
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2634, file: !2633, line: 17, baseType: !2637, size: 128)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 128, elements: !1664)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !525, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !525, file: !44, line: 1481, baseType: !2640, size: 32, offset: 7200)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !146, line: 150, baseType: !7)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !525, file: !44, line: 1487, baseType: !1102, size: 192, offset: 7232)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !525, file: !44, line: 1493, baseType: !141, size: 64, offset: 7424)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !525, file: !44, line: 1495, baseType: !2644, size: 64, offset: 7488)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !305, line: 135, size: 1024, align: 512, elements: !2647)
!2647 = !{!2648, !2652, !2653, !2660, !2666, !2670, !2674, !2678, !2679, !2683, !2687, !2692, !2696}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2646, file: !305, line: 136, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!95, !307, !7}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2646, file: !305, line: 137, baseType: !2649, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2646, file: !305, line: 138, baseType: !2654, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!95, !2657, !2659}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2646, file: !305, line: 139, baseType: !2661, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!95, !2657, !7, !141, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2646, file: !305, line: 141, baseType: !2667, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!95, !2657}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2646, file: !305, line: 142, baseType: !2671, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!95, !307}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2646, file: !305, line: 143, baseType: !2675, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !307}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2646, file: !305, line: 144, baseType: !2675, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2646, file: !305, line: 145, baseType: !2680, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !307, !354}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2646, file: !305, line: 146, baseType: !2684, size: 64, offset: 576)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!200, !307, !200, !95}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2646, file: !305, line: 147, baseType: !2688, size: 64, offset: 640)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!303, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2646, file: !305, line: 148, baseType: !2693, size: 64, offset: 704)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!95, !474, !415}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2646, file: !305, line: 149, baseType: !2697, size: 64, offset: 768)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!307, !307, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !525, file: !44, line: 1500, baseType: !95, size: 32, offset: 7552)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !525, file: !44, line: 1502, baseType: !2704, size: 448, offset: 7616)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2348, line: 60, size: 448, elements: !2705)
!2705 = !{!2706, !2711, !2712, !2713, !2714, !2715, !2716}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2704, file: !2348, line: 61, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!129, !2710, !2346}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2704, file: !2348, line: 63, baseType: !2707, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2704, file: !2348, line: 66, baseType: !235, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2704, file: !2348, line: 67, baseType: !95, size: 32, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2704, file: !2348, line: 68, baseType: !7, size: 32, offset: 224)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2704, file: !2348, line: 71, baseType: !145, size: 128, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2704, file: !2348, line: 77, baseType: !2717, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !525, file: !44, line: 1505, baseType: !700, size: 64, offset: 8064)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !525, file: !44, line: 1508, baseType: !700, size: 64, offset: 8128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !525, file: !44, line: 1511, baseType: !95, size: 32, offset: 8192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !525, file: !44, line: 1514, baseType: !838, size: 32, offset: 8224)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !525, file: !44, line: 1517, baseType: !2723, size: 64, offset: 8256)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1888, line: 18, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !525, file: !44, line: 1518, baseType: !563, size: 64, offset: 8320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !525, file: !44, line: 1525, baseType: !1642, size: 64, offset: 8384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !525, file: !44, line: 1532, baseType: !2728, size: 64, offset: 8448)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2729, line: 52, size: 64, elements: !2730)
!2729 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2730 = !{!2731}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2728, file: !2729, line: 53, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2729, line: 40, size: 256, elements: !2734)
!2734 = !{!2735, !2736, !2741}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2733, file: !2729, line: 42, baseType: !159)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2733, file: !2729, line: 44, baseType: !2737, size: 192)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2729, line: 28, size: 192, elements: !2738)
!2738 = !{!2739, !2740}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2737, file: !2729, line: 29, baseType: !145, size: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2737, file: !2729, line: 31, baseType: !235, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2733, file: !2729, line: 49, baseType: !235, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !525, file: !44, line: 1533, baseType: !2728, size: 64, offset: 8512)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !525, file: !44, line: 1534, baseType: !290, size: 128, align: 64, offset: 8576)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !525, file: !44, line: 1535, baseType: !1887, size: 256, offset: 8704)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !525, file: !44, line: 1537, baseType: !1102, size: 192, offset: 8960)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !525, file: !44, line: 1542, baseType: !95, size: 32, offset: 9152)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !525, file: !44, line: 1545, baseType: !159, offset: 9184)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !525, file: !44, line: 1546, baseType: !145, size: 128, offset: 9216)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !525, file: !44, line: 1548, baseType: !159, offset: 9344)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !525, file: !44, line: 1549, baseType: !145, size: 128, offset: 9344)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !355, file: !44, line: 624, baseType: !662, size: 64, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !355, file: !44, line: 631, baseType: !129, size: 64, offset: 320)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !44, line: 639, baseType: !2754, size: 32, offset: 384)
!2754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !44, line: 639, size: 32, elements: !2755)
!2755 = !{!2756, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2754, file: !44, line: 640, baseType: !2757, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2754, file: !44, line: 641, baseType: !7, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !355, file: !44, line: 643, baseType: !438, size: 32, offset: 416)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !355, file: !44, line: 644, baseType: !456, size: 64, offset: 448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !355, file: !44, line: 645, baseType: !460, size: 128, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !355, file: !44, line: 646, baseType: !460, size: 128, offset: 640)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !355, file: !44, line: 647, baseType: !460, size: 128, offset: 768)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !355, file: !44, line: 648, baseType: !159, offset: 896)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !355, file: !44, line: 649, baseType: !242, size: 16, offset: 896)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !355, file: !44, line: 650, baseType: !1281, size: 8, offset: 912)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !355, file: !44, line: 651, baseType: !1281, size: 8, offset: 920)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !355, file: !44, line: 652, baseType: !2520, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !355, file: !44, line: 659, baseType: !129, size: 64, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !355, file: !44, line: 660, baseType: !696, size: 256, offset: 1088)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !355, file: !44, line: 662, baseType: !129, size: 64, offset: 1344)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !355, file: !44, line: 663, baseType: !129, size: 64, offset: 1408)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !355, file: !44, line: 665, baseType: !567, size: 128, offset: 1472)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !355, file: !44, line: 666, baseType: !145, size: 128, offset: 1600)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !355, file: !44, line: 675, baseType: !145, size: 128, offset: 1728)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !355, file: !44, line: 676, baseType: !145, size: 128, offset: 1856)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !355, file: !44, line: 677, baseType: !145, size: 128, offset: 1984)
!2778 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !44, line: 678, baseType: !2779, size: 128, offset: 2112)
!2779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !44, line: 678, size: 128, elements: !2780)
!2780 = !{!2781, !2782}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2779, file: !44, line: 679, baseType: !563, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2779, file: !44, line: 680, baseType: !290, size: 128, align: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !355, file: !44, line: 682, baseType: !702, size: 64, offset: 2240)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !355, file: !44, line: 683, baseType: !702, size: 64, offset: 2304)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !355, file: !44, line: 684, baseType: !676, size: 32, offset: 2368)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !355, file: !44, line: 685, baseType: !676, size: 32, offset: 2400)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !355, file: !44, line: 686, baseType: !676, size: 32, offset: 2432)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !355, file: !44, line: 688, baseType: !676, size: 32, offset: 2464)
!2789 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !44, line: 690, baseType: !2790, size: 64, offset: 2496)
!2790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !44, line: 690, size: 64, elements: !2791)
!2791 = !{!2792, !3015}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2790, file: !44, line: 691, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2795)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2796)
!2796 = !{!2797, !2798, !2802, !2807, !2811, !2812, !2813, !2817, !2830, !2831, !2839, !2843, !2844, !2848, !2849, !2853, !2858, !2859, !2863, !2867, !2975, !2979, !2980, !2984, !2985, !2989, !2993, !2998, !3002, !3006, !3010, !3014}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2795, file: !44, line: 1823, baseType: !558, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2795, file: !44, line: 1824, baseType: !2799, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!456, !277, !456, !95}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2795, file: !44, line: 1825, baseType: !2803, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!231, !277, !200, !247, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2795, file: !44, line: 1826, baseType: !2808, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!231, !277, !141, !247, !2806}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2795, file: !44, line: 1827, baseType: !773, size: 64, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2795, file: !44, line: 1828, baseType: !773, size: 64, offset: 320)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2795, file: !44, line: 1829, baseType: !2814, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!95, !776, !415}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2795, file: !44, line: 1830, baseType: !2818, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!95, !277, !2821}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2823)
!2823 = !{!2824, !2829}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2822, file: !44, line: 1777, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2826)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!95, !2821, !141, !95, !456, !346, !7}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2822, file: !44, line: 1778, baseType: !456, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2795, file: !44, line: 1831, baseType: !2818, size: 64, offset: 512)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2795, file: !44, line: 1832, baseType: !2832, size: 64, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!2835, !277, !2837}
!2835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2836, line: 52, baseType: !7)
!2836 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !544, line: 27, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2795, file: !44, line: 1833, baseType: !2840, size: 64, offset: 640)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!235, !277, !7, !129}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2795, file: !44, line: 1834, baseType: !2840, size: 64, offset: 704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2795, file: !44, line: 1835, baseType: !2845, size: 64, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!95, !277, !910}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2795, file: !44, line: 1836, baseType: !129, size: 64, offset: 832)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2795, file: !44, line: 1837, baseType: !2850, size: 64, offset: 896)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!95, !354, !277}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2795, file: !44, line: 1838, baseType: !2854, size: 64, offset: 960)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!95, !277, !2857}
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2795, file: !44, line: 1839, baseType: !2850, size: 64, offset: 1024)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2795, file: !44, line: 1840, baseType: !2860, size: 64, offset: 1088)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!95, !277, !456, !456, !95}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2795, file: !44, line: 1841, baseType: !2864, size: 64, offset: 1152)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!95, !95, !277, !95}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2795, file: !44, line: 1842, baseType: !2868, size: 64, offset: 1216)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!95, !277, !95, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2873)
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2905, !2906, !2907, !2920, !2951}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2872, file: !44, line: 1063, baseType: !2871, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2872, file: !44, line: 1064, baseType: !145, size: 128, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2872, file: !44, line: 1065, baseType: !567, size: 128, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2872, file: !44, line: 1066, baseType: !145, size: 128, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2872, file: !44, line: 1069, baseType: !145, size: 128, offset: 448)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2872, file: !44, line: 1072, baseType: !2857, size: 64, offset: 576)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2872, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2872, file: !44, line: 1074, baseType: !352, size: 8, offset: 672)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2872, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2872, file: !44, line: 1076, baseType: !95, size: 32, offset: 736)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2872, file: !44, line: 1077, baseType: !1410, size: 128, offset: 768)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2872, file: !44, line: 1078, baseType: !277, size: 64, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2872, file: !44, line: 1079, baseType: !456, size: 64, offset: 960)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2872, file: !44, line: 1080, baseType: !456, size: 64, offset: 1024)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2872, file: !44, line: 1082, baseType: !2889, size: 64, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2891)
!2891 = !{!2892, !2900, !2901, !2902, !2903, !2904}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2890, file: !44, line: 1315, baseType: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2894, line: 20, baseType: !2895)
!2894 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2894, line: 11, elements: !2896)
!2896 = !{!2897}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2895, file: !2894, line: 12, baseType: !2898)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !171, line: 33, baseType: !2899)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 31, elements: !173)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2890, file: !44, line: 1316, baseType: !95, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2890, file: !44, line: 1317, baseType: !95, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2890, file: !44, line: 1318, baseType: !2889, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2890, file: !44, line: 1319, baseType: !277, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2890, file: !44, line: 1320, baseType: !290, size: 128, align: 64, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2872, file: !44, line: 1084, baseType: !129, size: 64, offset: 1152)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2872, file: !44, line: 1085, baseType: !129, size: 64, offset: 1216)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2872, file: !44, line: 1087, baseType: !2908, size: 64, offset: 1280)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2910)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2911)
!2911 = !{!2912, !2916}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2910, file: !44, line: 1012, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !2871, !2871}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2910, file: !44, line: 1013, baseType: !2917, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{null, !2871}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2872, file: !44, line: 1088, baseType: !2921, size: 64, offset: 1344)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2924)
!2924 = !{!2925, !2929, !2933, !2934, !2938, !2942, !2946, !2950}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2923, file: !44, line: 1017, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!2857, !2857}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2923, file: !44, line: 1018, baseType: !2930, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{null, !2857}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2923, file: !44, line: 1019, baseType: !2917, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2923, file: !44, line: 1020, baseType: !2935, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!95, !2871, !95}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2923, file: !44, line: 1021, baseType: !2939, size: 64, offset: 256)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!415, !2871}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2923, file: !44, line: 1022, baseType: !2943, size: 64, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!95, !2871, !95, !149}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2923, file: !44, line: 1023, baseType: !2947, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !2871, !750}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2923, file: !44, line: 1024, baseType: !2939, size: 64, offset: 448)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2872, file: !44, line: 1097, baseType: !2952, size: 256, offset: 1408)
!2952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2872, file: !44, line: 1089, size: 256, elements: !2953)
!2953 = !{!2954, !2963, !2969}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2952, file: !44, line: 1090, baseType: !2955, size: 256)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2956, line: 10, size: 256, elements: !2957)
!2956 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2957 = !{!2958, !2959, !2962}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2955, file: !2956, line: 11, baseType: !340, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2955, file: !2956, line: 12, baseType: !2960, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2956, line: 5, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2955, file: !2956, line: 13, baseType: !145, size: 128, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2952, file: !44, line: 1091, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2956, line: 17, size: 64, elements: !2965)
!2965 = !{!2966}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2964, file: !2956, line: 18, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2956, line: 16, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2952, file: !44, line: 1096, baseType: !2970, size: 192)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !44, line: 1092, size: 192, elements: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2970, file: !44, line: 1093, baseType: !145, size: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2970, file: !44, line: 1094, baseType: !95, size: 32, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2970, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2795, file: !44, line: 1843, baseType: !2976, size: 64, offset: 1280)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!231, !277, !649, !95, !247, !2806, !95}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2795, file: !44, line: 1844, baseType: !1030, size: 64, offset: 1344)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2795, file: !44, line: 1845, baseType: !2981, size: 64, offset: 1408)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!95, !95}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2795, file: !44, line: 1846, baseType: !2868, size: 64, offset: 1472)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2795, file: !44, line: 1847, baseType: !2986, size: 64, offset: 1536)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!231, !2028, !277, !2806, !247, !7}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2795, file: !44, line: 1848, baseType: !2990, size: 64, offset: 1600)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!231, !277, !2806, !2028, !247, !7}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2795, file: !44, line: 1849, baseType: !2994, size: 64, offset: 1664)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!95, !277, !235, !2997, !750}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2795, file: !44, line: 1850, baseType: !2999, size: 64, offset: 1728)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!235, !277, !95, !456, !456}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2795, file: !44, line: 1852, baseType: !3003, size: 64, offset: 1792)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !639, !277}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2795, file: !44, line: 1856, baseType: !3007, size: 64, offset: 1856)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!231, !277, !456, !277, !456, !247, !7}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2795, file: !44, line: 1858, baseType: !3011, size: 64, offset: 1920)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!456, !277, !456, !277, !456, !456, !7}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2795, file: !44, line: 1861, baseType: !2860, size: 64, offset: 1984)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2790, file: !44, line: 692, baseType: !592, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !355, file: !44, line: 694, baseType: !3017, size: 64, offset: 2560)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3018, file: !44, line: 1101, baseType: !159)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3018, file: !44, line: 1102, baseType: !145, size: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3018, file: !44, line: 1103, baseType: !145, size: 128, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3018, file: !44, line: 1104, baseType: !145, size: 128, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !355, file: !44, line: 695, baseType: !663, size: 1216, align: 64, offset: 2624)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !355, file: !44, line: 696, baseType: !145, size: 128, offset: 3840)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !44, line: 697, baseType: !3027, size: 64, offset: 3968)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !44, line: 697, size: 64, elements: !3028)
!3028 = !{!3029, !3030, !3031, !3034, !3035}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3027, file: !44, line: 698, baseType: !2028, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3027, file: !44, line: 699, baseType: !2545, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3027, file: !44, line: 700, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3027, file: !44, line: 701, baseType: !200, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3027, file: !44, line: 702, baseType: !7, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !355, file: !44, line: 705, baseType: !342, size: 32, offset: 4032)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !355, file: !44, line: 708, baseType: !342, size: 32, offset: 4064)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !355, file: !44, line: 709, baseType: !2627, size: 64, offset: 4096)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !355, file: !44, line: 720, baseType: !128, size: 64, offset: 4160)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !308, file: !305, line: 98, baseType: !3041, size: 256, offset: 448)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 256, elements: !2160)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !308, file: !305, line: 101, baseType: !3043, size: 32, offset: 704)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3044, line: 25, size: 32, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, scope: !3043, file: !3044, line: 26, baseType: !3047, size: 32)
!3047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3043, file: !3044, line: 26, size: 32, elements: !3048)
!3048 = !{!3049}
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !3047, file: !3044, line: 30, baseType: !3050, size: 32)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3044, line: 30, size: 32, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3050, file: !3044, line: 31, baseType: !159)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3050, file: !3044, line: 32, baseType: !95, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !308, file: !305, line: 102, baseType: !2644, size: 64, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !308, file: !305, line: 103, baseType: !524, size: 64, offset: 832)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !308, file: !305, line: 104, baseType: !129, size: 64, offset: 896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !308, file: !305, line: 105, baseType: !128, size: 64, offset: 960)
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !305, line: 107, baseType: !3059, size: 128, offset: 1024)
!3059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !305, line: 107, size: 128, elements: !3060)
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3059, file: !305, line: 108, baseType: !145, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3059, file: !305, line: 109, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !308, file: !305, line: 111, baseType: !145, size: 128, offset: 1152)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !308, file: !305, line: 112, baseType: !145, size: 128, offset: 1280)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !308, file: !305, line: 120, baseType: !3067, size: 128, offset: 1408)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !305, line: 116, size: 128, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3067, file: !305, line: 117, baseType: !567, size: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3067, file: !305, line: 118, baseType: !322, size: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3067, file: !305, line: 119, baseType: !290, size: 128, align: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !278, file: !44, line: 922, baseType: !354, size: 64, offset: 256)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !278, file: !44, line: 923, baseType: !2793, size: 64, offset: 320)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !278, file: !44, line: 929, baseType: !159, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !278, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !278, file: !44, line: 931, baseType: !700, size: 64, offset: 448)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !278, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !278, file: !44, line: 933, baseType: !2640, size: 32, offset: 544)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !278, file: !44, line: 934, baseType: !1102, size: 192, offset: 576)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !278, file: !44, line: 935, baseType: !456, size: 64, offset: 768)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !278, file: !44, line: 936, baseType: !3082, size: 192, offset: 832)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087, !3088, !3089}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3082, file: !44, line: 886, baseType: !2893)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3082, file: !44, line: 887, baseType: !1400, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3082, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3082, file: !44, line: 889, baseType: !360, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3082, file: !44, line: 889, baseType: !360, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3082, file: !44, line: 890, baseType: !95, size: 32, offset: 160)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !278, file: !44, line: 937, baseType: !1476, size: 64, offset: 1024)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !278, file: !44, line: 938, baseType: !3092, size: 256, offset: 1088)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3092, file: !44, line: 897, baseType: !129, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3092, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3092, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3092, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3092, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3092, file: !44, line: 904, baseType: !456, size: 64, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !278, file: !44, line: 940, baseType: !346, size: 64, offset: 1344)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !278, file: !44, line: 945, baseType: !128, size: 64, offset: 1408)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !278, file: !44, line: 949, baseType: !145, size: 128, offset: 1472)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !278, file: !44, line: 950, baseType: !145, size: 128, offset: 1600)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !278, file: !44, line: 952, baseType: !662, size: 64, offset: 1728)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !278, file: !44, line: 953, baseType: !838, size: 32, offset: 1792)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !278, file: !44, line: 954, baseType: !838, size: 32, offset: 1824)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !268, file: !225, line: 174, baseType: !274, size: 64, offset: 320)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !268, file: !225, line: 176, baseType: !3109, size: 64, offset: 384)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!95, !277, !152, !267, !910}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !256, file: !225, line: 90, baseType: !251, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !256, file: !225, line: 91, baseType: !3114, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !215, file: !138, line: 143, baseType: !3116, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!3119, !152}
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3121)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3122)
!3122 = !{!3123, !3124, !3128, !3132, !3138, !3142}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3121, file: !61, line: 40, baseType: !60, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3121, file: !61, line: 41, baseType: !3125, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!415}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3121, file: !61, line: 42, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!128}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3121, file: !61, line: 43, baseType: !3133, size: 64, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!2057, !3136}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3121, file: !61, line: 44, baseType: !3139, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!2057}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3121, file: !61, line: 45, baseType: !393, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !215, file: !138, line: 144, baseType: !3144, size: 64, offset: 320)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!2057, !152}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !215, file: !138, line: 145, baseType: !3148, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !152, !3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !137, file: !138, line: 70, baseType: !3154, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !544, line: 123, size: 1024, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3285, !3286, !3287, !3288, !3289}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3155, file: !544, line: 124, baseType: !676, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3155, file: !544, line: 125, baseType: !676, size: 32, offset: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3155, file: !544, line: 135, baseType: !3154, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3155, file: !544, line: 136, baseType: !141, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3155, file: !544, line: 138, baseType: !689, size: 192, align: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3155, file: !544, line: 140, baseType: !2057, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3155, file: !544, line: 141, baseType: !7, size: 32, offset: 448)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3155, file: !544, line: 142, baseType: !3165, size: 256, offset: 512)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3155, file: !544, line: 142, size: 256, elements: !3166)
!3166 = !{!3167, !3213, !3217}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3165, file: !544, line: 143, baseType: !3168, size: 192)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !544, line: 91, size: 192, elements: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3168, file: !544, line: 92, baseType: !129, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3168, file: !544, line: 94, baseType: !685, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3168, file: !544, line: 100, baseType: !3173, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !544, line: 180, size: 704, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3185, !3186, !3187, !3211, !3212}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3174, file: !544, line: 182, baseType: !3154, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3174, file: !544, line: 183, baseType: !7, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3174, file: !544, line: 186, baseType: !3179, size: 192, offset: 128)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3180, line: 19, size: 192, elements: !3181)
!3180 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3179, file: !3180, line: 20, baseType: !667, size: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3179, file: !3180, line: 21, baseType: !7, size: 32, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3179, file: !3180, line: 22, baseType: !7, size: 32, offset: 160)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3174, file: !544, line: 187, baseType: !340, size: 32, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3174, file: !544, line: 188, baseType: !340, size: 32, offset: 352)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3174, file: !544, line: 189, baseType: !3188, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !544, line: 168, size: 320, elements: !3190)
!3190 = !{!3191, !3195, !3199, !3203, !3207}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3189, file: !544, line: 169, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!95, !639, !3173}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3189, file: !544, line: 171, baseType: !3196, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!95, !3154, !141, !241}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3189, file: !544, line: 173, baseType: !3200, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!95, !3154}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3189, file: !544, line: 174, baseType: !3204, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!95, !3154, !3154, !141}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3189, file: !544, line: 176, baseType: !3208, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!95, !639, !3154, !3173}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3174, file: !544, line: 192, baseType: !145, size: 128, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3174, file: !544, line: 194, baseType: !1410, size: 128, offset: 576)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3165, file: !544, line: 144, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !544, line: 103, size: 64, elements: !3215)
!3215 = !{!3216}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3214, file: !544, line: 104, baseType: !3154, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3165, file: !544, line: 145, baseType: !3218, size: 256)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !544, line: 107, size: 256, elements: !3219)
!3219 = !{!3220, !3280, !3283, !3284}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3218, file: !544, line: 108, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3223)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !544, line: 217, size: 768, elements: !3224)
!3224 = !{!3225, !3245, !3249, !3253, !3257, !3261, !3265, !3269, !3270, !3271, !3272, !3276}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3223, file: !544, line: 222, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!95, !3229}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !544, line: 197, size: 1088, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3230, file: !544, line: 199, baseType: !3154, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3230, file: !544, line: 200, baseType: !277, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3230, file: !544, line: 201, baseType: !639, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3230, file: !544, line: 202, baseType: !128, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3230, file: !544, line: 205, baseType: !1102, size: 192, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3230, file: !544, line: 206, baseType: !1102, size: 192, offset: 448)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3230, file: !544, line: 207, baseType: !95, size: 32, offset: 640)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3230, file: !544, line: 208, baseType: !145, size: 128, offset: 704)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3230, file: !544, line: 209, baseType: !200, size: 64, offset: 832)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3230, file: !544, line: 211, baseType: !247, size: 64, offset: 896)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3230, file: !544, line: 212, baseType: !415, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3230, file: !544, line: 213, baseType: !415, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3230, file: !544, line: 214, baseType: !938, size: 64, offset: 1024)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3223, file: !544, line: 223, baseType: !3246, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !3229}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3223, file: !544, line: 236, baseType: !3250, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!95, !639, !128}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3223, file: !544, line: 238, baseType: !3254, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!128, !639, !2806}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3223, file: !544, line: 239, baseType: !3258, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!128, !639, !128, !2806}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3223, file: !544, line: 240, baseType: !3262, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !639, !128}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3223, file: !544, line: 242, baseType: !3266, size: 64, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!231, !3229, !200, !247, !456}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3223, file: !544, line: 252, baseType: !247, size: 64, offset: 448)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3223, file: !544, line: 259, baseType: !415, size: 8, offset: 512)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3223, file: !544, line: 260, baseType: !3266, size: 64, offset: 576)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3223, file: !544, line: 263, baseType: !3273, size: 64, offset: 640)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!2835, !3229, !2837}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3223, file: !544, line: 266, baseType: !3277, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!95, !3229, !910}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3218, file: !544, line: 109, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !544, line: 31, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3218, file: !544, line: 110, baseType: !456, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3218, file: !544, line: 111, baseType: !3154, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3155, file: !544, line: 148, baseType: !128, size: 64, offset: 768)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3155, file: !544, line: 154, baseType: !346, size: 64, offset: 832)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3155, file: !544, line: 156, baseType: !242, size: 16, offset: 896)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3155, file: !544, line: 157, baseType: !241, size: 16, offset: 912)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3155, file: !544, line: 158, baseType: !3290, size: 64, offset: 960)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !544, line: 32, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !137, file: !138, line: 71, baseType: !3293, size: 32, offset: 448)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3294, line: 19, size: 32, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3293, file: !3294, line: 20, baseType: !1159, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !137, file: !138, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !137, file: !138, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !137, file: !138, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !137, file: !138, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !137, file: !138, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !67, line: 463, baseType: !3303, size: 64, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !134, file: !67, line: 465, baseType: !3305, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !134, file: !67, line: 467, baseType: !141, size: 64, offset: 640)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !67, line: 468, baseType: !3309, size: 64, offset: 704)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3311)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3319, !3324, !3328}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3311, file: !67, line: 88, baseType: !141, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3311, file: !67, line: 89, baseType: !253, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3311, file: !67, line: 90, baseType: !3316, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!95, !3303, !195}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3311, file: !67, line: 91, baseType: !3320, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!200, !3303, !3323, !3151, !3152}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3311, file: !67, line: 93, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !3303}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3311, file: !67, line: 95, baseType: !3329, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3332)
!3332 = !{!3333, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3331, file: !74, line: 279, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!95, !3303}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3331, file: !74, line: 280, baseType: !3325, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3331, file: !74, line: 281, baseType: !3334, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3331, file: !74, line: 282, baseType: !3334, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3331, file: !74, line: 283, baseType: !3334, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3331, file: !74, line: 284, baseType: !3334, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3331, file: !74, line: 285, baseType: !3334, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3331, file: !74, line: 286, baseType: !3334, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3331, file: !74, line: 287, baseType: !3334, size: 64, offset: 512)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3331, file: !74, line: 288, baseType: !3334, size: 64, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3331, file: !74, line: 289, baseType: !3334, size: 64, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3331, file: !74, line: 290, baseType: !3334, size: 64, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3331, file: !74, line: 291, baseType: !3334, size: 64, offset: 768)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3331, file: !74, line: 292, baseType: !3334, size: 64, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3331, file: !74, line: 293, baseType: !3334, size: 64, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3331, file: !74, line: 294, baseType: !3334, size: 64, offset: 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3331, file: !74, line: 295, baseType: !3334, size: 64, offset: 1024)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3331, file: !74, line: 296, baseType: !3334, size: 64, offset: 1088)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3331, file: !74, line: 297, baseType: !3334, size: 64, offset: 1152)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3331, file: !74, line: 298, baseType: !3334, size: 64, offset: 1216)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3331, file: !74, line: 299, baseType: !3334, size: 64, offset: 1280)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3331, file: !74, line: 300, baseType: !3334, size: 64, offset: 1344)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3331, file: !74, line: 301, baseType: !3334, size: 64, offset: 1408)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !134, file: !67, line: 470, baseType: !3360, size: 64, offset: 768)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3362, line: 82, size: 1408, elements: !3363)
!3362 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369, !3370, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3445, !3448, !3449}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3361, file: !3362, line: 83, baseType: !141, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3361, file: !3362, line: 84, baseType: !141, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3361, file: !3362, line: 85, baseType: !3303, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3361, file: !3362, line: 86, baseType: !253, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3361, file: !3362, line: 87, baseType: !253, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3361, file: !3362, line: 88, baseType: !253, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3361, file: !3362, line: 90, baseType: !3371, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!95, !3303, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 95, size: 1152, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3383, !3396, !3409, !3410, !3411, !3412, !3413, !3421, !3422, !3423, !3424, !3425, !3426}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3375, file: !88, line: 96, baseType: !141, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3375, file: !88, line: 97, baseType: !3360, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3375, file: !88, line: 99, baseType: !558, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3375, file: !88, line: 100, baseType: !141, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3375, file: !88, line: 102, baseType: !415, size: 8, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3375, file: !88, line: 103, baseType: !87, size: 32, offset: 288)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3375, file: !88, line: 105, baseType: !3384, size: 64, offset: 320)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3386)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3387, line: 262, size: 1600, elements: !3388)
!3387 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3388 = !{!3389, !3390, !3391, !3395}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3386, file: !3387, line: 263, baseType: !2630, size: 256)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3386, file: !3387, line: 264, baseType: !2630, size: 256, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3386, file: !3387, line: 265, baseType: !3392, size: 1024, offset: 512)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1024, elements: !3393)
!3393 = !{!3394}
!3394 = !DISubrange(count: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3386, file: !3387, line: 266, baseType: !2057, size: 64, offset: 1536)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3375, file: !88, line: 106, baseType: !3397, size: 64, offset: 384)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3399)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3387, line: 210, size: 256, elements: !3400)
!3400 = !{!3401, !3405, !3407, !3408}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3399, file: !3387, line: 211, baseType: !3402, size: 72)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 72, elements: !3403)
!3403 = !{!3404}
!3404 = !DISubrange(count: 9)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3399, file: !3387, line: 212, baseType: !3406, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3387, line: 14, baseType: !129)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3399, file: !3387, line: 213, baseType: !342, size: 32, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3399, file: !3387, line: 214, baseType: !342, size: 32, offset: 224)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3375, file: !88, line: 108, baseType: !3334, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3375, file: !88, line: 109, baseType: !3325, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3375, file: !88, line: 110, baseType: !3334, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3375, file: !88, line: 111, baseType: !3325, size: 64, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3375, file: !88, line: 112, baseType: !3414, size: 64, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!95, !3303, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3419)
!3419 = !{!3420}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3418, file: !74, line: 51, baseType: !95, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3375, file: !88, line: 113, baseType: !3334, size: 64, offset: 768)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3375, file: !88, line: 114, baseType: !253, size: 64, offset: 832)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3375, file: !88, line: 115, baseType: !253, size: 64, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3375, file: !88, line: 117, baseType: !3329, size: 64, offset: 960)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3375, file: !88, line: 118, baseType: !3325, size: 64, offset: 1024)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3375, file: !88, line: 120, baseType: !3427, size: 64, offset: 1088)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 120, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3361, file: !3362, line: 91, baseType: !3316, size: 64, offset: 448)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3361, file: !3362, line: 92, baseType: !3334, size: 64, offset: 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3361, file: !3362, line: 93, baseType: !3325, size: 64, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3361, file: !3362, line: 94, baseType: !3334, size: 64, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3361, file: !3362, line: 95, baseType: !3325, size: 64, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3361, file: !3362, line: 97, baseType: !3334, size: 64, offset: 768)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3361, file: !3362, line: 98, baseType: !3334, size: 64, offset: 832)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3361, file: !3362, line: 100, baseType: !3414, size: 64, offset: 896)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3361, file: !3362, line: 101, baseType: !3334, size: 64, offset: 960)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3361, file: !3362, line: 103, baseType: !3334, size: 64, offset: 1024)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3361, file: !3362, line: 105, baseType: !3334, size: 64, offset: 1088)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3361, file: !3362, line: 107, baseType: !3329, size: 64, offset: 1152)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3361, file: !3362, line: 109, baseType: !3442, size: 64, offset: 1216)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3444)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3362, line: 109, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3361, file: !3362, line: 111, baseType: !3446, size: 64, offset: 1280)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3362, line: 111, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3361, file: !3362, line: 112, baseType: !573, offset: 1344)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3361, file: !3362, line: 114, baseType: !415, size: 8, offset: 1344)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !134, file: !67, line: 471, baseType: !3374, size: 64, offset: 832)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !134, file: !67, line: 473, baseType: !128, size: 64, offset: 896)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !134, file: !67, line: 475, baseType: !128, size: 64, offset: 960)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !134, file: !67, line: 480, baseType: !1102, size: 192, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !134, file: !67, line: 484, baseType: !3455, size: 576, offset: 1216)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3455, file: !67, line: 362, baseType: !145, size: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3455, file: !67, line: 363, baseType: !145, size: 128, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3455, file: !67, line: 364, baseType: !145, size: 128, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3455, file: !67, line: 365, baseType: !145, size: 128, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3455, file: !67, line: 366, baseType: !415, size: 8, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3455, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !134, file: !67, line: 485, baseType: !3464, size: 2304, offset: 1792)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3561, !3565}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3464, file: !74, line: 566, baseType: !3417, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3464, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3464, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3464, file: !74, line: 569, baseType: !415, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3464, file: !74, line: 570, baseType: !415, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3464, file: !74, line: 571, baseType: !415, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3464, file: !74, line: 572, baseType: !415, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3464, file: !74, line: 573, baseType: !415, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3464, file: !74, line: 574, baseType: !415, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3464, file: !74, line: 575, baseType: !415, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3464, file: !74, line: 576, baseType: !415, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3464, file: !74, line: 577, baseType: !340, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3464, file: !74, line: 578, baseType: !159, offset: 96)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3464, file: !74, line: 580, baseType: !145, size: 128, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3464, file: !74, line: 581, baseType: !1431, size: 192, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3464, file: !74, line: 582, baseType: !3482, size: 64, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3484, line: 43, size: 1472, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3493, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3483, file: !3484, line: 44, baseType: !141, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3483, file: !3484, line: 45, baseType: !95, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3483, file: !3484, line: 46, baseType: !145, size: 128, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3483, file: !3484, line: 47, baseType: !159, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3483, file: !3484, line: 48, baseType: !3491, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3483, file: !3484, line: 49, baseType: !3494, size: 320, offset: 320)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3495, line: 11, size: 320, elements: !3496)
!3495 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3496 = !{!3497, !3498, !3499, !3504}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3494, file: !3495, line: 16, baseType: !567, size: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3494, file: !3495, line: 17, baseType: !129, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3494, file: !3495, line: 18, baseType: !3500, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3494, file: !3495, line: 19, baseType: !340, size: 32, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3483, file: !3484, line: 50, baseType: !129, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3483, file: !3484, line: 51, baseType: !1229, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3483, file: !3484, line: 52, baseType: !1229, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3483, file: !3484, line: 53, baseType: !1229, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3483, file: !3484, line: 54, baseType: !1229, size: 64, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3483, file: !3484, line: 55, baseType: !1229, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3483, file: !3484, line: 56, baseType: !129, size: 64, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3483, file: !3484, line: 57, baseType: !129, size: 64, offset: 1088)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3483, file: !3484, line: 58, baseType: !129, size: 64, offset: 1152)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3483, file: !3484, line: 59, baseType: !129, size: 64, offset: 1216)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3483, file: !3484, line: 60, baseType: !129, size: 64, offset: 1280)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3483, file: !3484, line: 61, baseType: !3303, size: 64, offset: 1344)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3483, file: !3484, line: 62, baseType: !415, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3483, file: !3484, line: 63, baseType: !415, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3464, file: !74, line: 583, baseType: !415, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3464, file: !74, line: 584, baseType: !415, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3464, file: !74, line: 585, baseType: !415, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3464, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3464, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3464, file: !74, line: 592, baseType: !1221, size: 512, offset: 576)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3464, file: !74, line: 593, baseType: !346, size: 64, offset: 1088)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3464, file: !74, line: 594, baseType: !1887, size: 256, offset: 1152)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3464, file: !74, line: 595, baseType: !1410, size: 128, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3464, file: !74, line: 596, baseType: !3491, size: 64, offset: 1536)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3464, file: !74, line: 597, baseType: !676, size: 32, offset: 1600)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3464, file: !74, line: 598, baseType: !676, size: 32, offset: 1632)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3464, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3464, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3464, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3464, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3464, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3464, file: !74, line: 604, baseType: !415, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3464, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3464, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3464, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3464, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3464, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3464, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3464, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3464, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3464, file: !74, line: 613, baseType: !95, size: 32, offset: 1792)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3464, file: !74, line: 614, baseType: !95, size: 32, offset: 1824)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3464, file: !74, line: 615, baseType: !346, size: 64, offset: 1856)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3464, file: !74, line: 616, baseType: !346, size: 64, offset: 1920)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3464, file: !74, line: 617, baseType: !346, size: 64, offset: 1984)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3464, file: !74, line: 618, baseType: !346, size: 64, offset: 2048)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3464, file: !74, line: 620, baseType: !3552, size: 64, offset: 2112)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3553, file: !74, line: 537, baseType: !159)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3553, file: !74, line: 538, baseType: !7, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3553, file: !74, line: 540, baseType: !145, size: 128, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3553, file: !74, line: 543, baseType: !3559, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3464, file: !74, line: 621, baseType: !3562, size: 64, offset: 2176)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{null, !3303, !1373}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3464, file: !74, line: 622, baseType: !3566, size: 64, offset: 2240)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !134, file: !67, line: 486, baseType: !3569, size: 64, offset: 4096)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3578, !3579, !3580}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3570, file: !74, line: 643, baseType: !3331, size: 1472)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3570, file: !74, line: 644, baseType: !3334, size: 64, offset: 1472)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3570, file: !74, line: 645, baseType: !3575, size: 64, offset: 1536)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{null, !3303, !415}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3570, file: !74, line: 646, baseType: !3334, size: 64, offset: 1600)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3570, file: !74, line: 647, baseType: !3325, size: 64, offset: 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3570, file: !74, line: 648, baseType: !3325, size: 64, offset: 1728)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !134, file: !67, line: 493, baseType: !3582, size: 64, offset: 4160)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !134, file: !67, line: 499, baseType: !145, size: 128, offset: 4224)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !134, file: !67, line: 502, baseType: !3586, size: 64, offset: 4352)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3588)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !134, file: !67, line: 504, baseType: !3590, size: 64, offset: 4416)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !134, file: !67, line: 505, baseType: !346, size: 64, offset: 4480)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !134, file: !67, line: 510, baseType: !346, size: 64, offset: 4544)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !134, file: !67, line: 511, baseType: !3594, size: 64, offset: 4608)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3596)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !134, file: !67, line: 513, baseType: !3598, size: 64, offset: 4672)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3599, file: !67, line: 293, baseType: !7, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3599, file: !67, line: 294, baseType: !129, size: 64, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !134, file: !67, line: 515, baseType: !145, size: 128, offset: 4736)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !134, file: !67, line: 526, baseType: !3605, offset: 4864)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3606, line: 5, elements: !173)
!3606 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !134, file: !67, line: 528, baseType: !3608, size: 64, offset: 4864)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3610, line: 14, flags: DIFlagFwdDecl)
!3610 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !134, file: !67, line: 529, baseType: !3612, size: 64, offset: 4928)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3614, line: 17, size: 192, elements: !3615)
!3614 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3615 = !{!3616, !3617, !3700}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3613, file: !3614, line: 18, baseType: !3612, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3613, file: !3614, line: 19, baseType: !3618, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3620)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3614, line: 110, size: 1152, elements: !3621)
!3621 = !{!3622, !3626, !3630, !3636, !3642, !3646, !3650, !3655, !3659, !3660, !3664, !3668, !3672, !3683, !3684, !3685, !3686, !3696}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3620, file: !3614, line: 111, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!3612, !3612}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3620, file: !3614, line: 112, baseType: !3627, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3612}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3620, file: !3614, line: 113, baseType: !3631, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!415, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3613)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3620, file: !3614, line: 114, baseType: !3637, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!2057, !3634, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3620, file: !3614, line: 116, baseType: !3643, size: 64, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!415, !3634, !141}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3620, file: !3614, line: 118, baseType: !3647, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!95, !3634, !141, !7, !128, !247}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3620, file: !3614, line: 123, baseType: !3651, size: 64, offset: 384)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!95, !3634, !141, !3654, !247}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3620, file: !3614, line: 126, baseType: !3656, size: 64, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!141, !3634}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3620, file: !3614, line: 127, baseType: !3656, size: 64, offset: 512)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3620, file: !3614, line: 128, baseType: !3661, size: 64, offset: 576)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!3612, !3634}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3620, file: !3614, line: 130, baseType: !3665, size: 64, offset: 640)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!3612, !3634, !3612}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3620, file: !3614, line: 133, baseType: !3669, size: 64, offset: 704)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!3612, !3634, !141}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3620, file: !3614, line: 135, baseType: !3673, size: 64, offset: 768)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!95, !3634, !141, !141, !7, !7, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3614, line: 43, size: 640, elements: !3678)
!3678 = !{!3679, !3680, !3681}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3677, file: !3614, line: 44, baseType: !3612, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3677, file: !3614, line: 45, baseType: !7, size: 32, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3677, file: !3614, line: 46, baseType: !3682, size: 512, offset: 128)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 512, elements: !1259)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3620, file: !3614, line: 140, baseType: !3665, size: 64, offset: 832)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3620, file: !3614, line: 143, baseType: !3661, size: 64, offset: 896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3620, file: !3614, line: 145, baseType: !3623, size: 64, offset: 960)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3620, file: !3614, line: 146, baseType: !3687, size: 64, offset: 1024)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!95, !3634, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3614, line: 29, size: 128, elements: !3692)
!3692 = !{!3693, !3694, !3695}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3691, file: !3614, line: 30, baseType: !7, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3691, file: !3614, line: 31, baseType: !7, size: 32, offset: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3691, file: !3614, line: 32, baseType: !3634, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3620, file: !3614, line: 148, baseType: !3697, size: 64, offset: 1088)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!95, !3634, !3303}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3613, file: !3614, line: 20, baseType: !3303, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !134, file: !67, line: 534, baseType: !438, size: 32, offset: 4992)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !134, file: !67, line: 535, baseType: !340, size: 32, offset: 5024)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !134, file: !67, line: 537, baseType: !159, offset: 5056)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !134, file: !67, line: 538, baseType: !145, size: 128, offset: 5056)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !134, file: !67, line: 540, baseType: !3706, size: 64, offset: 5184)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3708, line: 54, size: 960, elements: !3709)
!3708 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716, !3720, !3724, !3725, !3726, !3727, !3731, !3735, !3736}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3707, file: !3708, line: 55, baseType: !141, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3707, file: !3708, line: 56, baseType: !558, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3707, file: !3708, line: 58, baseType: !253, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3707, file: !3708, line: 59, baseType: !253, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3707, file: !3708, line: 60, baseType: !152, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3707, file: !3708, line: 62, baseType: !3316, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3707, file: !3708, line: 63, baseType: !3717, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!200, !3303, !3323}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3707, file: !3708, line: 65, baseType: !3721, size: 64, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3706}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3707, file: !3708, line: 66, baseType: !3325, size: 64, offset: 512)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3707, file: !3708, line: 68, baseType: !3334, size: 64, offset: 576)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3707, file: !3708, line: 70, baseType: !3119, size: 64, offset: 640)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3707, file: !3708, line: 71, baseType: !3728, size: 64, offset: 704)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!2057, !3303}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3707, file: !3708, line: 73, baseType: !3732, size: 64, offset: 768)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3303, !3151, !3152}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3707, file: !3708, line: 75, baseType: !3329, size: 64, offset: 832)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3707, file: !3708, line: 77, baseType: !3446, size: 64, offset: 896)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !134, file: !67, line: 541, baseType: !253, size: 64, offset: 5248)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !134, file: !67, line: 543, baseType: !3325, size: 64, offset: 5312)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !134, file: !67, line: 544, baseType: !3740, size: 64, offset: 5376)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !134, file: !67, line: 545, baseType: !3743, size: 64, offset: 5440)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !134, file: !67, line: 547, baseType: !415, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !134, file: !67, line: 548, baseType: !415, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !134, file: !67, line: 549, baseType: !415, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !134, file: !67, line: 550, baseType: !415, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !131, file: !94, line: 419, baseType: !3750, size: 64, offset: 5568)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3752, line: 309, size: 19264, elements: !3753)
!3752 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3753 = !{!3754, !3755, !3830, !3831, !3832, !3833, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3861, !3926, !3927, !3928, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4002, !4003, !4005, !4006, !4007, !4008, !4010, !4011, !4012, !4015, !4022, !4023, !4024, !4025, !4026, !4027, !4028}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3751, file: !3752, line: 310, baseType: !145, size: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3751, file: !3752, line: 311, baseType: !3756, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3752, line: 605, size: 8064, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3780, !3781, !3782, !3806, !3809, !3810, !3814, !3815, !3816, !3817, !3818, !3822, !3823, !3825, !3826, !3827, !3828, !3829}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3757, file: !3752, line: 606, baseType: !145, size: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3757, file: !3752, line: 607, baseType: !3756, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3757, file: !3752, line: 608, baseType: !145, size: 128, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3757, file: !3752, line: 609, baseType: !145, size: 128, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3757, file: !3752, line: 610, baseType: !3750, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3757, file: !3752, line: 611, baseType: !145, size: 128, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3757, file: !3752, line: 613, baseType: !3766, size: 256, offset: 640)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3767, size: 256, elements: !1084)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3769, line: 20, size: 512, elements: !3770)
!3769 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3770 = !{!3771, !3773, !3774, !3775, !3776, !3777, !3778, !3779}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3768, file: !3769, line: 21, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !146, line: 158, baseType: !2055)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3768, file: !3769, line: 22, baseType: !3772, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3768, file: !3769, line: 23, baseType: !141, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3768, file: !3769, line: 24, baseType: !129, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3768, file: !3769, line: 25, baseType: !129, size: 64, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3768, file: !3769, line: 26, baseType: !3767, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3768, file: !3769, line: 26, baseType: !3767, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3768, file: !3769, line: 26, baseType: !3767, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3757, file: !3752, line: 614, baseType: !145, size: 128, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !3757, file: !3752, line: 615, baseType: !3768, size: 512, offset: 1024)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3757, file: !3752, line: 617, baseType: !3783, size: 64, offset: 1536)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3752, line: 731, size: 320, elements: !3785)
!3785 = !{!3786, !3790, !3794, !3798, !3802}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !3784, file: !3752, line: 732, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!95, !3756}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !3784, file: !3752, line: 733, baseType: !3791, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{null, !3756}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !3784, file: !3752, line: 734, baseType: !3795, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!128, !3756, !7, !95}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3784, file: !3752, line: 735, baseType: !3799, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!95, !3756, !7, !95, !95, !1344}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3784, file: !3752, line: 736, baseType: !3803, size: 64, offset: 256)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!95, !3756, !7, !95, !95, !340}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3757, file: !3752, line: 618, baseType: !3807, size: 64, offset: 1600)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3752, line: 537, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3757, file: !3752, line: 619, baseType: !128, size: 64, offset: 1664)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3757, file: !3752, line: 620, baseType: !3811, size: 64, offset: 1728)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3813, line: 123, flags: DIFlagFwdDecl)
!3813 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3757, file: !3752, line: 622, baseType: !352, size: 8, offset: 1792)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3757, file: !3752, line: 623, baseType: !352, size: 8, offset: 1800)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !3757, file: !3752, line: 624, baseType: !352, size: 8, offset: 1808)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !3757, file: !3752, line: 625, baseType: !352, size: 8, offset: 1816)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3757, file: !3752, line: 630, baseType: !3819, size: 384, offset: 1824)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 384, elements: !3820)
!3820 = !{!3821}
!3821 = !DISubrange(count: 48)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !3757, file: !3752, line: 632, baseType: !242, size: 16, offset: 2208)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !3757, file: !3752, line: 633, baseType: !3824, size: 16, offset: 2224)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3752, line: 237, baseType: !242)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !3757, file: !3752, line: 634, baseType: !3303, size: 64, offset: 2240)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3757, file: !3752, line: 635, baseType: !134, size: 5568, offset: 2304)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !3757, file: !3752, line: 636, baseType: !267, size: 64, offset: 7872)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !3757, file: !3752, line: 637, baseType: !267, size: 64, offset: 7936)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !3757, file: !3752, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3751, file: !3752, line: 312, baseType: !3756, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3751, file: !3752, line: 314, baseType: !128, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3751, file: !3752, line: 315, baseType: !3811, size: 64, offset: 320)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3751, file: !3752, line: 316, baseType: !3834, size: 64, offset: 384)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3752, line: 69, size: 832, elements: !3836)
!3836 = !{!3837, !3838, !3839, !3842, !3843}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3835, file: !3752, line: 70, baseType: !3756, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3835, file: !3752, line: 71, baseType: !145, size: 128, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3835, file: !3752, line: 72, baseType: !3840, size: 64, offset: 192)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3752, line: 72, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3835, file: !3752, line: 73, baseType: !352, size: 8, offset: 256)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3835, file: !3752, line: 74, baseType: !137, size: 512, offset: 320)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3751, file: !3752, line: 318, baseType: !7, size: 32, offset: 448)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3751, file: !3752, line: 319, baseType: !242, size: 16, offset: 480)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3751, file: !3752, line: 320, baseType: !242, size: 16, offset: 496)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3751, file: !3752, line: 321, baseType: !242, size: 16, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3751, file: !3752, line: 322, baseType: !242, size: 16, offset: 528)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3751, file: !3752, line: 323, baseType: !7, size: 32, offset: 544)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3751, file: !3752, line: 324, baseType: !1281, size: 8, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3751, file: !3752, line: 325, baseType: !1281, size: 8, offset: 584)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3751, file: !3752, line: 330, baseType: !1281, size: 8, offset: 592)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3751, file: !3752, line: 331, baseType: !1281, size: 8, offset: 600)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3751, file: !3752, line: 332, baseType: !1281, size: 8, offset: 608)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3751, file: !3752, line: 333, baseType: !1281, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3751, file: !3752, line: 334, baseType: !1281, size: 8, offset: 624)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3751, file: !3752, line: 335, baseType: !1281, size: 8, offset: 632)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3751, file: !3752, line: 336, baseType: !788, size: 16, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3751, file: !3752, line: 337, baseType: !3860, size: 64, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3751, file: !3752, line: 339, baseType: !3862, size: 64, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3752, line: 858, size: 2048, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3879, !3883, !3887, !3891, !3895, !3896, !3900, !3919, !3920, !3921}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3863, file: !3752, line: 859, baseType: !145, size: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3863, file: !3752, line: 860, baseType: !141, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3863, file: !3752, line: 861, baseType: !3868, size: 64, offset: 192)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3870)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3387, line: 38, size: 256, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3870, file: !3387, line: 39, baseType: !342, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3870, file: !3387, line: 39, baseType: !342, size: 32, offset: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3870, file: !3387, line: 40, baseType: !342, size: 32, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3870, file: !3387, line: 40, baseType: !342, size: 32, offset: 96)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3870, file: !3387, line: 41, baseType: !342, size: 32, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3870, file: !3387, line: 41, baseType: !342, size: 32, offset: 160)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3870, file: !3387, line: 42, baseType: !3406, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3863, file: !3752, line: 862, baseType: !3880, size: 64, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!95, !3750, !3868}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3863, file: !3752, line: 863, baseType: !3884, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !3750}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3863, file: !3752, line: 864, baseType: !3888, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!95, !3750, !3417}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3863, file: !3752, line: 865, baseType: !3892, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!95, !3750}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3863, file: !3752, line: 866, baseType: !3884, size: 64, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3863, file: !3752, line: 867, baseType: !3897, size: 64, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!95, !3750, !95}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3863, file: !3752, line: 868, baseType: !3901, size: 64, offset: 640)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3903)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3752, line: 795, size: 384, elements: !3904)
!3904 = !{!3905, !3911, !3915, !3916, !3917, !3918}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3903, file: !3752, line: 797, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!3909, !3750, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3752, line: 772, baseType: !7)
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3752, line: 180, baseType: !7)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3903, file: !3752, line: 801, baseType: !3912, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!3909, !3750}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3903, file: !3752, line: 804, baseType: !3912, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3903, file: !3752, line: 807, baseType: !3884, size: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3903, file: !3752, line: 808, baseType: !3884, size: 64, offset: 256)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3903, file: !3752, line: 811, baseType: !3884, size: 64, offset: 320)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3863, file: !3752, line: 869, baseType: !253, size: 64, offset: 704)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3863, file: !3752, line: 870, baseType: !3375, size: 1152, offset: 768)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3863, file: !3752, line: 871, baseType: !3922, size: 128, offset: 1920)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3752, line: 759, size: 128, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3922, file: !3752, line: 760, baseType: !159)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3922, file: !3752, line: 761, baseType: !145, size: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3751, file: !3752, line: 340, baseType: !346, size: 64, offset: 832)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3751, file: !3752, line: 346, baseType: !3599, size: 128, offset: 896)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3751, file: !3752, line: 348, baseType: !3929, size: 32, offset: 1024)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3752, line: 155, baseType: !95)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3751, file: !3752, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3751, file: !3752, line: 352, baseType: !1281, size: 8, offset: 1064)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3751, file: !3752, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3751, file: !3752, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3751, file: !3752, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3751, file: !3752, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3751, file: !3752, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3751, file: !3752, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3751, file: !3752, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3751, file: !3752, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3751, file: !3752, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3751, file: !3752, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3751, file: !3752, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3751, file: !3752, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3751, file: !3752, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3751, file: !3752, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3751, file: !3752, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3751, file: !3752, line: 376, baseType: !7, size: 32, offset: 1120)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3751, file: !3752, line: 377, baseType: !7, size: 32, offset: 1152)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3751, file: !3752, line: 380, baseType: !3950, size: 64, offset: 1216)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3752, line: 303, flags: DIFlagFwdDecl)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3751, file: !3752, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3751, file: !3752, line: 383, baseType: !95, size: 32, offset: 1312)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3751, file: !3752, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3751, file: !3752, line: 387, baseType: !3910, size: 32, offset: 1376)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3751, file: !3752, line: 388, baseType: !134, size: 5568, offset: 1408)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3751, file: !3752, line: 390, baseType: !95, size: 32, offset: 6976)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3751, file: !3752, line: 396, baseType: !7, size: 32, offset: 7008)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3751, file: !3752, line: 397, baseType: !3960, size: 8704, offset: 7040)
!3960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3768, size: 8704, elements: !3961)
!3961 = !{!3962}
!3962 = !DISubrange(count: 17)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3751, file: !3752, line: 399, baseType: !415, size: 8, offset: 15744)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3751, file: !3752, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3751, file: !3752, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3751, file: !3752, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3751, file: !3752, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3751, file: !3752, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3751, file: !3752, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3751, file: !3752, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3751, file: !3752, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3751, file: !3752, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3751, file: !3752, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3751, file: !3752, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3751, file: !3752, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3751, file: !3752, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3751, file: !3752, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3751, file: !3752, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3751, file: !3752, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3751, file: !3752, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3751, file: !3752, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3751, file: !3752, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3751, file: !3752, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3751, file: !3752, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3751, file: !3752, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3751, file: !3752, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3751, file: !3752, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3751, file: !3752, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3751, file: !3752, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3751, file: !3752, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3751, file: !3752, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3751, file: !3752, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3751, file: !3752, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3751, file: !3752, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3751, file: !3752, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3751, file: !3752, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3751, file: !3752, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3751, file: !3752, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3751, file: !3752, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3751, file: !3752, line: 450, baseType: !4001, size: 16, offset: 15792)
!4001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3752, line: 206, baseType: !242)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3751, file: !3752, line: 451, baseType: !676, size: 32, offset: 15808)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3751, file: !3752, line: 453, baseType: !4004, size: 512, offset: 15840)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 512, elements: !1664)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3751, file: !3752, line: 454, baseType: !563, size: 64, offset: 16384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3751, file: !3752, line: 455, baseType: !267, size: 64, offset: 16448)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3751, file: !3752, line: 456, baseType: !95, size: 32, offset: 16512)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3751, file: !3752, line: 457, baseType: !4009, size: 1088, offset: 16576)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 1088, elements: !3961)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3751, file: !3752, line: 458, baseType: !4009, size: 1088, offset: 17664)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3751, file: !3752, line: 469, baseType: !253, size: 64, offset: 18752)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3751, file: !3752, line: 471, baseType: !4013, size: 64, offset: 18816)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3752, line: 304, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, scope: !3751, file: !3752, line: 478, baseType: !4016, size: 64, offset: 18880)
!4016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3751, file: !3752, line: 478, size: 64, elements: !4017)
!4017 = !{!4018, !4021}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4016, file: !3752, line: 479, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3752, line: 305, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4016, file: !3752, line: 480, baseType: !3750, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3751, file: !3752, line: 482, baseType: !788, size: 16, offset: 18944)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3751, file: !3752, line: 483, baseType: !1281, size: 8, offset: 18960)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3751, file: !3752, line: 497, baseType: !788, size: 16, offset: 18976)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3751, file: !3752, line: 498, baseType: !2055, size: 64, offset: 19008)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3751, file: !3752, line: 499, baseType: !247, size: 64, offset: 19072)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3751, file: !3752, line: 500, baseType: !200, size: 64, offset: 19136)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3751, file: !3752, line: 502, baseType: !129, size: 64, offset: 19200)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "topo", scope: !131, file: !94, line: 420, baseType: !93, size: 32, offset: 5632)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !131, file: !94, line: 421, baseType: !4031, size: 64, offset: 5696)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ntb_dev_ops", file: !94, line: 260, size: 3072, elements: !4034)
!4034 = !{!4035, !4039, !4040, !4044, !4045, !4051, !4055, !4056, !4057, !4062, !4066, !4070, !4071, !4076, !4080, !4081, !4082, !4086, !4087, !4091, !4092, !4096, !4097, !4098, !4099, !4100, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4116, !4120, !4124, !4128, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4143}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "port_number", scope: !4033, file: !94, line: 261, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!95, !130}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "peer_port_count", scope: !4033, file: !94, line: 262, baseType: !4036, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "peer_port_number", scope: !4033, file: !94, line: 263, baseType: !4041, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!95, !130, !95}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "peer_port_idx", scope: !4033, file: !94, line: 264, baseType: !4041, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "link_is_up", scope: !4033, file: !94, line: 266, baseType: !4046, size: 64, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!346, !130, !4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "link_enable", scope: !4033, file: !94, line: 268, baseType: !4052, size: 64, offset: 320)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!95, !130, !104, !112}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "link_disable", scope: !4033, file: !94, line: 270, baseType: !4036, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "mw_count", scope: !4033, file: !94, line: 272, baseType: !4041, size: 64, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "mw_get_align", scope: !4033, file: !94, line: 273, baseType: !4058, size: 64, offset: 512)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!95, !130, !95, !95, !4061, !4061, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "mw_set_trans", scope: !4033, file: !94, line: 277, baseType: !4063, size: 64, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!95, !130, !95, !95, !849, !3772}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "mw_clear_trans", scope: !4033, file: !94, line: 279, baseType: !4067, size: 64, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!95, !130, !95, !95}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "peer_mw_count", scope: !4033, file: !94, line: 280, baseType: !4036, size: 64, offset: 704)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "peer_mw_get_addr", scope: !4033, file: !94, line: 281, baseType: !4072, size: 64, offset: 768)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!95, !130, !95, !4075, !4061}
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "peer_mw_set_trans", scope: !4033, file: !94, line: 283, baseType: !4077, size: 64, offset: 832)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!95, !130, !95, !95, !346, !3772}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "peer_mw_clear_trans", scope: !4033, file: !94, line: 285, baseType: !4067, size: 64, offset: 896)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "db_is_unsafe", scope: !4033, file: !94, line: 287, baseType: !4036, size: 64, offset: 960)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "db_valid_mask", scope: !4033, file: !94, line: 288, baseType: !4083, size: 64, offset: 1024)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!346, !130}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "db_vector_count", scope: !4033, file: !94, line: 289, baseType: !4036, size: 64, offset: 1088)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "db_vector_mask", scope: !4033, file: !94, line: 290, baseType: !4088, size: 64, offset: 1152)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!346, !130, !95}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "db_read", scope: !4033, file: !94, line: 292, baseType: !4083, size: 64, offset: 1216)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "db_set", scope: !4033, file: !94, line: 293, baseType: !4093, size: 64, offset: 1280)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!95, !130, !346}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "db_clear", scope: !4033, file: !94, line: 294, baseType: !4093, size: 64, offset: 1344)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "db_read_mask", scope: !4033, file: !94, line: 296, baseType: !4083, size: 64, offset: 1408)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "db_set_mask", scope: !4033, file: !94, line: 297, baseType: !4093, size: 64, offset: 1472)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "db_clear_mask", scope: !4033, file: !94, line: 298, baseType: !4093, size: 64, offset: 1536)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "peer_db_addr", scope: !4033, file: !94, line: 300, baseType: !4101, size: 64, offset: 1600)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!95, !130, !4075, !4061, !3590, !95}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "peer_db_read", scope: !4033, file: !94, line: 303, baseType: !4083, size: 64, offset: 1664)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "peer_db_set", scope: !4033, file: !94, line: 304, baseType: !4093, size: 64, offset: 1728)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "peer_db_clear", scope: !4033, file: !94, line: 305, baseType: !4093, size: 64, offset: 1792)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "peer_db_read_mask", scope: !4033, file: !94, line: 307, baseType: !4083, size: 64, offset: 1856)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "peer_db_set_mask", scope: !4033, file: !94, line: 308, baseType: !4093, size: 64, offset: 1920)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "peer_db_clear_mask", scope: !4033, file: !94, line: 309, baseType: !4093, size: 64, offset: 1984)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "spad_is_unsafe", scope: !4033, file: !94, line: 311, baseType: !4036, size: 64, offset: 2048)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "spad_count", scope: !4033, file: !94, line: 312, baseType: !4036, size: 64, offset: 2112)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "spad_read", scope: !4033, file: !94, line: 314, baseType: !4113, size: 64, offset: 2176)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!340, !130, !95}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "spad_write", scope: !4033, file: !94, line: 315, baseType: !4117, size: 64, offset: 2240)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!95, !130, !95, !340}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "peer_spad_addr", scope: !4033, file: !94, line: 317, baseType: !4121, size: 64, offset: 2304)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!95, !130, !95, !95, !4075}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "peer_spad_read", scope: !4033, file: !94, line: 319, baseType: !4125, size: 64, offset: 2368)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!340, !130, !95, !95}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "peer_spad_write", scope: !4033, file: !94, line: 320, baseType: !4129, size: 64, offset: 2432)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!95, !130, !95, !95, !340}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count", scope: !4033, file: !94, line: 323, baseType: !4036, size: 64, offset: 2496)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "msg_inbits", scope: !4033, file: !94, line: 324, baseType: !4083, size: 64, offset: 2560)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "msg_outbits", scope: !4033, file: !94, line: 325, baseType: !4083, size: 64, offset: 2624)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "msg_read_sts", scope: !4033, file: !94, line: 326, baseType: !4083, size: 64, offset: 2688)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "msg_clear_sts", scope: !4033, file: !94, line: 327, baseType: !4093, size: 64, offset: 2752)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "msg_set_mask", scope: !4033, file: !94, line: 328, baseType: !4093, size: 64, offset: 2816)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "msg_clear_mask", scope: !4033, file: !94, line: 329, baseType: !4093, size: 64, offset: 2880)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "msg_read", scope: !4033, file: !94, line: 330, baseType: !4140, size: 64, offset: 2944)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!340, !130, !633, !95}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "peer_msg_write", scope: !4033, file: !94, line: 331, baseType: !4129, size: 64, offset: 3008)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !131, file: !94, line: 422, baseType: !128, size: 64, offset: 5760)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_ops", scope: !131, file: !94, line: 423, baseType: !4146, size: 64, offset: 5824)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4148)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ntb_ctx_ops", file: !94, line: 193, size: 192, elements: !4149)
!4149 = !{!4150, !4151, !4155}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "link_event", scope: !4148, file: !94, line: 194, baseType: !393, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "db_event", scope: !4148, file: !94, line: 195, baseType: !4152, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{null, !128, !95}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "msg_event", scope: !4148, file: !94, line: 196, baseType: !393, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_lock", scope: !131, file: !94, line: 428, baseType: !159, offset: 5888)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !131, file: !94, line: 430, baseType: !1431, size: 192, offset: 5888)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ntb_client", file: !94, line: 402, size: 1280, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4159, file: !94, line: 403, baseType: !3375, size: 1152)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4159, file: !94, line: 404, baseType: !4163, size: 128, offset: 1152)
!4163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4164)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ntb_client_ops", file: !94, line: 173, size: 128, elements: !4165)
!4165 = !{!4166, !4170}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4164, file: !94, line: 174, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!95, !4158, !130}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4164, file: !94, line: 175, baseType: !4171, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !4158, !130}
!4174 = !{!0, !4175, !4180, !4183, !4228, !4233, !4238, !4240, !4245, !4247, !4252}
!4175 = !DIGlobalVariableExpression(var: !4176, expr: !DIExpression())
!4176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license235", scope: !2, file: !3, line: 70, type: !4177, isLocal: true, isDefinition: true, align: 8)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 200, elements: !4178)
!4178 = !{!4179}
!4179 = !DISubrange(count: 25)
!4180 = !DIGlobalVariableExpression(var: !4181, expr: !DIExpression())
!4181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_version236", scope: !2, file: !3, line: 71, type: !4182, isLocal: true, isDefinition: true, align: 8)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !1664)
!4183 = !DIGlobalVariableExpression(var: !4184, expr: !DIExpression())
!4184 = distinct !DIGlobalVariable(name: "__modver_attr", scope: !2, file: !3, line: 71, type: !4185, isLocal: true, isDefinition: true)
!4185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4186)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4188)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_version_attribute", file: !4189, line: 65, size: 576, align: 64, elements: !4190)
!4189 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!4190 = !{!4191, !4226, !4227}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "mattr", scope: !4188, file: !4189, line: 66, baseType: !4192, size: 448)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !4189, line: 54, size: 448, elements: !4193)
!4193 = !{!4194, !4195, !4210, !4214, !4218, !4222}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4192, file: !4189, line: 55, baseType: !237, size: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4192, file: !4189, line: 56, baseType: !4196, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!231, !4199, !4200, !200}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !4189, line: 46, size: 768, elements: !4202)
!4202 = !{!4203, !4204, !4205, !4206, !4209}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4201, file: !4189, line: 47, baseType: !137, size: 512)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4201, file: !4189, line: 48, baseType: !558, size: 64, offset: 512)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !4201, file: !4189, line: 49, baseType: !152, size: 64, offset: 576)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !4201, file: !4189, line: 50, baseType: !4207, size: 64, offset: 640)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !4189, line: 50, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !4201, file: !4189, line: 51, baseType: !1430, size: 64, offset: 704)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4192, file: !4189, line: 58, baseType: !4211, size: 64, offset: 192)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!231, !4199, !4200, !141, !247}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4192, file: !4189, line: 60, baseType: !4215, size: 64, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !558, !141}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4192, file: !4189, line: 61, baseType: !4219, size: 64, offset: 320)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!95, !558}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4192, file: !4189, line: 62, baseType: !4223, size: 64, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{null, !558}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "module_name", scope: !4188, file: !4189, line: 67, baseType: !141, size: 64, offset: 448)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4188, file: !4189, line: 68, baseType: !141, size: 64, offset: 512)
!4228 = !DIGlobalVariableExpression(var: !4229, expr: !DIExpression())
!4229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author237", scope: !2, file: !3, line: 72, type: !4230, isLocal: true, isDefinition: true, align: 8)
!4230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 360, elements: !4231)
!4231 = !{!4232}
!4232 = !DISubrange(count: 45)
!4233 = !DIGlobalVariableExpression(var: !4234, expr: !DIExpression())
!4234 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description238", scope: !2, file: !3, line: 73, type: !4235, isLocal: true, isDefinition: true, align: 8)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 336, elements: !4236)
!4236 = !{!4237}
!4237 = !DISubrange(count: 42)
!4238 = !DIGlobalVariableExpression(var: !4239, expr: !DIExpression())
!4239 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ntb_driver_init244", scope: !2, file: !3, line: 307, type: !128, isLocal: true, isDefinition: true)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(name: "__exitcall_ntb_driver_exit", scope: !2, file: !3, line: 313, type: !4242, isLocal: true, isDefinition: true)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4243, line: 117, baseType: !4244)
!4243 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!4245 = !DIGlobalVariableExpression(var: !4246, expr: !DIExpression())
!4246 = distinct !DIGlobalVariable(name: "___modver_attr", scope: !2, file: !3, line: 71, type: !4188, isLocal: true, isDefinition: true)
!4247 = !DIGlobalVariableExpression(var: !4248, expr: !DIExpression())
!4248 = distinct !DIGlobalVariable(name: "__key", scope: !4249, file: !1432, line: 88, type: !573, isLocal: true, isDefinition: true)
!4249 = distinct !DISubprogram(name: "__init_completion", scope: !1432, file: !1432, line: 85, type: !4250, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !1430}
!4252 = !DIGlobalVariableExpression(var: !4253, expr: !DIExpression())
!4253 = distinct !DIGlobalVariable(name: "ntb_bus", scope: !2, file: !3, line: 297, type: !3361, isLocal: true, isDefinition: true)
!4254 = !{!"rsp"}
!4255 = !{i32 7, !"Dwarf Version", i32 4}
!4256 = !{i32 2, !"Debug Info Version", i32 3}
!4257 = !{i32 1, !"wchar_size", i32 2}
!4258 = !{i32 1, !"Code Model", i32 2}
!4259 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4260 = distinct !DISubprogram(name: "__ntb_register_client", scope: !3, file: !3, line: 78, type: !4261, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!95, !4158, !558, !141}
!4263 = !DILocalVariable(name: "client", arg: 1, scope: !4260, file: !3, line: 78, type: !4158)
!4264 = !DILocation(line: 78, column: 46, scope: !4260)
!4265 = !DILocalVariable(name: "mod", arg: 2, scope: !4260, file: !3, line: 78, type: !558)
!4266 = !DILocation(line: 78, column: 69, scope: !4260)
!4267 = !DILocalVariable(name: "mod_name", arg: 3, scope: !4260, file: !3, line: 79, type: !141)
!4268 = !DILocation(line: 79, column: 18, scope: !4260)
!4269 = !DILocation(line: 81, column: 7, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 81, column: 6)
!4271 = !DILocation(line: 81, column: 6, scope: !4260)
!4272 = !DILocation(line: 82, column: 3, scope: !4270)
!4273 = !DILocation(line: 83, column: 32, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 83, column: 6)
!4275 = !DILocation(line: 83, column: 40, scope: !4274)
!4276 = !DILocation(line: 83, column: 7, scope: !4274)
!4277 = !DILocation(line: 83, column: 6, scope: !4260)
!4278 = !DILocation(line: 84, column: 3, scope: !4274)
!4279 = !DILocation(line: 86, column: 10, scope: !4260)
!4280 = !DILocation(line: 86, column: 18, scope: !4260)
!4281 = !DILocation(line: 86, column: 2, scope: !4260)
!4282 = !DILocation(line: 87, column: 2, scope: !4260)
!4283 = !DILocation(line: 87, column: 10, scope: !4260)
!4284 = !DILocation(line: 87, column: 14, scope: !4260)
!4285 = !DILocation(line: 87, column: 18, scope: !4260)
!4286 = !DILocation(line: 88, column: 21, scope: !4260)
!4287 = !DILocation(line: 88, column: 2, scope: !4260)
!4288 = !DILocation(line: 88, column: 10, scope: !4260)
!4289 = !DILocation(line: 88, column: 14, scope: !4260)
!4290 = !DILocation(line: 88, column: 19, scope: !4260)
!4291 = !DILocation(line: 89, column: 22, scope: !4260)
!4292 = !DILocation(line: 89, column: 2, scope: !4260)
!4293 = !DILocation(line: 89, column: 10, scope: !4260)
!4294 = !DILocation(line: 89, column: 14, scope: !4260)
!4295 = !DILocation(line: 89, column: 20, scope: !4260)
!4296 = !DILocation(line: 91, column: 26, scope: !4260)
!4297 = !DILocation(line: 91, column: 34, scope: !4260)
!4298 = !DILocation(line: 91, column: 9, scope: !4260)
!4299 = !DILocation(line: 91, column: 2, scope: !4260)
!4300 = !DILocation(line: 92, column: 1, scope: !4260)
!4301 = distinct !DISubprogram(name: "ntb_client_ops_is_valid", scope: !94, file: !94, line: 178, type: !4302, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!95, !4304}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4305 = !DILocalVariable(name: "ops", arg: 1, scope: !4301, file: !94, line: 178, type: !4304)
!4306 = !DILocation(line: 178, column: 72, scope: !4301)
!4307 = !DILocation(line: 182, column: 3, scope: !4301)
!4308 = !DILocation(line: 182, column: 8, scope: !4301)
!4309 = !DILocation(line: 182, column: 16, scope: !4301)
!4310 = !DILocation(line: 183, column: 3, scope: !4301)
!4311 = !DILocation(line: 183, column: 8, scope: !4301)
!4312 = !DILocation(line: 183, column: 17, scope: !4301)
!4313 = !DILocation(line: 0, scope: !4301)
!4314 = !DILocation(line: 181, column: 2, scope: !4301)
!4315 = distinct !DISubprogram(name: "ntb_unregister_client", scope: !3, file: !3, line: 95, type: !4316, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !4158}
!4318 = !DILocalVariable(name: "client", arg: 1, scope: !4315, file: !3, line: 95, type: !4158)
!4319 = !DILocation(line: 95, column: 47, scope: !4315)
!4320 = !DILocation(line: 97, column: 21, scope: !4315)
!4321 = !DILocation(line: 97, column: 29, scope: !4315)
!4322 = !DILocation(line: 97, column: 2, scope: !4315)
!4323 = !DILocation(line: 98, column: 1, scope: !4315)
!4324 = distinct !DISubprogram(name: "ntb_register_device", scope: !3, file: !3, line: 101, type: !4037, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4325 = !DILocalVariable(name: "lock", arg: 1, scope: !4326, file: !4327, line: 327, type: !993)
!4326 = distinct !DISubprogram(name: "spinlock_check", scope: !4327, file: !4327, line: 327, type: !4328, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4327 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!4330, !993}
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!4331 = !DILocation(line: 327, column: 67, scope: !4326, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 121, column: 2, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 121, column: 2)
!4334 = !DILocalVariable(name: "ntb", arg: 1, scope: !4324, file: !3, line: 101, type: !130)
!4335 = !DILocation(line: 101, column: 41, scope: !4324)
!4336 = !DILocation(line: 103, column: 7, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 103, column: 6)
!4338 = !DILocation(line: 103, column: 6, scope: !4324)
!4339 = !DILocation(line: 104, column: 3, scope: !4337)
!4340 = !DILocation(line: 105, column: 7, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 105, column: 6)
!4342 = !DILocation(line: 105, column: 12, scope: !4341)
!4343 = !DILocation(line: 105, column: 6, scope: !4324)
!4344 = !DILocation(line: 106, column: 3, scope: !4341)
!4345 = !DILocation(line: 107, column: 7, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 107, column: 6)
!4347 = !DILocation(line: 107, column: 12, scope: !4346)
!4348 = !DILocation(line: 107, column: 6, scope: !4324)
!4349 = !DILocation(line: 108, column: 3, scope: !4346)
!4350 = !DILocation(line: 109, column: 28, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 109, column: 6)
!4352 = !DILocation(line: 109, column: 33, scope: !4351)
!4353 = !DILocation(line: 109, column: 7, scope: !4351)
!4354 = !DILocation(line: 109, column: 6, scope: !4324)
!4355 = !DILocation(line: 110, column: 3, scope: !4351)
!4356 = !DILocation(line: 112, column: 2, scope: !4324)
!4357 = !DILocation(line: 114, column: 2, scope: !4324)
!4358 = !DILocation(line: 114, column: 7, scope: !4324)
!4359 = !DILocation(line: 114, column: 11, scope: !4324)
!4360 = !DILocation(line: 114, column: 15, scope: !4324)
!4361 = !DILocation(line: 115, column: 21, scope: !4324)
!4362 = !DILocation(line: 115, column: 26, scope: !4324)
!4363 = !DILocation(line: 115, column: 32, scope: !4324)
!4364 = !DILocation(line: 115, column: 2, scope: !4324)
!4365 = !DILocation(line: 115, column: 7, scope: !4324)
!4366 = !DILocation(line: 115, column: 11, scope: !4324)
!4367 = !DILocation(line: 115, column: 18, scope: !4324)
!4368 = !DILocation(line: 116, column: 2, scope: !4324)
!4369 = !DILocation(line: 116, column: 7, scope: !4324)
!4370 = !DILocation(line: 116, column: 11, scope: !4324)
!4371 = !DILocation(line: 116, column: 19, scope: !4324)
!4372 = !DILocation(line: 117, column: 16, scope: !4324)
!4373 = !DILocation(line: 117, column: 21, scope: !4324)
!4374 = !DILocation(line: 117, column: 41, scope: !4324)
!4375 = !DILocation(line: 117, column: 46, scope: !4324)
!4376 = !DILocation(line: 117, column: 32, scope: !4324)
!4377 = !DILocation(line: 117, column: 2, scope: !4324)
!4378 = !DILocation(line: 119, column: 2, scope: !4324)
!4379 = !DILocation(line: 119, column: 7, scope: !4324)
!4380 = !DILocation(line: 119, column: 11, scope: !4324)
!4381 = !DILocation(line: 120, column: 2, scope: !4324)
!4382 = !DILocation(line: 120, column: 7, scope: !4324)
!4383 = !DILocation(line: 120, column: 15, scope: !4324)
!4384 = !DILocation(line: 121, column: 2, scope: !4324)
!4385 = !DILocation(line: 121, column: 2, scope: !4333)
!4386 = !DILocation(line: 329, column: 10, scope: !4326, inlinedAt: !4332)
!4387 = !DILocation(line: 329, column: 16, scope: !4326, inlinedAt: !4332)
!4388 = !DILocation(line: 123, column: 26, scope: !4324)
!4389 = !DILocation(line: 123, column: 31, scope: !4324)
!4390 = !DILocation(line: 123, column: 9, scope: !4324)
!4391 = !DILocation(line: 123, column: 2, scope: !4324)
!4392 = !DILocation(line: 124, column: 1, scope: !4324)
!4393 = distinct !DISubprogram(name: "ntb_dev_ops_is_valid", scope: !94, file: !94, line: 334, type: !4394, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!95, !4031}
!4396 = !DILocalVariable(name: "ops", arg: 1, scope: !4393, file: !94, line: 334, type: !4031)
!4397 = !DILocation(line: 334, column: 66, scope: !4393)
!4398 = !DILocation(line: 339, column: 4, scope: !4393)
!4399 = !DILocation(line: 339, column: 9, scope: !4393)
!4400 = !DILocation(line: 339, column: 3, scope: !4393)
!4401 = !DILocation(line: 339, column: 29, scope: !4393)
!4402 = !DILocation(line: 339, column: 34, scope: !4393)
!4403 = !DILocation(line: 339, column: 28, scope: !4393)
!4404 = !DILocation(line: 339, column: 25, scope: !4393)
!4405 = !DILocation(line: 339, column: 46, scope: !4393)
!4406 = !DILocation(line: 340, column: 4, scope: !4393)
!4407 = !DILocation(line: 340, column: 9, scope: !4393)
!4408 = !DILocation(line: 340, column: 3, scope: !4393)
!4409 = !DILocation(line: 340, column: 30, scope: !4393)
!4410 = !DILocation(line: 340, column: 35, scope: !4393)
!4411 = !DILocation(line: 340, column: 29, scope: !4393)
!4412 = !DILocation(line: 340, column: 26, scope: !4393)
!4413 = !DILocation(line: 340, column: 47, scope: !4393)
!4414 = !DILocation(line: 341, column: 4, scope: !4393)
!4415 = !DILocation(line: 341, column: 9, scope: !4393)
!4416 = !DILocation(line: 341, column: 3, scope: !4393)
!4417 = !DILocation(line: 341, column: 27, scope: !4393)
!4418 = !DILocation(line: 341, column: 32, scope: !4393)
!4419 = !DILocation(line: 341, column: 26, scope: !4393)
!4420 = !DILocation(line: 341, column: 23, scope: !4393)
!4421 = !DILocation(line: 341, column: 44, scope: !4393)
!4422 = !DILocation(line: 344, column: 3, scope: !4393)
!4423 = !DILocation(line: 344, column: 8, scope: !4393)
!4424 = !DILocation(line: 344, column: 22, scope: !4393)
!4425 = !DILocation(line: 345, column: 3, scope: !4393)
!4426 = !DILocation(line: 345, column: 8, scope: !4393)
!4427 = !DILocation(line: 345, column: 22, scope: !4393)
!4428 = !DILocation(line: 346, column: 3, scope: !4393)
!4429 = !DILocation(line: 346, column: 8, scope: !4393)
!4430 = !DILocation(line: 346, column: 23, scope: !4393)
!4431 = !DILocation(line: 349, column: 3, scope: !4393)
!4432 = !DILocation(line: 349, column: 8, scope: !4393)
!4433 = !DILocation(line: 349, column: 20, scope: !4393)
!4434 = !DILocation(line: 350, column: 3, scope: !4393)
!4435 = !DILocation(line: 350, column: 8, scope: !4393)
!4436 = !DILocation(line: 350, column: 23, scope: !4393)
!4437 = !DILocation(line: 351, column: 4, scope: !4393)
!4438 = !DILocation(line: 351, column: 9, scope: !4393)
!4439 = !DILocation(line: 351, column: 24, scope: !4393)
!4440 = !DILocation(line: 352, column: 4, scope: !4393)
!4441 = !DILocation(line: 352, column: 9, scope: !4393)
!4442 = !DILocation(line: 352, column: 29, scope: !4393)
!4443 = !DILocation(line: 354, column: 3, scope: !4393)
!4444 = !DILocation(line: 354, column: 8, scope: !4393)
!4445 = !DILocation(line: 354, column: 24, scope: !4393)
!4446 = !DILocation(line: 355, column: 3, scope: !4393)
!4447 = !DILocation(line: 355, column: 8, scope: !4393)
!4448 = !DILocation(line: 355, column: 27, scope: !4393)
!4449 = !DILocation(line: 360, column: 3, scope: !4393)
!4450 = !DILocation(line: 360, column: 8, scope: !4393)
!4451 = !DILocation(line: 360, column: 24, scope: !4393)
!4452 = !DILocation(line: 362, column: 5, scope: !4393)
!4453 = !DILocation(line: 362, column: 10, scope: !4393)
!4454 = !DILocation(line: 362, column: 4, scope: !4393)
!4455 = !DILocation(line: 362, column: 30, scope: !4393)
!4456 = !DILocation(line: 362, column: 35, scope: !4393)
!4457 = !DILocation(line: 362, column: 29, scope: !4393)
!4458 = !DILocation(line: 362, column: 26, scope: !4393)
!4459 = !DILocation(line: 362, column: 51, scope: !4393)
!4460 = !DILocation(line: 363, column: 3, scope: !4393)
!4461 = !DILocation(line: 363, column: 8, scope: !4393)
!4462 = !DILocation(line: 363, column: 19, scope: !4393)
!4463 = !DILocation(line: 365, column: 3, scope: !4393)
!4464 = !DILocation(line: 365, column: 8, scope: !4393)
!4465 = !DILocation(line: 365, column: 20, scope: !4393)
!4466 = !DILocation(line: 367, column: 3, scope: !4393)
!4467 = !DILocation(line: 367, column: 8, scope: !4393)
!4468 = !DILocation(line: 367, column: 22, scope: !4393)
!4469 = !DILocation(line: 368, column: 3, scope: !4393)
!4470 = !DILocation(line: 368, column: 8, scope: !4393)
!4471 = !DILocation(line: 368, column: 24, scope: !4393)
!4472 = !DILocation(line: 371, column: 3, scope: !4393)
!4473 = !DILocation(line: 371, column: 8, scope: !4393)
!4474 = !DILocation(line: 371, column: 22, scope: !4393)
!4475 = !DILocation(line: 379, column: 4, scope: !4393)
!4476 = !DILocation(line: 379, column: 9, scope: !4393)
!4477 = !DILocation(line: 379, column: 3, scope: !4393)
!4478 = !DILocation(line: 379, column: 23, scope: !4393)
!4479 = !DILocation(line: 379, column: 28, scope: !4393)
!4480 = !DILocation(line: 379, column: 22, scope: !4393)
!4481 = !DILocation(line: 379, column: 19, scope: !4393)
!4482 = !DILocation(line: 379, column: 40, scope: !4393)
!4483 = !DILocation(line: 380, column: 4, scope: !4393)
!4484 = !DILocation(line: 380, column: 9, scope: !4393)
!4485 = !DILocation(line: 380, column: 3, scope: !4393)
!4486 = !DILocation(line: 380, column: 24, scope: !4393)
!4487 = !DILocation(line: 380, column: 29, scope: !4393)
!4488 = !DILocation(line: 380, column: 23, scope: !4393)
!4489 = !DILocation(line: 380, column: 20, scope: !4393)
!4490 = !DILocation(line: 380, column: 41, scope: !4393)
!4491 = !DILocation(line: 383, column: 4, scope: !4393)
!4492 = !DILocation(line: 383, column: 9, scope: !4393)
!4493 = !DILocation(line: 383, column: 3, scope: !4393)
!4494 = !DILocation(line: 383, column: 29, scope: !4393)
!4495 = !DILocation(line: 383, column: 34, scope: !4393)
!4496 = !DILocation(line: 383, column: 28, scope: !4393)
!4497 = !DILocation(line: 383, column: 25, scope: !4393)
!4498 = !DILocation(line: 383, column: 45, scope: !4393)
!4499 = !DILocation(line: 386, column: 4, scope: !4393)
!4500 = !DILocation(line: 386, column: 9, scope: !4393)
!4501 = !DILocation(line: 386, column: 3, scope: !4393)
!4502 = !DILocation(line: 386, column: 24, scope: !4393)
!4503 = !DILocation(line: 386, column: 29, scope: !4393)
!4504 = !DILocation(line: 386, column: 23, scope: !4393)
!4505 = !DILocation(line: 386, column: 20, scope: !4393)
!4506 = !DILocation(line: 386, column: 40, scope: !4393)
!4507 = !DILocation(line: 387, column: 4, scope: !4393)
!4508 = !DILocation(line: 387, column: 9, scope: !4393)
!4509 = !DILocation(line: 387, column: 3, scope: !4393)
!4510 = !DILocation(line: 387, column: 25, scope: !4393)
!4511 = !DILocation(line: 387, column: 30, scope: !4393)
!4512 = !DILocation(line: 387, column: 24, scope: !4393)
!4513 = !DILocation(line: 387, column: 21, scope: !4393)
!4514 = !DILocation(line: 387, column: 41, scope: !4393)
!4515 = !DILocation(line: 388, column: 4, scope: !4393)
!4516 = !DILocation(line: 388, column: 9, scope: !4393)
!4517 = !DILocation(line: 388, column: 3, scope: !4393)
!4518 = !DILocation(line: 388, column: 26, scope: !4393)
!4519 = !DILocation(line: 388, column: 31, scope: !4393)
!4520 = !DILocation(line: 388, column: 25, scope: !4393)
!4521 = !DILocation(line: 388, column: 22, scope: !4393)
!4522 = !DILocation(line: 388, column: 42, scope: !4393)
!4523 = !DILocation(line: 389, column: 4, scope: !4393)
!4524 = !DILocation(line: 389, column: 9, scope: !4393)
!4525 = !DILocation(line: 389, column: 3, scope: !4393)
!4526 = !DILocation(line: 389, column: 27, scope: !4393)
!4527 = !DILocation(line: 389, column: 32, scope: !4393)
!4528 = !DILocation(line: 389, column: 26, scope: !4393)
!4529 = !DILocation(line: 389, column: 23, scope: !4393)
!4530 = !DILocation(line: 389, column: 43, scope: !4393)
!4531 = !DILocation(line: 392, column: 4, scope: !4393)
!4532 = !DILocation(line: 392, column: 9, scope: !4393)
!4533 = !DILocation(line: 392, column: 3, scope: !4393)
!4534 = !DILocation(line: 392, column: 22, scope: !4393)
!4535 = !DILocation(line: 392, column: 27, scope: !4393)
!4536 = !DILocation(line: 392, column: 21, scope: !4393)
!4537 = !DILocation(line: 392, column: 18, scope: !4393)
!4538 = !DILocation(line: 392, column: 38, scope: !4393)
!4539 = !DILocation(line: 393, column: 4, scope: !4393)
!4540 = !DILocation(line: 393, column: 9, scope: !4393)
!4541 = !DILocation(line: 393, column: 3, scope: !4393)
!4542 = !DILocation(line: 393, column: 28, scope: !4393)
!4543 = !DILocation(line: 393, column: 33, scope: !4393)
!4544 = !DILocation(line: 393, column: 27, scope: !4393)
!4545 = !DILocation(line: 393, column: 24, scope: !4393)
!4546 = !DILocation(line: 393, column: 44, scope: !4393)
!4547 = !DILocation(line: 0, scope: !4393)
!4548 = !DILocation(line: 337, column: 2, scope: !4393)
!4549 = !DILocalVariable(name: "x", arg: 1, scope: !4249, file: !1432, line: 85, type: !1430)
!4550 = !DILocation(line: 85, column: 57, scope: !4249)
!4551 = !DILocation(line: 87, column: 2, scope: !4249)
!4552 = !DILocation(line: 87, column: 5, scope: !4249)
!4553 = !DILocation(line: 87, column: 10, scope: !4249)
!4554 = !DILocation(line: 88, column: 2, scope: !4249)
!4555 = !DILocation(line: 88, column: 2, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4249, file: !1432, line: 88, column: 2)
!4557 = !DILocation(line: 89, column: 1, scope: !4249)
!4558 = distinct !DISubprogram(name: "ntb_dev_release", scope: !3, file: !3, line: 290, type: !3326, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4559 = !DILocalVariable(name: "dev", arg: 1, scope: !4558, file: !3, line: 290, type: !3303)
!4560 = !DILocation(line: 290, column: 44, scope: !4558)
!4561 = !DILocalVariable(name: "ntb", scope: !4558, file: !3, line: 292, type: !130)
!4562 = !DILocation(line: 292, column: 18, scope: !4558)
!4563 = !DILocalVariable(name: "__mptr", scope: !4564, file: !3, line: 292, type: !128)
!4564 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 292, column: 24)
!4565 = !DILocation(line: 292, column: 24, scope: !4564)
!4566 = !DILocation(line: 292, column: 24, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 292, column: 24)
!4568 = !DILocation(line: 294, column: 12, scope: !4558)
!4569 = !DILocation(line: 294, column: 17, scope: !4558)
!4570 = !DILocation(line: 294, column: 2, scope: !4558)
!4571 = !DILocation(line: 295, column: 1, scope: !4558)
!4572 = distinct !DISubprogram(name: "pci_name", scope: !3752, file: !3752, line: 1875, type: !4573, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!141, !4575}
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3751)
!4577 = !DILocalVariable(name: "pdev", arg: 1, scope: !4572, file: !3752, line: 1875, type: !4575)
!4578 = !DILocation(line: 1875, column: 58, scope: !4572)
!4579 = !DILocation(line: 1877, column: 19, scope: !4572)
!4580 = !DILocation(line: 1877, column: 25, scope: !4572)
!4581 = !DILocation(line: 1877, column: 9, scope: !4572)
!4582 = !DILocation(line: 1877, column: 2, scope: !4572)
!4583 = distinct !DISubprogram(name: "ntb_unregister_device", scope: !3, file: !3, line: 127, type: !4584, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !130}
!4586 = !DILocalVariable(name: "ntb", arg: 1, scope: !4583, file: !3, line: 127, type: !130)
!4587 = !DILocation(line: 127, column: 44, scope: !4583)
!4588 = !DILocation(line: 129, column: 21, scope: !4583)
!4589 = !DILocation(line: 129, column: 26, scope: !4583)
!4590 = !DILocation(line: 129, column: 2, scope: !4583)
!4591 = !DILocation(line: 130, column: 23, scope: !4583)
!4592 = !DILocation(line: 130, column: 28, scope: !4583)
!4593 = !DILocation(line: 130, column: 2, scope: !4583)
!4594 = !DILocation(line: 131, column: 1, scope: !4583)
!4595 = distinct !DISubprogram(name: "ntb_set_ctx", scope: !3, file: !3, line: 134, type: !4596, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!95, !130, !128, !4146}
!4598 = !DILocalVariable(name: "lock", arg: 1, scope: !4599, file: !4327, line: 407, type: !993)
!4599 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4327, file: !4327, line: 407, type: !4600, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{null, !993, !129}
!4602 = !DILocation(line: 407, column: 64, scope: !4599, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 149, column: 2, scope: !4595)
!4604 = !DILocalVariable(name: "flags", arg: 2, scope: !4599, file: !4327, line: 407, type: !129)
!4605 = !DILocation(line: 407, column: 84, scope: !4599, inlinedAt: !4603)
!4606 = !DILocation(line: 327, column: 67, scope: !4326, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 144, column: 2, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 144, column: 2)
!4609 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 144, column: 2)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 144, column: 2)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 144, column: 2)
!4612 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 144, column: 2)
!4613 = !DILocalVariable(name: "ntb", arg: 1, scope: !4595, file: !3, line: 134, type: !130)
!4614 = !DILocation(line: 134, column: 33, scope: !4595)
!4615 = !DILocalVariable(name: "ctx", arg: 2, scope: !4595, file: !3, line: 134, type: !128)
!4616 = !DILocation(line: 134, column: 44, scope: !4595)
!4617 = !DILocalVariable(name: "ctx_ops", arg: 3, scope: !4595, file: !3, line: 135, type: !4146)
!4618 = !DILocation(line: 135, column: 29, scope: !4595)
!4619 = !DILocalVariable(name: "irqflags", scope: !4595, file: !3, line: 137, type: !129)
!4620 = !DILocation(line: 137, column: 16, scope: !4595)
!4621 = !DILocation(line: 139, column: 28, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 139, column: 6)
!4623 = !DILocation(line: 139, column: 7, scope: !4622)
!4624 = !DILocation(line: 139, column: 6, scope: !4595)
!4625 = !DILocation(line: 140, column: 3, scope: !4622)
!4626 = !DILocation(line: 141, column: 6, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 141, column: 6)
!4628 = !DILocation(line: 141, column: 11, scope: !4627)
!4629 = !DILocation(line: 141, column: 6, scope: !4595)
!4630 = !DILocation(line: 142, column: 3, scope: !4627)
!4631 = !DILocation(line: 144, column: 2, scope: !4595)
!4632 = !DILocation(line: 144, column: 2, scope: !4612)
!4633 = !DILocalVariable(name: "__dummy", scope: !4634, file: !3, line: 144, type: !129)
!4634 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 144, column: 2)
!4635 = !DILocation(line: 144, column: 2, scope: !4634)
!4636 = !DILocalVariable(name: "__dummy2", scope: !4634, file: !3, line: 144, type: !129)
!4637 = !DILocation(line: 144, column: 2, scope: !4611)
!4638 = !DILocation(line: 144, column: 2, scope: !4610)
!4639 = !DILocation(line: 144, column: 2, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 144, column: 2)
!4641 = !DILocalVariable(name: "__dummy", scope: !4642, file: !3, line: 144, type: !129)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 144, column: 2)
!4643 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 144, column: 2)
!4644 = !DILocation(line: 144, column: 2, scope: !4642)
!4645 = !DILocalVariable(name: "__dummy2", scope: !4642, file: !3, line: 144, type: !129)
!4646 = !DILocation(line: 144, column: 2, scope: !4643)
!4647 = !DILocation(line: 144, column: 2, scope: !4609)
!4648 = !{i32 -2141679408}
!4649 = !DILocation(line: 144, column: 2, scope: !4608)
!4650 = !DILocation(line: 329, column: 10, scope: !4326, inlinedAt: !4607)
!4651 = !DILocation(line: 329, column: 16, scope: !4326, inlinedAt: !4607)
!4652 = !DILocation(line: 146, column: 14, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 145, column: 2)
!4654 = !DILocation(line: 146, column: 3, scope: !4653)
!4655 = !DILocation(line: 146, column: 8, scope: !4653)
!4656 = !DILocation(line: 146, column: 12, scope: !4653)
!4657 = !DILocation(line: 147, column: 18, scope: !4653)
!4658 = !DILocation(line: 147, column: 3, scope: !4653)
!4659 = !DILocation(line: 147, column: 8, scope: !4653)
!4660 = !DILocation(line: 147, column: 16, scope: !4653)
!4661 = !DILocation(line: 149, column: 26, scope: !4595)
!4662 = !DILocation(line: 149, column: 31, scope: !4595)
!4663 = !DILocation(line: 149, column: 41, scope: !4595)
!4664 = !DILocalVariable(name: "__dummy", scope: !4665, file: !4327, line: 409, type: !129)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !4327, line: 409, column: 2)
!4666 = distinct !DILexicalBlock(scope: !4599, file: !4327, line: 409, column: 2)
!4667 = !DILocation(line: 409, column: 2, scope: !4665, inlinedAt: !4603)
!4668 = !DILocalVariable(name: "__dummy2", scope: !4665, file: !4327, line: 409, type: !129)
!4669 = !DILocalVariable(name: "__dummy", scope: !4670, file: !4327, line: 409, type: !129)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !4327, line: 409, column: 2)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !4327, line: 409, column: 2)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !4327, line: 409, column: 2)
!4673 = distinct !DILexicalBlock(scope: !4666, file: !4327, line: 409, column: 2)
!4674 = !DILocation(line: 409, column: 2, scope: !4670, inlinedAt: !4603)
!4675 = !DILocalVariable(name: "__dummy2", scope: !4670, file: !4327, line: 409, type: !129)
!4676 = !DILocation(line: 409, column: 2, scope: !4671, inlinedAt: !4603)
!4677 = !DILocation(line: 409, column: 2, scope: !4678, inlinedAt: !4603)
!4678 = distinct !DILexicalBlock(scope: !4673, file: !4327, line: 409, column: 2)
!4679 = !{i32 -2145290530}
!4680 = !DILocation(line: 409, column: 2, scope: !4681, inlinedAt: !4603)
!4681 = distinct !DILexicalBlock(scope: !4678, file: !4327, line: 409, column: 2)
!4682 = !DILocation(line: 151, column: 2, scope: !4595)
!4683 = !DILocation(line: 152, column: 1, scope: !4595)
!4684 = distinct !DISubprogram(name: "ntb_ctx_ops_is_valid", scope: !94, file: !94, line: 199, type: !4685, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!95, !4146}
!4687 = !DILocalVariable(name: "ops", arg: 1, scope: !4684, file: !94, line: 199, type: !4146)
!4688 = !DILocation(line: 199, column: 66, scope: !4684)
!4689 = !DILocation(line: 202, column: 2, scope: !4684)
!4690 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4691, file: !4691, line: 666, type: !4692, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4691 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!129}
!4694 = !DILocalVariable(name: "f", scope: !4690, file: !4691, line: 668, type: !129)
!4695 = !DILocation(line: 668, column: 16, scope: !4690)
!4696 = !DILocation(line: 670, column: 6, scope: !4690)
!4697 = !DILocation(line: 670, column: 4, scope: !4690)
!4698 = !DILocation(line: 671, column: 2, scope: !4690)
!4699 = !DILocation(line: 672, column: 9, scope: !4690)
!4700 = !DILocation(line: 672, column: 2, scope: !4690)
!4701 = distinct !DISubprogram(name: "ntb_clear_ctx", scope: !3, file: !3, line: 155, type: !4584, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4702 = !DILocation(line: 407, column: 64, scope: !4599, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 164, column: 2, scope: !4701)
!4704 = !DILocation(line: 407, column: 84, scope: !4599, inlinedAt: !4703)
!4705 = !DILocation(line: 327, column: 67, scope: !4326, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 159, column: 2, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 159, column: 2)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 159, column: 2)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 159, column: 2)
!4710 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 159, column: 2)
!4711 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 159, column: 2)
!4712 = !DILocalVariable(name: "ntb", arg: 1, scope: !4701, file: !3, line: 155, type: !130)
!4713 = !DILocation(line: 155, column: 36, scope: !4701)
!4714 = !DILocalVariable(name: "irqflags", scope: !4701, file: !3, line: 157, type: !129)
!4715 = !DILocation(line: 157, column: 16, scope: !4701)
!4716 = !DILocation(line: 159, column: 2, scope: !4701)
!4717 = !DILocation(line: 159, column: 2, scope: !4711)
!4718 = !DILocalVariable(name: "__dummy", scope: !4719, file: !3, line: 159, type: !129)
!4719 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 159, column: 2)
!4720 = !DILocation(line: 159, column: 2, scope: !4719)
!4721 = !DILocalVariable(name: "__dummy2", scope: !4719, file: !3, line: 159, type: !129)
!4722 = !DILocation(line: 159, column: 2, scope: !4710)
!4723 = !DILocation(line: 159, column: 2, scope: !4709)
!4724 = !DILocation(line: 159, column: 2, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 159, column: 2)
!4726 = !DILocalVariable(name: "__dummy", scope: !4727, file: !3, line: 159, type: !129)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 159, column: 2)
!4728 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 159, column: 2)
!4729 = !DILocation(line: 159, column: 2, scope: !4727)
!4730 = !DILocalVariable(name: "__dummy2", scope: !4727, file: !3, line: 159, type: !129)
!4731 = !DILocation(line: 159, column: 2, scope: !4728)
!4732 = !DILocation(line: 159, column: 2, scope: !4708)
!4733 = !{i32 -2141678257}
!4734 = !DILocation(line: 159, column: 2, scope: !4707)
!4735 = !DILocation(line: 329, column: 10, scope: !4326, inlinedAt: !4706)
!4736 = !DILocation(line: 329, column: 16, scope: !4326, inlinedAt: !4706)
!4737 = !DILocation(line: 161, column: 3, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 160, column: 2)
!4739 = !DILocation(line: 161, column: 8, scope: !4738)
!4740 = !DILocation(line: 161, column: 16, scope: !4738)
!4741 = !DILocation(line: 162, column: 3, scope: !4738)
!4742 = !DILocation(line: 162, column: 8, scope: !4738)
!4743 = !DILocation(line: 162, column: 12, scope: !4738)
!4744 = !DILocation(line: 164, column: 26, scope: !4701)
!4745 = !DILocation(line: 164, column: 31, scope: !4701)
!4746 = !DILocation(line: 164, column: 41, scope: !4701)
!4747 = !DILocation(line: 409, column: 2, scope: !4665, inlinedAt: !4703)
!4748 = !DILocation(line: 409, column: 2, scope: !4670, inlinedAt: !4703)
!4749 = !DILocation(line: 409, column: 2, scope: !4671, inlinedAt: !4703)
!4750 = !DILocation(line: 409, column: 2, scope: !4678, inlinedAt: !4703)
!4751 = !DILocation(line: 409, column: 2, scope: !4681, inlinedAt: !4703)
!4752 = !DILocation(line: 165, column: 1, scope: !4701)
!4753 = distinct !DISubprogram(name: "ntb_link_event", scope: !3, file: !3, line: 168, type: !4584, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4754 = !DILocation(line: 407, column: 64, scope: !4599, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 177, column: 2, scope: !4753)
!4756 = !DILocation(line: 407, column: 84, scope: !4599, inlinedAt: !4755)
!4757 = !DILocation(line: 327, column: 67, scope: !4326, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 172, column: 2, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 172, column: 2)
!4760 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 172, column: 2)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 172, column: 2)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 172, column: 2)
!4763 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 172, column: 2)
!4764 = !DILocalVariable(name: "ntb", arg: 1, scope: !4753, file: !3, line: 168, type: !130)
!4765 = !DILocation(line: 168, column: 37, scope: !4753)
!4766 = !DILocalVariable(name: "irqflags", scope: !4753, file: !3, line: 170, type: !129)
!4767 = !DILocation(line: 170, column: 16, scope: !4753)
!4768 = !DILocation(line: 172, column: 2, scope: !4753)
!4769 = !DILocation(line: 172, column: 2, scope: !4763)
!4770 = !DILocalVariable(name: "__dummy", scope: !4771, file: !3, line: 172, type: !129)
!4771 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 172, column: 2)
!4772 = !DILocation(line: 172, column: 2, scope: !4771)
!4773 = !DILocalVariable(name: "__dummy2", scope: !4771, file: !3, line: 172, type: !129)
!4774 = !DILocation(line: 172, column: 2, scope: !4762)
!4775 = !DILocation(line: 172, column: 2, scope: !4761)
!4776 = !DILocation(line: 172, column: 2, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 172, column: 2)
!4778 = !DILocalVariable(name: "__dummy", scope: !4779, file: !3, line: 172, type: !129)
!4779 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 172, column: 2)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 172, column: 2)
!4781 = !DILocation(line: 172, column: 2, scope: !4779)
!4782 = !DILocalVariable(name: "__dummy2", scope: !4779, file: !3, line: 172, type: !129)
!4783 = !DILocation(line: 172, column: 2, scope: !4780)
!4784 = !DILocation(line: 172, column: 2, scope: !4760)
!4785 = !{i32 -2141677078}
!4786 = !DILocation(line: 172, column: 2, scope: !4759)
!4787 = !DILocation(line: 329, column: 10, scope: !4326, inlinedAt: !4758)
!4788 = !DILocation(line: 329, column: 16, scope: !4326, inlinedAt: !4758)
!4789 = !DILocation(line: 174, column: 7, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 174, column: 7)
!4791 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 173, column: 2)
!4792 = !DILocation(line: 174, column: 12, scope: !4790)
!4793 = !DILocation(line: 174, column: 20, scope: !4790)
!4794 = !DILocation(line: 174, column: 23, scope: !4790)
!4795 = !DILocation(line: 174, column: 28, scope: !4790)
!4796 = !DILocation(line: 174, column: 37, scope: !4790)
!4797 = !DILocation(line: 174, column: 7, scope: !4791)
!4798 = !DILocation(line: 175, column: 4, scope: !4790)
!4799 = !DILocation(line: 175, column: 9, scope: !4790)
!4800 = !DILocation(line: 175, column: 18, scope: !4790)
!4801 = !DILocation(line: 175, column: 29, scope: !4790)
!4802 = !DILocation(line: 175, column: 34, scope: !4790)
!4803 = !DILocation(line: 177, column: 26, scope: !4753)
!4804 = !DILocation(line: 177, column: 31, scope: !4753)
!4805 = !DILocation(line: 177, column: 41, scope: !4753)
!4806 = !DILocation(line: 409, column: 2, scope: !4665, inlinedAt: !4755)
!4807 = !DILocation(line: 409, column: 2, scope: !4670, inlinedAt: !4755)
!4808 = !DILocation(line: 409, column: 2, scope: !4671, inlinedAt: !4755)
!4809 = !DILocation(line: 409, column: 2, scope: !4678, inlinedAt: !4755)
!4810 = !DILocation(line: 409, column: 2, scope: !4681, inlinedAt: !4755)
!4811 = !DILocation(line: 178, column: 1, scope: !4753)
!4812 = distinct !DISubprogram(name: "ntb_db_event", scope: !3, file: !3, line: 181, type: !4813, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !130, !95}
!4815 = !DILocation(line: 407, column: 64, scope: !4599, inlinedAt: !4816)
!4816 = distinct !DILocation(line: 190, column: 2, scope: !4812)
!4817 = !DILocation(line: 407, column: 84, scope: !4599, inlinedAt: !4816)
!4818 = !DILocation(line: 327, column: 67, scope: !4326, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 185, column: 2, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 185, column: 2)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 185, column: 2)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 185, column: 2)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 185, column: 2)
!4824 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 185, column: 2)
!4825 = !DILocalVariable(name: "ntb", arg: 1, scope: !4812, file: !3, line: 181, type: !130)
!4826 = !DILocation(line: 181, column: 35, scope: !4812)
!4827 = !DILocalVariable(name: "vector", arg: 2, scope: !4812, file: !3, line: 181, type: !95)
!4828 = !DILocation(line: 181, column: 44, scope: !4812)
!4829 = !DILocalVariable(name: "irqflags", scope: !4812, file: !3, line: 183, type: !129)
!4830 = !DILocation(line: 183, column: 16, scope: !4812)
!4831 = !DILocation(line: 185, column: 2, scope: !4812)
!4832 = !DILocation(line: 185, column: 2, scope: !4824)
!4833 = !DILocalVariable(name: "__dummy", scope: !4834, file: !3, line: 185, type: !129)
!4834 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 185, column: 2)
!4835 = !DILocation(line: 185, column: 2, scope: !4834)
!4836 = !DILocalVariable(name: "__dummy2", scope: !4834, file: !3, line: 185, type: !129)
!4837 = !DILocation(line: 185, column: 2, scope: !4823)
!4838 = !DILocation(line: 185, column: 2, scope: !4822)
!4839 = !DILocation(line: 185, column: 2, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 185, column: 2)
!4841 = !DILocalVariable(name: "__dummy", scope: !4842, file: !3, line: 185, type: !129)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 185, column: 2)
!4843 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 185, column: 2)
!4844 = !DILocation(line: 185, column: 2, scope: !4842)
!4845 = !DILocalVariable(name: "__dummy2", scope: !4842, file: !3, line: 185, type: !129)
!4846 = !DILocation(line: 185, column: 2, scope: !4843)
!4847 = !DILocation(line: 185, column: 2, scope: !4821)
!4848 = !{i32 -2141675921}
!4849 = !DILocation(line: 185, column: 2, scope: !4820)
!4850 = !DILocation(line: 329, column: 10, scope: !4326, inlinedAt: !4819)
!4851 = !DILocation(line: 329, column: 16, scope: !4326, inlinedAt: !4819)
!4852 = !DILocation(line: 187, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 187, column: 7)
!4854 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 186, column: 2)
!4855 = !DILocation(line: 187, column: 12, scope: !4853)
!4856 = !DILocation(line: 187, column: 20, scope: !4853)
!4857 = !DILocation(line: 187, column: 23, scope: !4853)
!4858 = !DILocation(line: 187, column: 28, scope: !4853)
!4859 = !DILocation(line: 187, column: 37, scope: !4853)
!4860 = !DILocation(line: 187, column: 7, scope: !4854)
!4861 = !DILocation(line: 188, column: 4, scope: !4853)
!4862 = !DILocation(line: 188, column: 9, scope: !4853)
!4863 = !DILocation(line: 188, column: 18, scope: !4853)
!4864 = !DILocation(line: 188, column: 27, scope: !4853)
!4865 = !DILocation(line: 188, column: 32, scope: !4853)
!4866 = !DILocation(line: 188, column: 37, scope: !4853)
!4867 = !DILocation(line: 190, column: 26, scope: !4812)
!4868 = !DILocation(line: 190, column: 31, scope: !4812)
!4869 = !DILocation(line: 190, column: 41, scope: !4812)
!4870 = !DILocation(line: 409, column: 2, scope: !4665, inlinedAt: !4816)
!4871 = !DILocation(line: 409, column: 2, scope: !4670, inlinedAt: !4816)
!4872 = !DILocation(line: 409, column: 2, scope: !4671, inlinedAt: !4816)
!4873 = !DILocation(line: 409, column: 2, scope: !4678, inlinedAt: !4816)
!4874 = !DILocation(line: 409, column: 2, scope: !4681, inlinedAt: !4816)
!4875 = !DILocation(line: 191, column: 1, scope: !4812)
!4876 = distinct !DISubprogram(name: "ntb_msg_event", scope: !3, file: !3, line: 194, type: !4584, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4877 = !DILocation(line: 407, column: 64, scope: !4599, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 203, column: 2, scope: !4876)
!4879 = !DILocation(line: 407, column: 84, scope: !4599, inlinedAt: !4878)
!4880 = !DILocation(line: 327, column: 67, scope: !4326, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 198, column: 2, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 198, column: 2)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 198, column: 2)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 198, column: 2)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 198, column: 2)
!4886 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 198, column: 2)
!4887 = !DILocalVariable(name: "ntb", arg: 1, scope: !4876, file: !3, line: 194, type: !130)
!4888 = !DILocation(line: 194, column: 36, scope: !4876)
!4889 = !DILocalVariable(name: "irqflags", scope: !4876, file: !3, line: 196, type: !129)
!4890 = !DILocation(line: 196, column: 16, scope: !4876)
!4891 = !DILocation(line: 198, column: 2, scope: !4876)
!4892 = !DILocation(line: 198, column: 2, scope: !4886)
!4893 = !DILocalVariable(name: "__dummy", scope: !4894, file: !3, line: 198, type: !129)
!4894 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 198, column: 2)
!4895 = !DILocation(line: 198, column: 2, scope: !4894)
!4896 = !DILocalVariable(name: "__dummy2", scope: !4894, file: !3, line: 198, type: !129)
!4897 = !DILocation(line: 198, column: 2, scope: !4885)
!4898 = !DILocation(line: 198, column: 2, scope: !4884)
!4899 = !DILocation(line: 198, column: 2, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 198, column: 2)
!4901 = !DILocalVariable(name: "__dummy", scope: !4902, file: !3, line: 198, type: !129)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 198, column: 2)
!4903 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 198, column: 2)
!4904 = !DILocation(line: 198, column: 2, scope: !4902)
!4905 = !DILocalVariable(name: "__dummy2", scope: !4902, file: !3, line: 198, type: !129)
!4906 = !DILocation(line: 198, column: 2, scope: !4903)
!4907 = !DILocation(line: 198, column: 2, scope: !4883)
!4908 = !{i32 -2141674768}
!4909 = !DILocation(line: 198, column: 2, scope: !4882)
!4910 = !DILocation(line: 329, column: 10, scope: !4326, inlinedAt: !4881)
!4911 = !DILocation(line: 329, column: 16, scope: !4326, inlinedAt: !4881)
!4912 = !DILocation(line: 200, column: 7, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 200, column: 7)
!4914 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 199, column: 2)
!4915 = !DILocation(line: 200, column: 12, scope: !4913)
!4916 = !DILocation(line: 200, column: 20, scope: !4913)
!4917 = !DILocation(line: 200, column: 23, scope: !4913)
!4918 = !DILocation(line: 200, column: 28, scope: !4913)
!4919 = !DILocation(line: 200, column: 37, scope: !4913)
!4920 = !DILocation(line: 200, column: 7, scope: !4914)
!4921 = !DILocation(line: 201, column: 4, scope: !4913)
!4922 = !DILocation(line: 201, column: 9, scope: !4913)
!4923 = !DILocation(line: 201, column: 18, scope: !4913)
!4924 = !DILocation(line: 201, column: 28, scope: !4913)
!4925 = !DILocation(line: 201, column: 33, scope: !4913)
!4926 = !DILocation(line: 203, column: 26, scope: !4876)
!4927 = !DILocation(line: 203, column: 31, scope: !4876)
!4928 = !DILocation(line: 203, column: 41, scope: !4876)
!4929 = !DILocation(line: 409, column: 2, scope: !4665, inlinedAt: !4878)
!4930 = !DILocation(line: 409, column: 2, scope: !4670, inlinedAt: !4878)
!4931 = !DILocation(line: 409, column: 2, scope: !4671, inlinedAt: !4878)
!4932 = !DILocation(line: 409, column: 2, scope: !4678, inlinedAt: !4878)
!4933 = !DILocation(line: 409, column: 2, scope: !4681, inlinedAt: !4878)
!4934 = !DILocation(line: 204, column: 1, scope: !4876)
!4935 = distinct !DISubprogram(name: "ntb_default_port_number", scope: !3, file: !3, line: 207, type: !4037, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4936 = !DILocalVariable(name: "ntb", arg: 1, scope: !4935, file: !3, line: 207, type: !130)
!4937 = !DILocation(line: 207, column: 45, scope: !4935)
!4938 = !DILocation(line: 209, column: 10, scope: !4935)
!4939 = !DILocation(line: 209, column: 15, scope: !4935)
!4940 = !DILocation(line: 209, column: 2, scope: !4935)
!4941 = !DILocation(line: 212, column: 3, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 209, column: 21)
!4943 = !DILocation(line: 215, column: 3, scope: !4942)
!4944 = !DILocation(line: 217, column: 3, scope: !4942)
!4945 = !DILocation(line: 219, column: 1, scope: !4935)
!4946 = distinct !DISubprogram(name: "ntb_default_peer_port_count", scope: !3, file: !3, line: 222, type: !4037, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4947 = !DILocalVariable(name: "ntb", arg: 1, scope: !4946, file: !3, line: 222, type: !130)
!4948 = !DILocation(line: 222, column: 49, scope: !4946)
!4949 = !DILocation(line: 224, column: 2, scope: !4946)
!4950 = distinct !DISubprogram(name: "ntb_default_peer_port_number", scope: !3, file: !3, line: 228, type: !4042, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4951 = !DILocalVariable(name: "ntb", arg: 1, scope: !4950, file: !3, line: 228, type: !130)
!4952 = !DILocation(line: 228, column: 50, scope: !4950)
!4953 = !DILocalVariable(name: "pidx", arg: 2, scope: !4950, file: !3, line: 228, type: !95)
!4954 = !DILocation(line: 228, column: 59, scope: !4950)
!4955 = !DILocation(line: 230, column: 6, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 230, column: 6)
!4957 = !DILocation(line: 230, column: 11, scope: !4956)
!4958 = !DILocation(line: 230, column: 6, scope: !4950)
!4959 = !DILocation(line: 231, column: 3, scope: !4956)
!4960 = !DILocation(line: 233, column: 10, scope: !4950)
!4961 = !DILocation(line: 233, column: 15, scope: !4950)
!4962 = !DILocation(line: 233, column: 2, scope: !4950)
!4963 = !DILocation(line: 236, column: 3, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 233, column: 21)
!4965 = !DILocation(line: 239, column: 3, scope: !4964)
!4966 = !DILocation(line: 241, column: 3, scope: !4964)
!4967 = !DILocation(line: 243, column: 1, scope: !4950)
!4968 = distinct !DISubprogram(name: "ntb_default_peer_port_idx", scope: !3, file: !3, line: 246, type: !4042, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4969 = !DILocalVariable(name: "ntb", arg: 1, scope: !4968, file: !3, line: 246, type: !130)
!4970 = !DILocation(line: 246, column: 47, scope: !4968)
!4971 = !DILocalVariable(name: "port", arg: 2, scope: !4968, file: !3, line: 246, type: !95)
!4972 = !DILocation(line: 246, column: 56, scope: !4968)
!4973 = !DILocalVariable(name: "peer_port", scope: !4968, file: !3, line: 248, type: !95)
!4974 = !DILocation(line: 248, column: 6, scope: !4968)
!4975 = !DILocation(line: 248, column: 47, scope: !4968)
!4976 = !DILocation(line: 248, column: 18, scope: !4968)
!4977 = !DILocation(line: 250, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 250, column: 6)
!4979 = !DILocation(line: 250, column: 16, scope: !4978)
!4980 = !DILocation(line: 250, column: 27, scope: !4978)
!4981 = !DILocation(line: 250, column: 30, scope: !4978)
!4982 = !DILocation(line: 250, column: 38, scope: !4978)
!4983 = !DILocation(line: 250, column: 35, scope: !4978)
!4984 = !DILocation(line: 250, column: 6, scope: !4968)
!4985 = !DILocation(line: 251, column: 3, scope: !4978)
!4986 = !DILocation(line: 253, column: 2, scope: !4968)
!4987 = !DILocation(line: 254, column: 1, scope: !4968)
!4988 = distinct !DISubprogram(name: "ntb_driver_init", scope: !3, file: !3, line: 303, type: !4989, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!95}
!4991 = !DILocation(line: 305, column: 9, scope: !4988)
!4992 = !DILocation(line: 305, column: 2, scope: !4988)
!4993 = distinct !DISubprogram(name: "ntb_driver_exit", scope: !3, file: !3, line: 309, type: !1808, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4994 = !DILocation(line: 311, column: 2, scope: !4993)
!4995 = !DILocation(line: 312, column: 1, scope: !4993)
!4996 = distinct !DISubprogram(name: "dev_name", scope: !67, file: !67, line: 609, type: !4997, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!141, !3640}
!4999 = !DILocalVariable(name: "dev", arg: 1, scope: !4996, file: !67, line: 609, type: !3640)
!5000 = !DILocation(line: 609, column: 57, scope: !4996)
!5001 = !DILocation(line: 612, column: 6, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4996, file: !67, line: 612, column: 6)
!5003 = !DILocation(line: 612, column: 11, scope: !5002)
!5004 = !DILocation(line: 612, column: 6, scope: !4996)
!5005 = !DILocation(line: 613, column: 10, scope: !5002)
!5006 = !DILocation(line: 613, column: 15, scope: !5002)
!5007 = !DILocation(line: 613, column: 3, scope: !5002)
!5008 = !DILocation(line: 615, column: 23, scope: !4996)
!5009 = !DILocation(line: 615, column: 28, scope: !4996)
!5010 = !DILocation(line: 615, column: 9, scope: !4996)
!5011 = !DILocation(line: 615, column: 2, scope: !4996)
!5012 = !DILocation(line: 616, column: 1, scope: !4996)
!5013 = distinct !DISubprogram(name: "kobject_name", scope: !138, file: !138, line: 88, type: !5014, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!141, !5016}
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!5018 = !DILocalVariable(name: "kobj", arg: 1, scope: !5013, file: !138, line: 88, type: !5016)
!5019 = !DILocation(line: 88, column: 62, scope: !5013)
!5020 = !DILocation(line: 90, column: 9, scope: !5013)
!5021 = !DILocation(line: 90, column: 15, scope: !5013)
!5022 = !DILocation(line: 90, column: 2, scope: !5013)
!5023 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4691, file: !4691, line: 646, type: !4692, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5024 = !DILocalVariable(name: "__ret", scope: !5025, file: !4691, line: 648, type: !129)
!5025 = distinct !DILexicalBlock(scope: !5023, file: !4691, line: 648, column: 9)
!5026 = !DILocation(line: 648, column: 9, scope: !5025)
!5027 = !DILocalVariable(name: "__edi", scope: !5025, file: !4691, line: 648, type: !129)
!5028 = !DILocalVariable(name: "__esi", scope: !5025, file: !4691, line: 648, type: !129)
!5029 = !DILocalVariable(name: "__edx", scope: !5025, file: !4691, line: 648, type: !129)
!5030 = !DILocalVariable(name: "__ecx", scope: !5025, file: !4691, line: 648, type: !129)
!5031 = !DILocalVariable(name: "__eax", scope: !5025, file: !4691, line: 648, type: !129)
!5032 = !DILocation(line: 648, column: 9, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !4691, line: 648, column: 9)
!5034 = distinct !DILexicalBlock(scope: !5025, file: !4691, line: 648, column: 9)
!5035 = !{i32 -2145767373, i32 -2145765058, i32 -2145764824, i32 -2145764773, i32 -2145764745, i32 -2145764720, i32 -2145765036, i32 -2145765023, i32 -2145764585, i32 -2145764466, i32 -2145764931, i32 -2145764904, i32 -2145764876, i32 -2145764846}
!5036 = !DILocalVariable(name: "__mask", scope: !5037, file: !4691, line: 648, type: !129)
!5037 = distinct !DILexicalBlock(scope: !5033, file: !4691, line: 648, column: 9)
!5038 = !DILocation(line: 648, column: 9, scope: !5037)
!5039 = !DILocation(line: 648, column: 9, scope: !5034)
!5040 = !DILocation(line: 648, column: 2, scope: !5023)
!5041 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4691, file: !4691, line: 656, type: !1808, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5042 = !DILocalVariable(name: "__edi", scope: !5043, file: !4691, line: 658, type: !129)
!5043 = distinct !DILexicalBlock(scope: !5041, file: !4691, line: 658, column: 2)
!5044 = !DILocation(line: 658, column: 2, scope: !5043)
!5045 = !DILocalVariable(name: "__esi", scope: !5043, file: !4691, line: 658, type: !129)
!5046 = !DILocalVariable(name: "__edx", scope: !5043, file: !4691, line: 658, type: !129)
!5047 = !DILocalVariable(name: "__ecx", scope: !5043, file: !4691, line: 658, type: !129)
!5048 = !DILocalVariable(name: "__eax", scope: !5043, file: !4691, line: 658, type: !129)
!5049 = !{i32 -2145760279, i32 -2145759547, i32 -2145759313, i32 -2145759262, i32 -2145759234, i32 -2145759209, i32 -2145759525, i32 -2145759512, i32 -2145759074, i32 -2145758955, i32 -2145759420, i32 -2145759393, i32 -2145759365, i32 -2145759335}
!5050 = !DILocation(line: 659, column: 1, scope: !5041)
!5051 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4691, file: !4691, line: 651, type: !5052, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !129}
!5054 = !DILocalVariable(name: "f", arg: 1, scope: !5051, file: !4691, line: 651, type: !129)
!5055 = !DILocation(line: 651, column: 65, scope: !5051)
!5056 = !DILocalVariable(name: "__edi", scope: !5057, file: !4691, line: 653, type: !129)
!5057 = distinct !DILexicalBlock(scope: !5051, file: !4691, line: 653, column: 2)
!5058 = !DILocation(line: 653, column: 2, scope: !5057)
!5059 = !DILocalVariable(name: "__esi", scope: !5057, file: !4691, line: 653, type: !129)
!5060 = !DILocalVariable(name: "__edx", scope: !5057, file: !4691, line: 653, type: !129)
!5061 = !DILocalVariable(name: "__ecx", scope: !5057, file: !4691, line: 653, type: !129)
!5062 = !DILocalVariable(name: "__eax", scope: !5057, file: !4691, line: 653, type: !129)
!5063 = !{i32 -2145762906, i32 -2145762156, i32 -2145761922, i32 -2145761871, i32 -2145761843, i32 -2145761818, i32 -2145762134, i32 -2145762121, i32 -2145761683, i32 -2145761564, i32 -2145762029, i32 -2145762002, i32 -2145761974, i32 -2145761944}
!5064 = !DILocation(line: 654, column: 1, scope: !5051)
!5065 = distinct !DISubprogram(name: "ntb_probe", scope: !3, file: !3, line: 257, type: !3335, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5066 = !DILocalVariable(name: "dev", arg: 1, scope: !5065, file: !3, line: 257, type: !3303)
!5067 = !DILocation(line: 257, column: 37, scope: !5065)
!5068 = !DILocalVariable(name: "ntb", scope: !5065, file: !3, line: 259, type: !130)
!5069 = !DILocation(line: 259, column: 18, scope: !5065)
!5070 = !DILocalVariable(name: "client", scope: !5065, file: !3, line: 260, type: !4158)
!5071 = !DILocation(line: 260, column: 21, scope: !5065)
!5072 = !DILocalVariable(name: "rc", scope: !5065, file: !3, line: 261, type: !95)
!5073 = !DILocation(line: 261, column: 6, scope: !5065)
!5074 = !DILocation(line: 263, column: 13, scope: !5065)
!5075 = !DILocation(line: 263, column: 2, scope: !5065)
!5076 = !DILocalVariable(name: "__mptr", scope: !5077, file: !3, line: 264, type: !128)
!5077 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 264, column: 8)
!5078 = !DILocation(line: 264, column: 8, scope: !5077)
!5079 = !DILocation(line: 264, column: 8, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 264, column: 8)
!5081 = !DILocation(line: 264, column: 6, scope: !5065)
!5082 = !DILocalVariable(name: "__mptr", scope: !5083, file: !3, line: 265, type: !128)
!5083 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 265, column: 11)
!5084 = !DILocation(line: 265, column: 11, scope: !5083)
!5085 = !DILocation(line: 265, column: 11, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 265, column: 11)
!5087 = !DILocation(line: 265, column: 9, scope: !5065)
!5088 = !DILocation(line: 267, column: 7, scope: !5065)
!5089 = !DILocation(line: 267, column: 15, scope: !5065)
!5090 = !DILocation(line: 267, column: 19, scope: !5065)
!5091 = !DILocation(line: 267, column: 25, scope: !5065)
!5092 = !DILocation(line: 267, column: 33, scope: !5065)
!5093 = !DILocation(line: 267, column: 5, scope: !5065)
!5094 = !DILocation(line: 268, column: 6, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 268, column: 6)
!5096 = !DILocation(line: 268, column: 6, scope: !5065)
!5097 = !DILocation(line: 269, column: 14, scope: !5095)
!5098 = !DILocation(line: 269, column: 3, scope: !5095)
!5099 = !DILocation(line: 271, column: 9, scope: !5065)
!5100 = !DILocation(line: 271, column: 2, scope: !5065)
!5101 = distinct !DISubprogram(name: "ntb_remove", scope: !3, file: !3, line: 274, type: !3335, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5102 = !DILocalVariable(name: "dev", arg: 1, scope: !5101, file: !3, line: 274, type: !3303)
!5103 = !DILocation(line: 274, column: 38, scope: !5101)
!5104 = !DILocalVariable(name: "ntb", scope: !5101, file: !3, line: 276, type: !130)
!5105 = !DILocation(line: 276, column: 18, scope: !5101)
!5106 = !DILocalVariable(name: "client", scope: !5101, file: !3, line: 277, type: !4158)
!5107 = !DILocation(line: 277, column: 21, scope: !5101)
!5108 = !DILocation(line: 279, column: 6, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 279, column: 6)
!5110 = !DILocation(line: 279, column: 11, scope: !5109)
!5111 = !DILocation(line: 279, column: 6, scope: !5101)
!5112 = !DILocalVariable(name: "__mptr", scope: !5113, file: !3, line: 280, type: !128)
!5113 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 280, column: 9)
!5114 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 279, column: 19)
!5115 = !DILocation(line: 280, column: 9, scope: !5113)
!5116 = !DILocation(line: 280, column: 9, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 280, column: 9)
!5118 = !DILocation(line: 280, column: 7, scope: !5114)
!5119 = !DILocalVariable(name: "__mptr", scope: !5120, file: !3, line: 281, type: !128)
!5120 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 281, column: 12)
!5121 = !DILocation(line: 281, column: 12, scope: !5120)
!5122 = !DILocation(line: 281, column: 12, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 281, column: 12)
!5124 = !DILocation(line: 281, column: 10, scope: !5114)
!5125 = !DILocation(line: 283, column: 3, scope: !5114)
!5126 = !DILocation(line: 283, column: 11, scope: !5114)
!5127 = !DILocation(line: 283, column: 15, scope: !5114)
!5128 = !DILocation(line: 283, column: 22, scope: !5114)
!5129 = !DILocation(line: 283, column: 30, scope: !5114)
!5130 = !DILocation(line: 284, column: 14, scope: !5114)
!5131 = !DILocation(line: 284, column: 3, scope: !5114)
!5132 = !DILocation(line: 285, column: 2, scope: !5114)
!5133 = !DILocation(line: 287, column: 2, scope: !5101)
