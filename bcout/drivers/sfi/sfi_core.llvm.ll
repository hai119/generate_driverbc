; ModuleID = '../bcout/drivers/sfi/sfi_core.llvm.bc'
source_filename = "drivers/sfi/sfi_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall1.init\22, \22a\22\09"
module asm "__initcall_sfi_sysfs_init1:\09\09\09"
module asm ".long\09sfi_sysfs_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.sfi_table_simple = type { %struct.sfi_table_header, [1 x i64] }
%struct.sfi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8] }
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
%struct.module = type opaque
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
%struct.kmem_cache = type opaque
%struct.sfi_table_key = type { i8*, i8*, i8* }
%struct.sfi_table_attr = type { %struct.bin_attribute, [8 x i8] }

@syst_va = internal global %struct.sfi_table_simple* null, section ".data..read_mostly", align 8, !dbg !0
@sfi_disabled = dso_local global i32 0, section ".data..read_mostly", align 4, !dbg !3270
@tables_kobj = internal global %struct.kobject* null, align 8, !dbg !3276
@acpi_disabled = external dso_local global i32, align 4
@.str = private unnamed_addr constant [66 x i8] c"\016SFI: Simple Firmware Interface v0.81 http://simplefirmware.org\0A\00", align 1
@sfi_use_memremap = internal global i32 0, section ".data..read_mostly", align 4, !dbg !3274
@syst_pa = internal global i64 0, section ".data..read_mostly", align 8, !dbg !3272
@__UNIQUE_ID___addressable_sfi_sysfs_init234 = internal global i8* bitcast (i32 ()* @sfi_sysfs_init to i8*), section ".discard.addressable", align 8, !dbg !3268
@.str.1 = private unnamed_addr constant [43 x i8] c"\016SFI: %4.4s %llX, %04X (v%d %6.6s %8.8s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\013SFI: Invalid table length 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\013SFI: Checksum %2.2X should be %2.2X\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SYST\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\016SFI: SYST 0x%llx + 0x%x crosses page\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sfi\00", align 1
@firmware_kobj = external dso_local global %struct.kobject*, align 8
@sfi_kobj = internal global %struct.kobject* null, align 8, !dbg !3278
@.str.8 = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\016SFI: SFI sysfs interfaces init success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_sfi_sysfs_init234 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.sfi_table_header* @sfi_check_table(i64 %pa, %struct.sfi_table_key* %key) #0 section ".ref.text" !dbg !3301 {
entry:
  %retval = alloca %struct.sfi_table_header*, align 8
  %pa.addr = alloca i64, align 8
  %key.addr = alloca %struct.sfi_table_key*, align 8
  %th = alloca %struct.sfi_table_header*, align 8
  %ret = alloca i8*, align 8
  store i64 %pa, i64* %pa.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pa.addr, metadata !3311, metadata !DIExpression()), !dbg !3312
  store %struct.sfi_table_key* %key, %struct.sfi_table_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key** %key.addr, metadata !3313, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th, metadata !3315, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !3317, metadata !DIExpression()), !dbg !3318
  store i8* null, i8** %ret, align 8, !dbg !3318
  %0 = load i64, i64* %pa.addr, align 8, !dbg !3319
  %call = call %struct.sfi_table_header* @sfi_map_table(i64 %0) #9, !dbg !3320
  store %struct.sfi_table_header* %call, %struct.sfi_table_header** %th, align 8, !dbg !3321
  %1 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3322
  %tobool = icmp ne %struct.sfi_table_header* %1, null, !dbg !3322
  br i1 %tobool, label %if.end, label %if.then, !dbg !3324

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #9, !dbg !3325
  %2 = bitcast i8* %call1 to %struct.sfi_table_header*, !dbg !3325
  store %struct.sfi_table_header* %2, %struct.sfi_table_header** %retval, align 8, !dbg !3326
  br label %return, !dbg !3326

if.end:                                           ; preds = %entry
  %3 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !3327
  %sig = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %3, i32 0, i32 0, !dbg !3329
  %4 = load i8*, i8** %sig, align 8, !dbg !3329
  %tobool2 = icmp ne i8* %4, null, !dbg !3327
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3330

if.then3:                                         ; preds = %if.end
  %5 = load i64, i64* %pa.addr, align 8, !dbg !3331
  %6 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3333
  call void @sfi_print_table_header(i64 %5, %struct.sfi_table_header* %6) #9, !dbg !3334
  %7 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3335
  %call4 = call i32 @sfi_verify_table(%struct.sfi_table_header* %7) #9, !dbg !3337
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3337
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !3338

if.then6:                                         ; preds = %if.then3
  %call7 = call i8* @ERR_PTR(i64 -22) #9, !dbg !3339
  store i8* %call7, i8** %ret, align 8, !dbg !3340
  br label %if.end8, !dbg !3341

if.end8:                                          ; preds = %if.then6, %if.then3
  br label %if.end13, !dbg !3342

if.else:                                          ; preds = %if.end
  %8 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3343
  %9 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !3346
  %call9 = call i32 @sfi_table_check_key(%struct.sfi_table_header* %8, %struct.sfi_table_key* %9) #9, !dbg !3347
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3347
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3348

if.then11:                                        ; preds = %if.else
  %10 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3349
  store %struct.sfi_table_header* %10, %struct.sfi_table_header** %retval, align 8, !dbg !3350
  br label %return, !dbg !3350

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end8
  %11 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3351
  call void @sfi_unmap_table(%struct.sfi_table_header* %11) #9, !dbg !3352
  %12 = load i8*, i8** %ret, align 8, !dbg !3353
  %13 = bitcast i8* %12 to %struct.sfi_table_header*, !dbg !3353
  store %struct.sfi_table_header* %13, %struct.sfi_table_header** %retval, align 8, !dbg !3354
  br label %return, !dbg !3354

return:                                           ; preds = %if.end13, %if.then11, %if.then
  %14 = load %struct.sfi_table_header*, %struct.sfi_table_header** %retval, align 8, !dbg !3355
  ret %struct.sfi_table_header* %14, !dbg !3355
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sfi_table_header* @sfi_map_table(i64 %pa) #0 !dbg !3356 {
entry:
  %retval = alloca %struct.sfi_table_header*, align 8
  %pa.addr = alloca i64, align 8
  %th = alloca %struct.sfi_table_header*, align 8
  %length = alloca i32, align 4
  store i64 %pa, i64* %pa.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pa.addr, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th, metadata !3361, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.declare(metadata i32* %length, metadata !3363, metadata !DIExpression()), !dbg !3364
  %0 = load i64, i64* @syst_pa, align 8, !dbg !3365
  %and = and i64 %0, -4096, !dbg !3365
  %1 = load i64, i64* %pa.addr, align 8, !dbg !3365
  %and1 = and i64 %1, -4096, !dbg !3365
  %cmp = icmp eq i64 %and, %and1, !dbg !3365
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !3365

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* @syst_pa, align 8, !dbg !3365
  %and2 = and i64 %2, -4096, !dbg !3365
  %3 = load i64, i64* %pa.addr, align 8, !dbg !3365
  %add = add i64 %3, 24, !dbg !3365
  %and3 = and i64 %add, -4096, !dbg !3365
  %cmp4 = icmp eq i64 %and2, %and3, !dbg !3365
  br i1 %cmp4, label %if.else, label %if.then, !dbg !3367

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %pa.addr, align 8, !dbg !3368
  %call = call i8* @sfi_map_memory(i64 %4, i32 24) #9, !dbg !3369
  %5 = bitcast i8* %call to %struct.sfi_table_header*, !dbg !3369
  store %struct.sfi_table_header* %5, %struct.sfi_table_header** %th, align 8, !dbg !3370
  br label %if.end, !dbg !3371

if.else:                                          ; preds = %land.lhs.true
  %6 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !3372
  %7 = bitcast %struct.sfi_table_simple* %6 to i8*, !dbg !3373
  %8 = load i64, i64* %pa.addr, align 8, !dbg !3374
  %9 = load i64, i64* @syst_pa, align 8, !dbg !3375
  %sub = sub i64 %8, %9, !dbg !3376
  %add.ptr = getelementptr i8, i8* %7, i64 %sub, !dbg !3377
  %10 = bitcast i8* %add.ptr to %struct.sfi_table_header*, !dbg !3373
  store %struct.sfi_table_header* %10, %struct.sfi_table_header** %th, align 8, !dbg !3378
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3379
  %12 = ptrtoint %struct.sfi_table_header* %11 to i64, !dbg !3379
  %and5 = and i64 %12, -4096, !dbg !3379
  %13 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3379
  %14 = ptrtoint %struct.sfi_table_header* %13 to i64, !dbg !3379
  %and6 = and i64 %14, -4096, !dbg !3379
  %cmp7 = icmp eq i64 %and5, %and6, !dbg !3379
  br i1 %cmp7, label %land.lhs.true8, label %if.end14, !dbg !3379

land.lhs.true8:                                   ; preds = %if.end
  %15 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3379
  %16 = ptrtoint %struct.sfi_table_header* %15 to i64, !dbg !3379
  %and9 = and i64 %16, -4096, !dbg !3379
  %17 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3379
  %18 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3379
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %18, i32 0, i32 1, !dbg !3379
  %19 = load i32, i32* %len, align 1, !dbg !3379
  %idx.ext = zext i32 %19 to i64, !dbg !3379
  %add.ptr10 = getelementptr %struct.sfi_table_header, %struct.sfi_table_header* %17, i64 %idx.ext, !dbg !3379
  %20 = ptrtoint %struct.sfi_table_header* %add.ptr10 to i64, !dbg !3379
  %and11 = and i64 %20, -4096, !dbg !3379
  %cmp12 = icmp eq i64 %and9, %and11, !dbg !3379
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3381

if.then13:                                        ; preds = %land.lhs.true8
  %21 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3382
  store %struct.sfi_table_header* %21, %struct.sfi_table_header** %retval, align 8, !dbg !3383
  br label %return, !dbg !3383

if.end14:                                         ; preds = %land.lhs.true8, %if.end
  %22 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3384
  %len15 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %22, i32 0, i32 1, !dbg !3385
  %23 = load i32, i32* %len15, align 1, !dbg !3385
  store i32 %23, i32* %length, align 4, !dbg !3386
  %24 = load i64, i64* @syst_pa, align 8, !dbg !3387
  %and16 = and i64 %24, -4096, !dbg !3387
  %25 = load i64, i64* %pa.addr, align 8, !dbg !3387
  %and17 = and i64 %25, -4096, !dbg !3387
  %cmp18 = icmp eq i64 %and16, %and17, !dbg !3387
  br i1 %cmp18, label %land.lhs.true19, label %if.then24, !dbg !3387

land.lhs.true19:                                  ; preds = %if.end14
  %26 = load i64, i64* @syst_pa, align 8, !dbg !3387
  %and20 = and i64 %26, -4096, !dbg !3387
  %27 = load i64, i64* %pa.addr, align 8, !dbg !3387
  %add21 = add i64 %27, 24, !dbg !3387
  %and22 = and i64 %add21, -4096, !dbg !3387
  %cmp23 = icmp eq i64 %and20, %and22, !dbg !3387
  br i1 %cmp23, label %if.end25, label %if.then24, !dbg !3389

if.then24:                                        ; preds = %land.lhs.true19, %if.end14
  %28 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3390
  %29 = bitcast %struct.sfi_table_header* %28 to i8*, !dbg !3390
  call void @sfi_unmap_memory(i8* %29, i32 24) #9, !dbg !3391
  br label %if.end25, !dbg !3391

if.end25:                                         ; preds = %if.then24, %land.lhs.true19
  %30 = load i64, i64* %pa.addr, align 8, !dbg !3392
  %31 = load i32, i32* %length, align 4, !dbg !3393
  %call26 = call i8* @sfi_map_memory(i64 %30, i32 %31) #9, !dbg !3394
  %32 = bitcast i8* %call26 to %struct.sfi_table_header*, !dbg !3394
  store %struct.sfi_table_header* %32, %struct.sfi_table_header** %retval, align 8, !dbg !3395
  br label %return, !dbg !3395

return:                                           ; preds = %if.end25, %if.then13
  %33 = load %struct.sfi_table_header*, %struct.sfi_table_header** %retval, align 8, !dbg !3396
  ret %struct.sfi_table_header* %33, !dbg !3396
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3397 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3401, metadata !DIExpression()), !dbg !3402
  %0 = load i64, i64* %error.addr, align 8, !dbg !3403
  %1 = inttoptr i64 %0 to i8*, !dbg !3404
  ret i8* %1, !dbg !3405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sfi_print_table_header(i64 %pa, %struct.sfi_table_header* %header) #0 !dbg !3406 {
entry:
  %pa.addr = alloca i64, align 8
  %header.addr = alloca %struct.sfi_table_header*, align 8
  store i64 %pa, i64* %pa.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pa.addr, metadata !3409, metadata !DIExpression()), !dbg !3410
  store %struct.sfi_table_header* %header, %struct.sfi_table_header** %header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %header.addr, metadata !3411, metadata !DIExpression()), !dbg !3412
  %0 = load %struct.sfi_table_header*, %struct.sfi_table_header** %header.addr, align 8, !dbg !3413
  %sig = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %0, i32 0, i32 0, !dbg !3413
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %sig, i64 0, i64 0, !dbg !3413
  %1 = load i64, i64* %pa.addr, align 8, !dbg !3413
  %2 = load %struct.sfi_table_header*, %struct.sfi_table_header** %header.addr, align 8, !dbg !3413
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %2, i32 0, i32 1, !dbg !3413
  %3 = load i32, i32* %len, align 1, !dbg !3413
  %4 = load %struct.sfi_table_header*, %struct.sfi_table_header** %header.addr, align 8, !dbg !3413
  %rev = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %4, i32 0, i32 2, !dbg !3413
  %5 = load i8, i8* %rev, align 1, !dbg !3413
  %conv = zext i8 %5 to i32, !dbg !3413
  %6 = load %struct.sfi_table_header*, %struct.sfi_table_header** %header.addr, align 8, !dbg !3413
  %oem_id = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %6, i32 0, i32 4, !dbg !3413
  %arraydecay1 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id, i64 0, i64 0, !dbg !3413
  %7 = load %struct.sfi_table_header*, %struct.sfi_table_header** %header.addr, align 8, !dbg !3413
  %oem_table_id = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %7, i32 0, i32 5, !dbg !3413
  %arraydecay2 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id, i64 0, i64 0, !dbg !3413
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay, i64 %1, i32 %3, i32 %conv, i8* %arraydecay1, i8* %arraydecay2) #10, !dbg !3413
  ret void, !dbg !3414
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sfi_verify_table(%struct.sfi_table_header* %table) #0 !dbg !3415 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.sfi_table_header*, align 8
  %checksum = alloca i8, align 1
  %puchar = alloca i8*, align 8
  %length = alloca i32, align 4
  store %struct.sfi_table_header* %table, %struct.sfi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %table.addr, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.declare(metadata i8* %checksum, metadata !3420, metadata !DIExpression()), !dbg !3421
  store i8 0, i8* %checksum, align 1, !dbg !3421
  call void @llvm.dbg.declare(metadata i8** %puchar, metadata !3422, metadata !DIExpression()), !dbg !3423
  %0 = load %struct.sfi_table_header*, %struct.sfi_table_header** %table.addr, align 8, !dbg !3424
  %1 = bitcast %struct.sfi_table_header* %0 to i8*, !dbg !3425
  store i8* %1, i8** %puchar, align 8, !dbg !3423
  call void @llvm.dbg.declare(metadata i32* %length, metadata !3426, metadata !DIExpression()), !dbg !3427
  %2 = load %struct.sfi_table_header*, %struct.sfi_table_header** %table.addr, align 8, !dbg !3428
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %2, i32 0, i32 1, !dbg !3429
  %3 = load i32, i32* %len, align 1, !dbg !3429
  store i32 %3, i32* %length, align 4, !dbg !3427
  %4 = load i32, i32* %length, align 4, !dbg !3430
  %cmp = icmp ugt i32 %4, 1048576, !dbg !3432
  br i1 %cmp, label %if.then, label %if.end, !dbg !3433

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %length, align 4, !dbg !3434
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %5) #10, !dbg !3434
  store i32 -1, i32* %retval, align 4, !dbg !3436
  br label %return, !dbg !3436

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !3437

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %length, align 4, !dbg !3438
  %dec = add i32 %6, -1, !dbg !3438
  store i32 %dec, i32* %length, align 4, !dbg !3438
  %tobool = icmp ne i32 %6, 0, !dbg !3437
  br i1 %tobool, label %while.body, label %while.end, !dbg !3437

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %puchar, align 8, !dbg !3439
  %incdec.ptr = getelementptr i8, i8* %7, i32 1, !dbg !3439
  store i8* %incdec.ptr, i8** %puchar, align 8, !dbg !3439
  %8 = load i8, i8* %7, align 1, !dbg !3440
  %conv = zext i8 %8 to i32, !dbg !3440
  %9 = load i8, i8* %checksum, align 1, !dbg !3441
  %conv1 = zext i8 %9 to i32, !dbg !3441
  %add = add i32 %conv1, %conv, !dbg !3441
  %conv2 = trunc i32 %add to i8, !dbg !3441
  store i8 %conv2, i8* %checksum, align 1, !dbg !3441
  br label %while.cond, !dbg !3437, !llvm.loop !3442

while.end:                                        ; preds = %while.cond
  %10 = load i8, i8* %checksum, align 1, !dbg !3443
  %tobool3 = icmp ne i8 %10, 0, !dbg !3443
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !3445

if.then4:                                         ; preds = %while.end
  %11 = load %struct.sfi_table_header*, %struct.sfi_table_header** %table.addr, align 8, !dbg !3446
  %csum = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %11, i32 0, i32 3, !dbg !3446
  %12 = load i8, i8* %csum, align 1, !dbg !3446
  %conv5 = zext i8 %12 to i32, !dbg !3446
  %13 = load %struct.sfi_table_header*, %struct.sfi_table_header** %table.addr, align 8, !dbg !3446
  %csum6 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %13, i32 0, i32 3, !dbg !3446
  %14 = load i8, i8* %csum6, align 1, !dbg !3446
  %conv7 = zext i8 %14 to i32, !dbg !3446
  %15 = load i8, i8* %checksum, align 1, !dbg !3446
  %conv8 = zext i8 %15 to i32, !dbg !3446
  %sub = sub i32 %conv7, %conv8, !dbg !3446
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %conv5, i32 %sub) #10, !dbg !3446
  store i32 -1, i32* %retval, align 4, !dbg !3448
  br label %return, !dbg !3448

if.end10:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !3449
  br label %return, !dbg !3449

return:                                           ; preds = %if.end10, %if.then4, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3450
  ret i32 %16, !dbg !3450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sfi_table_check_key(%struct.sfi_table_header* %th, %struct.sfi_table_key* %key) #0 !dbg !3451 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca %struct.sfi_table_header*, align 8
  %key.addr = alloca %struct.sfi_table_key*, align 8
  store %struct.sfi_table_header* %th, %struct.sfi_table_header** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th.addr, metadata !3454, metadata !DIExpression()), !dbg !3455
  store %struct.sfi_table_key* %key, %struct.sfi_table_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key** %key.addr, metadata !3456, metadata !DIExpression()), !dbg !3457
  %0 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3458
  %sig = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %0, i32 0, i32 0, !dbg !3460
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %sig, i64 0, i64 0, !dbg !3458
  %1 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !3461
  %sig1 = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %1, i32 0, i32 0, !dbg !3462
  %2 = load i8*, i8** %sig1, align 8, !dbg !3462
  %call = call i32 @strncmp(i8* %arraydecay, i8* %2, i64 4) #9, !dbg !3463
  %tobool = icmp ne i32 %call, 0, !dbg !3463
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3464

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !3465
  %oem_id = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %3, i32 0, i32 1, !dbg !3466
  %4 = load i8*, i8** %oem_id, align 8, !dbg !3466
  %tobool2 = icmp ne i8* %4, null, !dbg !3465
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false8, !dbg !3467

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3468
  %oem_id3 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %5, i32 0, i32 4, !dbg !3469
  %arraydecay4 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id3, i64 0, i64 0, !dbg !3468
  %6 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !3470
  %oem_id5 = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %6, i32 0, i32 1, !dbg !3471
  %7 = load i8*, i8** %oem_id5, align 8, !dbg !3471
  %call6 = call i32 @strncmp(i8* %arraydecay4, i8* %7, i64 6) #9, !dbg !3472
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3472
  br i1 %tobool7, label %if.then, label %lor.lhs.false8, !dbg !3473

lor.lhs.false8:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !3474
  %oem_table_id = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %8, i32 0, i32 2, !dbg !3475
  %9 = load i8*, i8** %oem_table_id, align 8, !dbg !3475
  %tobool9 = icmp ne i8* %9, null, !dbg !3474
  br i1 %tobool9, label %land.lhs.true10, label %if.end, !dbg !3476

land.lhs.true10:                                  ; preds = %lor.lhs.false8
  %10 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3477
  %oem_table_id11 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %10, i32 0, i32 5, !dbg !3478
  %arraydecay12 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id11, i64 0, i64 0, !dbg !3477
  %11 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !3479
  %oem_table_id13 = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %11, i32 0, i32 2, !dbg !3480
  %12 = load i8*, i8** %oem_table_id13, align 8, !dbg !3480
  %call14 = call i32 @strncmp(i8* %arraydecay12, i8* %12, i64 8) #9, !dbg !3481
  %tobool15 = icmp ne i32 %call14, 0, !dbg !3481
  br i1 %tobool15, label %if.then, label %if.end, !dbg !3482

if.then:                                          ; preds = %land.lhs.true10, %land.lhs.true, %entry
  store i32 -1, i32* %retval, align 4, !dbg !3483
  br label %return, !dbg !3483

if.end:                                           ; preds = %land.lhs.true10, %lor.lhs.false8
  store i32 0, i32* %retval, align 4, !dbg !3484
  br label %return, !dbg !3484

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3485
  ret i32 %13, !dbg !3485
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sfi_unmap_table(%struct.sfi_table_header* %th) #0 !dbg !3486 {
entry:
  %th.addr = alloca %struct.sfi_table_header*, align 8
  store %struct.sfi_table_header* %th, %struct.sfi_table_header** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th.addr, metadata !3489, metadata !DIExpression()), !dbg !3490
  %0 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !3491
  %1 = ptrtoint %struct.sfi_table_simple* %0 to i64, !dbg !3491
  %and = and i64 %1, -4096, !dbg !3491
  %2 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3491
  %3 = ptrtoint %struct.sfi_table_header* %2 to i64, !dbg !3491
  %and1 = and i64 %3, -4096, !dbg !3491
  %cmp = icmp eq i64 %and, %and1, !dbg !3491
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !3491

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !3491
  %5 = ptrtoint %struct.sfi_table_simple* %4 to i64, !dbg !3491
  %and2 = and i64 %5, -4096, !dbg !3491
  %6 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3491
  %7 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3491
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %7, i32 0, i32 1, !dbg !3491
  %8 = load i32, i32* %len, align 1, !dbg !3491
  %idx.ext = zext i32 %8 to i64, !dbg !3491
  %add.ptr = getelementptr %struct.sfi_table_header, %struct.sfi_table_header* %6, i64 %idx.ext, !dbg !3491
  %9 = ptrtoint %struct.sfi_table_header* %add.ptr to i64, !dbg !3491
  %and3 = and i64 %9, -4096, !dbg !3491
  %cmp4 = icmp eq i64 %and2, %and3, !dbg !3491
  br i1 %cmp4, label %if.end, label %if.then, !dbg !3493

if.then:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3494
  %11 = bitcast %struct.sfi_table_header* %10 to i8*, !dbg !3494
  %12 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3495
  %13 = ptrtoint %struct.sfi_table_header* %12 to i64, !dbg !3495
  %and5 = and i64 %13, -4096, !dbg !3495
  %14 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3495
  %15 = ptrtoint %struct.sfi_table_header* %14 to i64, !dbg !3495
  %and6 = and i64 %15, -4096, !dbg !3495
  %cmp7 = icmp eq i64 %and5, %and6, !dbg !3495
  br i1 %cmp7, label %land.lhs.true8, label %cond.false, !dbg !3495

land.lhs.true8:                                   ; preds = %if.then
  %16 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3495
  %17 = ptrtoint %struct.sfi_table_header* %16 to i64, !dbg !3495
  %and9 = and i64 %17, -4096, !dbg !3495
  %18 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3495
  %19 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3495
  %len10 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %19, i32 0, i32 1, !dbg !3495
  %20 = load i32, i32* %len10, align 1, !dbg !3495
  %idx.ext11 = zext i32 %20 to i64, !dbg !3495
  %add.ptr12 = getelementptr %struct.sfi_table_header, %struct.sfi_table_header* %18, i64 %idx.ext11, !dbg !3495
  %21 = ptrtoint %struct.sfi_table_header* %add.ptr12 to i64, !dbg !3495
  %and13 = and i64 %21, -4096, !dbg !3495
  %cmp14 = icmp eq i64 %and9, %and13, !dbg !3495
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !3495

cond.true:                                        ; preds = %land.lhs.true8
  br label %cond.end, !dbg !3495

cond.false:                                       ; preds = %land.lhs.true8, %if.then
  %22 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3496
  %len15 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %22, i32 0, i32 1, !dbg !3497
  %23 = load i32, i32* %len15, align 1, !dbg !3497
  %conv = zext i32 %23 to i64, !dbg !3496
  br label %cond.end, !dbg !3495

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 24, %cond.true ], [ %conv, %cond.false ], !dbg !3495
  %conv16 = trunc i64 %cond to i32, !dbg !3495
  call void @sfi_unmap_memory(i8* %11, i32 %conv16) #9, !dbg !3498
  br label %if.end, !dbg !3498

if.end:                                           ; preds = %cond.end, %land.lhs.true
  ret void, !dbg !3499
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.sfi_table_header* @sfi_get_table(%struct.sfi_table_key* %key) #0 !dbg !3500 {
entry:
  %retval = alloca %struct.sfi_table_header*, align 8
  %key.addr = alloca %struct.sfi_table_key*, align 8
  %th = alloca %struct.sfi_table_header*, align 8
  %tbl_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.sfi_table_key* %key, %struct.sfi_table_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key** %key.addr, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.declare(metadata i32* %tbl_cnt, metadata !3507, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3509, metadata !DIExpression()), !dbg !3510
  %0 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !3511
  %header = getelementptr inbounds %struct.sfi_table_simple, %struct.sfi_table_simple* %0, i32 0, i32 0, !dbg !3511
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %header, i32 0, i32 1, !dbg !3511
  %1 = load i32, i32* %len, align 1, !dbg !3511
  %conv = zext i32 %1 to i64, !dbg !3511
  %sub = sub i64 %conv, 24, !dbg !3511
  %div = udiv i64 %sub, 8, !dbg !3511
  %conv1 = trunc i64 %div to i32, !dbg !3511
  store i32 %conv1, i32* %tbl_cnt, align 4, !dbg !3512
  store i32 0, i32* %i, align 4, !dbg !3513
  br label %for.cond, !dbg !3515

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3516
  %3 = load i32, i32* %tbl_cnt, align 4, !dbg !3518
  %cmp = icmp ult i32 %2, %3, !dbg !3519
  br i1 %cmp, label %for.body, label %for.end, !dbg !3520

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !3521
  %pentry = getelementptr inbounds %struct.sfi_table_simple, %struct.sfi_table_simple* %4, i32 0, i32 1, !dbg !3523
  %5 = load i32, i32* %i, align 4, !dbg !3524
  %idxprom = zext i32 %5 to i64, !dbg !3521
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %pentry, i64 0, i64 %idxprom, !dbg !3521
  %6 = load i64, i64* %arrayidx, align 1, !dbg !3521
  %7 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !3525
  %call = call %struct.sfi_table_header* @sfi_check_table(i64 %6, %struct.sfi_table_key* %7) #9, !dbg !3526
  store %struct.sfi_table_header* %call, %struct.sfi_table_header** %th, align 8, !dbg !3527
  %8 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3528
  %9 = bitcast %struct.sfi_table_header* %8 to i8*, !dbg !3528
  %call3 = call zeroext i1 @IS_ERR(i8* %9) #9, !dbg !3530
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !3531

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3532
  %tobool = icmp ne %struct.sfi_table_header* %10, null, !dbg !3532
  br i1 %tobool, label %if.then, label %if.end, !dbg !3533

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3534
  store %struct.sfi_table_header* %11, %struct.sfi_table_header** %retval, align 8, !dbg !3535
  br label %return, !dbg !3535

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3536

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !3537
  %inc = add i32 %12, 1, !dbg !3537
  store i32 %inc, i32* %i, align 4, !dbg !3537
  br label %for.cond, !dbg !3538, !llvm.loop !3539

for.end:                                          ; preds = %for.cond
  store %struct.sfi_table_header* null, %struct.sfi_table_header** %retval, align 8, !dbg !3541
  br label %return, !dbg !3541

return:                                           ; preds = %for.end, %if.then
  %13 = load %struct.sfi_table_header*, %struct.sfi_table_header** %retval, align 8, !dbg !3542
  ret %struct.sfi_table_header* %13, !dbg !3542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3543 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3548
  %1 = ptrtoint i8* %0 to i64, !dbg !3548
  %2 = inttoptr i64 %1 to i8*, !dbg !3548
  %3 = ptrtoint i8* %2 to i64, !dbg !3548
  %cmp = icmp uge i64 %3, -4095, !dbg !3548
  %lnot = xor i1 %cmp, true, !dbg !3548
  %lnot1 = xor i1 %lnot, true, !dbg !3548
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3548
  %conv = sext i32 %lnot.ext to i64, !dbg !3548
  %tobool = icmp ne i64 %conv, 0, !dbg !3548
  ret i1 %tobool, !dbg !3549
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sfi_put_table(%struct.sfi_table_header* %th) #0 !dbg !3550 {
entry:
  %th.addr = alloca %struct.sfi_table_header*, align 8
  store %struct.sfi_table_header* %th, %struct.sfi_table_header** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th.addr, metadata !3551, metadata !DIExpression()), !dbg !3552
  %0 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !3553
  call void @sfi_unmap_table(%struct.sfi_table_header* %0) #9, !dbg !3554
  ret void, !dbg !3555
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sfi_table_parse(i8* %signature, i8* %oem_id, i8* %oem_table_id, i32 (%struct.sfi_table_header*)* %handler) #0 !dbg !3556 {
entry:
  %signature.addr = alloca i8*, align 8
  %oem_id.addr = alloca i8*, align 8
  %oem_table_id.addr = alloca i8*, align 8
  %handler.addr = alloca i32 (%struct.sfi_table_header*)*, align 8
  %table = alloca %struct.sfi_table_header*, align 8
  %key = alloca %struct.sfi_table_key, align 8
  %ret = alloca i32, align 4
  store i8* %signature, i8** %signature.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %signature.addr, metadata !3561, metadata !DIExpression()), !dbg !3562
  store i8* %oem_id, i8** %oem_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %oem_id.addr, metadata !3563, metadata !DIExpression()), !dbg !3564
  store i8* %oem_table_id, i8** %oem_table_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %oem_table_id.addr, metadata !3565, metadata !DIExpression()), !dbg !3566
  store i32 (%struct.sfi_table_header*)* %handler, i32 (%struct.sfi_table_header*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.sfi_table_header*)** %handler.addr, metadata !3567, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %table, metadata !3569, metadata !DIExpression()), !dbg !3570
  store %struct.sfi_table_header* null, %struct.sfi_table_header** %table, align 8, !dbg !3570
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key* %key, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3573, metadata !DIExpression()), !dbg !3574
  store i32 -22, i32* %ret, align 4, !dbg !3574
  %0 = load i32, i32* @sfi_disabled, align 4, !dbg !3575
  %tobool = icmp ne i32 %0, 0, !dbg !3575
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3577

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32 (%struct.sfi_table_header*)*, i32 (%struct.sfi_table_header*)** %handler.addr, align 8, !dbg !3578
  %tobool1 = icmp ne i32 (%struct.sfi_table_header*)* %1, null, !dbg !3578
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !3579

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %signature.addr, align 8, !dbg !3580
  %tobool3 = icmp ne i8* %2, null, !dbg !3580
  br i1 %tobool3, label %if.end, label %if.then, !dbg !3581

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %exit, !dbg !3582

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i8*, i8** %signature.addr, align 8, !dbg !3583
  %sig = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 0, !dbg !3584
  store i8* %3, i8** %sig, align 8, !dbg !3585
  %4 = load i8*, i8** %oem_id.addr, align 8, !dbg !3586
  %oem_id4 = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 1, !dbg !3587
  store i8* %4, i8** %oem_id4, align 8, !dbg !3588
  %5 = load i8*, i8** %oem_table_id.addr, align 8, !dbg !3589
  %oem_table_id5 = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 2, !dbg !3590
  store i8* %5, i8** %oem_table_id5, align 8, !dbg !3591
  %call = call %struct.sfi_table_header* @sfi_get_table(%struct.sfi_table_key* %key) #9, !dbg !3592
  store %struct.sfi_table_header* %call, %struct.sfi_table_header** %table, align 8, !dbg !3593
  %6 = load %struct.sfi_table_header*, %struct.sfi_table_header** %table, align 8, !dbg !3594
  %tobool6 = icmp ne %struct.sfi_table_header* %6, null, !dbg !3594
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3596

if.then7:                                         ; preds = %if.end
  br label %exit, !dbg !3597

if.end8:                                          ; preds = %if.end
  %7 = load i32 (%struct.sfi_table_header*)*, i32 (%struct.sfi_table_header*)** %handler.addr, align 8, !dbg !3598
  %8 = load %struct.sfi_table_header*, %struct.sfi_table_header** %table, align 8, !dbg !3599
  %call9 = call i32 %7(%struct.sfi_table_header* %8) #9, !dbg !3598
  store i32 %call9, i32* %ret, align 4, !dbg !3600
  %9 = load %struct.sfi_table_header*, %struct.sfi_table_header** %table, align 8, !dbg !3601
  call void @sfi_put_table(%struct.sfi_table_header* %9) #9, !dbg !3602
  br label %exit, !dbg !3602

exit:                                             ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !3603), !dbg !3604
  %10 = load i32, i32* %ret, align 4, !dbg !3605
  ret i32 %10, !dbg !3606
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local %struct.sfi_table_attr* @sfi_sysfs_install_table(i64 %pa) #2 section ".init.text" !dbg !3607 {
entry:
  %retval = alloca %struct.sfi_table_attr*, align 8
  %pa.addr = alloca i64, align 8
  %tbl_attr = alloca %struct.sfi_table_attr*, align 8
  %th = alloca %struct.sfi_table_header*, align 8
  %ret = alloca i32, align 4
  store i64 %pa, i64* %pa.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pa.addr, metadata !3610, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.declare(metadata %struct.sfi_table_attr** %tbl_attr, metadata !3612, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3616, metadata !DIExpression()), !dbg !3617
  %call = call i8* @kzalloc(i64 64, i32 3264) #9, !dbg !3618
  %0 = bitcast i8* %call to %struct.sfi_table_attr*, !dbg !3618
  store %struct.sfi_table_attr* %0, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3619
  %1 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3620
  %tobool = icmp ne %struct.sfi_table_attr* %1, null, !dbg !3620
  br i1 %tobool, label %if.end, label %if.then, !dbg !3622

if.then:                                          ; preds = %entry
  store %struct.sfi_table_attr* null, %struct.sfi_table_attr** %retval, align 8, !dbg !3623
  br label %return, !dbg !3623

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %pa.addr, align 8, !dbg !3624
  %call1 = call %struct.sfi_table_header* @sfi_map_table(i64 %2) #9, !dbg !3625
  store %struct.sfi_table_header* %call1, %struct.sfi_table_header** %th, align 8, !dbg !3626
  %3 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3627
  %tobool2 = icmp ne %struct.sfi_table_header* %3, null, !dbg !3627
  br i1 %tobool2, label %lor.lhs.false, label %if.then4, !dbg !3629

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3630
  %sig = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %4, i32 0, i32 0, !dbg !3631
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %sig, i64 0, i64 0, !dbg !3630
  %5 = load i8, i8* %arrayidx, align 1, !dbg !3630
  %tobool3 = icmp ne i8 %5, 0, !dbg !3630
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3632

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3633
  %7 = bitcast %struct.sfi_table_attr* %6 to i8*, !dbg !3633
  call void @kfree(i8* %7) #9, !dbg !3635
  store %struct.sfi_table_attr* null, %struct.sfi_table_attr** %retval, align 8, !dbg !3636
  br label %return, !dbg !3636

if.end5:                                          ; preds = %lor.lhs.false
  br label %do.body, !dbg !3637

do.body:                                          ; preds = %if.end5
  br label %do.end, !dbg !3638

do.end:                                           ; preds = %do.body
  %8 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3640
  %name = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %8, i32 0, i32 1, !dbg !3641
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %name, i64 0, i64 0, !dbg !3642
  %9 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3643
  %sig6 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %9, i32 0, i32 0, !dbg !3644
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %sig6, i64 0, i64 0, !dbg !3642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay, i8* align 1 %arraydecay7, i64 4, i1 false), !dbg !3642
  %10 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3645
  %attr = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %10, i32 0, i32 0, !dbg !3646
  %size = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i32 0, i32 1, !dbg !3647
  store i64 0, i64* %size, align 8, !dbg !3648
  %11 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3649
  %attr8 = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %11, i32 0, i32 0, !dbg !3650
  %read = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr8, i32 0, i32 3, !dbg !3651
  store i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @sfi_table_show, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %read, align 8, !dbg !3652
  %12 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3653
  %name9 = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %12, i32 0, i32 1, !dbg !3654
  %arraydecay10 = getelementptr inbounds [8 x i8], [8 x i8]* %name9, i64 0, i64 0, !dbg !3653
  %13 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3655
  %attr11 = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %13, i32 0, i32 0, !dbg !3656
  %attr12 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr11, i32 0, i32 0, !dbg !3657
  %name13 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr12, i32 0, i32 0, !dbg !3658
  store i8* %arraydecay10, i8** %name13, align 8, !dbg !3659
  %14 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3660
  %attr14 = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %14, i32 0, i32 0, !dbg !3661
  %attr15 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr14, i32 0, i32 0, !dbg !3662
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr15, i32 0, i32 1, !dbg !3663
  store i16 256, i16* %mode, align 8, !dbg !3664
  %15 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !3665
  %16 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3666
  %attr16 = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %16, i32 0, i32 0, !dbg !3667
  %call17 = call i32 @sysfs_create_bin_file(%struct.kobject* %15, %struct.bin_attribute* %attr16) #9, !dbg !3668
  store i32 %call17, i32* %ret, align 4, !dbg !3669
  %17 = load i32, i32* %ret, align 4, !dbg !3670
  %tobool18 = icmp ne i32 %17, 0, !dbg !3670
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3672

if.then19:                                        ; preds = %do.end
  %18 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3673
  %19 = bitcast %struct.sfi_table_attr* %18 to i8*, !dbg !3673
  call void @kfree(i8* %19) #9, !dbg !3675
  store %struct.sfi_table_attr* null, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3676
  br label %if.end20, !dbg !3677

if.end20:                                         ; preds = %if.then19, %do.end
  %20 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3678
  call void @sfi_unmap_table(%struct.sfi_table_header* %20) #9, !dbg !3679
  %21 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3680
  store %struct.sfi_table_attr* %21, %struct.sfi_table_attr** %retval, align 8, !dbg !3681
  br label %return, !dbg !3681

return:                                           ; preds = %if.end20, %if.then4, %if.then
  %22 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %retval, align 8, !dbg !3682
  ret %struct.sfi_table_attr* %22, !dbg !3682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3683 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3686, metadata !DIExpression()), !dbg !3690
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3696, metadata !DIExpression()), !dbg !3697
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3698, metadata !DIExpression()), !dbg !3699
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3700, metadata !DIExpression()), !dbg !3701
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3702, metadata !DIExpression()), !dbg !3706
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3708, metadata !DIExpression()), !dbg !3712
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3714, metadata !DIExpression()), !dbg !3718
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3723, metadata !DIExpression()), !dbg !3724
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3725, metadata !DIExpression()), !dbg !3726
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3727, metadata !DIExpression()), !dbg !3728
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3729, metadata !DIExpression()), !dbg !3730
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3731, metadata !DIExpression()), !dbg !3732
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3733, metadata !DIExpression()), !dbg !3734
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3735, metadata !DIExpression()), !dbg !3736
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3739, metadata !DIExpression()), !dbg !3740
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  %0 = load i64, i64* %size.addr, align 8, !dbg !3743
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3744
  %or = or i32 %1, 256, !dbg !3745
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3746
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !3747
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3748

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3749
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3750
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3751

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3752
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3753
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3754
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !3755
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3732
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3756
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3757
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3758
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3759
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3760
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3761
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !3762
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3762
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3762
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3762
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !3762
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3763
  br label %kmalloc.exit, !dbg !3763

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3764
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3765
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3765
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3767

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3768
  br label %kmalloc_index.exit.i, !dbg !3768

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3769
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3771
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3772

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3773
  br label %kmalloc_index.exit.i, !dbg !3773

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3774
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3776
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3777

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3778
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3779
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3780

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3781
  br label %kmalloc_index.exit.i, !dbg !3781

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3782
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3784
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3785

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3786
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3787
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3788

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3789
  br label %kmalloc_index.exit.i, !dbg !3789

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3790
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3792
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3793

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3794
  br label %kmalloc_index.exit.i, !dbg !3794

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3795
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3797
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3798

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3799
  br label %kmalloc_index.exit.i, !dbg !3799

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3800
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3802
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3803

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3804
  br label %kmalloc_index.exit.i, !dbg !3804

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3805
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3807
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3808

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3809
  br label %kmalloc_index.exit.i, !dbg !3809

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3810
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3812
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3813

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3814
  br label %kmalloc_index.exit.i, !dbg !3814

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3815
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3817
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3818

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3819
  br label %kmalloc_index.exit.i, !dbg !3819

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3820
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3822
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3823

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3824
  br label %kmalloc_index.exit.i, !dbg !3824

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3825
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3827
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3828

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3829
  br label %kmalloc_index.exit.i, !dbg !3829

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3830
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3832
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3833

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3834
  br label %kmalloc_index.exit.i, !dbg !3834

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3835
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3837
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3838

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3839
  br label %kmalloc_index.exit.i, !dbg !3839

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3840
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3842
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3843

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3844
  br label %kmalloc_index.exit.i, !dbg !3844

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3845
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3847
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3848

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3849
  br label %kmalloc_index.exit.i, !dbg !3849

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3850
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3852
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3853

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3854
  br label %kmalloc_index.exit.i, !dbg !3854

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3855
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3857
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3858

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3859
  br label %kmalloc_index.exit.i, !dbg !3859

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3860
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3862
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3863

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3864
  br label %kmalloc_index.exit.i, !dbg !3864

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3865
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3867
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3868

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3869
  br label %kmalloc_index.exit.i, !dbg !3869

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3870
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3872
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3873

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3874
  br label %kmalloc_index.exit.i, !dbg !3874

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3875
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3877
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3878

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3879
  br label %kmalloc_index.exit.i, !dbg !3879

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3880
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3882
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3883

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3884
  br label %kmalloc_index.exit.i, !dbg !3884

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3885
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3887
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3888

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3889
  br label %kmalloc_index.exit.i, !dbg !3889

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3890
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3892
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3893

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3894
  br label %kmalloc_index.exit.i, !dbg !3894

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3895
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3897
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3898

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3899
  br label %kmalloc_index.exit.i, !dbg !3899

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3900
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3902
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3903

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3904
  br label %kmalloc_index.exit.i, !dbg !3904

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3905
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3907
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3908

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3909
  br label %kmalloc_index.exit.i, !dbg !3909

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !3910, !srcloc !3913
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 226) #11, !dbg !3914, !srcloc !3917
  unreachable, !dbg !3918

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3919
  store i32 %45, i32* %index.i, align 4, !dbg !3920
  %46 = load i32, i32* %index.i, align 4, !dbg !3921
  %tobool.i = icmp ne i32 %46, 0, !dbg !3921
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3923

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3924
  br label %kmalloc.exit, !dbg !3924

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3925
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3926
  %and.i.i = and i32 %48, 17, !dbg !3926
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3926
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3926
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3926
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3926
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3928

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3929
  br label %kmalloc_type.exit.i, !dbg !3929

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3930
  %and2.i.i = and i32 %49, 1, !dbg !3931
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3930
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3930
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3930
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3932
  br label %kmalloc_type.exit.i, !dbg !3932

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3933
  %idxprom.i = zext i32 %51 to i64, !dbg !3934
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3934
  %52 = load i32, i32* %index.i, align 4, !dbg !3935
  %idxprom6.i = zext i32 %52 to i64, !dbg !3934
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3934
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3934
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3936
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3937
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3938
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3939
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !3940
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3940
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3940
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3940
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !3940
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3701
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3941
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3942
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3943
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3944
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !3945
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3946
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3947
  store i8* %62, i8** %retval.i, align 8, !dbg !3948
  br label %kmalloc.exit, !dbg !3948

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3949
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3950
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !3951
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3951
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3951
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3951
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !3951
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3952
  br label %kmalloc.exit, !dbg !3952

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3953
  ret i8* %65, !dbg !3954
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sfi_table_show(%struct.file* %filp, %struct.kobject* %kobj, %struct.bin_attribute* %bin_attr, i8* %buf, i64 %offset, i64 %count) #0 !dbg !3955 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %bin_attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %tbl_attr = alloca %struct.sfi_table_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sfi_table_attr*, align 8
  %th = alloca %struct.sfi_table_header*, align 8
  %key = alloca %struct.sfi_table_key, align 8
  %cnt = alloca i64, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !3956, metadata !DIExpression()), !dbg !3957
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3958, metadata !DIExpression()), !dbg !3959
  store %struct.bin_attribute* %bin_attr, %struct.bin_attribute** %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %bin_attr.addr, metadata !3960, metadata !DIExpression()), !dbg !3961
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3962, metadata !DIExpression()), !dbg !3963
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !3964, metadata !DIExpression()), !dbg !3965
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3966, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.declare(metadata %struct.sfi_table_attr** %tbl_attr, metadata !3968, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3970, metadata !DIExpression()), !dbg !3972
  %0 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !3972
  %1 = bitcast %struct.bin_attribute* %0 to i8*, !dbg !3972
  store i8* %1, i8** %__mptr, align 8, !dbg !3972
  br label %do.body, !dbg !3972

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3973

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3972
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3972
  %3 = bitcast i8* %add.ptr to %struct.sfi_table_attr*, !dbg !3972
  store %struct.sfi_table_attr* %3, %struct.sfi_table_attr** %tmp, align 8, !dbg !3973
  %4 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tmp, align 8, !dbg !3972
  store %struct.sfi_table_attr* %4, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3969
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th, metadata !3975, metadata !DIExpression()), !dbg !3976
  store %struct.sfi_table_header* null, %struct.sfi_table_header** %th, align 8, !dbg !3976
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key* %key, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.declare(metadata i64* %cnt, metadata !3979, metadata !DIExpression()), !dbg !3980
  %5 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3981
  %name = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %5, i32 0, i32 1, !dbg !3982
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %name, i64 0, i64 0, !dbg !3981
  %sig = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 0, !dbg !3983
  store i8* %arraydecay, i8** %sig, align 8, !dbg !3984
  %oem_id = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 1, !dbg !3985
  store i8* null, i8** %oem_id, align 8, !dbg !3986
  %oem_table_id = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 2, !dbg !3987
  store i8* null, i8** %oem_table_id, align 8, !dbg !3988
  %6 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !3989
  %name1 = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %6, i32 0, i32 1, !dbg !3991
  %arraydecay2 = getelementptr inbounds [8 x i8], [8 x i8]* %name1, i64 0, i64 0, !dbg !3989
  %call = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay2, i64 4) #9, !dbg !3992
  %tobool = icmp ne i32 %call, 0, !dbg !3992
  br i1 %tobool, label %if.then, label %if.else, !dbg !3993

if.then:                                          ; preds = %do.end
  %call3 = call %struct.sfi_table_header* @sfi_get_table(%struct.sfi_table_key* %key) #9, !dbg !3994
  store %struct.sfi_table_header* %call3, %struct.sfi_table_header** %th, align 8, !dbg !3996
  %7 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !3997
  %tobool4 = icmp ne %struct.sfi_table_header* %7, null, !dbg !3997
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !3999

if.then5:                                         ; preds = %if.then
  store i64 0, i64* %retval, align 8, !dbg !4000
  br label %return, !dbg !4000

if.end:                                           ; preds = %if.then
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4001
  %9 = load i64, i64* %count.addr, align 8, !dbg !4002
  %10 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !4003
  %11 = bitcast %struct.sfi_table_header* %10 to i8*, !dbg !4003
  %12 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !4004
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %12, i32 0, i32 1, !dbg !4005
  %13 = load i32, i32* %len, align 1, !dbg !4005
  %conv = zext i32 %13 to i64, !dbg !4004
  %call6 = call i64 @memory_read_from_buffer(i8* %8, i64 %9, i64* %offset.addr, i8* %11, i64 %conv) #9, !dbg !4006
  store i64 %call6, i64* %cnt, align 8, !dbg !4007
  %14 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th, align 8, !dbg !4008
  call void @sfi_put_table(%struct.sfi_table_header* %14) #9, !dbg !4009
  br label %if.end10, !dbg !4010

if.else:                                          ; preds = %do.end
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !4011
  %16 = load i64, i64* %count.addr, align 8, !dbg !4012
  %17 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4013
  %18 = bitcast %struct.sfi_table_simple* %17 to i8*, !dbg !4013
  %19 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4014
  %header = getelementptr inbounds %struct.sfi_table_simple, %struct.sfi_table_simple* %19, i32 0, i32 0, !dbg !4015
  %len7 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %header, i32 0, i32 1, !dbg !4016
  %20 = load i32, i32* %len7, align 1, !dbg !4016
  %conv8 = zext i32 %20 to i64, !dbg !4014
  %call9 = call i64 @memory_read_from_buffer(i8* %15, i64 %16, i64* %offset.addr, i8* %18, i64 %conv8) #9, !dbg !4017
  store i64 %call9, i64* %cnt, align 8, !dbg !4018
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  %21 = load i64, i64* %cnt, align 8, !dbg !4019
  store i64 %21, i64* %retval, align 8, !dbg !4020
  br label %return, !dbg !4020

return:                                           ; preds = %if.end10, %if.then5
  %22 = load i64, i64* %retval, align 8, !dbg !4021
  ret i64 %22, !dbg !4021
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_bin_file(%struct.kobject*, %struct.bin_attribute*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @sfi_init() #2 section ".init.text" !dbg !4022 {
entry:
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !4023
  %tobool = icmp ne i32 %0, 0, !dbg !4023
  br i1 %tobool, label %if.end, label %if.then, !dbg !4025

if.then:                                          ; preds = %entry
  call void @disable_sfi() #9, !dbg !4026
  br label %if.end, !dbg !4026

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @sfi_disabled, align 4, !dbg !4027
  %tobool1 = icmp ne i32 %1, 0, !dbg !4027
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4029

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !4030

if.end3:                                          ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0)) #10, !dbg !4031
  %call4 = call i32 @sfi_find_syst() #10, !dbg !4032
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4032
  br i1 %tobool5, label %if.then11, label %lor.lhs.false, !dbg !4034

lor.lhs.false:                                    ; preds = %if.end3
  %call6 = call i32 @sfi_parse_syst() #10, !dbg !4035
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4035
  br i1 %tobool7, label %if.then11, label %lor.lhs.false8, !dbg !4036

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = call i32 @sfi_platform_init() #10, !dbg !4037
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4037
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4038

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end3
  call void @disable_sfi() #9, !dbg !4039
  br label %if.end12, !dbg !4039

if.end12:                                         ; preds = %if.then11, %lor.lhs.false8
  br label %return, !dbg !4040

return:                                           ; preds = %if.end12, %if.then2
  ret void, !dbg !4041
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @disable_sfi() #0 !dbg !4042 {
entry:
  store i32 1, i32* @sfi_disabled, align 4, !dbg !4043
  ret void, !dbg !4044
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @sfi_find_syst() #2 section ".init.text" !dbg !4045 {
entry:
  %retval = alloca i32, align 4
  %offset = alloca i64, align 8
  %len = alloca i64, align 8
  %start = alloca i8*, align 8
  %syst_hdr = alloca %struct.sfi_table_header*, align 8
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata i64* %len, metadata !4050, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.declare(metadata i8** %start, metadata !4052, metadata !DIExpression()), !dbg !4053
  store i64 131071, i64* %len, align 8, !dbg !4054
  %0 = load i64, i64* %len, align 8, !dbg !4055
  %conv = trunc i64 %0 to i32, !dbg !4055
  %call = call i8* @sfi_map_memory(i64 917504, i32 %conv) #9, !dbg !4056
  store i8* %call, i8** %start, align 8, !dbg !4057
  %1 = load i8*, i8** %start, align 8, !dbg !4058
  %tobool = icmp ne i8* %1, null, !dbg !4058
  br i1 %tobool, label %if.end, label %if.then, !dbg !4060

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !4061
  br label %return, !dbg !4061

if.end:                                           ; preds = %entry
  store i64 0, i64* %offset, align 8, !dbg !4062
  br label %for.cond, !dbg !4064

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, i64* %offset, align 8, !dbg !4065
  %3 = load i64, i64* %len, align 8, !dbg !4067
  %cmp = icmp ult i64 %2, %3, !dbg !4068
  br i1 %cmp, label %for.body, label %for.end, !dbg !4069

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %syst_hdr, metadata !4070, metadata !DIExpression()), !dbg !4072
  %4 = load i8*, i8** %start, align 8, !dbg !4073
  %5 = load i64, i64* %offset, align 8, !dbg !4074
  %add.ptr = getelementptr i8, i8* %4, i64 %5, !dbg !4075
  %6 = bitcast i8* %add.ptr to %struct.sfi_table_header*, !dbg !4073
  store %struct.sfi_table_header* %6, %struct.sfi_table_header** %syst_hdr, align 8, !dbg !4076
  %7 = load %struct.sfi_table_header*, %struct.sfi_table_header** %syst_hdr, align 8, !dbg !4077
  %sig = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %7, i32 0, i32 0, !dbg !4079
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %sig, i64 0, i64 0, !dbg !4077
  %call2 = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4) #9, !dbg !4080
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4080
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4081

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !4082

if.end5:                                          ; preds = %for.body
  %8 = load %struct.sfi_table_header*, %struct.sfi_table_header** %syst_hdr, align 8, !dbg !4083
  %len6 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %8, i32 0, i32 1, !dbg !4085
  %9 = load i32, i32* %len6, align 1, !dbg !4085
  %conv7 = zext i32 %9 to i64, !dbg !4083
  %cmp8 = icmp ugt i64 %conv7, 4096, !dbg !4086
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4087

if.then10:                                        ; preds = %if.end5
  br label %for.inc, !dbg !4088

if.end11:                                         ; preds = %if.end5
  %10 = load i64, i64* %offset, align 8, !dbg !4089
  %add = add i64 917504, %10, !dbg !4090
  %11 = load %struct.sfi_table_header*, %struct.sfi_table_header** %syst_hdr, align 8, !dbg !4091
  call void @sfi_print_table_header(i64 %add, %struct.sfi_table_header* %11) #9, !dbg !4092
  %12 = load %struct.sfi_table_header*, %struct.sfi_table_header** %syst_hdr, align 8, !dbg !4093
  %call12 = call i32 @sfi_verify_table(%struct.sfi_table_header* %12) #9, !dbg !4095
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4095
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4096

if.then14:                                        ; preds = %if.end11
  br label %for.inc, !dbg !4097

if.end15:                                         ; preds = %if.end11
  %13 = load i64, i64* @syst_pa, align 8, !dbg !4098
  %and = and i64 %13, -4096, !dbg !4098
  %14 = load i64, i64* @syst_pa, align 8, !dbg !4098
  %15 = load %struct.sfi_table_header*, %struct.sfi_table_header** %syst_hdr, align 8, !dbg !4098
  %len16 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %15, i32 0, i32 1, !dbg !4098
  %16 = load i32, i32* %len16, align 1, !dbg !4098
  %conv17 = zext i32 %16 to i64, !dbg !4098
  %add18 = add i64 %14, %conv17, !dbg !4098
  %and19 = and i64 %add18, -4096, !dbg !4098
  %cmp20 = icmp eq i64 %and, %and19, !dbg !4098
  br i1 %cmp20, label %if.end25, label %if.then22, !dbg !4100

if.then22:                                        ; preds = %if.end15
  %17 = load i64, i64* @syst_pa, align 8, !dbg !4101
  %18 = load %struct.sfi_table_header*, %struct.sfi_table_header** %syst_hdr, align 8, !dbg !4101
  %len23 = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %18, i32 0, i32 1, !dbg !4101
  %19 = load i32, i32* %len23, align 1, !dbg !4101
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %17, i32 %19) #10, !dbg !4101
  br label %for.inc, !dbg !4103

if.end25:                                         ; preds = %if.end15
  %20 = load i64, i64* %offset, align 8, !dbg !4104
  %add26 = add i64 917504, %20, !dbg !4105
  store i64 %add26, i64* @syst_pa, align 8, !dbg !4106
  %21 = load i8*, i8** %start, align 8, !dbg !4107
  %22 = load i64, i64* %len, align 8, !dbg !4108
  %conv27 = trunc i64 %22 to i32, !dbg !4108
  call void @sfi_unmap_memory(i8* %21, i32 %conv27) #9, !dbg !4109
  store i32 0, i32* %retval, align 4, !dbg !4110
  br label %return, !dbg !4110

for.inc:                                          ; preds = %if.then22, %if.then14, %if.then10, %if.then4
  %23 = load i64, i64* %offset, align 8, !dbg !4111
  %add28 = add i64 %23, 16, !dbg !4111
  store i64 %add28, i64* %offset, align 8, !dbg !4111
  br label %for.cond, !dbg !4112, !llvm.loop !4113

for.end:                                          ; preds = %for.cond
  %24 = load i8*, i8** %start, align 8, !dbg !4115
  %25 = load i64, i64* %len, align 8, !dbg !4116
  %conv29 = trunc i64 %25 to i32, !dbg !4116
  call void @sfi_unmap_memory(i8* %24, i32 %conv29) #9, !dbg !4117
  store i32 -1, i32* %retval, align 4, !dbg !4118
  br label %return, !dbg !4118

return:                                           ; preds = %for.end, %if.end25, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4119
  ret i32 %26, !dbg !4119
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @sfi_parse_syst() #2 section ".init.text" !dbg !4120 {
entry:
  %retval = alloca i32, align 4
  %key = alloca %struct.sfi_table_key, align 8
  %tbl_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key* %key, metadata !4121, metadata !DIExpression()), !dbg !4122
  %0 = bitcast %struct.sfi_table_key* %key to i8*, !dbg !4122
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false), !dbg !4122
  call void @llvm.dbg.declare(metadata i32* %tbl_cnt, metadata !4123, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4125, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !4127, metadata !DIExpression()), !dbg !4128
  %1 = load i64, i64* @syst_pa, align 8, !dbg !4129
  %call = call i8* @sfi_map_memory(i64 %1, i32 32) #9, !dbg !4130
  %2 = bitcast i8* %call to %struct.sfi_table_simple*, !dbg !4130
  store %struct.sfi_table_simple* %2, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4131
  %3 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4132
  %tobool = icmp ne %struct.sfi_table_simple* %3, null, !dbg !4132
  br i1 %tobool, label %if.end, label %if.then, !dbg !4134

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4135
  br label %return, !dbg !4135

if.end:                                           ; preds = %entry
  %4 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4136
  %header = getelementptr inbounds %struct.sfi_table_simple, %struct.sfi_table_simple* %4, i32 0, i32 0, !dbg !4136
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %header, i32 0, i32 1, !dbg !4136
  %5 = load i32, i32* %len, align 1, !dbg !4136
  %conv = zext i32 %5 to i64, !dbg !4136
  %sub = sub i64 %conv, 24, !dbg !4136
  %div = udiv i64 %sub, 8, !dbg !4136
  %conv1 = trunc i64 %div to i32, !dbg !4136
  store i32 %conv1, i32* %tbl_cnt, align 4, !dbg !4137
  store i32 0, i32* %i, align 4, !dbg !4138
  br label %for.cond, !dbg !4140

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !4141
  %7 = load i32, i32* %tbl_cnt, align 4, !dbg !4143
  %cmp = icmp slt i32 %6, %7, !dbg !4144
  br i1 %cmp, label %for.body, label %for.end, !dbg !4145

for.body:                                         ; preds = %for.cond
  %8 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4146
  %pentry = getelementptr inbounds %struct.sfi_table_simple, %struct.sfi_table_simple* %8, i32 0, i32 1, !dbg !4148
  %9 = load i32, i32* %i, align 4, !dbg !4149
  %idxprom = sext i32 %9 to i64, !dbg !4146
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %pentry, i64 0, i64 %idxprom, !dbg !4146
  %10 = load i64, i64* %arrayidx, align 1, !dbg !4146
  %call3 = call %struct.sfi_table_header* @sfi_check_table(i64 %10, %struct.sfi_table_key* %key) #9, !dbg !4150
  %11 = bitcast %struct.sfi_table_header* %call3 to i8*, !dbg !4150
  store i8* %11, i8** %ret, align 8, !dbg !4151
  %12 = load i8*, i8** %ret, align 8, !dbg !4152
  %call4 = call zeroext i1 @IS_ERR(i8* %12) #9, !dbg !4154
  br i1 %call4, label %if.then5, label %if.end8, !dbg !4155

if.then5:                                         ; preds = %for.body
  %13 = load i8*, i8** %ret, align 8, !dbg !4156
  %call6 = call i64 @PTR_ERR(i8* %13) #9, !dbg !4157
  %conv7 = trunc i64 %call6 to i32, !dbg !4157
  store i32 %conv7, i32* %retval, align 4, !dbg !4158
  br label %return, !dbg !4158

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !4159

for.inc:                                          ; preds = %if.end8
  %14 = load i32, i32* %i, align 4, !dbg !4160
  %inc = add i32 %14, 1, !dbg !4160
  store i32 %inc, i32* %i, align 4, !dbg !4160
  br label %for.cond, !dbg !4161, !llvm.loop !4162

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4164
  br label %return, !dbg !4164

return:                                           ; preds = %for.end, %if.then5, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4165
  ret i32 %15, !dbg !4165
}

; Function Attrs: cold noredzone
declare dso_local i32 @sfi_platform_init() #5 section ".init.text"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @sfi_init_late() #2 section ".init.text" !dbg !4166 {
entry:
  %length = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %length, metadata !4167, metadata !DIExpression()), !dbg !4168
  %0 = load i32, i32* @sfi_disabled, align 4, !dbg !4169
  %tobool = icmp ne i32 %0, 0, !dbg !4169
  br i1 %tobool, label %if.then, label %if.end, !dbg !4171

if.then:                                          ; preds = %entry
  br label %return, !dbg !4172

if.end:                                           ; preds = %entry
  %1 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4173
  %header = getelementptr inbounds %struct.sfi_table_simple, %struct.sfi_table_simple* %1, i32 0, i32 0, !dbg !4174
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %header, i32 0, i32 1, !dbg !4175
  %2 = load i32, i32* %len, align 1, !dbg !4175
  store i32 %2, i32* %length, align 4, !dbg !4176
  %3 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4177
  %4 = bitcast %struct.sfi_table_simple* %3 to i8*, !dbg !4177
  call void @sfi_unmap_memory(i8* %4, i32 32) #9, !dbg !4178
  store i32 1, i32* @sfi_use_memremap, align 4, !dbg !4179
  %5 = load i64, i64* @syst_pa, align 8, !dbg !4180
  %6 = load i32, i32* %length, align 4, !dbg !4181
  %call = call i8* @sfi_map_memory(i64 %5, i32 %6) #9, !dbg !4182
  %7 = bitcast i8* %call to %struct.sfi_table_simple*, !dbg !4182
  store %struct.sfi_table_simple* %7, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4183
  %call1 = call i32 @sfi_acpi_init() #10, !dbg !4184
  br label %return, !dbg !4185

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sfi_unmap_memory(i8* %virt, i32 %size) #0 section ".ref.text" !dbg !4186 {
entry:
  %virt.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %virt, i8** %virt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %virt.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4191, metadata !DIExpression()), !dbg !4192
  %0 = load i8*, i8** %virt.addr, align 8, !dbg !4193
  %tobool = icmp ne i8* %0, null, !dbg !4193
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4195

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4, !dbg !4196
  %tobool1 = icmp ne i32 %1, 0, !dbg !4196
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4197

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end4, !dbg !4198

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @sfi_use_memremap, align 4, !dbg !4199
  %tobool2 = icmp ne i32 %2, 0, !dbg !4199
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !4201

if.then3:                                         ; preds = %if.end
  %3 = load i8*, i8** %virt.addr, align 8, !dbg !4202
  call void @memunmap(i8* %3) #9, !dbg !4203
  br label %if.end4, !dbg !4203

if.else:                                          ; preds = %if.end
  %4 = load i8*, i8** %virt.addr, align 8, !dbg !4204
  %5 = load i32, i32* %size.addr, align 4, !dbg !4205
  %conv = zext i32 %5 to i64, !dbg !4205
  call void @early_memunmap(i8* %4, i64 %conv) #9, !dbg !4206
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else, %if.then3
  ret void, !dbg !4207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @sfi_map_memory(i64 %phys, i32 %size) #0 section ".ref.text" !dbg !4208 {
entry:
  %retval = alloca i8*, align 8
  %phys.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  store i64 %phys, i64* %phys.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %phys.addr, metadata !4211, metadata !DIExpression()), !dbg !4212
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4213, metadata !DIExpression()), !dbg !4214
  %0 = load i64, i64* %phys.addr, align 8, !dbg !4215
  %tobool = icmp ne i64 %0, 0, !dbg !4215
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4217

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4, !dbg !4218
  %tobool1 = icmp ne i32 %1, 0, !dbg !4218
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4219

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8, !dbg !4220
  br label %return, !dbg !4220

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @sfi_use_memremap, align 4, !dbg !4221
  %tobool2 = icmp ne i32 %2, 0, !dbg !4221
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !4223

if.then3:                                         ; preds = %if.end
  %3 = load i64, i64* %phys.addr, align 8, !dbg !4224
  %4 = load i32, i32* %size.addr, align 4, !dbg !4225
  %conv = zext i32 %4 to i64, !dbg !4225
  %call = call i8* @memremap(i64 %3, i64 %conv, i64 1) #9, !dbg !4226
  store i8* %call, i8** %retval, align 8, !dbg !4227
  br label %return, !dbg !4227

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* %phys.addr, align 8, !dbg !4228
  %6 = load i32, i32* %size.addr, align 4, !dbg !4229
  %conv4 = zext i32 %6 to i64, !dbg !4229
  %call5 = call i8* @early_memremap(i64 %5, i64 %conv4) #9, !dbg !4230
  store i8* %call5, i8** %retval, align 8, !dbg !4231
  br label %return, !dbg !4231

return:                                           ; preds = %if.else, %if.then3, %if.then
  %7 = load i8*, i8** %retval, align 8, !dbg !4232
  ret i8* %7, !dbg !4232
}

; Function Attrs: cold noredzone
declare dso_local i32 @sfi_acpi_init() #5 section ".init.text"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @sfi_sysfs_init() #2 section ".init.text" !dbg !4233 {
entry:
  %retval = alloca i32, align 4
  %tbl_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %tbl_cnt, metadata !4234, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4236, metadata !DIExpression()), !dbg !4237
  %0 = load i32, i32* @sfi_disabled, align 4, !dbg !4238
  %tobool = icmp ne i32 %0, 0, !dbg !4238
  br i1 %tobool, label %if.then, label %if.end, !dbg !4240

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4241
  br label %return, !dbg !4241

if.end:                                           ; preds = %entry
  %1 = load %struct.kobject*, %struct.kobject** @firmware_kobj, align 8, !dbg !4242
  %call = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.kobject* %1) #9, !dbg !4243
  store %struct.kobject* %call, %struct.kobject** @sfi_kobj, align 8, !dbg !4244
  %2 = load %struct.kobject*, %struct.kobject** @sfi_kobj, align 8, !dbg !4245
  %tobool1 = icmp ne %struct.kobject* %2, null, !dbg !4245
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4247

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4248
  br label %return, !dbg !4248

if.end3:                                          ; preds = %if.end
  %3 = load %struct.kobject*, %struct.kobject** @sfi_kobj, align 8, !dbg !4249
  %call4 = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.kobject* %3) #9, !dbg !4250
  store %struct.kobject* %call4, %struct.kobject** @tables_kobj, align 8, !dbg !4251
  %4 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !4252
  %tobool5 = icmp ne %struct.kobject* %4, null, !dbg !4252
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4254

if.then6:                                         ; preds = %if.end3
  %5 = load %struct.kobject*, %struct.kobject** @sfi_kobj, align 8, !dbg !4255
  call void @kobject_put(%struct.kobject* %5) #9, !dbg !4257
  store i32 0, i32* %retval, align 4, !dbg !4258
  br label %return, !dbg !4258

if.end7:                                          ; preds = %if.end3
  %6 = load i64, i64* @syst_pa, align 8, !dbg !4259
  %call8 = call %struct.sfi_table_attr* @sfi_sysfs_install_table(i64 %6) #10, !dbg !4260
  %7 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4261
  %header = getelementptr inbounds %struct.sfi_table_simple, %struct.sfi_table_simple* %7, i32 0, i32 0, !dbg !4261
  %len = getelementptr inbounds %struct.sfi_table_header, %struct.sfi_table_header* %header, i32 0, i32 1, !dbg !4261
  %8 = load i32, i32* %len, align 1, !dbg !4261
  %conv = zext i32 %8 to i64, !dbg !4261
  %sub = sub i64 %conv, 24, !dbg !4261
  %div = udiv i64 %sub, 8, !dbg !4261
  %conv9 = trunc i64 %div to i32, !dbg !4261
  store i32 %conv9, i32* %tbl_cnt, align 4, !dbg !4262
  store i32 0, i32* %i, align 4, !dbg !4263
  br label %for.cond, !dbg !4265

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, i32* %i, align 4, !dbg !4266
  %10 = load i32, i32* %tbl_cnt, align 4, !dbg !4268
  %cmp = icmp slt i32 %9, %10, !dbg !4269
  br i1 %cmp, label %for.body, label %for.end, !dbg !4270

for.body:                                         ; preds = %for.cond
  %11 = load %struct.sfi_table_simple*, %struct.sfi_table_simple** @syst_va, align 8, !dbg !4271
  %pentry = getelementptr inbounds %struct.sfi_table_simple, %struct.sfi_table_simple* %11, i32 0, i32 1, !dbg !4272
  %12 = load i32, i32* %i, align 4, !dbg !4273
  %idxprom = sext i32 %12 to i64, !dbg !4271
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %pentry, i64 0, i64 %idxprom, !dbg !4271
  %13 = load i64, i64* %arrayidx, align 1, !dbg !4271
  %call11 = call %struct.sfi_table_attr* @sfi_sysfs_install_table(i64 %13) #10, !dbg !4274
  br label %for.inc, !dbg !4274

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !4275
  %inc = add i32 %14, 1, !dbg !4275
  store i32 %inc, i32* %i, align 4, !dbg !4275
  br label %for.cond, !dbg !4276, !llvm.loop !4277

for.end:                                          ; preds = %for.cond
  call void @sfi_acpi_sysfs_init() #10, !dbg !4279
  %15 = load %struct.kobject*, %struct.kobject** @sfi_kobj, align 8, !dbg !4280
  %call12 = call i32 @kobject_uevent(%struct.kobject* %15, i32 0) #9, !dbg !4281
  %16 = load %struct.kobject*, %struct.kobject** @tables_kobj, align 8, !dbg !4282
  %call13 = call i32 @kobject_uevent(%struct.kobject* %16, i32 0) #9, !dbg !4283
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !4284
  store i32 0, i32* %retval, align 4, !dbg !4285
  br label %return, !dbg !4285

return:                                           ; preds = %for.end, %if.then6, %if.then2, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !4286
  ret i32 %17, !dbg !4286
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !4287 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4291, metadata !DIExpression()), !dbg !4296
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4298, metadata !DIExpression()), !dbg !4299
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  %0 = load i64, i64* %size.addr, align 8, !dbg !4302
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4304
  br i1 %1, label %if.then, label %if.end447, !dbg !4305

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4306
  %tobool = icmp ne i64 %2, 0, !dbg !4306
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4309

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4310
  br label %return, !dbg !4310

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4311
  %cmp = icmp ult i64 %3, 4096, !dbg !4313
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4314

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4315
  br label %return, !dbg !4315

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub = sub i64 %4, 1, !dbg !4316
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4316
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4316

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub4 = sub i64 %6, 1, !dbg !4316
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4316
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4316

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub6 = sub i64 %8, 1, !dbg !4316
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4316
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4316

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4316

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub9 = sub i64 %9, 1, !dbg !4316
  %and = and i64 %sub9, -9223372036854775808, !dbg !4316
  %tobool10 = icmp ne i64 %and, 0, !dbg !4316
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4316

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4316

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub13 = sub i64 %10, 1, !dbg !4316
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4316
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4316
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4316

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4316

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub18 = sub i64 %11, 1, !dbg !4316
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4316
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4316
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4316

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4316

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub23 = sub i64 %12, 1, !dbg !4316
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4316
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4316
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4316

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4316

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub28 = sub i64 %13, 1, !dbg !4316
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4316
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4316
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4316

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4316

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub33 = sub i64 %14, 1, !dbg !4316
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4316
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4316
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4316

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4316

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub38 = sub i64 %15, 1, !dbg !4316
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4316
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4316
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4316

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4316

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub43 = sub i64 %16, 1, !dbg !4316
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4316
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4316
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4316

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4316

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub48 = sub i64 %17, 1, !dbg !4316
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4316
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4316
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4316

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4316

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub53 = sub i64 %18, 1, !dbg !4316
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4316
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4316
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4316

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4316

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub58 = sub i64 %19, 1, !dbg !4316
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4316
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4316
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4316

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4316

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub63 = sub i64 %20, 1, !dbg !4316
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4316
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4316
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4316

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4316

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub68 = sub i64 %21, 1, !dbg !4316
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4316
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4316
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4316

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4316

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub73 = sub i64 %22, 1, !dbg !4316
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4316
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4316
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4316

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4316

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub78 = sub i64 %23, 1, !dbg !4316
  %and79 = and i64 %sub78, 562949953421312, !dbg !4316
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4316
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4316

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4316

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub83 = sub i64 %24, 1, !dbg !4316
  %and84 = and i64 %sub83, 281474976710656, !dbg !4316
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4316
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4316

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4316

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub88 = sub i64 %25, 1, !dbg !4316
  %and89 = and i64 %sub88, 140737488355328, !dbg !4316
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4316
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4316

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4316

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub93 = sub i64 %26, 1, !dbg !4316
  %and94 = and i64 %sub93, 70368744177664, !dbg !4316
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4316
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4316

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4316

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub98 = sub i64 %27, 1, !dbg !4316
  %and99 = and i64 %sub98, 35184372088832, !dbg !4316
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4316
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4316

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4316

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub103 = sub i64 %28, 1, !dbg !4316
  %and104 = and i64 %sub103, 17592186044416, !dbg !4316
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4316
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4316

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4316

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub108 = sub i64 %29, 1, !dbg !4316
  %and109 = and i64 %sub108, 8796093022208, !dbg !4316
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4316
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4316

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4316

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub113 = sub i64 %30, 1, !dbg !4316
  %and114 = and i64 %sub113, 4398046511104, !dbg !4316
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4316
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4316

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4316

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub118 = sub i64 %31, 1, !dbg !4316
  %and119 = and i64 %sub118, 2199023255552, !dbg !4316
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4316
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4316

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4316

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub123 = sub i64 %32, 1, !dbg !4316
  %and124 = and i64 %sub123, 1099511627776, !dbg !4316
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4316
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4316

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4316

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub128 = sub i64 %33, 1, !dbg !4316
  %and129 = and i64 %sub128, 549755813888, !dbg !4316
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4316
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4316

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4316

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub133 = sub i64 %34, 1, !dbg !4316
  %and134 = and i64 %sub133, 274877906944, !dbg !4316
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4316
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4316

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4316

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub138 = sub i64 %35, 1, !dbg !4316
  %and139 = and i64 %sub138, 137438953472, !dbg !4316
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4316
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4316

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4316

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub143 = sub i64 %36, 1, !dbg !4316
  %and144 = and i64 %sub143, 68719476736, !dbg !4316
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4316
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4316

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4316

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub148 = sub i64 %37, 1, !dbg !4316
  %and149 = and i64 %sub148, 34359738368, !dbg !4316
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4316
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4316

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4316

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub153 = sub i64 %38, 1, !dbg !4316
  %and154 = and i64 %sub153, 17179869184, !dbg !4316
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4316
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4316

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4316

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub158 = sub i64 %39, 1, !dbg !4316
  %and159 = and i64 %sub158, 8589934592, !dbg !4316
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4316
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4316

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4316

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub163 = sub i64 %40, 1, !dbg !4316
  %and164 = and i64 %sub163, 4294967296, !dbg !4316
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4316
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4316

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4316

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub168 = sub i64 %41, 1, !dbg !4316
  %and169 = and i64 %sub168, 2147483648, !dbg !4316
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4316
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4316

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4316

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub173 = sub i64 %42, 1, !dbg !4316
  %and174 = and i64 %sub173, 1073741824, !dbg !4316
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4316
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4316

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4316

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub178 = sub i64 %43, 1, !dbg !4316
  %and179 = and i64 %sub178, 536870912, !dbg !4316
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4316
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4316

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4316

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub183 = sub i64 %44, 1, !dbg !4316
  %and184 = and i64 %sub183, 268435456, !dbg !4316
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4316
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4316

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4316

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub188 = sub i64 %45, 1, !dbg !4316
  %and189 = and i64 %sub188, 134217728, !dbg !4316
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4316
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4316

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4316

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub193 = sub i64 %46, 1, !dbg !4316
  %and194 = and i64 %sub193, 67108864, !dbg !4316
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4316
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4316

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4316

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub198 = sub i64 %47, 1, !dbg !4316
  %and199 = and i64 %sub198, 33554432, !dbg !4316
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4316
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4316

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4316

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub203 = sub i64 %48, 1, !dbg !4316
  %and204 = and i64 %sub203, 16777216, !dbg !4316
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4316
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4316

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4316

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub208 = sub i64 %49, 1, !dbg !4316
  %and209 = and i64 %sub208, 8388608, !dbg !4316
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4316
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4316

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4316

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub213 = sub i64 %50, 1, !dbg !4316
  %and214 = and i64 %sub213, 4194304, !dbg !4316
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4316
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4316

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4316

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub218 = sub i64 %51, 1, !dbg !4316
  %and219 = and i64 %sub218, 2097152, !dbg !4316
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4316
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4316

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4316

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub223 = sub i64 %52, 1, !dbg !4316
  %and224 = and i64 %sub223, 1048576, !dbg !4316
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4316
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4316

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4316

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub228 = sub i64 %53, 1, !dbg !4316
  %and229 = and i64 %sub228, 524288, !dbg !4316
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4316
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4316

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4316

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub233 = sub i64 %54, 1, !dbg !4316
  %and234 = and i64 %sub233, 262144, !dbg !4316
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4316
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4316

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4316

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub238 = sub i64 %55, 1, !dbg !4316
  %and239 = and i64 %sub238, 131072, !dbg !4316
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4316
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4316

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4316

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub243 = sub i64 %56, 1, !dbg !4316
  %and244 = and i64 %sub243, 65536, !dbg !4316
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4316
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4316

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4316

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub248 = sub i64 %57, 1, !dbg !4316
  %and249 = and i64 %sub248, 32768, !dbg !4316
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4316
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4316

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4316

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub253 = sub i64 %58, 1, !dbg !4316
  %and254 = and i64 %sub253, 16384, !dbg !4316
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4316
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4316

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4316

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub258 = sub i64 %59, 1, !dbg !4316
  %and259 = and i64 %sub258, 8192, !dbg !4316
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4316
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4316

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4316

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub263 = sub i64 %60, 1, !dbg !4316
  %and264 = and i64 %sub263, 4096, !dbg !4316
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4316
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4316

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4316

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub268 = sub i64 %61, 1, !dbg !4316
  %and269 = and i64 %sub268, 2048, !dbg !4316
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4316
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4316

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4316

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub273 = sub i64 %62, 1, !dbg !4316
  %and274 = and i64 %sub273, 1024, !dbg !4316
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4316
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4316

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4316

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub278 = sub i64 %63, 1, !dbg !4316
  %and279 = and i64 %sub278, 512, !dbg !4316
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4316
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4316

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4316

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub283 = sub i64 %64, 1, !dbg !4316
  %and284 = and i64 %sub283, 256, !dbg !4316
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4316
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4316

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4316

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub288 = sub i64 %65, 1, !dbg !4316
  %and289 = and i64 %sub288, 128, !dbg !4316
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4316
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4316

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4316

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub293 = sub i64 %66, 1, !dbg !4316
  %and294 = and i64 %sub293, 64, !dbg !4316
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4316
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4316

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4316

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub298 = sub i64 %67, 1, !dbg !4316
  %and299 = and i64 %sub298, 32, !dbg !4316
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4316
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4316

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4316

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub303 = sub i64 %68, 1, !dbg !4316
  %and304 = and i64 %sub303, 16, !dbg !4316
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4316
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4316

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4316

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub308 = sub i64 %69, 1, !dbg !4316
  %and309 = and i64 %sub308, 8, !dbg !4316
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4316
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4316

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4316

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub313 = sub i64 %70, 1, !dbg !4316
  %and314 = and i64 %sub313, 4, !dbg !4316
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4316
  %71 = zext i1 %tobool315 to i64, !dbg !4316
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4316
  br label %cond.end, !dbg !4316

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4316
  br label %cond.end317, !dbg !4316

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4316
  br label %cond.end319, !dbg !4316

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4316
  br label %cond.end321, !dbg !4316

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4316
  br label %cond.end323, !dbg !4316

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4316
  br label %cond.end325, !dbg !4316

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4316
  br label %cond.end327, !dbg !4316

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4316
  br label %cond.end329, !dbg !4316

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4316
  br label %cond.end331, !dbg !4316

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4316
  br label %cond.end333, !dbg !4316

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4316
  br label %cond.end335, !dbg !4316

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4316
  br label %cond.end337, !dbg !4316

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4316
  br label %cond.end339, !dbg !4316

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4316
  br label %cond.end341, !dbg !4316

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4316
  br label %cond.end343, !dbg !4316

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4316
  br label %cond.end345, !dbg !4316

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4316
  br label %cond.end347, !dbg !4316

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4316
  br label %cond.end349, !dbg !4316

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4316
  br label %cond.end351, !dbg !4316

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4316
  br label %cond.end353, !dbg !4316

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4316
  br label %cond.end355, !dbg !4316

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4316
  br label %cond.end357, !dbg !4316

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4316
  br label %cond.end359, !dbg !4316

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4316
  br label %cond.end361, !dbg !4316

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4316
  br label %cond.end363, !dbg !4316

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4316
  br label %cond.end365, !dbg !4316

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4316
  br label %cond.end367, !dbg !4316

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4316
  br label %cond.end369, !dbg !4316

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4316
  br label %cond.end371, !dbg !4316

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4316
  br label %cond.end373, !dbg !4316

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4316
  br label %cond.end375, !dbg !4316

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4316
  br label %cond.end377, !dbg !4316

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4316
  br label %cond.end379, !dbg !4316

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4316
  br label %cond.end381, !dbg !4316

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4316
  br label %cond.end383, !dbg !4316

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4316
  br label %cond.end385, !dbg !4316

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4316
  br label %cond.end387, !dbg !4316

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4316
  br label %cond.end389, !dbg !4316

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4316
  br label %cond.end391, !dbg !4316

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4316
  br label %cond.end393, !dbg !4316

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4316
  br label %cond.end395, !dbg !4316

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4316
  br label %cond.end397, !dbg !4316

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4316
  br label %cond.end399, !dbg !4316

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4316
  br label %cond.end401, !dbg !4316

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4316
  br label %cond.end403, !dbg !4316

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4316
  br label %cond.end405, !dbg !4316

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4316
  br label %cond.end407, !dbg !4316

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4316
  br label %cond.end409, !dbg !4316

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4316
  br label %cond.end411, !dbg !4316

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4316
  br label %cond.end413, !dbg !4316

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4316
  br label %cond.end415, !dbg !4316

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4316
  br label %cond.end417, !dbg !4316

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4316
  br label %cond.end419, !dbg !4316

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4316
  br label %cond.end421, !dbg !4316

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4316
  br label %cond.end423, !dbg !4316

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4316
  br label %cond.end425, !dbg !4316

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4316
  br label %cond.end427, !dbg !4316

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4316
  br label %cond.end429, !dbg !4316

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4316
  br label %cond.end431, !dbg !4316

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4316
  br label %cond.end433, !dbg !4316

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4316
  br label %cond.end435, !dbg !4316

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4316
  br label %cond.end437, !dbg !4316

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4316
  br label %cond.end440, !dbg !4316

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4316

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4316
  br label %cond.end444, !dbg !4316

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4316
  %sub443 = sub i64 %72, 1, !dbg !4316
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4316
  br label %cond.end444, !dbg !4316

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4316
  %sub446 = sub i32 %cond445, 12, !dbg !4317
  %add = add i32 %sub446, 1, !dbg !4318
  store i32 %add, i32* %retval, align 4, !dbg !4319
  br label %return, !dbg !4319

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4320
  %dec = add i64 %73, -1, !dbg !4320
  store i64 %dec, i64* %size.addr, align 8, !dbg !4320
  %74 = load i64, i64* %size.addr, align 8, !dbg !4321
  %shr = lshr i64 %74, 12, !dbg !4321
  store i64 %shr, i64* %size.addr, align 8, !dbg !4321
  %75 = load i64, i64* %size.addr, align 8, !dbg !4322
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4299
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4323
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4324
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !4323, !srcloc !4325
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4323
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4326
  %add.i = add i32 %79, 1, !dbg !4327
  store i32 %add.i, i32* %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4329
  ret i32 %80, !dbg !4329
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !4330 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4291, metadata !DIExpression()), !dbg !4334
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4298, metadata !DIExpression()), !dbg !4336
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  %0 = load i64, i64* %n.addr, align 8, !dbg !4339
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4336
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4340
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4341
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !4340, !srcloc !4325
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4340
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4342
  %add.i = add i32 %4, 1, !dbg !4343
  %sub = sub i32 %add.i, 1, !dbg !4344
  ret i32 %sub, !dbg !4345
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4346 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4356, metadata !DIExpression()), !dbg !4357
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4358
  ret i8* %0, !dbg !4359
}

; Function Attrs: noredzone
declare dso_local i64 @memory_read_from_buffer(i8*, i64, i64*, i8*, i64) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4360 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4365
  %1 = ptrtoint i8* %0 to i64, !dbg !4366
  ret i64 %1, !dbg !4367
}

; Function Attrs: noredzone
declare dso_local void @memunmap(i8*) #3

; Function Attrs: noredzone
declare dso_local void @early_memunmap(i8*, i64) #3

; Function Attrs: noredzone
declare dso_local i8* @memremap(i64, i64, i64) #3

; Function Attrs: noredzone
declare dso_local i8* @early_memremap(i64, i64) #3

; Function Attrs: noredzone
declare dso_local %struct.kobject* @kobject_create_and_add(i8*, %struct.kobject*) #3

; Function Attrs: noredzone
declare dso_local void @kobject_put(%struct.kobject*) #3

; Function Attrs: cold noredzone
declare dso_local void @sfi_acpi_sysfs_init() #5 section ".init.text"

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3296, !3297, !3298, !3299}
!llvm.ident = !{!3300}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "syst_va", scope: !2, file: !3, line: 85, type: !3280, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !3267, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/sfi/sfi_core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !73, !81}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !67, line: 305, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 142, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/io.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "MEMREMAP_WB", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "MEMREMAP_WT", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "MEMREMAP_WC", value: 4, isUnsigned: true)
!79 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8, isUnsigned: true)
!80 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !82, line: 53, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91}
!84 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!88 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!89 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!90 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!91 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!92 = !{!93, !94, !96, !97, !103, !134}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !95, line: 148, baseType: !7)
!95 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !99, line: 17, baseType: !100)
!99 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !101, line: 21, baseType: !102)
!101 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sfi_table_attr", file: !105, line: 68, size: 512, elements: !106)
!105 = !DIFile(filename: "drivers/sfi/sfi_core.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !3266}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !104, file: !105, line: 69, baseType: !108, size: 448)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !109, line: 168, size: 448, elements: !110)
!109 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !121, !126, !127, !3261, !3262}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !108, file: !109, line: 169, baseType: !112, size: 128)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !109, line: 30, size: 128, elements: !113)
!113 = !{!114, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !109, line: 31, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !112, file: !109, line: 32, baseType: !119, size: 16, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !95, line: 19, baseType: !120)
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !108, file: !109, line: 170, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 55, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !124, line: 72, baseType: !125)
!124 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !124, line: 16, baseType: !96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !108, file: !109, line: 171, baseType: !93, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !108, file: !109, line: 172, baseType: !128, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !135, !2984, !3069, !267, !313, !122}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !95, line: 60, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !124, line: 73, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !124, line: 15, baseType: !134)
!134 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !137)
!137 = !{!138, !156, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2967, !2968, !2977, !2978, !2979, !2980, !2981, !2982, !2983}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !136, file: !44, line: 920, baseType: !139, size: 128)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !44, line: 917, size: 128, elements: !140)
!140 = !{!141, !147}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !139, file: !44, line: 918, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !143, line: 58, size: 64, elements: !144)
!143 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !143, line: 59, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !139, file: !44, line: 919, baseType: !148, size: 128, align: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !95, line: 216, size: 128, align: 64, elements: !149)
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !95, line: 217, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !148, file: !95, line: 218, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !151}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !136, file: !44, line: 921, baseType: !157, size: 128, offset: 128)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !158, line: 8, size: 128, elements: !159)
!158 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !164}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !157, file: !158, line: 9, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !163, line: 18, flags: DIFlagFwdDecl)
!163 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !157, file: !158, line: 10, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !163, line: 89, size: 1536, elements: !167)
!167 = !{!168, !169, !179, !187, !188, !208, !2917, !2919, !2931, !2932, !2933, !2934, !2935, !2941, !2942, !2943}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !166, file: !163, line: 91, baseType: !7, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !166, file: !163, line: 92, baseType: !170, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !171, line: 277, baseType: !172)
!171 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !171, line: 277, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !172, file: !171, line: 277, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !171, line: 70, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !171, line: 65, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !176, file: !171, line: 66, baseType: !7, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !166, file: !163, line: 93, baseType: !180, size: 128, offset: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !181, line: 38, size: 128, elements: !182)
!181 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !181, line: 39, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !180, file: !181, line: 39, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !166, file: !163, line: 94, baseType: !165, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !166, file: !163, line: 95, baseType: !189, size: 128, offset: 256)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !163, line: 47, size: 128, elements: !190)
!190 = !{!191, !205}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !163, line: 48, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !163, line: 48, size: 64, elements: !193)
!193 = !{!194, !201}
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !163, line: 49, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !163, line: 49, size: 64, elements: !196)
!196 = !{!197, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !195, file: !163, line: 50, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !99, line: 21, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !101, line: 27, baseType: !7)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !195, file: !163, line: 50, baseType: !198, size: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !192, file: !163, line: 52, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !99, line: 23, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !204)
!204 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !163, line: 54, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !166, file: !163, line: 96, baseType: !209, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !211)
!211 = !{!212, !213, !214, !222, !229, !230, !380, !2628, !2629, !2630, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2893, !2901, !2902, !2903, !2913, !2914, !2915, !2916}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !210, file: !44, line: 611, baseType: !119, size: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !210, file: !44, line: 612, baseType: !120, size: 16, offset: 16)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !210, file: !44, line: 613, baseType: !215, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !216, line: 23, baseType: !217)
!216 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 21, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !217, file: !216, line: 22, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !95, line: 32, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !124, line: 49, baseType: !7)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !210, file: !44, line: 614, baseType: !223, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !216, line: 28, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 26, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !224, file: !216, line: 27, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !95, line: 33, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !124, line: 50, baseType: !7)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !210, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !210, file: !44, line: 622, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !234)
!234 = !{!235, !239, !252, !257, !263, !268, !274, !278, !282, !286, !290, !291, !297, !301, !327, !356, !360, !366, !371, !375, !376}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !233, file: !44, line: 1865, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!165, !209, !165, !7}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !233, file: !44, line: 1866, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!115, !165, !209, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !245, line: 10, size: 128, elements: !246)
!245 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !251}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !244, file: !245, line: 11, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !93}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !244, file: !245, line: 12, baseType: !93, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !233, file: !44, line: 1867, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !209, !256}
!256 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !233, file: !44, line: 1868, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !209, !256}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !233, file: !44, line: 1870, baseType: !264, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!256, !165, !267, !256}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !233, file: !44, line: 1872, baseType: !269, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!256, !209, !165, !119, !272}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !95, line: 30, baseType: !273)
!273 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !233, file: !44, line: 1873, baseType: !275, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!256, !165, !209, !165}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !233, file: !44, line: 1874, baseType: !279, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!256, !209, !165}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !233, file: !44, line: 1875, baseType: !283, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!256, !209, !165, !115}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !233, file: !44, line: 1876, baseType: !287, size: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!256, !209, !165, !119}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !233, file: !44, line: 1877, baseType: !279, size: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !233, file: !44, line: 1878, baseType: !292, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!256, !209, !165, !119, !295}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !95, line: 16, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !95, line: 13, baseType: !198)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !233, file: !44, line: 1879, baseType: !298, size: 64, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!256, !209, !165, !209, !165, !7}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !233, file: !44, line: 1881, baseType: !302, size: 64, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!256, !165, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !316, !324, !325, !326}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !306, file: !44, line: 220, baseType: !7, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !306, file: !44, line: 221, baseType: !119, size: 16, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !306, file: !44, line: 222, baseType: !215, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !306, file: !44, line: 223, baseType: !223, size: 32, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !306, file: !44, line: 224, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !95, line: 46, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !124, line: 88, baseType: !315)
!315 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !306, file: !44, line: 225, baseType: !317, size: 128, offset: 192)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !318, line: 13, size: 128, elements: !319)
!318 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !323}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !317, file: !318, line: 14, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !318, line: 8, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !315)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !317, file: !318, line: 15, baseType: !134, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !306, file: !44, line: 226, baseType: !317, size: 128, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !306, file: !44, line: 227, baseType: !317, size: 128, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !306, file: !44, line: 234, baseType: !135, size: 64, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !233, file: !44, line: 1882, baseType: !328, size: 64, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!256, !331, !333, !198, !7}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !335, line: 22, size: 1152, elements: !336)
!335 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!336 = !{!337, !338, !339, !340, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !334, file: !335, line: 23, baseType: !198, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !334, file: !335, line: 24, baseType: !119, size: 16, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !334, file: !335, line: 25, baseType: !7, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !334, file: !335, line: 26, baseType: !341, size: 32, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 104, baseType: !198)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !334, file: !335, line: 27, baseType: !202, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !334, file: !335, line: 28, baseType: !202, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !334, file: !335, line: 37, baseType: !202, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !334, file: !335, line: 38, baseType: !295, size: 32, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !334, file: !335, line: 39, baseType: !295, size: 32, offset: 352)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !334, file: !335, line: 40, baseType: !215, size: 32, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !334, file: !335, line: 41, baseType: !223, size: 32, offset: 416)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !334, file: !335, line: 42, baseType: !313, size: 64, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !334, file: !335, line: 43, baseType: !317, size: 128, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !334, file: !335, line: 44, baseType: !317, size: 128, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !334, file: !335, line: 45, baseType: !317, size: 128, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !334, file: !335, line: 46, baseType: !317, size: 128, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !334, file: !335, line: 47, baseType: !202, size: 64, offset: 1024)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !334, file: !335, line: 48, baseType: !202, size: 64, offset: 1088)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !233, file: !44, line: 1883, baseType: !357, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!131, !165, !267, !122}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !233, file: !44, line: 1884, baseType: !361, size: 64, offset: 1024)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!256, !209, !364, !202, !202}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !233, file: !44, line: 1886, baseType: !367, size: 64, offset: 1088)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!256, !209, !370, !256}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !233, file: !44, line: 1887, baseType: !372, size: 64, offset: 1152)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!256, !209, !165, !135, !7, !119}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !233, file: !44, line: 1890, baseType: !287, size: 64, offset: 1216)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !233, file: !44, line: 1891, baseType: !377, size: 64, offset: 1280)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!256, !209, !261, !256}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !210, file: !44, line: 623, baseType: !381, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !383)
!383 = !{!384, !390, !391, !392, !393, !394, !446, !2235, !2317, !2400, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2416, !2420, !2421, !2424, !2425, !2428, !2429, !2430, !2471, !2498, !2499, !2500, !2501, !2502, !2503, !2506, !2508, !2515, !2516, !2518, !2519, !2520, !2579, !2580, !2595, !2596, !2597, !2598, !2599, !2602, !2603, !2604, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !382, file: !44, line: 1417, baseType: !385, size: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !95, line: 178, size: 128, elements: !386)
!386 = !{!387, !389}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !95, line: 179, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !385, file: !95, line: 179, baseType: !388, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !382, file: !44, line: 1418, baseType: !295, size: 32, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !382, file: !44, line: 1419, baseType: !102, size: 8, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !382, file: !44, line: 1420, baseType: !96, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !382, file: !44, line: 1421, baseType: !313, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !382, file: !44, line: 1422, baseType: !395, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !397)
!397 = !{!398, !399, !400, !406, !410, !414, !418, !422, !423, !433, !437, !438, !439, !443, !444, !445}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !44, line: 2229, baseType: !115, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !396, file: !44, line: 2230, baseType: !256, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !396, file: !44, line: 2238, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!256, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !396, file: !44, line: 2239, baseType: !407, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !396, file: !44, line: 2240, baseType: !411, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!165, !395, !256, !115, !93}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !396, file: !44, line: 2242, baseType: !415, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !381}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !396, file: !44, line: 2243, baseType: !419, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !421, line: 76, flags: DIFlagFwdDecl)
!421 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !44, line: 2244, baseType: !395, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !396, file: !44, line: 2245, baseType: !424, size: 64, offset: 512)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !95, line: 182, size: 64, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !424, file: !95, line: 183, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !95, line: 186, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !95, line: 187, baseType: !427, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !428, file: !95, line: 187, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !396, file: !44, line: 2247, baseType: !434, offset: 576)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !435, line: 187, elements: !436)
!435 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !396, file: !44, line: 2248, baseType: !434, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !396, file: !44, line: 2249, baseType: !434, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !396, file: !44, line: 2250, baseType: !440, offset: 576)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 3)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !396, file: !44, line: 2252, baseType: !434, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !396, file: !44, line: 2253, baseType: !434, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !396, file: !44, line: 2254, baseType: !434, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !382, file: !44, line: 1423, baseType: !447, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !450)
!450 = !{!451, !455, !459, !460, !464, !470, !474, !475, !476, !480, !484, !485, !486, !487, !493, !498, !499, !506, !507, !508, !509, !2219, !2234}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !449, file: !44, line: 1936, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!209, !381}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !449, file: !44, line: 1937, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !209}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !449, file: !44, line: 1938, baseType: !456, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !449, file: !44, line: 1940, baseType: !461, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !209, !256}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !449, file: !44, line: 1941, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!256, !209, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !449, file: !44, line: 1942, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!256, !209}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !449, file: !44, line: 1943, baseType: !456, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !449, file: !44, line: 1944, baseType: !415, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !449, file: !44, line: 1945, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!256, !381, !256}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !449, file: !44, line: 1946, baseType: !481, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!256, !381}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !449, file: !44, line: 1947, baseType: !481, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !449, file: !44, line: 1948, baseType: !481, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !449, file: !44, line: 1949, baseType: !481, size: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !449, file: !44, line: 1950, baseType: !488, size: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!256, !165, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !449, file: !44, line: 1951, baseType: !494, size: 64, offset: 896)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!256, !381, !497, !267}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !449, file: !44, line: 1952, baseType: !415, size: 64, offset: 960)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !449, file: !44, line: 1954, baseType: !500, size: 64, offset: 1024)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!256, !503, !165}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !505, line: 539, flags: DIFlagFwdDecl)
!505 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!506 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !449, file: !44, line: 1955, baseType: !500, size: 64, offset: 1088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !449, file: !44, line: 1956, baseType: !500, size: 64, offset: 1152)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !449, file: !44, line: 1957, baseType: !500, size: 64, offset: 1216)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !449, file: !44, line: 1963, baseType: !510, size: 64, offset: 1280)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!256, !381, !513, !94}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !515, line: 68, size: 512, align: 128, elements: !516)
!515 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !518, !2211, !2218}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !515, line: 69, baseType: !96, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !515, line: 77, baseType: !519, size: 320, offset: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !515, line: 77, size: 320, elements: !520)
!520 = !{!521, !722, !727, !755, !763, !769, !2142, !2210}
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !515, line: 78, baseType: !522, size: 320)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !515, line: 78, size: 320, elements: !523)
!523 = !{!524, !525, !720, !721}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !522, file: !515, line: 84, baseType: !385, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !522, file: !515, line: 86, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !528)
!528 = !{!529, !530, !551, !552, !557, !572, !588, !589, !590, !591, !713, !714, !717, !718, !719}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !527, file: !44, line: 452, baseType: !209, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !527, file: !44, line: 453, baseType: !531, size: 128, offset: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !532, line: 292, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!533 = !{!534, !549, !550}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !531, file: !532, line: 293, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !536, line: 83, baseType: !537)
!536 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !536, line: 71, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !536, line: 72, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !536, line: 72, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !540, file: !536, line: 73, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !536, line: 20, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !543, file: !536, line: 21, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !547, line: 25, baseType: !548)
!547 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 25, elements: !436)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !531, file: !532, line: 295, baseType: !94, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !531, file: !532, line: 296, baseType: !93, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !527, file: !44, line: 454, baseType: !94, size: 32, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !527, file: !44, line: 455, baseType: !553, size: 32, offset: 224)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !95, line: 168, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 166, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !554, file: !95, line: 167, baseType: !256, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !527, file: !44, line: 460, baseType: !558, size: 128, offset: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !559, line: 125, size: 128, elements: !560)
!559 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !571}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !558, file: !559, line: 126, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !559, line: 31, size: 64, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !562, file: !559, line: 32, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !559, line: 24, size: 192, align: 64, elements: !567)
!567 = !{!568, !569, !570}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !566, file: !559, line: 25, baseType: !96, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !566, file: !559, line: 26, baseType: !565, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !566, file: !559, line: 27, baseType: !565, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !558, file: !559, line: 127, baseType: !565, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !527, file: !44, line: 461, baseType: !573, size: 256, offset: 384)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !574, line: 35, size: 256, elements: !575)
!574 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !584, !585, !587}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !573, file: !574, line: 36, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !578, line: 13, baseType: !579)
!578 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !95, line: 175, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 173, size: 64, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !580, file: !95, line: 174, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !99, line: 22, baseType: !322)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !573, file: !574, line: 42, baseType: !577, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !573, file: !574, line: 46, baseType: !586, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !536, line: 29, baseType: !543)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !573, file: !574, line: 47, baseType: !385, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !527, file: !44, line: 462, baseType: !96, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !527, file: !44, line: 463, baseType: !96, size: 64, offset: 704)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !527, file: !44, line: 464, baseType: !96, size: 64, offset: 768)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !527, file: !44, line: 465, baseType: !592, size: 64, offset: 832)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !595)
!595 = !{!596, !600, !604, !608, !612, !616, !622, !628, !632, !637, !641, !645, !649, !677, !681, !687, !688, !689, !693, !698, !702, !709}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !594, file: !44, line: 368, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!256, !513, !468}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !594, file: !44, line: 369, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!256, !135, !513}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !594, file: !44, line: 372, baseType: !605, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!256, !526, !468}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !594, file: !44, line: 375, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!256, !513}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !594, file: !44, line: 381, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!256, !135, !526, !388, !7}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !594, file: !44, line: 383, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !594, file: !44, line: 385, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!256, !135, !526, !313, !7, !7, !626, !627}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !594, file: !44, line: 388, baseType: !629, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!256, !135, !526, !313, !7, !7, !513, !93}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !594, file: !44, line: 393, baseType: !633, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!636, !526, !636}
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !95, line: 125, baseType: !202)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !594, file: !44, line: 394, baseType: !638, size: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !513, !7, !7}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !594, file: !44, line: 395, baseType: !642, size: 64, offset: 640)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!256, !513, !94}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !594, file: !44, line: 396, baseType: !646, size: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !513}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !594, file: !44, line: 397, baseType: !650, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!131, !653, !675}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !655)
!655 = !{!656, !657, !658, !662, !663, !664, !667, !668}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !654, file: !44, line: 321, baseType: !135, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !654, file: !44, line: 326, baseType: !313, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !654, file: !44, line: 327, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !653, !134, !134}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !654, file: !44, line: 328, baseType: !93, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !654, file: !44, line: 329, baseType: !256, size: 32, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !654, file: !44, line: 330, baseType: !665, size: 16, offset: 288)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !99, line: 19, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !101, line: 24, baseType: !120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !654, file: !44, line: 331, baseType: !665, size: 16, offset: 304)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !44, line: 332, baseType: !669, size: 64, offset: 320)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !44, line: 332, size: 64, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !669, file: !44, line: 333, baseType: !7, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !669, file: !44, line: 334, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !594, file: !44, line: 402, baseType: !678, size: 64, offset: 832)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!256, !526, !513, !513, !5}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !594, file: !44, line: 404, baseType: !682, size: 64, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!272, !513, !685}
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !686, line: 305, baseType: !7)
!686 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!687 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !594, file: !44, line: 405, baseType: !646, size: 64, offset: 960)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !594, file: !44, line: 406, baseType: !609, size: 64, offset: 1024)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !594, file: !44, line: 407, baseType: !690, size: 64, offset: 1088)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!256, !513, !96, !96}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !594, file: !44, line: 409, baseType: !694, size: 64, offset: 1152)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !513, !697, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !594, file: !44, line: 410, baseType: !699, size: 64, offset: 1216)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!256, !526, !513}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !594, file: !44, line: 413, baseType: !703, size: 64, offset: 1280)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!256, !706, !135, !708}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !594, file: !44, line: 415, baseType: !710, size: 64, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !135}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !44, line: 466, baseType: !96, size: 64, offset: 896)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !527, file: !44, line: 467, baseType: !715, size: 32, offset: 960)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !716, line: 8, baseType: !198)
!716 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!717 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !527, file: !44, line: 468, baseType: !535, offset: 992)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !527, file: !44, line: 469, baseType: !385, size: 128, offset: 1024)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !527, file: !44, line: 470, baseType: !93, size: 64, offset: 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !522, file: !515, line: 87, baseType: !96, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !522, file: !515, line: 94, baseType: !96, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !515, line: 96, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !515, line: 96, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !723, file: !515, line: 101, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !95, line: 143, baseType: !202)
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !515, line: 103, baseType: !728, size: 320)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !515, line: 103, size: 320, elements: !729)
!729 = !{!730, !740, !743, !744}
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !515, line: 104, baseType: !731, size: 128)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !515, line: 104, size: 128, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !731, file: !515, line: 105, baseType: !385, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !515, line: 106, baseType: !735, size: 128)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !515, line: 106, size: 128, elements: !736)
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !515, line: 107, baseType: !513, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !735, file: !515, line: 109, baseType: !256, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !735, file: !515, line: 110, baseType: !256, size: 32, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !728, file: !515, line: 117, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !515, line: 117, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !728, file: !515, line: 119, baseType: !93, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !515, line: 120, baseType: !745, size: 64, offset: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !515, line: 120, size: 64, elements: !746)
!746 = !{!747, !748, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !745, file: !515, line: 121, baseType: !93, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !745, file: !515, line: 122, baseType: !96, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !515, line: 123, baseType: !750, size: 32)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !515, line: 123, size: 32, elements: !751)
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !750, file: !515, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !750, file: !515, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !750, file: !515, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !515, line: 130, baseType: !756, size: 192)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !515, line: 130, size: 192, elements: !757)
!757 = !{!758, !759, !760, !761, !762}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !756, file: !515, line: 131, baseType: !96, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !756, file: !515, line: 134, baseType: !102, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !756, file: !515, line: 135, baseType: !102, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !756, file: !515, line: 136, baseType: !553, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !756, file: !515, line: 137, baseType: !7, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !515, line: 139, baseType: !764, size: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !515, line: 139, size: 256, elements: !765)
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !764, file: !515, line: 140, baseType: !96, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !764, file: !515, line: 141, baseType: !553, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !764, file: !515, line: 143, baseType: !385, size: 128, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !515, line: 145, baseType: !770, size: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !515, line: 145, size: 256, elements: !771)
!771 = !{!772, !773, !775, !776, !2141}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !770, file: !515, line: 146, baseType: !96, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !770, file: !515, line: 147, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !505, line: 509, baseType: !513)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !770, file: !515, line: 148, baseType: !96, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !515, line: 149, baseType: !777, size: 64, offset: 192)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !515, line: 149, size: 64, elements: !778)
!778 = !{!779, !2140}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !777, file: !515, line: 150, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !515, line: 388, size: 7296, elements: !782)
!782 = !{!783, !2136}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !515, line: 389, baseType: !784, size: 7296)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !515, line: 389, size: 7296, elements: !785)
!785 = !{!786, !904, !905, !906, !910, !911, !912, !913, !914, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !955, !963, !966, !1012, !1013, !2120, !2121, !2124, !2125, !2126, !2129, !2130, !2131, !2134, !2135}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !784, file: !515, line: 390, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !515, line: 305, size: 1472, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !804, !805, !810, !811, !814, !898, !899, !900, !901, !902}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !788, file: !515, line: 308, baseType: !96, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !788, file: !515, line: 309, baseType: !96, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !788, file: !515, line: 313, baseType: !787, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !788, file: !515, line: 313, baseType: !787, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !788, file: !515, line: 315, baseType: !566, size: 192, align: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !788, file: !515, line: 323, baseType: !96, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !788, file: !515, line: 327, baseType: !780, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !788, file: !515, line: 333, baseType: !798, size: 64, offset: 576)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !505, line: 284, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !505, line: 284, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !799, file: !505, line: 284, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !803, line: 19, baseType: !96)
!803 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!804 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !788, file: !515, line: 334, baseType: !96, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !788, file: !515, line: 343, baseType: !806, size: 256, offset: 704)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !788, file: !515, line: 340, size: 256, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !806, file: !515, line: 341, baseType: !566, size: 192, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !806, file: !515, line: 342, baseType: !96, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !788, file: !515, line: 351, baseType: !385, size: 128, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !788, file: !515, line: 353, baseType: !812, size: 64, offset: 1088)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !515, line: 353, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !788, file: !515, line: 356, baseType: !815, size: 64, offset: 1152)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !818)
!818 = !{!819, !823, !824, !828, !832, !872, !876, !880, !884, !885, !886, !890, !894}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !817, file: !14, line: 558, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !787}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !817, file: !14, line: 559, baseType: !820, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !817, file: !14, line: 560, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!256, !787, !96}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !817, file: !14, line: 561, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!256, !787}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !817, file: !14, line: 562, baseType: !833, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !515, line: 682, baseType: !7)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !852, !859, !865, !866, !867, !869, !871}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !838, file: !14, line: 509, baseType: !787, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !838, file: !14, line: 511, baseType: !94, size: 32, offset: 96)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !838, file: !14, line: 512, baseType: !96, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !838, file: !14, line: 513, baseType: !96, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !838, file: !14, line: 514, baseType: !846, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !505, line: 385, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 385, size: 64, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !848, file: !505, line: 385, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !803, line: 15, baseType: !96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !838, file: !14, line: 516, baseType: !853, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !505, line: 359, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 359, size: 64, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !855, file: !505, line: 359, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !803, line: 16, baseType: !96)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !838, file: !14, line: 519, baseType: !860, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !803, line: 21, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !803, line: 21, size: 64, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !861, file: !803, line: 21, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !803, line: 14, baseType: !96)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !838, file: !14, line: 521, baseType: !513, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !838, file: !14, line: 522, baseType: !513, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !838, file: !14, line: 528, baseType: !868, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !838, file: !14, line: 532, baseType: !870, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !838, file: !14, line: 536, baseType: !774, size: 64, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !817, file: !14, line: 563, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!836, !837, !13}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !817, file: !14, line: 565, baseType: !877, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !837, !96, !96}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !817, file: !14, line: 567, baseType: !881, size: 64, offset: 448)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!96, !787}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !817, file: !14, line: 571, baseType: !833, size: 64, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !817, file: !14, line: 574, baseType: !833, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !817, file: !14, line: 579, baseType: !887, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!256, !787, !96, !93, !256, !256}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !817, file: !14, line: 585, baseType: !891, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!115, !787}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !817, file: !14, line: 615, baseType: !895, size: 64, offset: 768)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!513, !787, !96}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !788, file: !515, line: 359, baseType: !96, size: 64, offset: 1216)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !788, file: !515, line: 361, baseType: !135, size: 64, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !788, file: !515, line: 362, baseType: !93, size: 64, offset: 1344)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !788, file: !515, line: 365, baseType: !577, size: 64, offset: 1408)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !788, file: !515, line: 373, baseType: !903, offset: 1472)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !515, line: 296, elements: !436)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !784, file: !515, line: 391, baseType: !562, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !784, file: !515, line: 392, baseType: !202, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !784, file: !515, line: 394, baseType: !907, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!96, !135, !96, !96, !96, !96}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !784, file: !515, line: 398, baseType: !96, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !784, file: !515, line: 399, baseType: !96, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !784, file: !515, line: 405, baseType: !96, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !784, file: !515, line: 406, baseType: !96, size: 64, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !784, file: !515, line: 407, baseType: !915, size: 64, offset: 512)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !505, line: 286, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 286, size: 64, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !917, file: !505, line: 286, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !803, line: 18, baseType: !96)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !784, file: !515, line: 416, baseType: !553, size: 32, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !784, file: !515, line: 428, baseType: !553, size: 32, offset: 608)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !784, file: !515, line: 437, baseType: !553, size: 32, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !784, file: !515, line: 447, baseType: !553, size: 32, offset: 672)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !784, file: !515, line: 450, baseType: !577, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !784, file: !515, line: 452, baseType: !256, size: 32, offset: 768)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !784, file: !515, line: 454, baseType: !535, offset: 800)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !784, file: !515, line: 457, baseType: !573, size: 256, offset: 832)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !784, file: !515, line: 459, baseType: !385, size: 128, offset: 1088)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !784, file: !515, line: 466, baseType: !96, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !784, file: !515, line: 467, baseType: !96, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !784, file: !515, line: 469, baseType: !96, size: 64, offset: 1344)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !784, file: !515, line: 470, baseType: !96, size: 64, offset: 1408)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !784, file: !515, line: 471, baseType: !579, size: 64, offset: 1472)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !784, file: !515, line: 472, baseType: !96, size: 64, offset: 1536)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !784, file: !515, line: 473, baseType: !96, size: 64, offset: 1600)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !784, file: !515, line: 474, baseType: !96, size: 64, offset: 1664)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !784, file: !515, line: 475, baseType: !96, size: 64, offset: 1728)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !784, file: !515, line: 477, baseType: !535, offset: 1792)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !784, file: !515, line: 478, baseType: !96, size: 64, offset: 1792)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !784, file: !515, line: 478, baseType: !96, size: 64, offset: 1856)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !784, file: !515, line: 478, baseType: !96, size: 64, offset: 1920)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !784, file: !515, line: 478, baseType: !96, size: 64, offset: 1984)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !784, file: !515, line: 479, baseType: !96, size: 64, offset: 2048)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !784, file: !515, line: 479, baseType: !96, size: 64, offset: 2112)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !784, file: !515, line: 479, baseType: !96, size: 64, offset: 2176)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !784, file: !515, line: 480, baseType: !96, size: 64, offset: 2240)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !784, file: !515, line: 480, baseType: !96, size: 64, offset: 2304)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !784, file: !515, line: 480, baseType: !96, size: 64, offset: 2368)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !784, file: !515, line: 480, baseType: !96, size: 64, offset: 2432)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !784, file: !515, line: 482, baseType: !952, size: 2816, offset: 2496)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2816, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 44)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !784, file: !515, line: 488, baseType: !956, size: 256, offset: 5312)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !957, line: 60, size: 256, elements: !958)
!957 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !956, file: !957, line: 61, baseType: !960, size: 256)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 256, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 4)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !784, file: !515, line: 490, baseType: !964, size: 64, offset: 5568)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !515, line: 490, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !784, file: !515, line: 493, baseType: !967, size: 896, offset: 5632)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !968, line: 53, baseType: !969)
!968 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !968, line: 13, size: 896, elements: !970)
!970 = !{!971, !972, !973, !974, !977, !978, !985, !986, !1006, !1007, !1008}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !969, file: !968, line: 18, baseType: !202, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !969, file: !968, line: 28, baseType: !579, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !969, file: !968, line: 31, baseType: !573, size: 256, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !969, file: !968, line: 32, baseType: !975, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !968, line: 32, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !969, file: !968, line: 37, baseType: !120, size: 16, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !969, file: !968, line: 40, baseType: !979, size: 192, offset: 512)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !980, line: 53, size: 192, elements: !981)
!980 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !979, file: !980, line: 54, baseType: !577, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !979, file: !980, line: 55, baseType: !535, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !979, file: !980, line: 59, baseType: !385, size: 128, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !969, file: !968, line: 41, baseType: !93, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !969, file: !968, line: 42, baseType: !987, size: 64, offset: 768)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !990, line: 13, size: 896, elements: !991)
!990 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !989, file: !990, line: 14, baseType: !93, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !989, file: !990, line: 15, baseType: !96, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !989, file: !990, line: 17, baseType: !96, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !989, file: !990, line: 17, baseType: !96, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !989, file: !990, line: 19, baseType: !134, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !989, file: !990, line: 21, baseType: !134, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !989, file: !990, line: 22, baseType: !134, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !989, file: !990, line: 23, baseType: !134, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !989, file: !990, line: 24, baseType: !134, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !989, file: !990, line: 25, baseType: !134, size: 64, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !989, file: !990, line: 26, baseType: !134, size: 64, offset: 640)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !989, file: !990, line: 27, baseType: !134, size: 64, offset: 704)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !989, file: !990, line: 28, baseType: !134, size: 64, offset: 768)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !989, file: !990, line: 29, baseType: !134, size: 64, offset: 832)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !969, file: !968, line: 44, baseType: !553, size: 32, offset: 832)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !969, file: !968, line: 50, baseType: !665, size: 16, offset: 864)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !969, file: !968, line: 51, baseType: !1009, size: 16, offset: 880)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !99, line: 18, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !101, line: 23, baseType: !1011)
!1011 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !515, line: 495, baseType: !96, size: 64, offset: 6528)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !784, file: !515, line: 497, baseType: !1014, size: 64, offset: 6592)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !515, line: 381, size: 384, elements: !1016)
!1016 = !{!1017, !1018, !2119}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1015, file: !515, line: 382, baseType: !553, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1015, file: !515, line: 383, baseType: !1019, size: 128, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !515, line: 376, size: 128, elements: !1020)
!1020 = !{!1021, !2117}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1019, file: !515, line: 377, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1024, line: 640, size: 48640, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1025 = !{!1026, !1032, !1034, !1035, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1052, !1070, !1081, !1164, !1165, !1166, !1177, !1178, !1180, !1181, !1182, !1183, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1262, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1300, !1302, !1303, !1304, !1316, !1317, !1318, !1319, !1320, !1321, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1345, !1350, !1534, !1535, !1536, !1537, !1541, !1544, !1547, !1550, !1553, !1556, !1657, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1705, !1706, !1707, !1708, !1709, !1714, !1715, !1716, !1719, !1720, !1723, !1726, !1729, !1732, !1775, !1778, !1779, !1858, !1859, !1862, !1863, !1866, !1867, !1868, !1872, !1873, !1874, !1887, !1888, !1889, !1899, !1904, !1907, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1023, file: !1024, line: 646, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1028, line: 56, size: 128, elements: !1029)
!1028 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !1028, line: 57, baseType: !96, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1027, file: !1028, line: 58, baseType: !198, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1023, file: !1024, line: 649, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !134)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1023, file: !1024, line: 657, baseType: !93, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1023, file: !1024, line: 658, baseType: !1036, size: 32, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1037, line: 113, baseType: !1038)
!1037 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1037, line: 111, size: 32, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1038, file: !1037, line: 112, baseType: !553, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1023, file: !1024, line: 660, baseType: !7, size: 32, offset: 288)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1023, file: !1024, line: 661, baseType: !7, size: 32, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1023, file: !1024, line: 684, baseType: !256, size: 32, offset: 352)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1023, file: !1024, line: 686, baseType: !256, size: 32, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1023, file: !1024, line: 687, baseType: !256, size: 32, offset: 416)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1023, file: !1024, line: 688, baseType: !256, size: 32, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1023, file: !1024, line: 689, baseType: !7, size: 32, offset: 480)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1023, file: !1024, line: 691, baseType: !1049, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1024, line: 691, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1023, file: !1024, line: 692, baseType: !1053, size: 832, offset: 576)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1024, line: 451, size: 832, elements: !1054)
!1054 = !{!1055, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1053, file: !1024, line: 453, baseType: !1056, size: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1024, line: 325, size: 128, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1056, file: !1024, line: 326, baseType: !96, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1056, file: !1024, line: 327, baseType: !198, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1053, file: !1024, line: 454, baseType: !566, size: 192, align: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1053, file: !1024, line: 455, baseType: !385, size: 128, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1053, file: !1024, line: 456, baseType: !7, size: 32, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1053, file: !1024, line: 458, baseType: !202, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1053, file: !1024, line: 459, baseType: !202, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1053, file: !1024, line: 460, baseType: !202, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1053, file: !1024, line: 461, baseType: !202, size: 64, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1053, file: !1024, line: 463, baseType: !202, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1053, file: !1024, line: 465, baseType: !1069, offset: 832)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1024, line: 415, elements: !436)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1023, file: !1024, line: 693, baseType: !1071, size: 384, offset: 1408)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1024, line: 489, size: 384, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1071, file: !1024, line: 490, baseType: !385, size: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1071, file: !1024, line: 491, baseType: !96, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1071, file: !1024, line: 492, baseType: !96, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1071, file: !1024, line: 493, baseType: !7, size: 32, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1071, file: !1024, line: 494, baseType: !120, size: 16, offset: 288)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1071, file: !1024, line: 495, baseType: !120, size: 16, offset: 304)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1071, file: !1024, line: 497, baseType: !1080, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1023, file: !1024, line: 697, baseType: !1082, size: 1792, offset: 1792)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1024, line: 507, size: 1792, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1161, !1162}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1082, file: !1024, line: 508, baseType: !566, size: 192, align: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1082, file: !1024, line: 515, baseType: !202, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1082, file: !1024, line: 516, baseType: !202, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1082, file: !1024, line: 517, baseType: !202, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1082, file: !1024, line: 518, baseType: !202, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1082, file: !1024, line: 519, baseType: !202, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1082, file: !1024, line: 526, baseType: !583, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1082, file: !1024, line: 527, baseType: !202, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !1024, line: 528, baseType: !7, size: 32, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1082, file: !1024, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1082, file: !1024, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1082, file: !1024, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1082, file: !1024, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1082, file: !1024, line: 563, baseType: !1098, size: 512, offset: 704)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1099)
!1099 = !{!1100, !1108, !1109, !1114, !1157, !1158, !1159, !1160}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1098, file: !20, line: 119, baseType: !1101, size: 256)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1102, line: 9, size: 256, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1101, file: !1102, line: 10, baseType: !566, size: 192, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1101, file: !1102, line: 11, baseType: !1106, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1107, line: 29, baseType: !583)
!1107 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1098, file: !20, line: 120, baseType: !1106, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1098, file: !20, line: 121, baseType: !1110, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!19, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1098, file: !20, line: 122, baseType: !1115, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1117)
!1117 = !{!1118, !1138, !1139, !1142, !1147, !1148, !1152, !1156}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1116, file: !20, line: 160, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1120, file: !20, line: 215, baseType: !586)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1120, file: !20, line: 216, baseType: !7, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1120, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1120, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1120, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1120, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1120, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1120, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1120, file: !20, line: 233, baseType: !1106, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1120, file: !20, line: 234, baseType: !1113, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1120, file: !20, line: 235, baseType: !1106, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1120, file: !20, line: 236, baseType: !1113, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1120, file: !20, line: 237, baseType: !1135, size: 4096, offset: 512)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 4096, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 8)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1116, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1116, file: !20, line: 162, baseType: !1140, size: 32, offset: 96)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !95, line: 27, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !124, line: 96, baseType: !256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1116, file: !20, line: 163, baseType: !1143, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !171, line: 276, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !171, line: 276, size: 32, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1144, file: !171, line: 276, baseType: !175, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1116, file: !20, line: 164, baseType: !1113, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1116, file: !20, line: 165, baseType: !1149, size: 128, offset: 256)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1102, line: 14, size: 128, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1149, file: !1102, line: 15, baseType: !558, size: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1116, file: !20, line: 166, baseType: !1153, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!1106}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1116, file: !20, line: 167, baseType: !1106, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1098, file: !20, line: 123, baseType: !98, size: 8, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1098, file: !20, line: 124, baseType: !98, size: 8, offset: 456)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1098, file: !20, line: 125, baseType: !98, size: 8, offset: 464)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1098, file: !20, line: 126, baseType: !98, size: 8, offset: 472)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1082, file: !1024, line: 572, baseType: !1098, size: 512, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1082, file: !1024, line: 580, baseType: !1163, size: 64, offset: 1728)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1023, file: !1024, line: 721, baseType: !7, size: 32, offset: 3584)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1023, file: !1024, line: 722, baseType: !256, size: 32, offset: 3616)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1023, file: !1024, line: 723, baseType: !1167, size: 64, offset: 3648)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1170, line: 17, baseType: !1171)
!1170 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1170, line: 17, size: 64, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1171, file: !1170, line: 17, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 1)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1023, file: !1024, line: 724, baseType: !1169, size: 64, offset: 3712)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1023, file: !1024, line: 749, baseType: !1179, offset: 3776)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1024, line: 290, elements: !436)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1023, file: !1024, line: 751, baseType: !385, size: 128, offset: 3776)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1023, file: !1024, line: 757, baseType: !780, size: 64, offset: 3904)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1023, file: !1024, line: 758, baseType: !780, size: 64, offset: 3968)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1023, file: !1024, line: 761, baseType: !1184, size: 320, offset: 4032)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !957, line: 34, size: 320, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1184, file: !957, line: 35, baseType: !202, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1184, file: !957, line: 36, baseType: !1188, size: 256, offset: 64)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 256, elements: !961)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1023, file: !1024, line: 766, baseType: !256, size: 32, offset: 4352)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1023, file: !1024, line: 767, baseType: !256, size: 32, offset: 4384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1023, file: !1024, line: 768, baseType: !256, size: 32, offset: 4416)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1023, file: !1024, line: 770, baseType: !256, size: 32, offset: 4448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1023, file: !1024, line: 772, baseType: !96, size: 64, offset: 4480)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1023, file: !1024, line: 775, baseType: !7, size: 32, offset: 4544)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1023, file: !1024, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1023, file: !1024, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1023, file: !1024, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1023, file: !1024, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1023, file: !1024, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1023, file: !1024, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1023, file: !1024, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1023, file: !1024, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1023, file: !1024, line: 831, baseType: !96, size: 64, offset: 4672)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1023, file: !1024, line: 833, baseType: !1205, size: 384, offset: 4736)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1206)
!1206 = !{!1207, !1212}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1205, file: !25, line: 26, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!134, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !25, line: 27, baseType: !1213, size: 320, offset: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !25, line: 27, size: 320, elements: !1214)
!1214 = !{!1215, !1225, !1252}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1213, file: !25, line: 36, baseType: !1216, size: 320)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1213, file: !25, line: 29, size: 320, elements: !1217)
!1217 = !{!1218, !1220, !1221, !1222, !1223, !1224}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1216, file: !25, line: 30, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1216, file: !25, line: 31, baseType: !198, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !25, line: 32, baseType: !198, size: 32, offset: 96)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1216, file: !25, line: 33, baseType: !198, size: 32, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1216, file: !25, line: 34, baseType: !202, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1216, file: !25, line: 35, baseType: !1219, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1213, file: !25, line: 46, baseType: !1226, size: 192)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1213, file: !25, line: 38, size: 192, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1251}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1226, file: !25, line: 39, baseType: !1140, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1226, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !25, line: 41, baseType: !1231, size: 64, offset: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !25, line: 41, size: 64, elements: !1232)
!1232 = !{!1233, !1241}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1231, file: !25, line: 42, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1236, line: 7, size: 128, elements: !1237)
!1236 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1237 = !{!1238, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1235, file: !1236, line: 8, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !124, line: 93, baseType: !315)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1235, file: !1236, line: 9, baseType: !315, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1231, file: !25, line: 43, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1244, line: 7, size: 64, elements: !1245)
!1244 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1245 = !{!1246, !1250}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1243, file: !1244, line: 8, baseType: !1247, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1244, line: 5, baseType: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !99, line: 20, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !101, line: 26, baseType: !256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1243, file: !1244, line: 9, baseType: !1248, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1226, file: !25, line: 45, baseType: !202, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1213, file: !25, line: 54, baseType: !1253, size: 256)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1213, file: !25, line: 48, size: 256, elements: !1254)
!1254 = !{!1255, !1258, !1259, !1260, !1261}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1253, file: !25, line: 49, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1253, file: !25, line: 50, baseType: !256, size: 32, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1253, file: !25, line: 51, baseType: !256, size: 32, offset: 96)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1253, file: !25, line: 52, baseType: !96, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1253, file: !25, line: 53, baseType: !96, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1023, file: !1024, line: 835, baseType: !1263, size: 32, offset: 5120)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !95, line: 22, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !124, line: 28, baseType: !256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1023, file: !1024, line: 836, baseType: !1263, size: 32, offset: 5152)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1023, file: !1024, line: 840, baseType: !96, size: 64, offset: 5184)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1023, file: !1024, line: 849, baseType: !1022, size: 64, offset: 5248)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1023, file: !1024, line: 852, baseType: !1022, size: 64, offset: 5312)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1023, file: !1024, line: 857, baseType: !385, size: 128, offset: 5376)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1023, file: !1024, line: 858, baseType: !385, size: 128, offset: 5504)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1023, file: !1024, line: 859, baseType: !1022, size: 64, offset: 5632)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1023, file: !1024, line: 867, baseType: !385, size: 128, offset: 5696)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1023, file: !1024, line: 868, baseType: !385, size: 128, offset: 5824)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1023, file: !1024, line: 871, baseType: !1275, size: 64, offset: 5952)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1283, !1284, !1291, !1292}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1276, file: !53, line: 61, baseType: !1036, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1276, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1276, file: !53, line: 63, baseType: !535, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1276, file: !53, line: 65, baseType: !1282, size: 256, offset: 64)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 256, elements: !961)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1276, file: !53, line: 66, baseType: !424, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1276, file: !53, line: 68, baseType: !1285, size: 128, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1286, line: 40, baseType: !1287)
!1286 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1286, line: 36, size: 128, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1287, file: !1286, line: 37, baseType: !535)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1287, file: !1286, line: 38, baseType: !385, size: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1276, file: !53, line: 69, baseType: !148, size: 128, align: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1276, file: !53, line: 70, baseType: !1293, size: 128, offset: 640)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 128, elements: !1175)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1294, file: !53, line: 55, baseType: !256, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1294, file: !53, line: 56, baseType: !1298, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1023, file: !1024, line: 872, baseType: !1301, size: 512, offset: 6016)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 512, elements: !961)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1023, file: !1024, line: 873, baseType: !385, size: 128, offset: 6528)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1023, file: !1024, line: 874, baseType: !385, size: 128, offset: 6656)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1023, file: !1024, line: 876, baseType: !1305, size: 64, offset: 6784)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1307, line: 26, size: 192, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1306, file: !1307, line: 27, baseType: !7, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1306, file: !1307, line: 28, baseType: !1311, size: 128, offset: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1312, line: 43, size: 128, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1311, file: !1312, line: 44, baseType: !586)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1311, file: !1312, line: 45, baseType: !385, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1023, file: !1024, line: 879, baseType: !497, size: 64, offset: 6848)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1023, file: !1024, line: 882, baseType: !497, size: 64, offset: 6912)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1023, file: !1024, line: 884, baseType: !202, size: 64, offset: 6976)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1023, file: !1024, line: 885, baseType: !202, size: 64, offset: 7040)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1023, file: !1024, line: 890, baseType: !202, size: 64, offset: 7104)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1023, file: !1024, line: 891, baseType: !1322, size: 128, offset: 7168)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1024, line: 242, size: 128, elements: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1322, file: !1024, line: 244, baseType: !202, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1322, file: !1024, line: 245, baseType: !202, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1322, file: !1024, line: 246, baseType: !586, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1023, file: !1024, line: 900, baseType: !96, size: 64, offset: 7296)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1023, file: !1024, line: 901, baseType: !96, size: 64, offset: 7360)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1023, file: !1024, line: 904, baseType: !202, size: 64, offset: 7424)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1023, file: !1024, line: 907, baseType: !202, size: 64, offset: 7488)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1023, file: !1024, line: 910, baseType: !96, size: 64, offset: 7552)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1023, file: !1024, line: 911, baseType: !96, size: 64, offset: 7616)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1023, file: !1024, line: 914, baseType: !1334, size: 640, offset: 7680)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1335, line: 123, size: 640, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1343, !1344}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1334, file: !1335, line: 124, baseType: !1338, size: 576)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 576, elements: !441)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1335, line: 108, size: 192, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1339, file: !1335, line: 109, baseType: !202, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1339, file: !1335, line: 110, baseType: !1149, size: 128, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1334, file: !1335, line: 125, baseType: !7, size: 32, offset: 576)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1334, file: !1335, line: 126, baseType: !7, size: 32, offset: 608)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1023, file: !1024, line: 917, baseType: !1346, size: 192, offset: 8320)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1335, line: 134, size: 192, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1346, file: !1335, line: 135, baseType: !148, size: 128, align: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1346, file: !1335, line: 136, baseType: !7, size: 32, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1023, file: !1024, line: 923, baseType: !1351, size: 64, offset: 8512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1354, line: 111, size: 1280, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1375, !1376, !1377, !1378, !1379, !1380, !1487, !1488, !1489, !1490, !1516, !1519, !1529}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1353, file: !1354, line: 112, baseType: !553, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1353, file: !1354, line: 120, baseType: !215, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1353, file: !1354, line: 121, baseType: !223, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1353, file: !1354, line: 122, baseType: !215, size: 32, offset: 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1353, file: !1354, line: 123, baseType: !223, size: 32, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1353, file: !1354, line: 124, baseType: !215, size: 32, offset: 160)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1353, file: !1354, line: 125, baseType: !223, size: 32, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1353, file: !1354, line: 126, baseType: !215, size: 32, offset: 224)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1353, file: !1354, line: 127, baseType: !223, size: 32, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1353, file: !1354, line: 128, baseType: !7, size: 32, offset: 288)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1353, file: !1354, line: 129, baseType: !1367, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1368, line: 26, baseType: !1369)
!1368 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1368, line: 24, size: 64, elements: !1370)
!1370 = !{!1371}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1369, file: !1368, line: 25, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 2)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1353, file: !1354, line: 130, baseType: !1367, size: 64, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1353, file: !1354, line: 131, baseType: !1367, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1353, file: !1354, line: 132, baseType: !1367, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1353, file: !1354, line: 133, baseType: !1367, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1353, file: !1354, line: 135, baseType: !102, size: 8, offset: 640)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1353, file: !1354, line: 137, baseType: !1381, size: 64, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1383, line: 189, size: 1664, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386, !1389, !1394, !1395, !1398, !1399, !1404, !1405, !1406, !1407, !1409, !1410, !1411, !1412, !1413, !1451, !1472}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1382, file: !1383, line: 190, baseType: !1036, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1382, file: !1383, line: 191, baseType: !1387, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1383, line: 28, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !95, line: 98, baseType: !1248)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 192, baseType: !1390, size: 192, offset: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 192, size: 192, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1390, file: !1383, line: 193, baseType: !385, size: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1390, file: !1383, line: 194, baseType: !566, size: 192, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1382, file: !1383, line: 199, baseType: !573, size: 256, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1382, file: !1383, line: 200, baseType: !1396, size: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1383, line: 200, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1382, file: !1383, line: 201, baseType: !93, size: 64, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 202, baseType: !1400, size: 64, offset: 640)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 202, size: 64, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1400, file: !1383, line: 203, baseType: !321, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1400, file: !1383, line: 204, baseType: !321, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1382, file: !1383, line: 206, baseType: !321, size: 64, offset: 704)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1382, file: !1383, line: 207, baseType: !215, size: 32, offset: 768)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1382, file: !1383, line: 208, baseType: !223, size: 32, offset: 800)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1382, file: !1383, line: 209, baseType: !1408, size: 32, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1383, line: 31, baseType: !341)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1382, file: !1383, line: 210, baseType: !120, size: 16, offset: 864)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1382, file: !1383, line: 211, baseType: !120, size: 16, offset: 880)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1382, file: !1383, line: 215, baseType: !1011, size: 16, offset: 896)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !1383, line: 222, baseType: !96, size: 64, offset: 960)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 239, baseType: !1414, size: 320, offset: 1024)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 239, size: 320, elements: !1415)
!1415 = !{!1416, !1443}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1414, file: !1383, line: 240, baseType: !1417, size: 320)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1383, line: 108, size: 320, elements: !1418)
!1418 = !{!1419, !1420, !1432, !1435, !1442}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1417, file: !1383, line: 110, baseType: !96, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !1383, line: 111, baseType: !1421, size: 64, offset: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !1383, line: 111, size: 64, elements: !1422)
!1422 = !{!1423, !1431}
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !1383, line: 112, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1421, file: !1383, line: 112, size: 64, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1424, file: !1383, line: 114, baseType: !665, size: 16)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1424, file: !1383, line: 115, baseType: !1428, size: 48, offset: 16)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 48, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 6)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1421, file: !1383, line: 121, baseType: !96, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1417, file: !1383, line: 123, baseType: !1433, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1383, line: 96, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1417, file: !1383, line: 124, baseType: !1436, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1383, line: 102, size: 192, elements: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1437, file: !1383, line: 103, baseType: !148, size: 128, align: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1437, file: !1383, line: 104, baseType: !1036, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1437, file: !1383, line: 105, baseType: !272, size: 8, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1417, file: !1383, line: 125, baseType: !115, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1383, line: 241, baseType: !1444, size: 320)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1414, file: !1383, line: 241, size: 320, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1444, file: !1383, line: 242, baseType: !96, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1444, file: !1383, line: 243, baseType: !96, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1444, file: !1383, line: 244, baseType: !1433, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1444, file: !1383, line: 245, baseType: !1436, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1444, file: !1383, line: 246, baseType: !267, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 254, baseType: !1452, size: 256, offset: 1344)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 254, size: 256, elements: !1453)
!1453 = !{!1454, !1460}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1452, file: !1383, line: 255, baseType: !1455, size: 256)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1383, line: 128, size: 256, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1455, file: !1383, line: 129, baseType: !93, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1455, file: !1383, line: 130, baseType: !1459, size: 256)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !961)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !1383, line: 256, baseType: !1461, size: 256)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !1383, line: 256, size: 256, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1461, file: !1383, line: 258, baseType: !385, size: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1461, file: !1383, line: 259, baseType: !1465, size: 128, offset: 128)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1466, line: 22, size: 128, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1471}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1465, file: !1466, line: 23, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1466, line: 23, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1465, file: !1466, line: 24, baseType: !96, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1382, file: !1383, line: 274, baseType: !1473, size: 64, offset: 1600)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1383, line: 170, size: 192, elements: !1475)
!1475 = !{!1476, !1485, !1486}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1474, file: !1383, line: 171, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1383, line: 165, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!256, !1381, !1481, !1483, !1381}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1474, file: !1383, line: 172, baseType: !1381, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1474, file: !1383, line: 173, baseType: !1433, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1353, file: !1354, line: 138, baseType: !1381, size: 64, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1353, file: !1354, line: 139, baseType: !1381, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1353, file: !1354, line: 140, baseType: !1381, size: 64, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1353, file: !1354, line: 145, baseType: !1491, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1493, line: 13, size: 896, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1492, file: !1493, line: 14, baseType: !1036, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1492, file: !1493, line: 15, baseType: !553, size: 32, offset: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1492, file: !1493, line: 16, baseType: !553, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1492, file: !1493, line: 21, baseType: !577, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1492, file: !1493, line: 27, baseType: !96, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1492, file: !1493, line: 28, baseType: !96, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1492, file: !1493, line: 29, baseType: !577, size: 64, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1492, file: !1493, line: 32, baseType: !428, size: 128, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1492, file: !1493, line: 33, baseType: !215, size: 32, offset: 512)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1492, file: !1493, line: 37, baseType: !577, size: 64, offset: 576)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1492, file: !1493, line: 44, baseType: !1506, size: 256, offset: 640)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1507, line: 15, size: 256, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1506, file: !1507, line: 16, baseType: !586)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1506, file: !1507, line: 18, baseType: !256, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1506, file: !1507, line: 19, baseType: !256, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1506, file: !1507, line: 20, baseType: !256, size: 32, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1506, file: !1507, line: 21, baseType: !256, size: 32, offset: 96)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1506, file: !1507, line: 22, baseType: !96, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !1507, line: 23, baseType: !96, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1353, file: !1354, line: 146, baseType: !1517, size: 64, offset: 1024)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !515, line: 516, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1353, file: !1354, line: 147, baseType: !1520, size: 64, offset: 1088)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1354, line: 25, size: 64, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1521, file: !1354, line: 26, baseType: !553, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1521, file: !1354, line: 27, baseType: !256, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1521, file: !1354, line: 28, baseType: !1526, offset: 64)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1353, file: !1354, line: 149, baseType: !1530, size: 128, offset: 1152)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1353, file: !1354, line: 149, size: 128, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1530, file: !1354, line: 150, baseType: !256, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1530, file: !1354, line: 151, baseType: !148, size: 128, align: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1023, file: !1024, line: 926, baseType: !1351, size: 64, offset: 8576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1023, file: !1024, line: 929, baseType: !1351, size: 64, offset: 8640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1023, file: !1024, line: 933, baseType: !1381, size: 64, offset: 8704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1023, file: !1024, line: 943, baseType: !1538, size: 128, offset: 8768)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 16)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1023, file: !1024, line: 945, baseType: !1542, size: 64, offset: 8896)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1024, line: 49, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1023, file: !1024, line: 956, baseType: !1545, size: 64, offset: 8960)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1024, line: 45, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1023, file: !1024, line: 959, baseType: !1548, size: 64, offset: 9024)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1024, line: 959, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1023, file: !1024, line: 962, baseType: !1551, size: 64, offset: 9088)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1024, line: 66, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1023, file: !1024, line: 966, baseType: !1554, size: 64, offset: 9152)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1024, line: 50, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1023, file: !1024, line: 969, baseType: !1557, size: 64, offset: 9216)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1559, line: 82, size: 7296, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1596, !1605, !1606, !1608, !1609, !1610, !1613, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1643, !1644, !1651, !1652, !1653, !1654, !1655, !1656}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1558, file: !1559, line: 83, baseType: !1036, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1558, file: !1559, line: 84, baseType: !553, size: 32, offset: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1558, file: !1559, line: 85, baseType: !256, size: 32, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1558, file: !1559, line: 86, baseType: !385, size: 128, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1558, file: !1559, line: 88, baseType: !1285, size: 128, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1558, file: !1559, line: 91, baseType: !1022, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1558, file: !1559, line: 94, baseType: !1568, size: 192, offset: 448)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1569, line: 30, size: 192, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1568, file: !1569, line: 31, baseType: !385, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1568, file: !1569, line: 32, baseType: !1573, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1574, line: 25, baseType: !1575)
!1574 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1574, line: 23, size: 64, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1575, file: !1574, line: 24, baseType: !1174, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1558, file: !1559, line: 97, baseType: !424, size: 64, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1558, file: !1559, line: 100, baseType: !256, size: 32, offset: 704)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1558, file: !1559, line: 106, baseType: !256, size: 32, offset: 736)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1558, file: !1559, line: 107, baseType: !1022, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1558, file: !1559, line: 110, baseType: !256, size: 32, offset: 832)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1558, file: !1559, line: 111, baseType: !7, size: 32, offset: 864)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1558, file: !1559, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1558, file: !1559, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1558, file: !1559, line: 128, baseType: !256, size: 32, offset: 928)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1558, file: !1559, line: 129, baseType: !385, size: 128, offset: 960)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1558, file: !1559, line: 132, baseType: !1098, size: 512, offset: 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1558, file: !1559, line: 133, baseType: !1106, size: 64, offset: 1600)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1558, file: !1559, line: 140, baseType: !1591, size: 256, offset: 1664)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1592, size: 256, elements: !1373)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1559, line: 38, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1592, file: !1559, line: 39, baseType: !202, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1592, file: !1559, line: 40, baseType: !202, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1558, file: !1559, line: 146, baseType: !1597, size: 192, offset: 1920)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1559, line: 66, size: 192, elements: !1598)
!1598 = !{!1599}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1597, file: !1559, line: 67, baseType: !1600, size: 192)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1559, line: 47, size: 192, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1600, file: !1559, line: 48, baseType: !579, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1600, file: !1559, line: 49, baseType: !579, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1600, file: !1559, line: 50, baseType: !579, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1558, file: !1559, line: 150, baseType: !1334, size: 640, offset: 2112)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1558, file: !1559, line: 153, baseType: !1607, size: 256, offset: 2752)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1275, size: 256, elements: !961)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1558, file: !1559, line: 159, baseType: !1275, size: 64, offset: 3008)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1558, file: !1559, line: 162, baseType: !256, size: 32, offset: 3072)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1558, file: !1559, line: 164, baseType: !1611, size: 64, offset: 3136)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1559, line: 164, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1558, file: !1559, line: 175, baseType: !1614, size: 32, offset: 3200)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !171, line: 805, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 798, size: 32, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1615, file: !171, line: 803, baseType: !170, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1615, file: !171, line: 804, baseType: !535, offset: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1558, file: !1559, line: 176, baseType: !202, size: 64, offset: 3264)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1558, file: !1559, line: 176, baseType: !202, size: 64, offset: 3328)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1558, file: !1559, line: 176, baseType: !202, size: 64, offset: 3392)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1558, file: !1559, line: 176, baseType: !202, size: 64, offset: 3456)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1558, file: !1559, line: 177, baseType: !202, size: 64, offset: 3520)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1558, file: !1559, line: 178, baseType: !202, size: 64, offset: 3584)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1558, file: !1559, line: 179, baseType: !1322, size: 128, offset: 3648)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1558, file: !1559, line: 180, baseType: !96, size: 64, offset: 3776)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1558, file: !1559, line: 180, baseType: !96, size: 64, offset: 3840)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1558, file: !1559, line: 180, baseType: !96, size: 64, offset: 3904)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1558, file: !1559, line: 180, baseType: !96, size: 64, offset: 3968)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1558, file: !1559, line: 181, baseType: !96, size: 64, offset: 4032)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1558, file: !1559, line: 181, baseType: !96, size: 64, offset: 4096)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1558, file: !1559, line: 181, baseType: !96, size: 64, offset: 4160)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1558, file: !1559, line: 181, baseType: !96, size: 64, offset: 4224)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1558, file: !1559, line: 182, baseType: !96, size: 64, offset: 4288)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1558, file: !1559, line: 182, baseType: !96, size: 64, offset: 4352)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1558, file: !1559, line: 182, baseType: !96, size: 64, offset: 4416)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1558, file: !1559, line: 182, baseType: !96, size: 64, offset: 4480)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1558, file: !1559, line: 183, baseType: !96, size: 64, offset: 4544)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1558, file: !1559, line: 183, baseType: !96, size: 64, offset: 4608)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1558, file: !1559, line: 184, baseType: !1641, offset: 4672)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1642, line: 12, elements: !436)
!1642 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1558, file: !1559, line: 192, baseType: !204, size: 64, offset: 4672)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1558, file: !1559, line: 203, baseType: !1645, size: 2048, offset: 4736)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1646, size: 2048, elements: !1539)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1647, line: 43, size: 128, elements: !1648)
!1647 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1646, file: !1647, line: 44, baseType: !125, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1646, file: !1647, line: 45, baseType: !125, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1558, file: !1559, line: 220, baseType: !272, size: 8, offset: 6784)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1558, file: !1559, line: 221, baseType: !1011, size: 16, offset: 6800)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1558, file: !1559, line: 222, baseType: !1011, size: 16, offset: 6816)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1558, file: !1559, line: 224, baseType: !780, size: 64, offset: 6848)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1558, file: !1559, line: 227, baseType: !979, size: 192, offset: 6912)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1558, file: !1559, line: 233, baseType: !979, size: 192, offset: 7104)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1023, file: !1024, line: 970, baseType: !1658, size: 64, offset: 9280)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1559, line: 20, size: 16576, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1659, file: !1559, line: 21, baseType: !535)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1659, file: !1559, line: 22, baseType: !1036, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1659, file: !1559, line: 23, baseType: !1285, size: 128, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1659, file: !1559, line: 24, baseType: !1665, size: 16384, offset: 192)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1666, size: 16384, elements: !1686)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1569, line: 49, size: 256, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1666, file: !1569, line: 50, baseType: !1669, size: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1569, line: 35, size: 256, elements: !1670)
!1670 = !{!1671, !1678, !1679, !1685}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1669, file: !1569, line: 37, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1673, line: 19, baseType: !1674)
!1673 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1673, line: 18, baseType: !1676)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !256}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1669, file: !1569, line: 38, baseType: !96, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1669, file: !1569, line: 44, baseType: !1680, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1673, line: 22, baseType: !1681)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1673, line: 21, baseType: !1683)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1669, file: !1569, line: 46, baseType: !1573, size: 64, offset: 192)
!1686 = !{!1687}
!1687 = !DISubrange(count: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1023, file: !1024, line: 971, baseType: !1573, size: 64, offset: 9344)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1023, file: !1024, line: 972, baseType: !1573, size: 64, offset: 9408)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1023, file: !1024, line: 974, baseType: !1573, size: 64, offset: 9472)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1023, file: !1024, line: 975, baseType: !1568, size: 192, offset: 9536)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1023, file: !1024, line: 976, baseType: !96, size: 64, offset: 9728)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1023, file: !1024, line: 977, baseType: !122, size: 64, offset: 9792)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1023, file: !1024, line: 978, baseType: !7, size: 32, offset: 9856)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1023, file: !1024, line: 980, baseType: !151, size: 64, offset: 9920)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1023, file: !1024, line: 989, baseType: !1697, size: 128, offset: 9984)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1698, line: 35, size: 128, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1697, file: !1698, line: 36, baseType: !256, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1697, file: !1698, line: 37, baseType: !553, size: 32, offset: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1697, file: !1698, line: 38, baseType: !1703, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1698, line: 23, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1023, file: !1024, line: 992, baseType: !202, size: 64, offset: 10112)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1023, file: !1024, line: 993, baseType: !202, size: 64, offset: 10176)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1023, file: !1024, line: 996, baseType: !535, offset: 10240)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1023, file: !1024, line: 999, baseType: !586, offset: 10240)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1023, file: !1024, line: 1001, baseType: !1710, size: 64, offset: 10240)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1024, line: 636, size: 64, elements: !1711)
!1711 = !{!1712}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1710, file: !1024, line: 637, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1023, file: !1024, line: 1005, baseType: !558, size: 128, offset: 10304)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1023, file: !1024, line: 1007, baseType: !1022, size: 64, offset: 10432)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1023, file: !1024, line: 1009, baseType: !1717, size: 64, offset: 10496)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1024, line: 1009, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1023, file: !1024, line: 1043, baseType: !93, size: 64, offset: 10560)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1023, file: !1024, line: 1046, baseType: !1721, size: 64, offset: 10624)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1024, line: 41, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1023, file: !1024, line: 1050, baseType: !1724, size: 64, offset: 10688)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1024, line: 42, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1023, file: !1024, line: 1054, baseType: !1727, size: 64, offset: 10752)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1024, line: 55, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1023, file: !1024, line: 1056, baseType: !1730, size: 64, offset: 10816)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1024, line: 40, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1023, file: !1024, line: 1058, baseType: !1733, size: 64, offset: 10880)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1735, line: 99, size: 704, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1762, !1763}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1734, file: !1735, line: 100, baseType: !577, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1734, file: !1735, line: 101, baseType: !553, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1734, file: !1735, line: 102, baseType: !553, size: 32, offset: 96)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1734, file: !1735, line: 105, baseType: !535, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1734, file: !1735, line: 107, baseType: !120, size: 16, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1734, file: !1735, line: 109, baseType: !531, size: 128, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1734, file: !1735, line: 110, baseType: !1744, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1735, line: 73, size: 448, elements: !1746)
!1746 = !{!1747, !1750, !1751, !1756, !1761}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1745, file: !1735, line: 74, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1735, line: 74, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1745, file: !1735, line: 75, baseType: !1733, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !1735, line: 83, baseType: !1752, size: 128, offset: 128)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !1735, line: 83, size: 128, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1752, file: !1735, line: 84, baseType: !385, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1752, file: !1735, line: 85, baseType: !741, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !1735, line: 87, baseType: !1757, size: 128, offset: 256)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !1735, line: 87, size: 128, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1757, file: !1735, line: 88, baseType: !428, size: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1757, file: !1735, line: 89, baseType: !148, size: 128, align: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !1735, line: 92, baseType: !7, size: 32, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1734, file: !1735, line: 111, baseType: !424, size: 64, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1734, file: !1735, line: 113, baseType: !1764, size: 256, offset: 448)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1765, line: 102, size: 256, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1764, file: !1765, line: 103, baseType: !577, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1764, file: !1765, line: 104, baseType: !385, size: 128, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1764, file: !1765, line: 105, baseType: !1770, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1765, line: 21, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1023, file: !1024, line: 1061, baseType: !1776, size: 64, offset: 10944)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1024, line: 43, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1023, file: !1024, line: 1064, baseType: !96, size: 64, offset: 11008)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1023, file: !1024, line: 1065, baseType: !1780, size: 64, offset: 11072)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1569, line: 14, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1569, line: 12, size: 384, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1569, line: 13, baseType: !1785, size: 384)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1782, file: !1569, line: 13, size: 384, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1785, file: !1569, line: 13, baseType: !256, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1785, file: !1569, line: 13, baseType: !256, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1785, file: !1569, line: 13, baseType: !256, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1785, file: !1569, line: 13, baseType: !1791, size: 256, offset: 128)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1792, line: 32, size: 256, elements: !1793)
!1792 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1799, !1812, !1818, !1827, !1847, !1852}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1791, file: !1792, line: 37, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1792, line: 34, size: 64, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1795, file: !1792, line: 35, baseType: !1264, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1795, file: !1792, line: 36, baseType: !221, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1791, file: !1792, line: 45, baseType: !1800, size: 192)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1792, line: 40, size: 192, elements: !1801)
!1801 = !{!1802, !1804, !1805, !1811}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1800, file: !1792, line: 41, baseType: !1803, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !124, line: 95, baseType: !256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1800, file: !1792, line: 42, baseType: !256, size: 32, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1800, file: !1792, line: 43, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1792, line: 11, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1792, line: 8, size: 64, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1807, file: !1792, line: 9, baseType: !256, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1807, file: !1792, line: 10, baseType: !93, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1800, file: !1792, line: 44, baseType: !256, size: 32, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1791, file: !1792, line: 52, baseType: !1813, size: 128)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1792, line: 48, size: 128, elements: !1814)
!1814 = !{!1815, !1816, !1817}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1813, file: !1792, line: 49, baseType: !1264, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1813, file: !1792, line: 50, baseType: !221, size: 32, offset: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1813, file: !1792, line: 51, baseType: !1806, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1791, file: !1792, line: 61, baseType: !1819, size: 256)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1792, line: 55, size: 256, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1826}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1819, file: !1792, line: 56, baseType: !1264, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1819, file: !1792, line: 57, baseType: !221, size: 32, offset: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1819, file: !1792, line: 58, baseType: !256, size: 32, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1819, file: !1792, line: 59, baseType: !1825, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !124, line: 94, baseType: !133)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1819, file: !1792, line: 60, baseType: !1825, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1791, file: !1792, line: 95, baseType: !1828, size: 256)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1792, line: 64, size: 256, elements: !1829)
!1829 = !{!1830, !1831}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1828, file: !1792, line: 65, baseType: !93, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !1792, line: 77, baseType: !1832, size: 192, offset: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !1792, line: 77, size: 192, elements: !1833)
!1833 = !{!1834, !1835, !1842}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1832, file: !1792, line: 82, baseType: !1011, size: 16)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1832, file: !1792, line: 88, baseType: !1836, size: 192)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1832, file: !1792, line: 84, size: 192, elements: !1837)
!1837 = !{!1838, !1840, !1841}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1836, file: !1792, line: 85, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !1136)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1836, file: !1792, line: 86, baseType: !93, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1836, file: !1792, line: 87, baseType: !93, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1832, file: !1792, line: 93, baseType: !1843, size: 96)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1832, file: !1792, line: 90, size: 96, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1843, file: !1792, line: 91, baseType: !1839, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1843, file: !1792, line: 92, baseType: !199, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1791, file: !1792, line: 101, baseType: !1848, size: 128)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1792, line: 98, size: 128, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1848, file: !1792, line: 99, baseType: !134, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1848, file: !1792, line: 100, baseType: !256, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1791, file: !1792, line: 108, baseType: !1853, size: 128)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1792, line: 104, size: 128, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1853, file: !1792, line: 105, baseType: !93, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1853, file: !1792, line: 106, baseType: !256, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1853, file: !1792, line: 107, baseType: !7, size: 32, offset: 96)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1023, file: !1024, line: 1067, baseType: !1641, offset: 11136)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1023, file: !1024, line: 1099, baseType: !1860, size: 64, offset: 11136)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1024, line: 56, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1023, file: !1024, line: 1103, baseType: !385, size: 128, offset: 11200)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1023, file: !1024, line: 1104, baseType: !1864, size: 64, offset: 11328)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1024, line: 46, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1023, file: !1024, line: 1105, baseType: !979, size: 192, offset: 11392)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1023, file: !1024, line: 1106, baseType: !7, size: 32, offset: 11584)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1023, file: !1024, line: 1109, baseType: !1869, size: 128, offset: 11648)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1870, size: 128, elements: !1373)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1024, line: 51, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1023, file: !1024, line: 1110, baseType: !979, size: 192, offset: 11776)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1023, file: !1024, line: 1111, baseType: !385, size: 128, offset: 11968)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1023, file: !1024, line: 1173, baseType: !1875, size: 64, offset: 12096)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1877, line: 62, size: 256, align: 256, elements: !1878)
!1877 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !{!1879, !1880, !1881, !1886}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1876, file: !1877, line: 75, baseType: !199, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1876, file: !1877, line: 90, baseType: !199, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1876, file: !1877, line: 124, baseType: !1882, size: 64, offset: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !1877, line: 109, size: 64, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1882, file: !1877, line: 110, baseType: !203, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1882, file: !1877, line: 112, baseType: !203, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1876, file: !1877, line: 144, baseType: !199, size: 32, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1023, file: !1024, line: 1174, baseType: !198, size: 32, offset: 12160)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1023, file: !1024, line: 1179, baseType: !96, size: 64, offset: 12224)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1023, file: !1024, line: 1182, baseType: !1890, size: 128, offset: 12288)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !957, line: 76, size: 128, elements: !1891)
!1891 = !{!1892, !1897, !1898}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1890, file: !957, line: 85, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1894, line: 7, size: 64, elements: !1895)
!1894 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1893, file: !1894, line: 12, baseType: !1171, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1890, file: !957, line: 88, baseType: !272, size: 8, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1890, file: !957, line: 95, baseType: !272, size: 8, offset: 72)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !1024, line: 1184, baseType: !1900, size: 128, offset: 12416)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !1024, line: 1184, size: 128, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1900, file: !1024, line: 1185, baseType: !1036, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1900, file: !1024, line: 1186, baseType: !148, size: 128, align: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1023, file: !1024, line: 1190, baseType: !1905, size: 64, offset: 12544)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1024, line: 53, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1023, file: !1024, line: 1192, baseType: !1908, size: 128, offset: 12608)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !957, line: 64, size: 128, elements: !1909)
!1909 = !{!1910, !1911, !1912}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1908, file: !957, line: 65, baseType: !513, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1908, file: !957, line: 67, baseType: !199, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1908, file: !957, line: 68, baseType: !199, size: 32, offset: 96)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1023, file: !1024, line: 1206, baseType: !256, size: 32, offset: 12736)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1023, file: !1024, line: 1207, baseType: !256, size: 32, offset: 12768)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1023, file: !1024, line: 1209, baseType: !96, size: 64, offset: 12800)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1023, file: !1024, line: 1219, baseType: !202, size: 64, offset: 12864)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1023, file: !1024, line: 1220, baseType: !202, size: 64, offset: 12928)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1023, file: !1024, line: 1317, baseType: !256, size: 32, offset: 12992)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1023, file: !1024, line: 1319, baseType: !1022, size: 64, offset: 13056)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1023, file: !1024, line: 1322, baseType: !1921, size: 64, offset: 13120)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1923, line: 56, size: 512, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1933}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1922, file: !1923, line: 57, baseType: !1921, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1922, file: !1923, line: 58, baseType: !93, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1922, file: !1923, line: 59, baseType: !96, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1922, file: !1923, line: 60, baseType: !96, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1922, file: !1923, line: 61, baseType: !626, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1922, file: !1923, line: 62, baseType: !7, size: 32, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1922, file: !1923, line: 63, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !95, line: 153, baseType: !202)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1922, file: !1923, line: 64, baseType: !1934, size: 64, offset: 448)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1023, file: !1024, line: 1326, baseType: !1036, size: 32, offset: 13184)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1023, file: !1024, line: 1342, baseType: !93, size: 64, offset: 13248)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1023, file: !1024, line: 1343, baseType: !203, size: 64, offset: 13312)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1023, file: !1024, line: 1344, baseType: !202, size: 64, offset: 13376)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1023, file: !1024, line: 1345, baseType: !203, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1023, file: !1024, line: 1346, baseType: !203, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1023, file: !1024, line: 1347, baseType: !203, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1023, file: !1024, line: 1348, baseType: !148, size: 128, align: 64, offset: 13504)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1023, file: !1024, line: 1358, baseType: !1945, size: 34816, offset: 13824)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1946, line: 485, size: 34816, elements: !1947)
!1946 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !{!1948, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1977, !1978, !1979, !1980, !1981, !1982, !1985, !1986, !1987}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1945, file: !1946, line: 487, baseType: !1949, size: 192)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 192, elements: !441)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1951, line: 16, size: 64, elements: !1952)
!1951 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1950, file: !1951, line: 17, baseType: !665, size: 16)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1950, file: !1951, line: 18, baseType: !665, size: 16, offset: 16)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1950, file: !1951, line: 19, baseType: !665, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1950, file: !1951, line: 19, baseType: !665, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1950, file: !1951, line: 19, baseType: !665, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1950, file: !1951, line: 19, baseType: !665, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1950, file: !1951, line: 19, baseType: !665, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1950, file: !1951, line: 20, baseType: !665, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1950, file: !1951, line: 20, baseType: !665, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1950, file: !1951, line: 20, baseType: !665, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1950, file: !1951, line: 20, baseType: !665, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1950, file: !1951, line: 20, baseType: !665, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1950, file: !1951, line: 20, baseType: !665, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1945, file: !1946, line: 491, baseType: !96, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1945, file: !1946, line: 495, baseType: !120, size: 16, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1945, file: !1946, line: 496, baseType: !120, size: 16, offset: 272)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1945, file: !1946, line: 497, baseType: !120, size: 16, offset: 288)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1945, file: !1946, line: 498, baseType: !120, size: 16, offset: 304)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1945, file: !1946, line: 502, baseType: !96, size: 64, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1945, file: !1946, line: 503, baseType: !96, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1945, file: !1946, line: 514, baseType: !1974, size: 256, offset: 448)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1975, size: 256, elements: !961)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1946, line: 483, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1945, file: !1946, line: 516, baseType: !96, size: 64, offset: 704)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1945, file: !1946, line: 518, baseType: !96, size: 64, offset: 768)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1945, file: !1946, line: 520, baseType: !96, size: 64, offset: 832)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1945, file: !1946, line: 521, baseType: !96, size: 64, offset: 896)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1945, file: !1946, line: 522, baseType: !96, size: 64, offset: 960)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1945, file: !1946, line: 528, baseType: !1983, size: 64, offset: 1024)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1946, line: 10, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1945, file: !1946, line: 535, baseType: !96, size: 64, offset: 1088)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1945, file: !1946, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1945, file: !1946, line: 540, baseType: !1988, size: 33280, offset: 1536)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1989, line: 317, size: 33280, elements: !1990)
!1989 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1990 = !{!1991, !1992, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1988, file: !1989, line: 330, baseType: !7, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1988, file: !1989, line: 337, baseType: !96, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1988, file: !1989, line: 348, baseType: !1994, size: 32768, offset: 512)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1989, line: 304, size: 32768, elements: !1995)
!1995 = !{!1996, !2011, !2050, !2100, !2113}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1994, file: !1989, line: 305, baseType: !1997, size: 896)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1989, line: 12, size: 896, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2010}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1997, file: !1989, line: 13, baseType: !198, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1997, file: !1989, line: 14, baseType: !198, size: 32, offset: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1997, file: !1989, line: 15, baseType: !198, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1997, file: !1989, line: 16, baseType: !198, size: 32, offset: 96)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1997, file: !1989, line: 17, baseType: !198, size: 32, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1997, file: !1989, line: 18, baseType: !198, size: 32, offset: 160)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1997, file: !1989, line: 19, baseType: !198, size: 32, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1997, file: !1989, line: 22, baseType: !2007, size: 640, offset: 224)
!2007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 640, elements: !2008)
!2008 = !{!2009}
!2009 = !DISubrange(count: 20)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1997, file: !1989, line: 25, baseType: !198, size: 32, offset: 864)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1994, file: !1989, line: 306, baseType: !2012, size: 4096, align: 128)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1989, line: 34, size: 4096, align: 128, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2033, !2034, !2035, !2039, !2041, !2045}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2012, file: !1989, line: 35, baseType: !665, size: 16)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2012, file: !1989, line: 36, baseType: !665, size: 16, offset: 16)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2012, file: !1989, line: 37, baseType: !665, size: 16, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2012, file: !1989, line: 38, baseType: !665, size: 16, offset: 48)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !1989, line: 39, baseType: !2019, size: 128, offset: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !1989, line: 39, size: 128, elements: !2020)
!2020 = !{!2021, !2026}
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !1989, line: 40, baseType: !2022, size: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2019, file: !1989, line: 40, size: 128, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2022, file: !1989, line: 41, baseType: !202, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2022, file: !1989, line: 42, baseType: !202, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !1989, line: 44, baseType: !2027, size: 128)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2019, file: !1989, line: 44, size: 128, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2027, file: !1989, line: 45, baseType: !198, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2027, file: !1989, line: 46, baseType: !198, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2027, file: !1989, line: 47, baseType: !198, size: 32, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2027, file: !1989, line: 48, baseType: !198, size: 32, offset: 96)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2012, file: !1989, line: 51, baseType: !198, size: 32, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2012, file: !1989, line: 52, baseType: !198, size: 32, offset: 224)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2012, file: !1989, line: 55, baseType: !2036, size: 1024, offset: 256)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 1024, elements: !2037)
!2037 = !{!2038}
!2038 = !DISubrange(count: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2012, file: !1989, line: 58, baseType: !2040, size: 2048, offset: 1280)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 2048, elements: !1686)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2012, file: !1989, line: 60, baseType: !2042, size: 384, offset: 3328)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 384, elements: !2043)
!2043 = !{!2044}
!2044 = !DISubrange(count: 12)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !1989, line: 62, baseType: !2046, size: 384, offset: 3712)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !1989, line: 62, size: 384, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2046, file: !1989, line: 63, baseType: !2042, size: 384)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2046, file: !1989, line: 64, baseType: !2042, size: 384)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1994, file: !1989, line: 307, baseType: !2051, size: 1088)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1989, line: 79, size: 1088, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2099}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2051, file: !1989, line: 80, baseType: !198, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2051, file: !1989, line: 81, baseType: !198, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2051, file: !1989, line: 82, baseType: !198, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2051, file: !1989, line: 83, baseType: !198, size: 32, offset: 96)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2051, file: !1989, line: 84, baseType: !198, size: 32, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2051, file: !1989, line: 85, baseType: !198, size: 32, offset: 160)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2051, file: !1989, line: 86, baseType: !198, size: 32, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2051, file: !1989, line: 88, baseType: !2007, size: 640, offset: 224)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2051, file: !1989, line: 89, baseType: !98, size: 8, offset: 864)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2051, file: !1989, line: 90, baseType: !98, size: 8, offset: 872)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2051, file: !1989, line: 91, baseType: !98, size: 8, offset: 880)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2051, file: !1989, line: 92, baseType: !98, size: 8, offset: 888)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2051, file: !1989, line: 93, baseType: !98, size: 8, offset: 896)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2051, file: !1989, line: 94, baseType: !98, size: 8, offset: 904)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2051, file: !1989, line: 95, baseType: !2068, size: 64, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2070, line: 11, size: 128, elements: !2071)
!2070 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2069, file: !2070, line: 12, baseType: !134, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2069, file: !2070, line: 13, baseType: !2074, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2076, line: 56, size: 1344, elements: !2077)
!2076 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2075, file: !2076, line: 61, baseType: !96, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2075, file: !2076, line: 62, baseType: !96, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2075, file: !2076, line: 63, baseType: !96, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2075, file: !2076, line: 64, baseType: !96, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2075, file: !2076, line: 65, baseType: !96, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2075, file: !2076, line: 66, baseType: !96, size: 64, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2075, file: !2076, line: 68, baseType: !96, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2075, file: !2076, line: 69, baseType: !96, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2075, file: !2076, line: 70, baseType: !96, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2075, file: !2076, line: 71, baseType: !96, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2075, file: !2076, line: 72, baseType: !96, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2075, file: !2076, line: 73, baseType: !96, size: 64, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2075, file: !2076, line: 74, baseType: !96, size: 64, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2075, file: !2076, line: 75, baseType: !96, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2075, file: !2076, line: 76, baseType: !96, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2075, file: !2076, line: 81, baseType: !96, size: 64, offset: 960)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2075, file: !2076, line: 83, baseType: !96, size: 64, offset: 1024)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2075, file: !2076, line: 84, baseType: !96, size: 64, offset: 1088)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2075, file: !2076, line: 85, baseType: !96, size: 64, offset: 1152)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2075, file: !2076, line: 86, baseType: !96, size: 64, offset: 1216)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2075, file: !2076, line: 87, baseType: !96, size: 64, offset: 1280)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2051, file: !1989, line: 96, baseType: !198, size: 32, offset: 1024)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1994, file: !1989, line: 308, baseType: !2101, size: 4608, align: 512)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1989, line: 289, size: 4608, align: 512, elements: !2102)
!2102 = !{!2103, !2104, !2111}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2101, file: !1989, line: 290, baseType: !2012, size: 4096, align: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2101, file: !1989, line: 291, baseType: !2105, size: 512, offset: 4096)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1989, line: 268, size: 512, elements: !2106)
!2106 = !{!2107, !2108, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2105, file: !1989, line: 269, baseType: !202, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2105, file: !1989, line: 270, baseType: !202, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2105, file: !1989, line: 271, baseType: !2110, size: 384, offset: 128)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 384, elements: !1429)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2101, file: !1989, line: 292, baseType: !2112, offset: 4608)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !1527)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1994, file: !1989, line: 309, baseType: !2114, size: 32768)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32768, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 4096)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1019, file: !515, line: 378, baseType: !2118, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1015, file: !515, line: 384, baseType: !1306, size: 192, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !784, file: !515, line: 500, baseType: !535, offset: 6656)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !784, file: !515, line: 501, baseType: !2122, size: 64, offset: 6656)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !515, line: 387, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !784, file: !515, line: 516, baseType: !1517, size: 64, offset: 6720)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !784, file: !515, line: 519, baseType: !135, size: 64, offset: 6784)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !784, file: !515, line: 521, baseType: !2127, size: 64, offset: 6848)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !515, line: 521, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !784, file: !515, line: 545, baseType: !553, size: 32, offset: 6912)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !784, file: !515, line: 548, baseType: !272, size: 8, offset: 6944)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !784, file: !515, line: 550, baseType: !2132, offset: 6952)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2133, line: 142, elements: !436)
!2133 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !784, file: !515, line: 554, baseType: !1764, size: 256, offset: 6976)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !784, file: !515, line: 557, baseType: !198, size: 32, offset: 7232)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !781, file: !515, line: 565, baseType: !2137, offset: 7296)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !2138)
!2138 = !{!2139}
!2139 = !DISubrange(count: -1)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !777, file: !515, line: 151, baseType: !553, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !770, file: !515, line: 156, baseType: !535, offset: 256)
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !515, line: 159, baseType: !2143, size: 128)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !515, line: 159, size: 128, elements: !2144)
!2144 = !{!2145, !2209}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2143, file: !515, line: 161, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2148)
!2148 = !{!2149, !2159, !2180, !2181, !2182, !2183, !2184, !2196, !2197, !2198}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2147, file: !31, line: 111, baseType: !2150, size: 384)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2151)
!2151 = !{!2152, !2154, !2155, !2156, !2157, !2158}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2150, file: !31, line: 20, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2150, file: !31, line: 21, baseType: !2153, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2150, file: !31, line: 22, baseType: !2153, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2150, file: !31, line: 23, baseType: !96, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2150, file: !31, line: 24, baseType: !96, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2150, file: !31, line: 25, baseType: !96, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2147, file: !31, line: 112, baseType: !2160, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2162, line: 105, size: 128, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2161, file: !2162, line: 110, baseType: !96, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2161, file: !2162, line: 118, baseType: !2166, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2162, line: 95, size: 448, elements: !2168)
!2168 = !{!2169, !2170, !2175, !2176, !2177, !2178, !2179}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2167, file: !2162, line: 96, baseType: !577, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2167, file: !2162, line: 97, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2162, line: 60, baseType: !2173)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2160}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2167, file: !2162, line: 98, baseType: !2171, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2167, file: !2162, line: 99, baseType: !272, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2167, file: !2162, line: 100, baseType: !272, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2167, file: !2162, line: 101, baseType: !148, size: 128, align: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2167, file: !2162, line: 102, baseType: !2160, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2147, file: !31, line: 113, baseType: !2161, size: 128, offset: 448)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2147, file: !31, line: 114, baseType: !1306, size: 192, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2147, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2147, file: !31, line: 117, baseType: !2185, size: 64, offset: 832)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2187)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2188)
!2188 = !{!2189, !2190, !2194, !2195}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2187, file: !31, line: 73, baseType: !646, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2187, file: !31, line: 78, baseType: !2191, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !2146}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2187, file: !31, line: 83, baseType: !2191, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2187, file: !31, line: 89, baseType: !833, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2147, file: !31, line: 118, baseType: !93, size: 64, offset: 896)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2147, file: !31, line: 119, baseType: !256, size: 32, offset: 960)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !31, line: 120, baseType: !2199, size: 128, offset: 1024)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !31, line: 120, size: 128, elements: !2200)
!2200 = !{!2201, !2207}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2199, file: !31, line: 121, baseType: !2202, size: 128)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2203, line: 6, size: 128, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2202, file: !2203, line: 7, baseType: !202, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2202, file: !2203, line: 8, baseType: !202, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2199, file: !31, line: 122, baseType: !2208)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2202, elements: !1527)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2143, file: !515, line: 162, baseType: !93, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !519, file: !515, line: 176, baseType: !148, size: 128, align: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !515, line: 179, baseType: !2212, size: 32, offset: 384)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !515, line: 179, size: 32, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2217}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2212, file: !515, line: 184, baseType: !553, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2212, file: !515, line: 192, baseType: !7, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2212, file: !515, line: 194, baseType: !7, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2212, file: !515, line: 195, baseType: !256, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !514, file: !515, line: 199, baseType: !553, size: 32, offset: 416)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !449, file: !44, line: 1964, baseType: !2220, size: 64, offset: 1344)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!134, !381, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2225, line: 12, size: 256, elements: !2226)
!2225 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2226 = !{!2227, !2228, !2229, !2230, !2231}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2224, file: !2225, line: 13, baseType: !94, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2224, file: !2225, line: 16, baseType: !256, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2224, file: !2225, line: 23, baseType: !96, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2224, file: !2225, line: 30, baseType: !96, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2224, file: !2225, line: 33, baseType: !2232, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !515, line: 27, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !449, file: !44, line: 1966, baseType: !2220, size: 64, offset: 1408)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !382, file: !44, line: 1424, baseType: !2236, size: 64, offset: 448)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2239)
!2239 = !{!2240, !2286, !2290, !2294, !2295, !2296, !2297, !2298, !2303, !2308, !2312}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2238, file: !38, line: 323, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!256, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2271, !2272, !2273}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2245, file: !38, line: 295, baseType: !428, size: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2245, file: !38, line: 296, baseType: !385, size: 128, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2245, file: !38, line: 297, baseType: !385, size: 128, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2245, file: !38, line: 298, baseType: !385, size: 128, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2245, file: !38, line: 299, baseType: !979, size: 192, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2245, file: !38, line: 300, baseType: !535, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2245, file: !38, line: 301, baseType: !553, size: 32, offset: 704)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2245, file: !38, line: 302, baseType: !381, size: 64, offset: 768)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2245, file: !38, line: 303, baseType: !2256, size: 64, offset: 832)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2257)
!2257 = !{!2258, !2270}
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !38, line: 69, baseType: !2259, size: 32)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2256, file: !38, line: 69, size: 32, elements: !2260)
!2260 = !{!2261, !2262, !2263}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2259, file: !38, line: 70, baseType: !215, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2259, file: !38, line: 71, baseType: !223, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2259, file: !38, line: 72, baseType: !2264, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2265, line: 24, baseType: !2266)
!2265 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2265, line: 22, size: 32, elements: !2267)
!2267 = !{!2268}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2266, file: !2265, line: 23, baseType: !2269, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2265, line: 20, baseType: !221)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2256, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2245, file: !38, line: 304, baseType: !313, size: 64, offset: 896)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2245, file: !38, line: 305, baseType: !96, size: 64, offset: 960)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2245, file: !38, line: 306, baseType: !2274, size: 576, offset: 1024)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2275)
!2275 = !{!2276, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2274, file: !38, line: 206, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !315)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2274, file: !38, line: 207, baseType: !2277, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2274, file: !38, line: 208, baseType: !2277, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2274, file: !38, line: 209, baseType: !2277, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2274, file: !38, line: 210, baseType: !2277, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2274, file: !38, line: 211, baseType: !2277, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2274, file: !38, line: 212, baseType: !2277, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2274, file: !38, line: 213, baseType: !321, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2274, file: !38, line: 214, baseType: !321, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2238, file: !38, line: 324, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2244, !381, !256}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2238, file: !38, line: 325, baseType: !2291, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !2244}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2238, file: !38, line: 326, baseType: !2241, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2238, file: !38, line: 327, baseType: !2241, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2238, file: !38, line: 328, baseType: !2241, size: 64, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2238, file: !38, line: 329, baseType: !477, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2238, file: !38, line: 332, baseType: !2299, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!2302, !209}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2238, file: !38, line: 333, baseType: !2304, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!256, !209, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2238, file: !38, line: 335, baseType: !2309, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!256, !209, !2302}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2238, file: !38, line: 337, baseType: !2313, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!256, !381, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !382, file: !44, line: 1425, baseType: !2318, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2320)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2321)
!2321 = !{!2322, !2326, !2327, !2331, !2332, !2333, !2348, !2371, !2375, !2376, !2399}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2320, file: !38, line: 429, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!256, !381, !256, !256, !331}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2320, file: !38, line: 430, baseType: !477, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2320, file: !38, line: 431, baseType: !2328, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!256, !381, !7}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2320, file: !38, line: 432, baseType: !2328, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2320, file: !38, line: 433, baseType: !477, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2320, file: !38, line: 434, baseType: !2334, size: 64, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!256, !381, !256, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2338, file: !38, line: 416, baseType: !256, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2338, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2338, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2338, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2338, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2338, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2338, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2338, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2320, file: !38, line: 435, baseType: !2349, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!256, !381, !2256, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2353, file: !38, line: 344, baseType: !256, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2353, file: !38, line: 345, baseType: !202, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2353, file: !38, line: 346, baseType: !202, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2353, file: !38, line: 347, baseType: !202, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2353, file: !38, line: 348, baseType: !202, size: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2353, file: !38, line: 349, baseType: !202, size: 64, offset: 320)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2353, file: !38, line: 350, baseType: !202, size: 64, offset: 384)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2353, file: !38, line: 351, baseType: !583, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2353, file: !38, line: 353, baseType: !583, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2353, file: !38, line: 354, baseType: !256, size: 32, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2353, file: !38, line: 355, baseType: !256, size: 32, offset: 608)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2353, file: !38, line: 356, baseType: !202, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2353, file: !38, line: 357, baseType: !202, size: 64, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2353, file: !38, line: 358, baseType: !202, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2353, file: !38, line: 359, baseType: !583, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2353, file: !38, line: 360, baseType: !256, size: 32, offset: 896)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2320, file: !38, line: 436, baseType: !2372, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!256, !381, !2316, !2352}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2320, file: !38, line: 438, baseType: !2349, size: 64, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2320, file: !38, line: 439, baseType: !2377, size: 64, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!256, !381, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2381, file: !38, line: 410, baseType: !7, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2381, file: !38, line: 411, baseType: !2385, size: 1344, offset: 64)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2386, size: 1344, elements: !441)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2387)
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2398}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2386, file: !38, line: 396, baseType: !7, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2386, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2386, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2386, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2386, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2386, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2386, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2386, file: !38, line: 404, baseType: !204, size: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2386, file: !38, line: 405, baseType: !2397, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !95, line: 126, baseType: !202)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2386, file: !38, line: 406, baseType: !2397, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2320, file: !38, line: 440, baseType: !2328, size: 64, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !382, file: !44, line: 1426, baseType: !2401, size: 64, offset: 576)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !382, file: !44, line: 1427, baseType: !96, size: 64, offset: 640)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !382, file: !44, line: 1428, baseType: !96, size: 64, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !382, file: !44, line: 1429, baseType: !96, size: 64, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !382, file: !44, line: 1430, baseType: !165, size: 64, offset: 832)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !382, file: !44, line: 1431, baseType: !573, size: 256, offset: 896)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !382, file: !44, line: 1432, baseType: !256, size: 32, offset: 1152)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !382, file: !44, line: 1433, baseType: !553, size: 32, offset: 1184)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !382, file: !44, line: 1437, baseType: !2412, size: 64, offset: 1216)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2415)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !382, file: !44, line: 1449, baseType: !2417, size: 64, offset: 1280)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !181, line: 34, size: 64, elements: !2418)
!2418 = !{!2419}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2417, file: !181, line: 35, baseType: !184, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !382, file: !44, line: 1450, baseType: !385, size: 128, offset: 1344)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !382, file: !44, line: 1451, baseType: !2422, size: 64, offset: 1472)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !382, file: !44, line: 1452, baseType: !1730, size: 64, offset: 1536)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !382, file: !44, line: 1453, baseType: !2426, size: 64, offset: 1600)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !382, file: !44, line: 1454, baseType: !428, size: 128, offset: 1664)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !382, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !382, file: !44, line: 1456, baseType: !2431, size: 2432, offset: 1856)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2437, !2469}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2431, file: !38, line: 519, baseType: !7, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2431, file: !38, line: 520, baseType: !573, size: 256, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2431, file: !38, line: 521, baseType: !2436, size: 192, offset: 320)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 192, elements: !441)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2431, file: !38, line: 522, baseType: !2438, size: 1728, offset: 512)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2439, size: 1728, elements: !441)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2440)
!2440 = !{!2441, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2439, file: !38, line: 223, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2444)
!2444 = !{!2445, !2446, !2459, !2460}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2443, file: !38, line: 444, baseType: !256, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2443, file: !38, line: 445, baseType: !2447, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2449)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2449, file: !38, line: 311, baseType: !477, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2449, file: !38, line: 312, baseType: !477, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2449, file: !38, line: 313, baseType: !477, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2449, file: !38, line: 314, baseType: !477, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2449, file: !38, line: 315, baseType: !2241, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2449, file: !38, line: 316, baseType: !2241, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2449, file: !38, line: 317, baseType: !2241, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2449, file: !38, line: 318, baseType: !2313, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2443, file: !38, line: 446, baseType: !419, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2443, file: !38, line: 447, baseType: !2442, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2439, file: !38, line: 224, baseType: !256, size: 32, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2439, file: !38, line: 226, baseType: !385, size: 128, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2439, file: !38, line: 227, baseType: !96, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2439, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2439, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2439, file: !38, line: 230, baseType: !2277, size: 64, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2439, file: !38, line: 231, baseType: !2277, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2439, file: !38, line: 232, baseType: !93, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2431, file: !38, line: 523, baseType: !2470, size: 192, offset: 2240)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2447, size: 192, elements: !441)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !382, file: !44, line: 1458, baseType: !2472, size: 2112, offset: 4288)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2473)
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2472, file: !44, line: 1411, baseType: !256, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2472, file: !44, line: 1412, baseType: !1285, size: 128, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2472, file: !44, line: 1413, baseType: !2477, size: 1920, offset: 192)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2478, size: 1920, elements: !441)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2479, line: 12, size: 640, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !{!2481, !2489, !2491, !2496, !2497}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2478, file: !2479, line: 13, baseType: !2482, size: 320)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2483, line: 17, size: 320, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2484 = !{!2485, !2486, !2487, !2488}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2482, file: !2483, line: 18, baseType: !256, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2482, file: !2483, line: 19, baseType: !256, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2482, file: !2483, line: 20, baseType: !1285, size: 128, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2482, file: !2483, line: 22, baseType: !148, size: 128, align: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2478, file: !2479, line: 14, baseType: !2490, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2478, file: !2479, line: 15, baseType: !2492, size: 64, offset: 384)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2493, line: 16, size: 64, elements: !2494)
!2493 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2494 = !{!2495}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2492, file: !2493, line: 17, baseType: !1022, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2478, file: !2479, line: 16, baseType: !1285, size: 128, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2478, file: !2479, line: 17, baseType: !553, size: 32, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !382, file: !44, line: 1465, baseType: !93, size: 64, offset: 6400)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !382, file: !44, line: 1468, baseType: !198, size: 32, offset: 6464)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !382, file: !44, line: 1470, baseType: !321, size: 64, offset: 6528)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !382, file: !44, line: 1471, baseType: !321, size: 64, offset: 6592)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !382, file: !44, line: 1473, baseType: !199, size: 32, offset: 6656)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !382, file: !44, line: 1474, baseType: !2504, size: 64, offset: 6720)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !382, file: !44, line: 1477, baseType: !2507, size: 256, offset: 6784)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !2037)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !382, file: !44, line: 1478, baseType: !2509, size: 128, offset: 7040)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2510, line: 18, baseType: !2511)
!2510 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2510, line: 16, size: 128, elements: !2512)
!2512 = !{!2513}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2511, file: !2510, line: 17, baseType: !2514, size: 128)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !1539)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !382, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !382, file: !44, line: 1481, baseType: !2517, size: 32, offset: 7200)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !95, line: 150, baseType: !7)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !382, file: !44, line: 1487, baseType: !979, size: 192, offset: 7232)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !382, file: !44, line: 1493, baseType: !115, size: 64, offset: 7424)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !382, file: !44, line: 1495, baseType: !2521, size: 64, offset: 7488)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !163, line: 135, size: 1024, align: 512, elements: !2524)
!2524 = !{!2525, !2529, !2530, !2537, !2543, !2547, !2551, !2555, !2556, !2560, !2564, !2569, !2573}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2523, file: !163, line: 136, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!256, !165, !7}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2523, file: !163, line: 137, baseType: !2526, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2523, file: !163, line: 138, baseType: !2531, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!256, !2534, !2536}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2523, file: !163, line: 139, baseType: !2538, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!256, !2534, !7, !115, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2523, file: !163, line: 141, baseType: !2544, size: 64, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!256, !2534}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2523, file: !163, line: 142, baseType: !2548, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!256, !165}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2523, file: !163, line: 143, baseType: !2552, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !165}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2523, file: !163, line: 144, baseType: !2552, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2523, file: !163, line: 145, baseType: !2557, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !165, !209}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2523, file: !163, line: 146, baseType: !2561, size: 64, offset: 576)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!267, !165, !267, !256}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2523, file: !163, line: 147, baseType: !2565, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!161, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2523, file: !163, line: 148, baseType: !2570, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!256, !331, !272}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2523, file: !163, line: 149, baseType: !2574, size: 64, offset: 768)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!165, !165, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !382, file: !44, line: 1500, baseType: !256, size: 32, offset: 7552)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !382, file: !44, line: 1502, baseType: !2581, size: 448, offset: 7616)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2225, line: 60, size: 448, elements: !2582)
!2582 = !{!2583, !2588, !2589, !2590, !2591, !2592, !2593}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2581, file: !2225, line: 61, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!96, !2587, !2223}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2581, file: !2225, line: 63, baseType: !2584, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2581, file: !2225, line: 66, baseType: !134, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2581, file: !2225, line: 67, baseType: !256, size: 32, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2581, file: !2225, line: 68, baseType: !7, size: 32, offset: 224)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2581, file: !2225, line: 71, baseType: !385, size: 128, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2581, file: !2225, line: 77, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !382, file: !44, line: 1505, baseType: !577, size: 64, offset: 8064)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !382, file: !44, line: 1508, baseType: !577, size: 64, offset: 8128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !382, file: !44, line: 1511, baseType: !256, size: 32, offset: 8192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !382, file: !44, line: 1514, baseType: !715, size: 32, offset: 8224)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !382, file: !44, line: 1517, baseType: !2600, size: 64, offset: 8256)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1765, line: 18, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !382, file: !44, line: 1518, baseType: !424, size: 64, offset: 8320)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !382, file: !44, line: 1525, baseType: !1517, size: 64, offset: 8384)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !382, file: !44, line: 1532, baseType: !2605, size: 64, offset: 8448)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2606, line: 52, size: 64, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2607 = !{!2608}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2605, file: !2606, line: 53, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2606, line: 40, size: 256, elements: !2611)
!2611 = !{!2612, !2613, !2618}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2610, file: !2606, line: 42, baseType: !535)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2610, file: !2606, line: 44, baseType: !2614, size: 192)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2606, line: 28, size: 192, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2614, file: !2606, line: 29, baseType: !385, size: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2614, file: !2606, line: 31, baseType: !134, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2610, file: !2606, line: 49, baseType: !134, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !382, file: !44, line: 1533, baseType: !2605, size: 64, offset: 8512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !382, file: !44, line: 1534, baseType: !148, size: 128, align: 64, offset: 8576)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !382, file: !44, line: 1535, baseType: !1764, size: 256, offset: 8704)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !382, file: !44, line: 1537, baseType: !979, size: 192, offset: 8960)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !382, file: !44, line: 1542, baseType: !256, size: 32, offset: 9152)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !382, file: !44, line: 1545, baseType: !535, offset: 9184)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !382, file: !44, line: 1546, baseType: !385, size: 128, offset: 9216)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !382, file: !44, line: 1548, baseType: !535, offset: 9344)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !382, file: !44, line: 1549, baseType: !385, size: 128, offset: 9344)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !210, file: !44, line: 624, baseType: !526, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !210, file: !44, line: 631, baseType: !96, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !44, line: 639, baseType: !2631, size: 32, offset: 384)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !44, line: 639, size: 32, elements: !2632)
!2632 = !{!2633, !2635}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2631, file: !44, line: 640, baseType: !2634, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2631, file: !44, line: 641, baseType: !7, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !210, file: !44, line: 643, baseType: !295, size: 32, offset: 416)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !210, file: !44, line: 644, baseType: !313, size: 64, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !210, file: !44, line: 645, baseType: !317, size: 128, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !210, file: !44, line: 646, baseType: !317, size: 128, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !210, file: !44, line: 647, baseType: !317, size: 128, offset: 768)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !210, file: !44, line: 648, baseType: !535, offset: 896)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !210, file: !44, line: 649, baseType: !120, size: 16, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !210, file: !44, line: 650, baseType: !98, size: 8, offset: 912)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !210, file: !44, line: 651, baseType: !98, size: 8, offset: 920)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !210, file: !44, line: 652, baseType: !2397, size: 64, offset: 960)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !210, file: !44, line: 659, baseType: !96, size: 64, offset: 1024)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !210, file: !44, line: 660, baseType: !573, size: 256, offset: 1088)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !210, file: !44, line: 662, baseType: !96, size: 64, offset: 1344)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !210, file: !44, line: 663, baseType: !96, size: 64, offset: 1408)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !210, file: !44, line: 665, baseType: !428, size: 128, offset: 1472)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !210, file: !44, line: 666, baseType: !385, size: 128, offset: 1600)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !210, file: !44, line: 675, baseType: !385, size: 128, offset: 1728)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !210, file: !44, line: 676, baseType: !385, size: 128, offset: 1856)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !210, file: !44, line: 677, baseType: !385, size: 128, offset: 1984)
!2655 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !44, line: 678, baseType: !2656, size: 128, offset: 2112)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !44, line: 678, size: 128, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2656, file: !44, line: 679, baseType: !424, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2656, file: !44, line: 680, baseType: !148, size: 128, align: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !210, file: !44, line: 682, baseType: !579, size: 64, offset: 2240)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !210, file: !44, line: 683, baseType: !579, size: 64, offset: 2304)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !210, file: !44, line: 684, baseType: !553, size: 32, offset: 2368)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !210, file: !44, line: 685, baseType: !553, size: 32, offset: 2400)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !210, file: !44, line: 686, baseType: !553, size: 32, offset: 2432)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !210, file: !44, line: 688, baseType: !553, size: 32, offset: 2464)
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !44, line: 690, baseType: !2667, size: 64, offset: 2496)
!2667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !44, line: 690, size: 64, elements: !2668)
!2668 = !{!2669, !2892}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2667, file: !44, line: 691, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2673)
!2673 = !{!2674, !2675, !2679, !2684, !2688, !2689, !2690, !2694, !2707, !2708, !2716, !2720, !2721, !2725, !2726, !2730, !2735, !2736, !2740, !2744, !2852, !2856, !2857, !2861, !2862, !2866, !2870, !2875, !2879, !2883, !2887, !2891}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2672, file: !44, line: 1823, baseType: !419, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2672, file: !44, line: 1824, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!313, !135, !313, !256}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2672, file: !44, line: 1825, baseType: !2680, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!131, !135, !267, !122, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2672, file: !44, line: 1826, baseType: !2685, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!131, !135, !115, !122, !2683}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2672, file: !44, line: 1827, baseType: !650, size: 64, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2672, file: !44, line: 1828, baseType: !650, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2672, file: !44, line: 1829, baseType: !2691, size: 64, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!256, !653, !272}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2672, file: !44, line: 1830, baseType: !2695, size: 64, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!256, !135, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2700)
!2700 = !{!2701, !2706}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2699, file: !44, line: 1777, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2703)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!256, !2698, !115, !256, !313, !202, !7}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2699, file: !44, line: 1778, baseType: !313, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2672, file: !44, line: 1831, baseType: !2695, size: 64, offset: 512)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2672, file: !44, line: 1832, baseType: !2709, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!2712, !135, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2713, line: 52, baseType: !7)
!2713 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !44, line: 56, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2672, file: !44, line: 1833, baseType: !2717, size: 64, offset: 640)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!134, !135, !7, !96}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2672, file: !44, line: 1834, baseType: !2717, size: 64, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2672, file: !44, line: 1835, baseType: !2722, size: 64, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!256, !135, !787}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2672, file: !44, line: 1836, baseType: !96, size: 64, offset: 832)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2672, file: !44, line: 1837, baseType: !2727, size: 64, offset: 896)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!256, !209, !135}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2672, file: !44, line: 1838, baseType: !2731, size: 64, offset: 960)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!256, !135, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !93)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2672, file: !44, line: 1839, baseType: !2727, size: 64, offset: 1024)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2672, file: !44, line: 1840, baseType: !2737, size: 64, offset: 1088)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!256, !135, !313, !313, !256}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2672, file: !44, line: 1841, baseType: !2741, size: 64, offset: 1152)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!256, !256, !135, !256}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2672, file: !44, line: 1842, baseType: !2745, size: 64, offset: 1216)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!256, !135, !256, !2748}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2782, !2783, !2784, !2797, !2828}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2749, file: !44, line: 1063, baseType: !2748, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2749, file: !44, line: 1064, baseType: !385, size: 128, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2749, file: !44, line: 1065, baseType: !428, size: 128, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2749, file: !44, line: 1066, baseType: !385, size: 128, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2749, file: !44, line: 1069, baseType: !385, size: 128, offset: 448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2749, file: !44, line: 1072, baseType: !2734, size: 64, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2749, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2749, file: !44, line: 1074, baseType: !102, size: 8, offset: 672)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2749, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2749, file: !44, line: 1076, baseType: !256, size: 32, offset: 736)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2749, file: !44, line: 1077, baseType: !1285, size: 128, offset: 768)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2749, file: !44, line: 1078, baseType: !135, size: 64, offset: 896)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2749, file: !44, line: 1079, baseType: !313, size: 64, offset: 960)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2749, file: !44, line: 1080, baseType: !313, size: 64, offset: 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2749, file: !44, line: 1082, baseType: !2766, size: 64, offset: 1088)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2768)
!2768 = !{!2769, !2777, !2778, !2779, !2780, !2781}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2767, file: !44, line: 1315, baseType: !2770)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2771, line: 20, baseType: !2772)
!2771 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2771, line: 11, elements: !2773)
!2773 = !{!2774}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2772, file: !2771, line: 12, baseType: !2775)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !547, line: 33, baseType: !2776)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 31, elements: !436)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2767, file: !44, line: 1316, baseType: !256, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2767, file: !44, line: 1317, baseType: !256, size: 32, offset: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2767, file: !44, line: 1318, baseType: !2766, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2767, file: !44, line: 1319, baseType: !135, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2767, file: !44, line: 1320, baseType: !148, size: 128, align: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2749, file: !44, line: 1084, baseType: !96, size: 64, offset: 1152)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2749, file: !44, line: 1085, baseType: !96, size: 64, offset: 1216)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2749, file: !44, line: 1087, baseType: !2785, size: 64, offset: 1280)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2787)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2788)
!2788 = !{!2789, !2793}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2787, file: !44, line: 1012, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !2748, !2748}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2787, file: !44, line: 1013, baseType: !2794, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !2748}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2749, file: !44, line: 1088, baseType: !2798, size: 64, offset: 1344)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2800)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2801)
!2801 = !{!2802, !2806, !2810, !2811, !2815, !2819, !2823, !2827}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2800, file: !44, line: 1017, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!2734, !2734}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2800, file: !44, line: 1018, baseType: !2807, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !2734}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2800, file: !44, line: 1019, baseType: !2794, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2800, file: !44, line: 1020, baseType: !2812, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!256, !2748, !256}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2800, file: !44, line: 1021, baseType: !2816, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!272, !2748}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2800, file: !44, line: 1022, baseType: !2820, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!256, !2748, !256, !388}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2800, file: !44, line: 1023, baseType: !2824, size: 64, offset: 384)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2748, !627}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2800, file: !44, line: 1024, baseType: !2816, size: 64, offset: 448)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2749, file: !44, line: 1097, baseType: !2829, size: 256, offset: 1408)
!2829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2749, file: !44, line: 1089, size: 256, elements: !2830)
!2830 = !{!2831, !2840, !2846}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2829, file: !44, line: 1090, baseType: !2832, size: 256)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2833, line: 10, size: 256, elements: !2834)
!2833 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2834 = !{!2835, !2836, !2839}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2832, file: !2833, line: 11, baseType: !198, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2832, file: !2833, line: 12, baseType: !2837, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2833, line: 5, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2832, file: !2833, line: 13, baseType: !385, size: 128, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2829, file: !44, line: 1091, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2833, line: 17, size: 64, elements: !2842)
!2842 = !{!2843}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2841, file: !2833, line: 18, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2833, line: 16, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2829, file: !44, line: 1096, baseType: !2847, size: 192)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2829, file: !44, line: 1092, size: 192, elements: !2848)
!2848 = !{!2849, !2850, !2851}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2847, file: !44, line: 1093, baseType: !385, size: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2847, file: !44, line: 1094, baseType: !256, size: 32, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2847, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2672, file: !44, line: 1843, baseType: !2853, size: 64, offset: 1280)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!131, !135, !513, !256, !122, !2683, !256}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2672, file: !44, line: 1844, baseType: !907, size: 64, offset: 1344)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2672, file: !44, line: 1845, baseType: !2858, size: 64, offset: 1408)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!256, !256}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2672, file: !44, line: 1846, baseType: !2745, size: 64, offset: 1472)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2672, file: !44, line: 1847, baseType: !2863, size: 64, offset: 1536)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!131, !1905, !135, !2683, !122, !7}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2672, file: !44, line: 1848, baseType: !2867, size: 64, offset: 1600)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!131, !135, !2683, !1905, !122, !7}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2672, file: !44, line: 1849, baseType: !2871, size: 64, offset: 1664)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!256, !135, !134, !2874, !627}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2672, file: !44, line: 1850, baseType: !2876, size: 64, offset: 1728)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!134, !135, !256, !313, !313}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2672, file: !44, line: 1852, baseType: !2880, size: 64, offset: 1792)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{null, !503, !135}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2672, file: !44, line: 1856, baseType: !2884, size: 64, offset: 1856)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!131, !135, !313, !135, !313, !122, !7}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2672, file: !44, line: 1858, baseType: !2888, size: 64, offset: 1920)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!313, !135, !313, !135, !313, !313, !7}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2672, file: !44, line: 1861, baseType: !2737, size: 64, offset: 1984)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2667, file: !44, line: 692, baseType: !456, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !210, file: !44, line: 694, baseType: !2894, size: 64, offset: 2560)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2895, file: !44, line: 1101, baseType: !535)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2895, file: !44, line: 1102, baseType: !385, size: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2895, file: !44, line: 1103, baseType: !385, size: 128, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2895, file: !44, line: 1104, baseType: !385, size: 128, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !210, file: !44, line: 695, baseType: !527, size: 1216, align: 64, offset: 2624)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !210, file: !44, line: 696, baseType: !385, size: 128, offset: 3840)
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !44, line: 697, baseType: !2904, size: 64, offset: 3968)
!2904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !44, line: 697, size: 64, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2911, !2912}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2904, file: !44, line: 698, baseType: !1905, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2904, file: !44, line: 699, baseType: !2422, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2904, file: !44, line: 700, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2904, file: !44, line: 701, baseType: !267, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2904, file: !44, line: 702, baseType: !7, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !210, file: !44, line: 705, baseType: !199, size: 32, offset: 4032)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !210, file: !44, line: 708, baseType: !199, size: 32, offset: 4064)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !210, file: !44, line: 709, baseType: !2504, size: 64, offset: 4096)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !210, file: !44, line: 720, baseType: !93, size: 64, offset: 4160)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !166, file: !163, line: 98, baseType: !2918, size: 256, offset: 448)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !2037)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !166, file: !163, line: 101, baseType: !2920, size: 32, offset: 704)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2921, line: 25, size: 32, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2922 = !{!2923}
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !2920, file: !2921, line: 26, baseType: !2924, size: 32)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2920, file: !2921, line: 26, size: 32, elements: !2925)
!2925 = !{!2926}
!2926 = !DIDerivedType(tag: DW_TAG_member, scope: !2924, file: !2921, line: 30, baseType: !2927, size: 32)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2924, file: !2921, line: 30, size: 32, elements: !2928)
!2928 = !{!2929, !2930}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2927, file: !2921, line: 31, baseType: !535)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2927, file: !2921, line: 32, baseType: !256, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !166, file: !163, line: 102, baseType: !2521, size: 64, offset: 768)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !166, file: !163, line: 103, baseType: !381, size: 64, offset: 832)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !166, file: !163, line: 104, baseType: !96, size: 64, offset: 896)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !166, file: !163, line: 105, baseType: !93, size: 64, offset: 960)
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !163, line: 107, baseType: !2936, size: 128, offset: 1024)
!2936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !163, line: 107, size: 128, elements: !2937)
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2936, file: !163, line: 108, baseType: !385, size: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2936, file: !163, line: 109, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !166, file: !163, line: 111, baseType: !385, size: 128, offset: 1152)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !166, file: !163, line: 112, baseType: !385, size: 128, offset: 1280)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !166, file: !163, line: 120, baseType: !2944, size: 128, offset: 1408)
!2944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !163, line: 116, size: 128, elements: !2945)
!2945 = !{!2946, !2947, !2948}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2944, file: !163, line: 117, baseType: !428, size: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2944, file: !163, line: 118, baseType: !180, size: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2944, file: !163, line: 119, baseType: !148, size: 128, align: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !136, file: !44, line: 922, baseType: !209, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !136, file: !44, line: 923, baseType: !2670, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !136, file: !44, line: 929, baseType: !535, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !136, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !136, file: !44, line: 931, baseType: !577, size: 64, offset: 448)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !136, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !136, file: !44, line: 933, baseType: !2517, size: 32, offset: 544)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !136, file: !44, line: 934, baseType: !979, size: 192, offset: 576)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !136, file: !44, line: 935, baseType: !313, size: 64, offset: 768)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !136, file: !44, line: 936, baseType: !2959, size: 192, offset: 832)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964, !2965, !2966}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2959, file: !44, line: 886, baseType: !2770)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2959, file: !44, line: 887, baseType: !1275, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2959, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2959, file: !44, line: 889, baseType: !215, size: 32, offset: 96)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2959, file: !44, line: 889, baseType: !215, size: 32, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2959, file: !44, line: 890, baseType: !256, size: 32, offset: 160)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !136, file: !44, line: 937, baseType: !1351, size: 64, offset: 1024)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !136, file: !44, line: 938, baseType: !2969, size: 256, offset: 1088)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2969, file: !44, line: 897, baseType: !96, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2969, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2969, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2969, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2969, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2969, file: !44, line: 904, baseType: !313, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !136, file: !44, line: 940, baseType: !202, size: 64, offset: 1344)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !136, file: !44, line: 945, baseType: !93, size: 64, offset: 1408)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !136, file: !44, line: 949, baseType: !385, size: 128, offset: 1472)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !136, file: !44, line: 950, baseType: !385, size: 128, offset: 1600)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !136, file: !44, line: 952, baseType: !526, size: 64, offset: 1728)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !136, file: !44, line: 953, baseType: !715, size: 32, offset: 1792)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !136, file: !44, line: 954, baseType: !715, size: 32, offset: 1824)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !82, line: 64, size: 512, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !3030, !3111, !3251, !3256, !3257, !3258, !3259, !3260}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2985, file: !82, line: 65, baseType: !115, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2985, file: !82, line: 66, baseType: !385, size: 128, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2985, file: !82, line: 67, baseType: !2984, size: 64, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2985, file: !82, line: 68, baseType: !2991, size: 64, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !82, line: 192, size: 704, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2992, file: !82, line: 193, baseType: !385, size: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2992, file: !82, line: 194, baseType: !535, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2992, file: !82, line: 195, baseType: !2985, size: 512, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2992, file: !82, line: 196, baseType: !2998, size: 64, offset: 640)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !82, line: 156, size: 192, elements: !3001)
!3001 = !{!3002, !3007, !3012}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3000, file: !82, line: 157, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!256, !2991, !2984}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3000, file: !82, line: 158, baseType: !3008, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3009)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!115, !2991, !2984}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3000, file: !82, line: 159, baseType: !3013, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3014)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!256, !2991, !2984, !3017}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !82, line: 148, size: 20736, elements: !3019)
!3019 = !{!3020, !3022, !3024, !3025, !3029}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3018, file: !82, line: 149, baseType: !3021, size: 192)
!3021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 192, elements: !441)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3018, file: !82, line: 150, baseType: !3023, size: 4096, offset: 192)
!3023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 4096, elements: !1686)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3018, file: !82, line: 151, baseType: !256, size: 32, offset: 4288)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3018, file: !82, line: 152, baseType: !3026, size: 16384, offset: 4320)
!3026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 16384, elements: !3027)
!3027 = !{!3028}
!3028 = !DISubrange(count: 2048)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3018, file: !82, line: 153, baseType: !256, size: 32, offset: 20704)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2985, file: !82, line: 69, baseType: !3031, size: 64, offset: 320)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !82, line: 138, size: 448, elements: !3033)
!3033 = !{!3034, !3038, !3052, !3054, !3073, !3101, !3105}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3032, file: !82, line: 139, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !2984}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3032, file: !82, line: 140, baseType: !3039, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !109, line: 230, size: 128, elements: !3042)
!3042 = !{!3043, !3048}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3041, file: !109, line: 231, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!131, !2984, !3047, !267}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3041, file: !109, line: 232, baseType: !3049, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!131, !2984, !3047, !115, !122}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3032, file: !82, line: 141, baseType: !3053, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3032, file: !82, line: 142, baseType: !3055, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3058)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !109, line: 84, size: 320, elements: !3059)
!3059 = !{!3060, !3061, !3065, !3070, !3071}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3058, file: !109, line: 85, baseType: !115, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3058, file: !109, line: 86, baseType: !3062, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!119, !2984, !3047, !256}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3058, file: !109, line: 88, baseType: !3066, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!119, !2984, !3069, !256}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3058, file: !109, line: 90, baseType: !3053, size: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3058, file: !109, line: 91, baseType: !3072, size: 64, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3032, file: !82, line: 143, baseType: !3074, size: 64, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!3077, !2984}
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3079)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3080)
!3080 = !{!3081, !3082, !3086, !3090, !3096, !3100}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3079, file: !61, line: 40, baseType: !60, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3079, file: !61, line: 41, baseType: !3083, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!272}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3079, file: !61, line: 42, baseType: !3087, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!93}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3079, file: !61, line: 43, baseType: !3091, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!1934, !3094}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3079, file: !61, line: 44, baseType: !3097, size: 64, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!1934}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3079, file: !61, line: 45, baseType: !248, size: 64, offset: 320)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3032, file: !82, line: 144, baseType: !3102, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!1934, !2984}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3032, file: !82, line: 145, baseType: !3106, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !2984, !3109, !3110}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2985, file: !82, line: 70, baseType: !3112, size: 64, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3114, line: 123, size: 1024, elements: !3115)
!3114 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3244, !3245, !3246, !3247, !3248}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3113, file: !3114, line: 124, baseType: !553, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3113, file: !3114, line: 125, baseType: !553, size: 32, offset: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3113, file: !3114, line: 135, baseType: !3112, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3113, file: !3114, line: 136, baseType: !115, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3113, file: !3114, line: 138, baseType: !566, size: 192, align: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3113, file: !3114, line: 140, baseType: !1934, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3113, file: !3114, line: 141, baseType: !7, size: 32, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !3114, line: 142, baseType: !3124, size: 256, offset: 512)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3113, file: !3114, line: 142, size: 256, elements: !3125)
!3125 = !{!3126, !3172, !3176}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3124, file: !3114, line: 143, baseType: !3127, size: 192)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3114, line: 91, size: 192, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3127, file: !3114, line: 92, baseType: !96, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3127, file: !3114, line: 94, baseType: !562, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3127, file: !3114, line: 100, baseType: !3132, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3114, line: 180, size: 704, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3144, !3145, !3146, !3170, !3171}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3133, file: !3114, line: 182, baseType: !3112, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3133, file: !3114, line: 183, baseType: !7, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3133, file: !3114, line: 186, baseType: !3138, size: 192, offset: 128)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3139, line: 19, size: 192, elements: !3140)
!3139 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3140 = !{!3141, !3142, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3138, file: !3139, line: 20, baseType: !531, size: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3138, file: !3139, line: 21, baseType: !7, size: 32, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3138, file: !3139, line: 22, baseType: !7, size: 32, offset: 160)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3133, file: !3114, line: 187, baseType: !198, size: 32, offset: 320)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3133, file: !3114, line: 188, baseType: !198, size: 32, offset: 352)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3133, file: !3114, line: 189, baseType: !3147, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3114, line: 168, size: 320, elements: !3149)
!3149 = !{!3150, !3154, !3158, !3162, !3166}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3148, file: !3114, line: 169, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!256, !503, !3132}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3148, file: !3114, line: 171, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!256, !3112, !115, !119}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3148, file: !3114, line: 173, baseType: !3159, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!256, !3112}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3148, file: !3114, line: 174, baseType: !3163, size: 64, offset: 192)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!256, !3112, !3112, !115}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3148, file: !3114, line: 176, baseType: !3167, size: 64, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!256, !503, !3112, !3132}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3133, file: !3114, line: 192, baseType: !385, size: 128, offset: 448)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3133, file: !3114, line: 194, baseType: !1285, size: 128, offset: 576)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3124, file: !3114, line: 144, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3114, line: 103, size: 64, elements: !3174)
!3174 = !{!3175}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3173, file: !3114, line: 104, baseType: !3112, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3124, file: !3114, line: 145, baseType: !3177, size: 256)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3114, line: 107, size: 256, elements: !3178)
!3178 = !{!3179, !3239, !3242, !3243}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3177, file: !3114, line: 108, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3114, line: 217, size: 768, elements: !3183)
!3183 = !{!3184, !3204, !3208, !3212, !3216, !3220, !3224, !3228, !3229, !3230, !3231, !3235}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3182, file: !3114, line: 222, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!256, !3188}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3114, line: 197, size: 1088, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3189, file: !3114, line: 199, baseType: !3112, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3189, file: !3114, line: 200, baseType: !135, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3189, file: !3114, line: 201, baseType: !503, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3189, file: !3114, line: 202, baseType: !93, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3189, file: !3114, line: 205, baseType: !979, size: 192, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3189, file: !3114, line: 206, baseType: !979, size: 192, offset: 448)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3189, file: !3114, line: 207, baseType: !256, size: 32, offset: 640)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3189, file: !3114, line: 208, baseType: !385, size: 128, offset: 704)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3189, file: !3114, line: 209, baseType: !267, size: 64, offset: 832)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3189, file: !3114, line: 211, baseType: !122, size: 64, offset: 896)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3189, file: !3114, line: 212, baseType: !272, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3189, file: !3114, line: 213, baseType: !272, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3189, file: !3114, line: 214, baseType: !815, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3182, file: !3114, line: 223, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{null, !3188}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3182, file: !3114, line: 236, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!256, !503, !93}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3182, file: !3114, line: 238, baseType: !3213, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!93, !503, !2683}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3182, file: !3114, line: 239, baseType: !3217, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!93, !503, !93, !2683}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3182, file: !3114, line: 240, baseType: !3221, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{null, !503, !93}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3182, file: !3114, line: 242, baseType: !3225, size: 64, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!131, !3188, !267, !122, !313}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3182, file: !3114, line: 252, baseType: !122, size: 64, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3182, file: !3114, line: 259, baseType: !272, size: 8, offset: 512)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3182, file: !3114, line: 260, baseType: !3225, size: 64, offset: 576)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3182, file: !3114, line: 263, baseType: !3232, size: 64, offset: 640)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!2712, !3188, !2714}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3182, file: !3114, line: 266, baseType: !3236, size: 64, offset: 704)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!256, !3188, !787}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3177, file: !3114, line: 109, baseType: !3240, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3114, line: 31, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3177, file: !3114, line: 110, baseType: !313, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3177, file: !3114, line: 111, baseType: !3112, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3113, file: !3114, line: 148, baseType: !93, size: 64, offset: 768)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3113, file: !3114, line: 154, baseType: !202, size: 64, offset: 832)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3113, file: !3114, line: 156, baseType: !120, size: 16, offset: 896)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3113, file: !3114, line: 157, baseType: !119, size: 16, offset: 912)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3113, file: !3114, line: 158, baseType: !3249, size: 64, offset: 960)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3114, line: 32, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2985, file: !82, line: 71, baseType: !3252, size: 32, offset: 448)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3253, line: 19, size: 32, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3254 = !{!3255}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3252, file: !3253, line: 20, baseType: !1036, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2985, file: !82, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2985, file: !82, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2985, file: !82, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2985, file: !82, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2985, file: !82, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !108, file: !109, line: 174, baseType: !128, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !108, file: !109, line: 176, baseType: !3263, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!256, !135, !2984, !3069, !787}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !105, line: 70, baseType: !1839, size: 64, offset: 448)
!3267 = !{!3268, !3270, !3272, !0, !3274, !3276, !3278}
!3268 = !DIGlobalVariableExpression(var: !3269, expr: !DIExpression())
!3269 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sfi_sysfs_init234", scope: !2, file: !3, line: 522, type: !93, isLocal: true, isDefinition: true)
!3270 = !DIGlobalVariableExpression(var: !3271, expr: !DIExpression())
!3271 = distinct !DIGlobalVariable(name: "sfi_disabled", scope: !2, file: !3, line: 81, type: !256, isLocal: false, isDefinition: true)
!3272 = !DIGlobalVariableExpression(var: !3273, expr: !DIExpression())
!3273 = distinct !DIGlobalVariable(name: "syst_pa", scope: !2, file: !3, line: 84, type: !202, isLocal: true, isDefinition: true)
!3274 = !DIGlobalVariableExpression(var: !3275, expr: !DIExpression())
!3275 = distinct !DIGlobalVariable(name: "sfi_use_memremap", scope: !2, file: !3, line: 93, type: !198, isLocal: true, isDefinition: true)
!3276 = !DIGlobalVariableExpression(var: !3277, expr: !DIExpression())
!3277 = distinct !DIGlobalVariable(name: "tables_kobj", scope: !2, file: !3, line: 388, type: !2984, isLocal: true, isDefinition: true)
!3278 = !DIGlobalVariableExpression(var: !3279, expr: !DIExpression())
!3279 = distinct !DIGlobalVariable(name: "sfi_kobj", scope: !2, file: !3, line: 387, type: !2984, isLocal: true, isDefinition: true)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sfi_table_simple", file: !3282, line: 104, size: 256, elements: !3283)
!3282 = !DIFile(filename: "./include/linux/sfi.h", directory: "/home/lizy2001/genbc/linux")
!3283 = !{!3284, !3294}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3281, file: !3282, line: 105, baseType: !3285, size: 192)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sfi_table_header", file: !3282, line: 95, size: 192, elements: !3286)
!3286 = !{!3287, !3289, !3290, !3291, !3292, !3293}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3285, file: !3282, line: 96, baseType: !3288, size: 32)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 32, elements: !961)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3285, file: !3282, line: 97, baseType: !198, size: 32, offset: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3285, file: !3282, line: 98, baseType: !98, size: 8, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !3285, file: !3282, line: 99, baseType: !98, size: 8, offset: 72)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !3285, file: !3282, line: 100, baseType: !1428, size: 48, offset: 80)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !3285, file: !3282, line: 101, baseType: !1839, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "pentry", scope: !3281, file: !3282, line: 106, baseType: !3295, size: 64, offset: 192)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !1175)
!3296 = !{i32 7, !"Dwarf Version", i32 4}
!3297 = !{i32 2, !"Debug Info Version", i32 3}
!3298 = !{i32 1, !"wchar_size", i32 2}
!3299 = !{i32 1, !"Code Model", i32 2}
!3300 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3301 = distinct !DISubprogram(name: "sfi_check_table", scope: !3, file: !3, line: 232, type: !3302, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!3304, !202, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sfi_table_key", file: !105, line: 61, size: 192, elements: !3307)
!3307 = !{!3308, !3309, !3310}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3306, file: !105, line: 62, baseType: !267, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !3306, file: !105, line: 63, baseType: !267, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !3306, file: !105, line: 64, baseType: !267, size: 64, offset: 128)
!3311 = !DILocalVariable(name: "pa", arg: 1, scope: !3301, file: !3, line: 232, type: !202)
!3312 = !DILocation(line: 232, column: 28, scope: !3301)
!3313 = !DILocalVariable(name: "key", arg: 2, scope: !3301, file: !3, line: 232, type: !3305)
!3314 = !DILocation(line: 232, column: 54, scope: !3301)
!3315 = !DILocalVariable(name: "th", scope: !3301, file: !3, line: 234, type: !3304)
!3316 = !DILocation(line: 234, column: 27, scope: !3301)
!3317 = !DILocalVariable(name: "ret", scope: !3301, file: !3, line: 235, type: !93)
!3318 = !DILocation(line: 235, column: 8, scope: !3301)
!3319 = !DILocation(line: 237, column: 21, scope: !3301)
!3320 = !DILocation(line: 237, column: 7, scope: !3301)
!3321 = !DILocation(line: 237, column: 5, scope: !3301)
!3322 = !DILocation(line: 238, column: 7, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 238, column: 6)
!3324 = !DILocation(line: 238, column: 6, scope: !3301)
!3325 = !DILocation(line: 239, column: 10, scope: !3323)
!3326 = !DILocation(line: 239, column: 3, scope: !3323)
!3327 = !DILocation(line: 241, column: 7, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 241, column: 6)
!3329 = !DILocation(line: 241, column: 12, scope: !3328)
!3330 = !DILocation(line: 241, column: 6, scope: !3301)
!3331 = !DILocation(line: 242, column: 26, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 241, column: 17)
!3333 = !DILocation(line: 242, column: 30, scope: !3332)
!3334 = !DILocation(line: 242, column: 3, scope: !3332)
!3335 = !DILocation(line: 243, column: 24, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 243, column: 7)
!3337 = !DILocation(line: 243, column: 7, scope: !3336)
!3338 = !DILocation(line: 243, column: 7, scope: !3332)
!3339 = !DILocation(line: 244, column: 10, scope: !3336)
!3340 = !DILocation(line: 244, column: 8, scope: !3336)
!3341 = !DILocation(line: 244, column: 4, scope: !3336)
!3342 = !DILocation(line: 245, column: 2, scope: !3332)
!3343 = !DILocation(line: 246, column: 28, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 246, column: 7)
!3345 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 245, column: 9)
!3346 = !DILocation(line: 246, column: 32, scope: !3344)
!3347 = !DILocation(line: 246, column: 8, scope: !3344)
!3348 = !DILocation(line: 246, column: 7, scope: !3345)
!3349 = !DILocation(line: 247, column: 11, scope: !3344)
!3350 = !DILocation(line: 247, column: 4, scope: !3344)
!3351 = !DILocation(line: 250, column: 18, scope: !3301)
!3352 = !DILocation(line: 250, column: 2, scope: !3301)
!3353 = !DILocation(line: 251, column: 9, scope: !3301)
!3354 = !DILocation(line: 251, column: 2, scope: !3301)
!3355 = !DILocation(line: 252, column: 1, scope: !3301)
!3356 = distinct !DISubprogram(name: "sfi_map_table", scope: !3, file: !3, line: 165, type: !3357, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!3304, !202}
!3359 = !DILocalVariable(name: "pa", arg: 1, scope: !3356, file: !3, line: 165, type: !202)
!3360 = !DILocation(line: 165, column: 51, scope: !3356)
!3361 = !DILocalVariable(name: "th", scope: !3356, file: !3, line: 167, type: !3304)
!3362 = !DILocation(line: 167, column: 27, scope: !3356)
!3363 = !DILocalVariable(name: "length", scope: !3356, file: !3, line: 168, type: !198)
!3364 = !DILocation(line: 168, column: 6, scope: !3356)
!3365 = !DILocation(line: 170, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 170, column: 6)
!3367 = !DILocation(line: 170, column: 6, scope: !3356)
!3368 = !DILocation(line: 171, column: 23, scope: !3366)
!3369 = !DILocation(line: 171, column: 8, scope: !3366)
!3370 = !DILocation(line: 171, column: 6, scope: !3366)
!3371 = !DILocation(line: 171, column: 3, scope: !3366)
!3372 = !DILocation(line: 173, column: 16, scope: !3366)
!3373 = !DILocation(line: 173, column: 8, scope: !3366)
!3374 = !DILocation(line: 173, column: 27, scope: !3366)
!3375 = !DILocation(line: 173, column: 32, scope: !3366)
!3376 = !DILocation(line: 173, column: 30, scope: !3366)
!3377 = !DILocation(line: 173, column: 24, scope: !3366)
!3378 = !DILocation(line: 173, column: 6, scope: !3366)
!3379 = !DILocation(line: 176, column: 6, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 176, column: 6)
!3381 = !DILocation(line: 176, column: 6, scope: !3356)
!3382 = !DILocation(line: 177, column: 10, scope: !3380)
!3383 = !DILocation(line: 177, column: 3, scope: !3380)
!3384 = !DILocation(line: 180, column: 11, scope: !3356)
!3385 = !DILocation(line: 180, column: 15, scope: !3356)
!3386 = !DILocation(line: 180, column: 9, scope: !3356)
!3387 = !DILocation(line: 181, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 181, column: 6)
!3389 = !DILocation(line: 181, column: 6, scope: !3356)
!3390 = !DILocation(line: 182, column: 20, scope: !3388)
!3391 = !DILocation(line: 182, column: 3, scope: !3388)
!3392 = !DILocation(line: 184, column: 24, scope: !3356)
!3393 = !DILocation(line: 184, column: 28, scope: !3356)
!3394 = !DILocation(line: 184, column: 9, scope: !3356)
!3395 = !DILocation(line: 184, column: 2, scope: !3356)
!3396 = !DILocation(line: 185, column: 1, scope: !3356)
!3397 = distinct !DISubprogram(name: "ERR_PTR", scope: !3398, file: !3398, line: 24, type: !3399, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3398 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!93, !134}
!3401 = !DILocalVariable(name: "error", arg: 1, scope: !3397, file: !3398, line: 24, type: !134)
!3402 = !DILocation(line: 24, column: 48, scope: !3397)
!3403 = !DILocation(line: 26, column: 18, scope: !3397)
!3404 = !DILocation(line: 26, column: 9, scope: !3397)
!3405 = !DILocation(line: 26, column: 2, scope: !3397)
!3406 = distinct !DISubprogram(name: "sfi_print_table_header", scope: !3, file: !3, line: 121, type: !3407, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !204, !3304}
!3409 = !DILocalVariable(name: "pa", arg: 1, scope: !3406, file: !3, line: 121, type: !204)
!3410 = !DILocation(line: 121, column: 55, scope: !3406)
!3411 = !DILocalVariable(name: "header", arg: 2, scope: !3406, file: !3, line: 122, type: !3304)
!3412 = !DILocation(line: 122, column: 30, scope: !3406)
!3413 = !DILocation(line: 124, column: 2, scope: !3406)
!3414 = !DILocation(line: 128, column: 1, scope: !3406)
!3415 = distinct !DISubprogram(name: "sfi_verify_table", scope: !3, file: !3, line: 134, type: !3416, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!256, !3304}
!3418 = !DILocalVariable(name: "table", arg: 1, scope: !3415, file: !3, line: 134, type: !3304)
!3419 = !DILocation(line: 134, column: 54, scope: !3415)
!3420 = !DILocalVariable(name: "checksum", scope: !3415, file: !3, line: 137, type: !98)
!3421 = !DILocation(line: 137, column: 5, scope: !3415)
!3422 = !DILocalVariable(name: "puchar", scope: !3415, file: !3, line: 138, type: !97)
!3423 = !DILocation(line: 138, column: 6, scope: !3415)
!3424 = !DILocation(line: 138, column: 21, scope: !3415)
!3425 = !DILocation(line: 138, column: 15, scope: !3415)
!3426 = !DILocalVariable(name: "length", scope: !3415, file: !3, line: 139, type: !198)
!3427 = !DILocation(line: 139, column: 6, scope: !3415)
!3428 = !DILocation(line: 139, column: 15, scope: !3415)
!3429 = !DILocation(line: 139, column: 22, scope: !3415)
!3430 = !DILocation(line: 142, column: 6, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 142, column: 6)
!3432 = !DILocation(line: 142, column: 13, scope: !3431)
!3433 = !DILocation(line: 142, column: 6, scope: !3415)
!3434 = !DILocation(line: 143, column: 3, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 142, column: 25)
!3436 = !DILocation(line: 144, column: 3, scope: !3435)
!3437 = !DILocation(line: 147, column: 2, scope: !3415)
!3438 = !DILocation(line: 147, column: 15, scope: !3415)
!3439 = !DILocation(line: 148, column: 22, scope: !3415)
!3440 = !DILocation(line: 148, column: 15, scope: !3415)
!3441 = !DILocation(line: 148, column: 12, scope: !3415)
!3442 = distinct !{!3442, !3437, !3439}
!3443 = !DILocation(line: 150, column: 6, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 150, column: 6)
!3445 = !DILocation(line: 150, column: 6, scope: !3415)
!3446 = !DILocation(line: 151, column: 3, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 150, column: 16)
!3448 = !DILocation(line: 153, column: 3, scope: !3447)
!3449 = !DILocation(line: 155, column: 2, scope: !3415)
!3450 = !DILocation(line: 156, column: 1, scope: !3415)
!3451 = distinct !DISubprogram(name: "sfi_table_check_key", scope: !3, file: !3, line: 200, type: !3452, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!256, !3304, !3305}
!3454 = !DILocalVariable(name: "th", arg: 1, scope: !3451, file: !3, line: 200, type: !3304)
!3455 = !DILocation(line: 200, column: 57, scope: !3451)
!3456 = !DILocalVariable(name: "key", arg: 2, scope: !3451, file: !3, line: 201, type: !3305)
!3457 = !DILocation(line: 201, column: 27, scope: !3451)
!3458 = !DILocation(line: 204, column: 14, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 204, column: 6)
!3460 = !DILocation(line: 204, column: 18, scope: !3459)
!3461 = !DILocation(line: 204, column: 23, scope: !3459)
!3462 = !DILocation(line: 204, column: 28, scope: !3459)
!3463 = !DILocation(line: 204, column: 6, scope: !3459)
!3464 = !DILocation(line: 205, column: 3, scope: !3459)
!3465 = !DILocation(line: 205, column: 7, scope: !3459)
!3466 = !DILocation(line: 205, column: 12, scope: !3459)
!3467 = !DILocation(line: 205, column: 19, scope: !3459)
!3468 = !DILocation(line: 205, column: 30, scope: !3459)
!3469 = !DILocation(line: 205, column: 34, scope: !3459)
!3470 = !DILocation(line: 206, column: 5, scope: !3459)
!3471 = !DILocation(line: 206, column: 10, scope: !3459)
!3472 = !DILocation(line: 205, column: 22, scope: !3459)
!3473 = !DILocation(line: 207, column: 3, scope: !3459)
!3474 = !DILocation(line: 207, column: 7, scope: !3459)
!3475 = !DILocation(line: 207, column: 12, scope: !3459)
!3476 = !DILocation(line: 207, column: 25, scope: !3459)
!3477 = !DILocation(line: 207, column: 36, scope: !3459)
!3478 = !DILocation(line: 207, column: 40, scope: !3459)
!3479 = !DILocation(line: 208, column: 5, scope: !3459)
!3480 = !DILocation(line: 208, column: 10, scope: !3459)
!3481 = !DILocation(line: 207, column: 28, scope: !3459)
!3482 = !DILocation(line: 204, column: 6, scope: !3451)
!3483 = !DILocation(line: 209, column: 3, scope: !3459)
!3484 = !DILocation(line: 211, column: 2, scope: !3451)
!3485 = !DILocation(line: 212, column: 1, scope: !3451)
!3486 = distinct !DISubprogram(name: "sfi_unmap_table", scope: !3, file: !3, line: 193, type: !3487, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !3304}
!3489 = !DILocalVariable(name: "th", arg: 1, scope: !3486, file: !3, line: 193, type: !3304)
!3490 = !DILocation(line: 193, column: 54, scope: !3486)
!3491 = !DILocation(line: 195, column: 7, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 195, column: 6)
!3493 = !DILocation(line: 195, column: 6, scope: !3486)
!3494 = !DILocation(line: 196, column: 20, scope: !3492)
!3495 = !DILocation(line: 196, column: 24, scope: !3492)
!3496 = !DILocation(line: 197, column: 20, scope: !3492)
!3497 = !DILocation(line: 197, column: 24, scope: !3492)
!3498 = !DILocation(line: 196, column: 3, scope: !3492)
!3499 = !DILocation(line: 198, column: 1, scope: !3486)
!3500 = distinct !DISubprogram(name: "sfi_get_table", scope: !3, file: !3, line: 260, type: !3501, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!3304, !3305}
!3503 = !DILocalVariable(name: "key", arg: 1, scope: !3500, file: !3, line: 260, type: !3305)
!3504 = !DILocation(line: 260, column: 62, scope: !3500)
!3505 = !DILocalVariable(name: "th", scope: !3500, file: !3, line: 262, type: !3304)
!3506 = !DILocation(line: 262, column: 27, scope: !3500)
!3507 = !DILocalVariable(name: "tbl_cnt", scope: !3500, file: !3, line: 263, type: !198)
!3508 = !DILocation(line: 263, column: 6, scope: !3500)
!3509 = !DILocalVariable(name: "i", scope: !3500, file: !3, line: 263, type: !198)
!3510 = !DILocation(line: 263, column: 15, scope: !3500)
!3511 = !DILocation(line: 265, column: 12, scope: !3500)
!3512 = !DILocation(line: 265, column: 10, scope: !3500)
!3513 = !DILocation(line: 266, column: 9, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 266, column: 2)
!3515 = !DILocation(line: 266, column: 7, scope: !3514)
!3516 = !DILocation(line: 266, column: 14, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 266, column: 2)
!3518 = !DILocation(line: 266, column: 18, scope: !3517)
!3519 = !DILocation(line: 266, column: 16, scope: !3517)
!3520 = !DILocation(line: 266, column: 2, scope: !3514)
!3521 = !DILocation(line: 267, column: 24, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 266, column: 32)
!3523 = !DILocation(line: 267, column: 33, scope: !3522)
!3524 = !DILocation(line: 267, column: 40, scope: !3522)
!3525 = !DILocation(line: 267, column: 44, scope: !3522)
!3526 = !DILocation(line: 267, column: 8, scope: !3522)
!3527 = !DILocation(line: 267, column: 6, scope: !3522)
!3528 = !DILocation(line: 268, column: 15, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 268, column: 7)
!3530 = !DILocation(line: 268, column: 8, scope: !3529)
!3531 = !DILocation(line: 268, column: 19, scope: !3529)
!3532 = !DILocation(line: 268, column: 22, scope: !3529)
!3533 = !DILocation(line: 268, column: 7, scope: !3522)
!3534 = !DILocation(line: 269, column: 11, scope: !3529)
!3535 = !DILocation(line: 269, column: 4, scope: !3529)
!3536 = !DILocation(line: 270, column: 2, scope: !3522)
!3537 = !DILocation(line: 266, column: 28, scope: !3517)
!3538 = !DILocation(line: 266, column: 2, scope: !3517)
!3539 = distinct !{!3539, !3520, !3540}
!3540 = !DILocation(line: 270, column: 2, scope: !3514)
!3541 = !DILocation(line: 272, column: 2, scope: !3500)
!3542 = !DILocation(line: 273, column: 1, scope: !3500)
!3543 = distinct !DISubprogram(name: "IS_ERR", scope: !3398, file: !3398, line: 34, type: !3544, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!272, !1934}
!3546 = !DILocalVariable(name: "ptr", arg: 1, scope: !3543, file: !3398, line: 34, type: !1934)
!3547 = !DILocation(line: 34, column: 60, scope: !3543)
!3548 = !DILocation(line: 36, column: 9, scope: !3543)
!3549 = !DILocation(line: 36, column: 2, scope: !3543)
!3550 = distinct !DISubprogram(name: "sfi_put_table", scope: !3, file: !3, line: 275, type: !3487, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3551 = !DILocalVariable(name: "th", arg: 1, scope: !3550, file: !3, line: 275, type: !3304)
!3552 = !DILocation(line: 275, column: 45, scope: !3550)
!3553 = !DILocation(line: 277, column: 18, scope: !3550)
!3554 = !DILocation(line: 277, column: 2, scope: !3550)
!3555 = !DILocation(line: 278, column: 1, scope: !3550)
!3556 = distinct !DISubprogram(name: "sfi_table_parse", scope: !3, file: !3, line: 281, type: !3557, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!256, !267, !267, !267, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_typedef, name: "sfi_table_handler", file: !3282, line: 174, baseType: !3560)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3561 = !DILocalVariable(name: "signature", arg: 1, scope: !3556, file: !3, line: 281, type: !267)
!3562 = !DILocation(line: 281, column: 27, scope: !3556)
!3563 = !DILocalVariable(name: "oem_id", arg: 2, scope: !3556, file: !3, line: 281, type: !267)
!3564 = !DILocation(line: 281, column: 44, scope: !3556)
!3565 = !DILocalVariable(name: "oem_table_id", arg: 3, scope: !3556, file: !3, line: 281, type: !267)
!3566 = !DILocation(line: 281, column: 58, scope: !3556)
!3567 = !DILocalVariable(name: "handler", arg: 4, scope: !3556, file: !3, line: 282, type: !3559)
!3568 = !DILocation(line: 282, column: 22, scope: !3556)
!3569 = !DILocalVariable(name: "table", scope: !3556, file: !3, line: 284, type: !3304)
!3570 = !DILocation(line: 284, column: 27, scope: !3556)
!3571 = !DILocalVariable(name: "key", scope: !3556, file: !3, line: 285, type: !3306)
!3572 = !DILocation(line: 285, column: 23, scope: !3556)
!3573 = !DILocalVariable(name: "ret", scope: !3556, file: !3, line: 286, type: !256)
!3574 = !DILocation(line: 286, column: 6, scope: !3556)
!3575 = !DILocation(line: 288, column: 6, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 288, column: 6)
!3577 = !DILocation(line: 288, column: 19, scope: !3576)
!3578 = !DILocation(line: 288, column: 23, scope: !3576)
!3579 = !DILocation(line: 288, column: 31, scope: !3576)
!3580 = !DILocation(line: 288, column: 35, scope: !3576)
!3581 = !DILocation(line: 288, column: 6, scope: !3556)
!3582 = !DILocation(line: 289, column: 3, scope: !3576)
!3583 = !DILocation(line: 291, column: 12, scope: !3556)
!3584 = !DILocation(line: 291, column: 6, scope: !3556)
!3585 = !DILocation(line: 291, column: 10, scope: !3556)
!3586 = !DILocation(line: 292, column: 15, scope: !3556)
!3587 = !DILocation(line: 292, column: 6, scope: !3556)
!3588 = !DILocation(line: 292, column: 13, scope: !3556)
!3589 = !DILocation(line: 293, column: 21, scope: !3556)
!3590 = !DILocation(line: 293, column: 6, scope: !3556)
!3591 = !DILocation(line: 293, column: 19, scope: !3556)
!3592 = !DILocation(line: 295, column: 10, scope: !3556)
!3593 = !DILocation(line: 295, column: 8, scope: !3556)
!3594 = !DILocation(line: 296, column: 7, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 296, column: 6)
!3596 = !DILocation(line: 296, column: 6, scope: !3556)
!3597 = !DILocation(line: 297, column: 3, scope: !3595)
!3598 = !DILocation(line: 299, column: 8, scope: !3556)
!3599 = !DILocation(line: 299, column: 16, scope: !3556)
!3600 = !DILocation(line: 299, column: 6, scope: !3556)
!3601 = !DILocation(line: 300, column: 16, scope: !3556)
!3602 = !DILocation(line: 300, column: 2, scope: !3556)
!3603 = !DILabel(scope: !3556, name: "exit", file: !3, line: 301)
!3604 = !DILocation(line: 301, column: 1, scope: !3556)
!3605 = !DILocation(line: 302, column: 9, scope: !3556)
!3606 = !DILocation(line: 302, column: 2, scope: !3556)
!3607 = distinct !DISubprogram(name: "sfi_sysfs_install_table", scope: !3, file: !3, line: 419, type: !3608, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!103, !202}
!3610 = !DILocalVariable(name: "pa", arg: 1, scope: !3607, file: !3, line: 419, type: !202)
!3611 = !DILocation(line: 419, column: 59, scope: !3607)
!3612 = !DILocalVariable(name: "tbl_attr", scope: !3607, file: !3, line: 421, type: !103)
!3613 = !DILocation(line: 421, column: 25, scope: !3607)
!3614 = !DILocalVariable(name: "th", scope: !3607, file: !3, line: 422, type: !3304)
!3615 = !DILocation(line: 422, column: 27, scope: !3607)
!3616 = !DILocalVariable(name: "ret", scope: !3607, file: !3, line: 423, type: !256)
!3617 = !DILocation(line: 423, column: 6, scope: !3607)
!3618 = !DILocation(line: 425, column: 13, scope: !3607)
!3619 = !DILocation(line: 425, column: 11, scope: !3607)
!3620 = !DILocation(line: 426, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 426, column: 6)
!3622 = !DILocation(line: 426, column: 6, scope: !3607)
!3623 = !DILocation(line: 427, column: 3, scope: !3621)
!3624 = !DILocation(line: 429, column: 21, scope: !3607)
!3625 = !DILocation(line: 429, column: 7, scope: !3607)
!3626 = !DILocation(line: 429, column: 5, scope: !3607)
!3627 = !DILocation(line: 430, column: 7, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 430, column: 6)
!3629 = !DILocation(line: 430, column: 10, scope: !3628)
!3630 = !DILocation(line: 430, column: 14, scope: !3628)
!3631 = !DILocation(line: 430, column: 18, scope: !3628)
!3632 = !DILocation(line: 430, column: 6, scope: !3607)
!3633 = !DILocation(line: 431, column: 9, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 430, column: 26)
!3635 = !DILocation(line: 431, column: 3, scope: !3634)
!3636 = !DILocation(line: 432, column: 3, scope: !3634)
!3637 = !DILocation(line: 435, column: 2, scope: !3607)
!3638 = !DILocation(line: 435, column: 2, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 435, column: 2)
!3640 = !DILocation(line: 436, column: 9, scope: !3607)
!3641 = !DILocation(line: 436, column: 19, scope: !3607)
!3642 = !DILocation(line: 436, column: 2, scope: !3607)
!3643 = !DILocation(line: 436, column: 25, scope: !3607)
!3644 = !DILocation(line: 436, column: 29, scope: !3607)
!3645 = !DILocation(line: 438, column: 2, scope: !3607)
!3646 = !DILocation(line: 438, column: 12, scope: !3607)
!3647 = !DILocation(line: 438, column: 17, scope: !3607)
!3648 = !DILocation(line: 438, column: 22, scope: !3607)
!3649 = !DILocation(line: 439, column: 2, scope: !3607)
!3650 = !DILocation(line: 439, column: 12, scope: !3607)
!3651 = !DILocation(line: 439, column: 17, scope: !3607)
!3652 = !DILocation(line: 439, column: 22, scope: !3607)
!3653 = !DILocation(line: 440, column: 29, scope: !3607)
!3654 = !DILocation(line: 440, column: 39, scope: !3607)
!3655 = !DILocation(line: 440, column: 2, scope: !3607)
!3656 = !DILocation(line: 440, column: 12, scope: !3607)
!3657 = !DILocation(line: 440, column: 17, scope: !3607)
!3658 = !DILocation(line: 440, column: 22, scope: !3607)
!3659 = !DILocation(line: 440, column: 27, scope: !3607)
!3660 = !DILocation(line: 441, column: 2, scope: !3607)
!3661 = !DILocation(line: 441, column: 12, scope: !3607)
!3662 = !DILocation(line: 441, column: 17, scope: !3607)
!3663 = !DILocation(line: 441, column: 22, scope: !3607)
!3664 = !DILocation(line: 441, column: 27, scope: !3607)
!3665 = !DILocation(line: 443, column: 30, scope: !3607)
!3666 = !DILocation(line: 444, column: 8, scope: !3607)
!3667 = !DILocation(line: 444, column: 18, scope: !3607)
!3668 = !DILocation(line: 443, column: 8, scope: !3607)
!3669 = !DILocation(line: 443, column: 6, scope: !3607)
!3670 = !DILocation(line: 445, column: 6, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 445, column: 6)
!3672 = !DILocation(line: 445, column: 6, scope: !3607)
!3673 = !DILocation(line: 446, column: 9, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 445, column: 11)
!3675 = !DILocation(line: 446, column: 3, scope: !3674)
!3676 = !DILocation(line: 447, column: 12, scope: !3674)
!3677 = !DILocation(line: 448, column: 2, scope: !3674)
!3678 = !DILocation(line: 450, column: 18, scope: !3607)
!3679 = !DILocation(line: 450, column: 2, scope: !3607)
!3680 = !DILocation(line: 451, column: 9, scope: !3607)
!3681 = !DILocation(line: 451, column: 2, scope: !3607)
!3682 = !DILocation(line: 452, column: 1, scope: !3607)
!3683 = distinct !DISubprogram(name: "kzalloc", scope: !67, file: !67, line: 662, type: !3684, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!93, !122, !94}
!3686 = !DILocalVariable(name: "s", arg: 1, scope: !3687, file: !67, line: 445, type: !741)
!3687 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !67, file: !67, line: 445, type: !3688, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!93, !741, !94, !122}
!3690 = !DILocation(line: 445, column: 72, scope: !3687, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 552, column: 10, scope: !3692, inlinedAt: !3695)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !67, line: 540, column: 34)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !67, line: 540, column: 6)
!3694 = distinct !DISubprogram(name: "kmalloc", scope: !67, file: !67, line: 538, type: !3684, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3695 = distinct !DILocation(line: 664, column: 9, scope: !3683)
!3696 = !DILocalVariable(name: "flags", arg: 2, scope: !3687, file: !67, line: 446, type: !94)
!3697 = !DILocation(line: 446, column: 9, scope: !3687, inlinedAt: !3691)
!3698 = !DILocalVariable(name: "size", arg: 3, scope: !3687, file: !67, line: 446, type: !122)
!3699 = !DILocation(line: 446, column: 23, scope: !3687, inlinedAt: !3691)
!3700 = !DILocalVariable(name: "ret", scope: !3687, file: !67, line: 448, type: !93)
!3701 = !DILocation(line: 448, column: 8, scope: !3687, inlinedAt: !3691)
!3702 = !DILocalVariable(name: "flags", arg: 1, scope: !3703, file: !67, line: 318, type: !94)
!3703 = distinct !DISubprogram(name: "kmalloc_type", scope: !67, file: !67, line: 318, type: !3704, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!66, !94}
!3706 = !DILocation(line: 318, column: 67, scope: !3703, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 553, column: 20, scope: !3692, inlinedAt: !3695)
!3708 = !DILocalVariable(name: "size", arg: 1, scope: !3709, file: !67, line: 346, type: !122)
!3709 = distinct !DISubprogram(name: "kmalloc_index", scope: !67, file: !67, line: 346, type: !3710, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!7, !122}
!3712 = !DILocation(line: 346, column: 58, scope: !3709, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 547, column: 11, scope: !3692, inlinedAt: !3695)
!3714 = !DILocalVariable(name: "size", arg: 1, scope: !3715, file: !67, line: 472, type: !122)
!3715 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !67, file: !67, line: 472, type: !3716, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!93, !122, !94, !7}
!3718 = !DILocation(line: 472, column: 28, scope: !3715, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 481, column: 9, scope: !3720, inlinedAt: !3721)
!3720 = distinct !DISubprogram(name: "kmalloc_large", scope: !67, file: !67, line: 478, type: !3684, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3721 = distinct !DILocation(line: 545, column: 11, scope: !3722, inlinedAt: !3695)
!3722 = distinct !DILexicalBlock(scope: !3692, file: !67, line: 544, column: 7)
!3723 = !DILocalVariable(name: "flags", arg: 2, scope: !3715, file: !67, line: 472, type: !94)
!3724 = !DILocation(line: 472, column: 40, scope: !3715, inlinedAt: !3719)
!3725 = !DILocalVariable(name: "order", arg: 3, scope: !3715, file: !67, line: 472, type: !7)
!3726 = !DILocation(line: 472, column: 60, scope: !3715, inlinedAt: !3719)
!3727 = !DILocalVariable(name: "size", arg: 1, scope: !3720, file: !67, line: 478, type: !122)
!3728 = !DILocation(line: 478, column: 51, scope: !3720, inlinedAt: !3721)
!3729 = !DILocalVariable(name: "flags", arg: 2, scope: !3720, file: !67, line: 478, type: !94)
!3730 = !DILocation(line: 478, column: 63, scope: !3720, inlinedAt: !3721)
!3731 = !DILocalVariable(name: "order", scope: !3720, file: !67, line: 480, type: !7)
!3732 = !DILocation(line: 480, column: 15, scope: !3720, inlinedAt: !3721)
!3733 = !DILocalVariable(name: "size", arg: 1, scope: !3694, file: !67, line: 538, type: !122)
!3734 = !DILocation(line: 538, column: 45, scope: !3694, inlinedAt: !3695)
!3735 = !DILocalVariable(name: "flags", arg: 2, scope: !3694, file: !67, line: 538, type: !94)
!3736 = !DILocation(line: 538, column: 57, scope: !3694, inlinedAt: !3695)
!3737 = !DILocalVariable(name: "index", scope: !3692, file: !67, line: 542, type: !7)
!3738 = !DILocation(line: 542, column: 16, scope: !3692, inlinedAt: !3695)
!3739 = !DILocalVariable(name: "size", arg: 1, scope: !3683, file: !67, line: 662, type: !122)
!3740 = !DILocation(line: 662, column: 36, scope: !3683)
!3741 = !DILocalVariable(name: "flags", arg: 2, scope: !3683, file: !67, line: 662, type: !94)
!3742 = !DILocation(line: 662, column: 48, scope: !3683)
!3743 = !DILocation(line: 664, column: 17, scope: !3683)
!3744 = !DILocation(line: 664, column: 23, scope: !3683)
!3745 = !DILocation(line: 664, column: 29, scope: !3683)
!3746 = !DILocation(line: 540, column: 27, scope: !3693, inlinedAt: !3695)
!3747 = !DILocation(line: 540, column: 6, scope: !3693, inlinedAt: !3695)
!3748 = !DILocation(line: 540, column: 6, scope: !3694, inlinedAt: !3695)
!3749 = !DILocation(line: 544, column: 7, scope: !3722, inlinedAt: !3695)
!3750 = !DILocation(line: 544, column: 12, scope: !3722, inlinedAt: !3695)
!3751 = !DILocation(line: 544, column: 7, scope: !3692, inlinedAt: !3695)
!3752 = !DILocation(line: 545, column: 25, scope: !3722, inlinedAt: !3695)
!3753 = !DILocation(line: 545, column: 31, scope: !3722, inlinedAt: !3695)
!3754 = !DILocation(line: 480, column: 33, scope: !3720, inlinedAt: !3721)
!3755 = !DILocation(line: 480, column: 23, scope: !3720, inlinedAt: !3721)
!3756 = !DILocation(line: 481, column: 29, scope: !3720, inlinedAt: !3721)
!3757 = !DILocation(line: 481, column: 35, scope: !3720, inlinedAt: !3721)
!3758 = !DILocation(line: 481, column: 42, scope: !3720, inlinedAt: !3721)
!3759 = !DILocation(line: 474, column: 23, scope: !3715, inlinedAt: !3719)
!3760 = !DILocation(line: 474, column: 29, scope: !3715, inlinedAt: !3719)
!3761 = !DILocation(line: 474, column: 36, scope: !3715, inlinedAt: !3719)
!3762 = !DILocation(line: 474, column: 9, scope: !3715, inlinedAt: !3719)
!3763 = !DILocation(line: 545, column: 4, scope: !3722, inlinedAt: !3695)
!3764 = !DILocation(line: 547, column: 25, scope: !3692, inlinedAt: !3695)
!3765 = !DILocation(line: 348, column: 7, scope: !3766, inlinedAt: !3713)
!3766 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 348, column: 6)
!3767 = !DILocation(line: 348, column: 6, scope: !3709, inlinedAt: !3713)
!3768 = !DILocation(line: 349, column: 3, scope: !3766, inlinedAt: !3713)
!3769 = !DILocation(line: 351, column: 6, scope: !3770, inlinedAt: !3713)
!3770 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 351, column: 6)
!3771 = !DILocation(line: 351, column: 11, scope: !3770, inlinedAt: !3713)
!3772 = !DILocation(line: 351, column: 6, scope: !3709, inlinedAt: !3713)
!3773 = !DILocation(line: 352, column: 3, scope: !3770, inlinedAt: !3713)
!3774 = !DILocation(line: 354, column: 32, scope: !3775, inlinedAt: !3713)
!3775 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 354, column: 6)
!3776 = !DILocation(line: 354, column: 37, scope: !3775, inlinedAt: !3713)
!3777 = !DILocation(line: 354, column: 42, scope: !3775, inlinedAt: !3713)
!3778 = !DILocation(line: 354, column: 45, scope: !3775, inlinedAt: !3713)
!3779 = !DILocation(line: 354, column: 50, scope: !3775, inlinedAt: !3713)
!3780 = !DILocation(line: 354, column: 6, scope: !3709, inlinedAt: !3713)
!3781 = !DILocation(line: 355, column: 3, scope: !3775, inlinedAt: !3713)
!3782 = !DILocation(line: 356, column: 32, scope: !3783, inlinedAt: !3713)
!3783 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 356, column: 6)
!3784 = !DILocation(line: 356, column: 37, scope: !3783, inlinedAt: !3713)
!3785 = !DILocation(line: 356, column: 43, scope: !3783, inlinedAt: !3713)
!3786 = !DILocation(line: 356, column: 46, scope: !3783, inlinedAt: !3713)
!3787 = !DILocation(line: 356, column: 51, scope: !3783, inlinedAt: !3713)
!3788 = !DILocation(line: 356, column: 6, scope: !3709, inlinedAt: !3713)
!3789 = !DILocation(line: 357, column: 3, scope: !3783, inlinedAt: !3713)
!3790 = !DILocation(line: 358, column: 6, scope: !3791, inlinedAt: !3713)
!3791 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 358, column: 6)
!3792 = !DILocation(line: 358, column: 11, scope: !3791, inlinedAt: !3713)
!3793 = !DILocation(line: 358, column: 6, scope: !3709, inlinedAt: !3713)
!3794 = !DILocation(line: 358, column: 26, scope: !3791, inlinedAt: !3713)
!3795 = !DILocation(line: 359, column: 6, scope: !3796, inlinedAt: !3713)
!3796 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 359, column: 6)
!3797 = !DILocation(line: 359, column: 11, scope: !3796, inlinedAt: !3713)
!3798 = !DILocation(line: 359, column: 6, scope: !3709, inlinedAt: !3713)
!3799 = !DILocation(line: 359, column: 26, scope: !3796, inlinedAt: !3713)
!3800 = !DILocation(line: 360, column: 6, scope: !3801, inlinedAt: !3713)
!3801 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 360, column: 6)
!3802 = !DILocation(line: 360, column: 11, scope: !3801, inlinedAt: !3713)
!3803 = !DILocation(line: 360, column: 6, scope: !3709, inlinedAt: !3713)
!3804 = !DILocation(line: 360, column: 26, scope: !3801, inlinedAt: !3713)
!3805 = !DILocation(line: 361, column: 6, scope: !3806, inlinedAt: !3713)
!3806 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 361, column: 6)
!3807 = !DILocation(line: 361, column: 11, scope: !3806, inlinedAt: !3713)
!3808 = !DILocation(line: 361, column: 6, scope: !3709, inlinedAt: !3713)
!3809 = !DILocation(line: 361, column: 26, scope: !3806, inlinedAt: !3713)
!3810 = !DILocation(line: 362, column: 6, scope: !3811, inlinedAt: !3713)
!3811 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 362, column: 6)
!3812 = !DILocation(line: 362, column: 11, scope: !3811, inlinedAt: !3713)
!3813 = !DILocation(line: 362, column: 6, scope: !3709, inlinedAt: !3713)
!3814 = !DILocation(line: 362, column: 26, scope: !3811, inlinedAt: !3713)
!3815 = !DILocation(line: 363, column: 6, scope: !3816, inlinedAt: !3713)
!3816 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 363, column: 6)
!3817 = !DILocation(line: 363, column: 11, scope: !3816, inlinedAt: !3713)
!3818 = !DILocation(line: 363, column: 6, scope: !3709, inlinedAt: !3713)
!3819 = !DILocation(line: 363, column: 26, scope: !3816, inlinedAt: !3713)
!3820 = !DILocation(line: 364, column: 6, scope: !3821, inlinedAt: !3713)
!3821 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 364, column: 6)
!3822 = !DILocation(line: 364, column: 11, scope: !3821, inlinedAt: !3713)
!3823 = !DILocation(line: 364, column: 6, scope: !3709, inlinedAt: !3713)
!3824 = !DILocation(line: 364, column: 26, scope: !3821, inlinedAt: !3713)
!3825 = !DILocation(line: 365, column: 6, scope: !3826, inlinedAt: !3713)
!3826 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 365, column: 6)
!3827 = !DILocation(line: 365, column: 11, scope: !3826, inlinedAt: !3713)
!3828 = !DILocation(line: 365, column: 6, scope: !3709, inlinedAt: !3713)
!3829 = !DILocation(line: 365, column: 26, scope: !3826, inlinedAt: !3713)
!3830 = !DILocation(line: 366, column: 6, scope: !3831, inlinedAt: !3713)
!3831 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 366, column: 6)
!3832 = !DILocation(line: 366, column: 11, scope: !3831, inlinedAt: !3713)
!3833 = !DILocation(line: 366, column: 6, scope: !3709, inlinedAt: !3713)
!3834 = !DILocation(line: 366, column: 26, scope: !3831, inlinedAt: !3713)
!3835 = !DILocation(line: 367, column: 6, scope: !3836, inlinedAt: !3713)
!3836 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 367, column: 6)
!3837 = !DILocation(line: 367, column: 11, scope: !3836, inlinedAt: !3713)
!3838 = !DILocation(line: 367, column: 6, scope: !3709, inlinedAt: !3713)
!3839 = !DILocation(line: 367, column: 26, scope: !3836, inlinedAt: !3713)
!3840 = !DILocation(line: 368, column: 6, scope: !3841, inlinedAt: !3713)
!3841 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 368, column: 6)
!3842 = !DILocation(line: 368, column: 11, scope: !3841, inlinedAt: !3713)
!3843 = !DILocation(line: 368, column: 6, scope: !3709, inlinedAt: !3713)
!3844 = !DILocation(line: 368, column: 26, scope: !3841, inlinedAt: !3713)
!3845 = !DILocation(line: 369, column: 6, scope: !3846, inlinedAt: !3713)
!3846 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 369, column: 6)
!3847 = !DILocation(line: 369, column: 11, scope: !3846, inlinedAt: !3713)
!3848 = !DILocation(line: 369, column: 6, scope: !3709, inlinedAt: !3713)
!3849 = !DILocation(line: 369, column: 26, scope: !3846, inlinedAt: !3713)
!3850 = !DILocation(line: 370, column: 6, scope: !3851, inlinedAt: !3713)
!3851 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 370, column: 6)
!3852 = !DILocation(line: 370, column: 11, scope: !3851, inlinedAt: !3713)
!3853 = !DILocation(line: 370, column: 6, scope: !3709, inlinedAt: !3713)
!3854 = !DILocation(line: 370, column: 26, scope: !3851, inlinedAt: !3713)
!3855 = !DILocation(line: 371, column: 6, scope: !3856, inlinedAt: !3713)
!3856 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 371, column: 6)
!3857 = !DILocation(line: 371, column: 11, scope: !3856, inlinedAt: !3713)
!3858 = !DILocation(line: 371, column: 6, scope: !3709, inlinedAt: !3713)
!3859 = !DILocation(line: 371, column: 26, scope: !3856, inlinedAt: !3713)
!3860 = !DILocation(line: 372, column: 6, scope: !3861, inlinedAt: !3713)
!3861 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 372, column: 6)
!3862 = !DILocation(line: 372, column: 11, scope: !3861, inlinedAt: !3713)
!3863 = !DILocation(line: 372, column: 6, scope: !3709, inlinedAt: !3713)
!3864 = !DILocation(line: 372, column: 26, scope: !3861, inlinedAt: !3713)
!3865 = !DILocation(line: 373, column: 6, scope: !3866, inlinedAt: !3713)
!3866 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 373, column: 6)
!3867 = !DILocation(line: 373, column: 11, scope: !3866, inlinedAt: !3713)
!3868 = !DILocation(line: 373, column: 6, scope: !3709, inlinedAt: !3713)
!3869 = !DILocation(line: 373, column: 26, scope: !3866, inlinedAt: !3713)
!3870 = !DILocation(line: 374, column: 6, scope: !3871, inlinedAt: !3713)
!3871 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 374, column: 6)
!3872 = !DILocation(line: 374, column: 11, scope: !3871, inlinedAt: !3713)
!3873 = !DILocation(line: 374, column: 6, scope: !3709, inlinedAt: !3713)
!3874 = !DILocation(line: 374, column: 26, scope: !3871, inlinedAt: !3713)
!3875 = !DILocation(line: 375, column: 6, scope: !3876, inlinedAt: !3713)
!3876 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 375, column: 6)
!3877 = !DILocation(line: 375, column: 11, scope: !3876, inlinedAt: !3713)
!3878 = !DILocation(line: 375, column: 6, scope: !3709, inlinedAt: !3713)
!3879 = !DILocation(line: 375, column: 27, scope: !3876, inlinedAt: !3713)
!3880 = !DILocation(line: 376, column: 6, scope: !3881, inlinedAt: !3713)
!3881 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 376, column: 6)
!3882 = !DILocation(line: 376, column: 11, scope: !3881, inlinedAt: !3713)
!3883 = !DILocation(line: 376, column: 6, scope: !3709, inlinedAt: !3713)
!3884 = !DILocation(line: 376, column: 32, scope: !3881, inlinedAt: !3713)
!3885 = !DILocation(line: 377, column: 6, scope: !3886, inlinedAt: !3713)
!3886 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 377, column: 6)
!3887 = !DILocation(line: 377, column: 11, scope: !3886, inlinedAt: !3713)
!3888 = !DILocation(line: 377, column: 6, scope: !3709, inlinedAt: !3713)
!3889 = !DILocation(line: 377, column: 32, scope: !3886, inlinedAt: !3713)
!3890 = !DILocation(line: 378, column: 6, scope: !3891, inlinedAt: !3713)
!3891 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 378, column: 6)
!3892 = !DILocation(line: 378, column: 11, scope: !3891, inlinedAt: !3713)
!3893 = !DILocation(line: 378, column: 6, scope: !3709, inlinedAt: !3713)
!3894 = !DILocation(line: 378, column: 32, scope: !3891, inlinedAt: !3713)
!3895 = !DILocation(line: 379, column: 6, scope: !3896, inlinedAt: !3713)
!3896 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 379, column: 6)
!3897 = !DILocation(line: 379, column: 11, scope: !3896, inlinedAt: !3713)
!3898 = !DILocation(line: 379, column: 6, scope: !3709, inlinedAt: !3713)
!3899 = !DILocation(line: 379, column: 33, scope: !3896, inlinedAt: !3713)
!3900 = !DILocation(line: 380, column: 6, scope: !3901, inlinedAt: !3713)
!3901 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 380, column: 6)
!3902 = !DILocation(line: 380, column: 11, scope: !3901, inlinedAt: !3713)
!3903 = !DILocation(line: 380, column: 6, scope: !3709, inlinedAt: !3713)
!3904 = !DILocation(line: 380, column: 33, scope: !3901, inlinedAt: !3713)
!3905 = !DILocation(line: 381, column: 6, scope: !3906, inlinedAt: !3713)
!3906 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 381, column: 6)
!3907 = !DILocation(line: 381, column: 11, scope: !3906, inlinedAt: !3713)
!3908 = !DILocation(line: 381, column: 6, scope: !3709, inlinedAt: !3713)
!3909 = !DILocation(line: 381, column: 33, scope: !3906, inlinedAt: !3713)
!3910 = !DILocation(line: 382, column: 2, scope: !3911, inlinedAt: !3713)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !67, line: 382, column: 2)
!3912 = distinct !DILexicalBlock(scope: !3709, file: !67, line: 382, column: 2)
!3913 = !{i32 -2142177589, i32 -2142177560, i32 -2142177514, i32 -2142177456, i32 -2142177402, i32 -2142177348, i32 -2142177293, i32 -2142177262}
!3914 = !DILocation(line: 382, column: 2, scope: !3915, inlinedAt: !3713)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !67, line: 382, column: 2)
!3916 = distinct !DILexicalBlock(scope: !3912, file: !67, line: 382, column: 2)
!3917 = !{i32 -2142176819, i32 -2142176812, i32 -2142176758, i32 -2142176727, i32 -2142176697}
!3918 = !DILocation(line: 382, column: 2, scope: !3916, inlinedAt: !3713)
!3919 = !DILocation(line: 386, column: 1, scope: !3709, inlinedAt: !3713)
!3920 = !DILocation(line: 547, column: 9, scope: !3692, inlinedAt: !3695)
!3921 = !DILocation(line: 549, column: 8, scope: !3922, inlinedAt: !3695)
!3922 = distinct !DILexicalBlock(scope: !3692, file: !67, line: 549, column: 7)
!3923 = !DILocation(line: 549, column: 7, scope: !3692, inlinedAt: !3695)
!3924 = !DILocation(line: 550, column: 4, scope: !3922, inlinedAt: !3695)
!3925 = !DILocation(line: 553, column: 33, scope: !3692, inlinedAt: !3695)
!3926 = !DILocation(line: 325, column: 6, scope: !3927, inlinedAt: !3707)
!3927 = distinct !DILexicalBlock(scope: !3703, file: !67, line: 325, column: 6)
!3928 = !DILocation(line: 325, column: 6, scope: !3703, inlinedAt: !3707)
!3929 = !DILocation(line: 326, column: 3, scope: !3927, inlinedAt: !3707)
!3930 = !DILocation(line: 332, column: 9, scope: !3703, inlinedAt: !3707)
!3931 = !DILocation(line: 332, column: 15, scope: !3703, inlinedAt: !3707)
!3932 = !DILocation(line: 332, column: 2, scope: !3703, inlinedAt: !3707)
!3933 = !DILocation(line: 336, column: 1, scope: !3703, inlinedAt: !3707)
!3934 = !DILocation(line: 553, column: 5, scope: !3692, inlinedAt: !3695)
!3935 = !DILocation(line: 553, column: 41, scope: !3692, inlinedAt: !3695)
!3936 = !DILocation(line: 554, column: 5, scope: !3692, inlinedAt: !3695)
!3937 = !DILocation(line: 554, column: 12, scope: !3692, inlinedAt: !3695)
!3938 = !DILocation(line: 448, column: 31, scope: !3687, inlinedAt: !3691)
!3939 = !DILocation(line: 448, column: 34, scope: !3687, inlinedAt: !3691)
!3940 = !DILocation(line: 448, column: 14, scope: !3687, inlinedAt: !3691)
!3941 = !DILocation(line: 450, column: 22, scope: !3687, inlinedAt: !3691)
!3942 = !DILocation(line: 450, column: 25, scope: !3687, inlinedAt: !3691)
!3943 = !DILocation(line: 450, column: 30, scope: !3687, inlinedAt: !3691)
!3944 = !DILocation(line: 450, column: 36, scope: !3687, inlinedAt: !3691)
!3945 = !DILocation(line: 450, column: 8, scope: !3687, inlinedAt: !3691)
!3946 = !DILocation(line: 450, column: 6, scope: !3687, inlinedAt: !3691)
!3947 = !DILocation(line: 451, column: 9, scope: !3687, inlinedAt: !3691)
!3948 = !DILocation(line: 552, column: 3, scope: !3692, inlinedAt: !3695)
!3949 = !DILocation(line: 557, column: 19, scope: !3694, inlinedAt: !3695)
!3950 = !DILocation(line: 557, column: 25, scope: !3694, inlinedAt: !3695)
!3951 = !DILocation(line: 557, column: 9, scope: !3694, inlinedAt: !3695)
!3952 = !DILocation(line: 557, column: 2, scope: !3694, inlinedAt: !3695)
!3953 = !DILocation(line: 558, column: 1, scope: !3694, inlinedAt: !3695)
!3954 = !DILocation(line: 664, column: 2, scope: !3683)
!3955 = distinct !DISubprogram(name: "sfi_table_show", scope: !3, file: !3, line: 390, type: !129, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!3956 = !DILocalVariable(name: "filp", arg: 1, scope: !3955, file: !3, line: 390, type: !135)
!3957 = !DILocation(line: 390, column: 44, scope: !3955)
!3958 = !DILocalVariable(name: "kobj", arg: 2, scope: !3955, file: !3, line: 390, type: !2984)
!3959 = !DILocation(line: 390, column: 66, scope: !3955)
!3960 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !3955, file: !3, line: 391, type: !3069)
!3961 = !DILocation(line: 391, column: 33, scope: !3955)
!3962 = !DILocalVariable(name: "buf", arg: 4, scope: !3955, file: !3, line: 391, type: !267)
!3963 = !DILocation(line: 391, column: 49, scope: !3955)
!3964 = !DILocalVariable(name: "offset", arg: 5, scope: !3955, file: !3, line: 392, type: !313)
!3965 = !DILocation(line: 392, column: 18, scope: !3955)
!3966 = !DILocalVariable(name: "count", arg: 6, scope: !3955, file: !3, line: 392, type: !122)
!3967 = !DILocation(line: 392, column: 33, scope: !3955)
!3968 = !DILocalVariable(name: "tbl_attr", scope: !3955, file: !3, line: 394, type: !103)
!3969 = !DILocation(line: 394, column: 25, scope: !3955)
!3970 = !DILocalVariable(name: "__mptr", scope: !3971, file: !3, line: 395, type: !93)
!3971 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 395, column: 6)
!3972 = !DILocation(line: 395, column: 6, scope: !3971)
!3973 = !DILocation(line: 395, column: 6, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 395, column: 6)
!3975 = !DILocalVariable(name: "th", scope: !3955, file: !3, line: 396, type: !3304)
!3976 = !DILocation(line: 396, column: 27, scope: !3955)
!3977 = !DILocalVariable(name: "key", scope: !3955, file: !3, line: 397, type: !3306)
!3978 = !DILocation(line: 397, column: 23, scope: !3955)
!3979 = !DILocalVariable(name: "cnt", scope: !3955, file: !3, line: 398, type: !131)
!3980 = !DILocation(line: 398, column: 10, scope: !3955)
!3981 = !DILocation(line: 400, column: 12, scope: !3955)
!3982 = !DILocation(line: 400, column: 22, scope: !3955)
!3983 = !DILocation(line: 400, column: 6, scope: !3955)
!3984 = !DILocation(line: 400, column: 10, scope: !3955)
!3985 = !DILocation(line: 401, column: 6, scope: !3955)
!3986 = !DILocation(line: 401, column: 13, scope: !3955)
!3987 = !DILocation(line: 402, column: 6, scope: !3955)
!3988 = !DILocation(line: 402, column: 19, scope: !3955)
!3989 = !DILocation(line: 404, column: 28, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 404, column: 6)
!3991 = !DILocation(line: 404, column: 38, scope: !3990)
!3992 = !DILocation(line: 404, column: 6, scope: !3990)
!3993 = !DILocation(line: 404, column: 6, scope: !3955)
!3994 = !DILocation(line: 405, column: 8, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 404, column: 65)
!3996 = !DILocation(line: 405, column: 6, scope: !3995)
!3997 = !DILocation(line: 406, column: 8, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 406, column: 7)
!3999 = !DILocation(line: 406, column: 7, scope: !3995)
!4000 = !DILocation(line: 407, column: 4, scope: !3998)
!4001 = !DILocation(line: 409, column: 34, scope: !3995)
!4002 = !DILocation(line: 409, column: 39, scope: !3995)
!4003 = !DILocation(line: 410, column: 7, scope: !3995)
!4004 = !DILocation(line: 410, column: 11, scope: !3995)
!4005 = !DILocation(line: 410, column: 15, scope: !3995)
!4006 = !DILocation(line: 409, column: 10, scope: !3995)
!4007 = !DILocation(line: 409, column: 7, scope: !3995)
!4008 = !DILocation(line: 411, column: 17, scope: !3995)
!4009 = !DILocation(line: 411, column: 3, scope: !3995)
!4010 = !DILocation(line: 412, column: 2, scope: !3995)
!4011 = !DILocation(line: 413, column: 34, scope: !3990)
!4012 = !DILocation(line: 413, column: 39, scope: !3990)
!4013 = !DILocation(line: 414, column: 6, scope: !3990)
!4014 = !DILocation(line: 414, column: 15, scope: !3990)
!4015 = !DILocation(line: 414, column: 24, scope: !3990)
!4016 = !DILocation(line: 414, column: 31, scope: !3990)
!4017 = !DILocation(line: 413, column: 10, scope: !3990)
!4018 = !DILocation(line: 413, column: 7, scope: !3990)
!4019 = !DILocation(line: 416, column: 9, scope: !3955)
!4020 = !DILocation(line: 416, column: 2, scope: !3955)
!4021 = !DILocation(line: 417, column: 1, scope: !3955)
!4022 = distinct !DISubprogram(name: "sfi_init", scope: !3, file: !3, line: 485, type: !1683, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4023 = !DILocation(line: 487, column: 7, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 487, column: 6)
!4025 = !DILocation(line: 487, column: 6, scope: !4022)
!4026 = !DILocation(line: 488, column: 3, scope: !4024)
!4027 = !DILocation(line: 490, column: 6, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 490, column: 6)
!4029 = !DILocation(line: 490, column: 6, scope: !4022)
!4030 = !DILocation(line: 491, column: 3, scope: !4028)
!4031 = !DILocation(line: 493, column: 2, scope: !4022)
!4032 = !DILocation(line: 495, column: 6, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 495, column: 6)
!4034 = !DILocation(line: 495, column: 22, scope: !4033)
!4035 = !DILocation(line: 495, column: 25, scope: !4033)
!4036 = !DILocation(line: 495, column: 42, scope: !4033)
!4037 = !DILocation(line: 495, column: 45, scope: !4033)
!4038 = !DILocation(line: 495, column: 6, scope: !4022)
!4039 = !DILocation(line: 496, column: 3, scope: !4033)
!4040 = !DILocation(line: 498, column: 2, scope: !4022)
!4041 = !DILocation(line: 499, column: 1, scope: !4022)
!4042 = distinct !DISubprogram(name: "disable_sfi", scope: !3282, file: !3282, line: 184, type: !1683, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4043 = !DILocation(line: 186, column: 15, scope: !4042)
!4044 = !DILocation(line: 187, column: 1, scope: !4042)
!4045 = distinct !DISubprogram(name: "sfi_find_syst", scope: !3, file: !3, line: 341, type: !4046, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!256}
!4048 = !DILocalVariable(name: "offset", scope: !4045, file: !3, line: 343, type: !96)
!4049 = !DILocation(line: 343, column: 16, scope: !4045)
!4050 = !DILocalVariable(name: "len", scope: !4045, file: !3, line: 343, type: !96)
!4051 = !DILocation(line: 343, column: 24, scope: !4045)
!4052 = !DILocalVariable(name: "start", scope: !4045, file: !3, line: 344, type: !93)
!4053 = !DILocation(line: 344, column: 8, scope: !4045)
!4054 = !DILocation(line: 346, column: 6, scope: !4045)
!4055 = !DILocation(line: 347, column: 48, scope: !4045)
!4056 = !DILocation(line: 347, column: 10, scope: !4045)
!4057 = !DILocation(line: 347, column: 8, scope: !4045)
!4058 = !DILocation(line: 348, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 348, column: 6)
!4060 = !DILocation(line: 348, column: 6, scope: !4045)
!4061 = !DILocation(line: 349, column: 3, scope: !4059)
!4062 = !DILocation(line: 351, column: 14, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 351, column: 2)
!4064 = !DILocation(line: 351, column: 7, scope: !4063)
!4065 = !DILocation(line: 351, column: 19, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 351, column: 2)
!4067 = !DILocation(line: 351, column: 28, scope: !4066)
!4068 = !DILocation(line: 351, column: 26, scope: !4066)
!4069 = !DILocation(line: 351, column: 2, scope: !4063)
!4070 = !DILocalVariable(name: "syst_hdr", scope: !4071, file: !3, line: 352, type: !3304)
!4071 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 351, column: 47)
!4072 = !DILocation(line: 352, column: 28, scope: !4071)
!4073 = !DILocation(line: 354, column: 14, scope: !4071)
!4074 = !DILocation(line: 354, column: 22, scope: !4071)
!4075 = !DILocation(line: 354, column: 20, scope: !4071)
!4076 = !DILocation(line: 354, column: 12, scope: !4071)
!4077 = !DILocation(line: 355, column: 15, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 355, column: 7)
!4079 = !DILocation(line: 355, column: 25, scope: !4078)
!4080 = !DILocation(line: 355, column: 7, scope: !4078)
!4081 = !DILocation(line: 355, column: 7, scope: !4071)
!4082 = !DILocation(line: 357, column: 4, scope: !4078)
!4083 = !DILocation(line: 359, column: 7, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 359, column: 7)
!4085 = !DILocation(line: 359, column: 17, scope: !4084)
!4086 = !DILocation(line: 359, column: 21, scope: !4084)
!4087 = !DILocation(line: 359, column: 7, scope: !4071)
!4088 = !DILocation(line: 360, column: 4, scope: !4084)
!4089 = !DILocation(line: 362, column: 50, scope: !4071)
!4090 = !DILocation(line: 362, column: 48, scope: !4071)
!4091 = !DILocation(line: 363, column: 6, scope: !4071)
!4092 = !DILocation(line: 362, column: 3, scope: !4071)
!4093 = !DILocation(line: 365, column: 24, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 365, column: 7)
!4095 = !DILocation(line: 365, column: 7, scope: !4094)
!4096 = !DILocation(line: 365, column: 7, scope: !4071)
!4097 = !DILocation(line: 366, column: 4, scope: !4094)
!4098 = !DILocation(line: 371, column: 8, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 371, column: 7)
!4100 = !DILocation(line: 371, column: 7, scope: !4071)
!4101 = !DILocation(line: 372, column: 4, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 371, column: 56)
!4103 = !DILocation(line: 374, column: 4, scope: !4102)
!4104 = !DILocation(line: 378, column: 37, scope: !4071)
!4105 = !DILocation(line: 378, column: 35, scope: !4071)
!4106 = !DILocation(line: 378, column: 11, scope: !4071)
!4107 = !DILocation(line: 379, column: 20, scope: !4071)
!4108 = !DILocation(line: 379, column: 27, scope: !4071)
!4109 = !DILocation(line: 379, column: 3, scope: !4071)
!4110 = !DILocation(line: 380, column: 3, scope: !4071)
!4111 = !DILocation(line: 351, column: 40, scope: !4066)
!4112 = !DILocation(line: 351, column: 2, scope: !4066)
!4113 = distinct !{!4113, !4069, !4114}
!4114 = !DILocation(line: 381, column: 2, scope: !4063)
!4115 = !DILocation(line: 383, column: 19, scope: !4045)
!4116 = !DILocation(line: 383, column: 26, scope: !4045)
!4117 = !DILocation(line: 383, column: 2, scope: !4045)
!4118 = !DILocation(line: 384, column: 2, scope: !4045)
!4119 = !DILocation(line: 385, column: 1, scope: !4045)
!4120 = distinct !DISubprogram(name: "sfi_parse_syst", scope: !3, file: !3, line: 312, type: !4046, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4121 = !DILocalVariable(name: "key", scope: !4120, file: !3, line: 314, type: !3306)
!4122 = !DILocation(line: 314, column: 23, scope: !4120)
!4123 = !DILocalVariable(name: "tbl_cnt", scope: !4120, file: !3, line: 315, type: !256)
!4124 = !DILocation(line: 315, column: 6, scope: !4120)
!4125 = !DILocalVariable(name: "i", scope: !4120, file: !3, line: 315, type: !256)
!4126 = !DILocation(line: 315, column: 15, scope: !4120)
!4127 = !DILocalVariable(name: "ret", scope: !4120, file: !3, line: 316, type: !93)
!4128 = !DILocation(line: 316, column: 8, scope: !4120)
!4129 = !DILocation(line: 318, column: 27, scope: !4120)
!4130 = !DILocation(line: 318, column: 12, scope: !4120)
!4131 = !DILocation(line: 318, column: 10, scope: !4120)
!4132 = !DILocation(line: 319, column: 7, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 319, column: 6)
!4134 = !DILocation(line: 319, column: 6, scope: !4120)
!4135 = !DILocation(line: 320, column: 3, scope: !4133)
!4136 = !DILocation(line: 322, column: 12, scope: !4120)
!4137 = !DILocation(line: 322, column: 10, scope: !4120)
!4138 = !DILocation(line: 323, column: 9, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 323, column: 2)
!4140 = !DILocation(line: 323, column: 7, scope: !4139)
!4141 = !DILocation(line: 323, column: 14, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 323, column: 2)
!4143 = !DILocation(line: 323, column: 18, scope: !4142)
!4144 = !DILocation(line: 323, column: 16, scope: !4142)
!4145 = !DILocation(line: 323, column: 2, scope: !4139)
!4146 = !DILocation(line: 324, column: 25, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 323, column: 32)
!4148 = !DILocation(line: 324, column: 34, scope: !4147)
!4149 = !DILocation(line: 324, column: 41, scope: !4147)
!4150 = !DILocation(line: 324, column: 9, scope: !4147)
!4151 = !DILocation(line: 324, column: 7, scope: !4147)
!4152 = !DILocation(line: 325, column: 14, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 325, column: 7)
!4154 = !DILocation(line: 325, column: 7, scope: !4153)
!4155 = !DILocation(line: 325, column: 7, scope: !4147)
!4156 = !DILocation(line: 326, column: 19, scope: !4153)
!4157 = !DILocation(line: 326, column: 11, scope: !4153)
!4158 = !DILocation(line: 326, column: 4, scope: !4153)
!4159 = !DILocation(line: 327, column: 2, scope: !4147)
!4160 = !DILocation(line: 323, column: 28, scope: !4142)
!4161 = !DILocation(line: 323, column: 2, scope: !4142)
!4162 = distinct !{!4162, !4145, !4163}
!4163 = !DILocation(line: 327, column: 2, scope: !4139)
!4164 = !DILocation(line: 329, column: 2, scope: !4120)
!4165 = !DILocation(line: 330, column: 1, scope: !4120)
!4166 = distinct !DISubprogram(name: "sfi_init_late", scope: !3, file: !3, line: 501, type: !1683, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4167 = !DILocalVariable(name: "length", scope: !4166, file: !3, line: 503, type: !256)
!4168 = !DILocation(line: 503, column: 6, scope: !4166)
!4169 = !DILocation(line: 505, column: 6, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 505, column: 6)
!4171 = !DILocation(line: 505, column: 6, scope: !4166)
!4172 = !DILocation(line: 506, column: 3, scope: !4170)
!4173 = !DILocation(line: 508, column: 11, scope: !4166)
!4174 = !DILocation(line: 508, column: 20, scope: !4166)
!4175 = !DILocation(line: 508, column: 27, scope: !4166)
!4176 = !DILocation(line: 508, column: 9, scope: !4166)
!4177 = !DILocation(line: 509, column: 19, scope: !4166)
!4178 = !DILocation(line: 509, column: 2, scope: !4166)
!4179 = !DILocation(line: 512, column: 19, scope: !4166)
!4180 = !DILocation(line: 513, column: 27, scope: !4166)
!4181 = !DILocation(line: 513, column: 36, scope: !4166)
!4182 = !DILocation(line: 513, column: 12, scope: !4166)
!4183 = !DILocation(line: 513, column: 10, scope: !4166)
!4184 = !DILocation(line: 515, column: 2, scope: !4166)
!4185 = !DILocation(line: 516, column: 1, scope: !4166)
!4186 = distinct !DISubprogram(name: "sfi_unmap_memory", scope: !3, file: !3, line: 110, type: !4187, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !93, !198}
!4189 = !DILocalVariable(name: "virt", arg: 1, scope: !4186, file: !3, line: 110, type: !93)
!4190 = !DILocation(line: 110, column: 50, scope: !4186)
!4191 = !DILocalVariable(name: "size", arg: 2, scope: !4186, file: !3, line: 110, type: !198)
!4192 = !DILocation(line: 110, column: 60, scope: !4186)
!4193 = !DILocation(line: 112, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 112, column: 6)
!4195 = !DILocation(line: 112, column: 12, scope: !4194)
!4196 = !DILocation(line: 112, column: 16, scope: !4194)
!4197 = !DILocation(line: 112, column: 6, scope: !4186)
!4198 = !DILocation(line: 113, column: 3, scope: !4194)
!4199 = !DILocation(line: 115, column: 6, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 115, column: 6)
!4201 = !DILocation(line: 115, column: 6, scope: !4186)
!4202 = !DILocation(line: 116, column: 12, scope: !4200)
!4203 = !DILocation(line: 116, column: 3, scope: !4200)
!4204 = !DILocation(line: 118, column: 18, scope: !4200)
!4205 = !DILocation(line: 118, column: 24, scope: !4200)
!4206 = !DILocation(line: 118, column: 3, scope: !4200)
!4207 = !DILocation(line: 119, column: 1, scope: !4186)
!4208 = distinct !DISubprogram(name: "sfi_map_memory", scope: !3, file: !3, line: 99, type: !4209, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!93, !202, !198}
!4211 = !DILocalVariable(name: "phys", arg: 1, scope: !4208, file: !3, line: 99, type: !202)
!4212 = !DILocation(line: 99, column: 48, scope: !4208)
!4213 = !DILocalVariable(name: "size", arg: 2, scope: !4208, file: !3, line: 99, type: !198)
!4214 = !DILocation(line: 99, column: 58, scope: !4208)
!4215 = !DILocation(line: 101, column: 7, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 101, column: 6)
!4217 = !DILocation(line: 101, column: 12, scope: !4216)
!4218 = !DILocation(line: 101, column: 16, scope: !4216)
!4219 = !DILocation(line: 101, column: 6, scope: !4208)
!4220 = !DILocation(line: 102, column: 3, scope: !4216)
!4221 = !DILocation(line: 104, column: 6, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 104, column: 6)
!4223 = !DILocation(line: 104, column: 6, scope: !4208)
!4224 = !DILocation(line: 105, column: 19, scope: !4222)
!4225 = !DILocation(line: 105, column: 25, scope: !4222)
!4226 = !DILocation(line: 105, column: 10, scope: !4222)
!4227 = !DILocation(line: 105, column: 3, scope: !4222)
!4228 = !DILocation(line: 107, column: 25, scope: !4222)
!4229 = !DILocation(line: 107, column: 31, scope: !4222)
!4230 = !DILocation(line: 107, column: 10, scope: !4222)
!4231 = !DILocation(line: 107, column: 3, scope: !4222)
!4232 = !DILocation(line: 108, column: 1, scope: !4208)
!4233 = distinct !DISubprogram(name: "sfi_sysfs_init", scope: !3, file: !3, line: 454, type: !4046, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4234 = !DILocalVariable(name: "tbl_cnt", scope: !4233, file: !3, line: 456, type: !256)
!4235 = !DILocation(line: 456, column: 6, scope: !4233)
!4236 = !DILocalVariable(name: "i", scope: !4233, file: !3, line: 456, type: !256)
!4237 = !DILocation(line: 456, column: 15, scope: !4233)
!4238 = !DILocation(line: 458, column: 6, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 458, column: 6)
!4240 = !DILocation(line: 458, column: 6, scope: !4233)
!4241 = !DILocation(line: 459, column: 3, scope: !4239)
!4242 = !DILocation(line: 461, column: 43, scope: !4233)
!4243 = !DILocation(line: 461, column: 13, scope: !4233)
!4244 = !DILocation(line: 461, column: 11, scope: !4233)
!4245 = !DILocation(line: 462, column: 7, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 462, column: 6)
!4247 = !DILocation(line: 462, column: 6, scope: !4233)
!4248 = !DILocation(line: 463, column: 3, scope: !4246)
!4249 = !DILocation(line: 465, column: 49, scope: !4233)
!4250 = !DILocation(line: 465, column: 16, scope: !4233)
!4251 = !DILocation(line: 465, column: 14, scope: !4233)
!4252 = !DILocation(line: 466, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 466, column: 6)
!4254 = !DILocation(line: 466, column: 6, scope: !4233)
!4255 = !DILocation(line: 467, column: 15, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 466, column: 20)
!4257 = !DILocation(line: 467, column: 3, scope: !4256)
!4258 = !DILocation(line: 468, column: 3, scope: !4256)
!4259 = !DILocation(line: 471, column: 26, scope: !4233)
!4260 = !DILocation(line: 471, column: 2, scope: !4233)
!4261 = !DILocation(line: 473, column: 12, scope: !4233)
!4262 = !DILocation(line: 473, column: 10, scope: !4233)
!4263 = !DILocation(line: 475, column: 9, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 475, column: 2)
!4265 = !DILocation(line: 475, column: 7, scope: !4264)
!4266 = !DILocation(line: 475, column: 14, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 475, column: 2)
!4268 = !DILocation(line: 475, column: 18, scope: !4267)
!4269 = !DILocation(line: 475, column: 16, scope: !4267)
!4270 = !DILocation(line: 475, column: 2, scope: !4264)
!4271 = !DILocation(line: 476, column: 27, scope: !4267)
!4272 = !DILocation(line: 476, column: 36, scope: !4267)
!4273 = !DILocation(line: 476, column: 43, scope: !4267)
!4274 = !DILocation(line: 476, column: 3, scope: !4267)
!4275 = !DILocation(line: 475, column: 28, scope: !4267)
!4276 = !DILocation(line: 475, column: 2, scope: !4267)
!4277 = distinct !{!4277, !4270, !4278}
!4278 = !DILocation(line: 476, column: 45, scope: !4264)
!4279 = !DILocation(line: 478, column: 2, scope: !4233)
!4280 = !DILocation(line: 479, column: 17, scope: !4233)
!4281 = !DILocation(line: 479, column: 2, scope: !4233)
!4282 = !DILocation(line: 480, column: 17, scope: !4233)
!4283 = !DILocation(line: 480, column: 2, scope: !4233)
!4284 = !DILocation(line: 481, column: 2, scope: !4233)
!4285 = !DILocation(line: 482, column: 2, scope: !4233)
!4286 = !DILocation(line: 483, column: 1, scope: !4233)
!4287 = distinct !DISubprogram(name: "get_order", scope: !4288, file: !4288, line: 29, type: !4289, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4288 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!256, !96}
!4291 = !DILocalVariable(name: "x", arg: 1, scope: !4292, file: !4293, line: 366, type: !203)
!4292 = distinct !DISubprogram(name: "fls64", scope: !4293, file: !4293, line: 366, type: !4294, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4293 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!256, !203}
!4296 = !DILocation(line: 366, column: 40, scope: !4292, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 46, column: 9, scope: !4287)
!4298 = !DILocalVariable(name: "bitpos", scope: !4292, file: !4293, line: 368, type: !256)
!4299 = !DILocation(line: 368, column: 6, scope: !4292, inlinedAt: !4297)
!4300 = !DILocalVariable(name: "size", arg: 1, scope: !4287, file: !4288, line: 29, type: !96)
!4301 = !DILocation(line: 29, column: 63, scope: !4287)
!4302 = !DILocation(line: 31, column: 27, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4287, file: !4288, line: 31, column: 6)
!4304 = !DILocation(line: 31, column: 6, scope: !4303)
!4305 = !DILocation(line: 31, column: 6, scope: !4287)
!4306 = !DILocation(line: 32, column: 8, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !4288, line: 32, column: 7)
!4308 = distinct !DILexicalBlock(scope: !4303, file: !4288, line: 31, column: 34)
!4309 = !DILocation(line: 32, column: 7, scope: !4308)
!4310 = !DILocation(line: 33, column: 4, scope: !4307)
!4311 = !DILocation(line: 35, column: 7, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4308, file: !4288, line: 35, column: 7)
!4313 = !DILocation(line: 35, column: 12, scope: !4312)
!4314 = !DILocation(line: 35, column: 7, scope: !4308)
!4315 = !DILocation(line: 36, column: 4, scope: !4312)
!4316 = !DILocation(line: 38, column: 10, scope: !4308)
!4317 = !DILocation(line: 38, column: 28, scope: !4308)
!4318 = !DILocation(line: 38, column: 41, scope: !4308)
!4319 = !DILocation(line: 38, column: 3, scope: !4308)
!4320 = !DILocation(line: 41, column: 6, scope: !4287)
!4321 = !DILocation(line: 42, column: 7, scope: !4287)
!4322 = !DILocation(line: 46, column: 15, scope: !4287)
!4323 = !DILocation(line: 374, column: 2, scope: !4292, inlinedAt: !4297)
!4324 = !DILocation(line: 376, column: 14, scope: !4292, inlinedAt: !4297)
!4325 = !{i32 409059}
!4326 = !DILocation(line: 377, column: 9, scope: !4292, inlinedAt: !4297)
!4327 = !DILocation(line: 377, column: 16, scope: !4292, inlinedAt: !4297)
!4328 = !DILocation(line: 46, column: 2, scope: !4287)
!4329 = !DILocation(line: 48, column: 1, scope: !4287)
!4330 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4331, file: !4331, line: 30, type: !4332, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4331 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!256, !202}
!4334 = !DILocation(line: 366, column: 40, scope: !4292, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 32, column: 9, scope: !4330)
!4336 = !DILocation(line: 368, column: 6, scope: !4292, inlinedAt: !4335)
!4337 = !DILocalVariable(name: "n", arg: 1, scope: !4330, file: !4331, line: 30, type: !202)
!4338 = !DILocation(line: 30, column: 21, scope: !4330)
!4339 = !DILocation(line: 32, column: 15, scope: !4330)
!4340 = !DILocation(line: 374, column: 2, scope: !4292, inlinedAt: !4335)
!4341 = !DILocation(line: 376, column: 14, scope: !4292, inlinedAt: !4335)
!4342 = !DILocation(line: 377, column: 9, scope: !4292, inlinedAt: !4335)
!4343 = !DILocation(line: 377, column: 16, scope: !4292, inlinedAt: !4335)
!4344 = !DILocation(line: 32, column: 18, scope: !4330)
!4345 = !DILocation(line: 32, column: 2, scope: !4330)
!4346 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4347, file: !4347, line: 137, type: !4348, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4347 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!93, !741, !1934, !122, !94}
!4350 = !DILocalVariable(name: "s", arg: 1, scope: !4346, file: !4347, line: 137, type: !741)
!4351 = !DILocation(line: 137, column: 54, scope: !4346)
!4352 = !DILocalVariable(name: "object", arg: 2, scope: !4346, file: !4347, line: 137, type: !1934)
!4353 = !DILocation(line: 137, column: 69, scope: !4346)
!4354 = !DILocalVariable(name: "size", arg: 3, scope: !4346, file: !4347, line: 138, type: !122)
!4355 = !DILocation(line: 138, column: 12, scope: !4346)
!4356 = !DILocalVariable(name: "flags", arg: 4, scope: !4346, file: !4347, line: 138, type: !94)
!4357 = !DILocation(line: 138, column: 24, scope: !4346)
!4358 = !DILocation(line: 140, column: 17, scope: !4346)
!4359 = !DILocation(line: 140, column: 2, scope: !4346)
!4360 = distinct !DISubprogram(name: "PTR_ERR", scope: !3398, file: !3398, line: 29, type: !4361, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!134, !1934}
!4363 = !DILocalVariable(name: "ptr", arg: 1, scope: !4360, file: !3398, line: 29, type: !1934)
!4364 = !DILocation(line: 29, column: 61, scope: !4360)
!4365 = !DILocation(line: 31, column: 16, scope: !4360)
!4366 = !DILocation(line: 31, column: 9, scope: !4360)
!4367 = !DILocation(line: 31, column: 2, scope: !4360)
