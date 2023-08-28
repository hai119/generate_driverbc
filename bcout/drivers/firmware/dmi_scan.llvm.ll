; ModuleID = '../bcout/drivers/firmware/dmi_scan.llvm.bc'
source_filename = "drivers/firmware/dmi_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_dmi_init4:\09\09\09"
module asm ".long\09dmi_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dmi_memdev_info = type { i8*, i8*, i64, i16, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.efi = type { %union.efi_runtime_services_t*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 (%struct.efi_time_t*, %struct.efi_time_cap_t*)*, i64 (%struct.efi_time_t*)*, i64 (i8*, i8*, %struct.efi_time_t*)*, i64 (i8, %struct.efi_time_t*)*, i64 (i16*, %struct.guid_t*, i32*, i64*, i8*)*, i64 (i64*, i16*, %struct.guid_t*)*, i64 (i16*, %struct.guid_t*, i32, i64, i8*)*, i64 (i16*, %struct.guid_t*, i32, i64, i8*)*, i64 (i32, i64*, i64*, i64*)*, i64 (i32, i64*, i64*, i64*)*, i64 (%struct.efi_capsule_header_t**, i64, i64)*, i64 (%struct.efi_capsule_header_t**, i64, i64*, i32*)*, i64 (i32*)*, void (i32, i64, i64, i16*)*, %struct.efi_memory_map, i64 }
%union.efi_runtime_services_t = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.efi_table_hdr_t, i64 (%struct.efi_time_t*, %struct.efi_time_cap_t*)*, i64 (%struct.efi_time_t*)*, i64 (i8*, i8*, %struct.efi_time_t*)*, i64 (i8, %struct.efi_time_t*)*, i64 (i64, i64, i32, %struct.efi_memory_desc_t*)*, i8*, i64 (i16*, %struct.guid_t*, i32*, i64*, i8*)*, i64 (i64*, i16*, %struct.guid_t*)*, i64 (i16*, %struct.guid_t*, i32, i64, i8*)*, i64 (i32*)*, void (i32, i64, i64, i16*)*, i64 (%struct.efi_capsule_header_t**, i64, i64)*, i64 (%struct.efi_capsule_header_t**, i64, i64*, i32*)*, i64 (i32, i64*, i64*, i64*)* }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.efi_time_t = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i8, i8 }
%struct.efi_time_cap_t = type { i32, i32, i8 }
%struct.guid_t = type { [16 x i8] }
%struct.efi_capsule_header_t = type { %struct.guid_t, i32, i32, i32 }
%struct.efi_memory_map = type { i64, i8*, i8*, i32, i64, i64, i64 }
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.dmi_device = type { %struct.list_head, i32, i8*, i8* }
%struct.dmi_header = type { i8, i8, i16 }
%struct.dmi_dev_onboard = type { %struct.dmi_device, i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_dmi_init230 = internal global i8* bitcast (i32 ()* @dmi_init to i8*), section ".discard.addressable", align 8, !dbg !0
@dmi_available = dso_local global i32 0, align 4, !dbg !3451
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dmi_ids_string = internal global [128 x i8] zeroinitializer, section ".init.data", align 16, !dbg !3427
@dmi_ident = internal global [23 x i8*] zeroinitializer, align 16, !dbg !3446
@dmi_name_in_vendors.fields = internal global [3 x i32] [i32 6, i32 13, i32 0], align 4, !dbg !230
@dmi_devices = internal global %struct.list_head { %struct.list_head* @dmi_devices, %struct.list_head* @dmi_devices }, align 8, !dbg !3474
@dmi_base = internal global i64 0, align 8, !dbg !3444
@dmi_len = internal global i32 0, align 4, !dbg !3425
@dmi_memdev = internal global %struct.dmi_memdev_info* null, align 8, !dbg !3432
@dmi_memdev_nr = internal global i32 0, align 4, !dbg !3442
@dmi_kobj = dso_local global %struct.kobject* null, align 8, !dbg !239
@.str.1 = private unnamed_addr constant [4 x i8] c"dmi\00", align 1
@firmware_kobj = external dso_local global %struct.kobject*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@smbios_entry_point_size = internal global i32 0, align 4, !dbg !3453
@bin_attr_smbios_entry_point = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i16 256 }, i64 0, i8* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @raw_table_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8, !dbg !3455
@smbios_entry_point = internal global [32 x i8] zeroinitializer, align 16, !dbg !3457
@bin_attr_DMI = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i16 256 }, i64 0, i8* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @raw_table_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8, !dbg !3460
@.str.3 = private unnamed_addr constant [38 x i8] c"\013dmi: Firmware registration failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"smbios_entry_point\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DMI\00", align 1
@efi = external dso_local global %struct.efi, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"\016DMI not present or invalid.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"_SM3_\00", align 1
@dmi_ver = internal global i32 0, section ".init.data", align 4, !dbg !3462
@dmi_num = internal global i16 0, align 2, !dbg !3464
@.str.8 = private unnamed_addr constant [28 x i8] c"\016SMBIOS %d.%d.%d present.\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"\016DMI: %s\0A\00", align 1
@dmi_empty_string = internal constant [1 x i8] zeroinitializer, align 1, !dbg !3466
@.str.10 = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%pUb\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"IPMI controller\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c", BIOS \00", align 1
@_ctype = external dso_local constant [0 x i8], align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"_SM_\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"_DMI_\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"\016SMBIOS %d.%d present.\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"\016Legacy DMI %d.%d present.\0A\00", align 1
@save_mem_devices.nr = internal global i32 0, align 4, !dbg !3469
@.str.24 = private unnamed_addr constant [57 x i8] c"\014[Firmware Bug]: Too many DIMM entries in SMBIOS table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_dmi_init230 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_init() #0 section ".init.text" !dbg !3481 {
entry:
  %retval = alloca i32, align 4
  %tables_kobj = alloca %struct.kobject*, align 8
  %dmi_table = alloca i8*, align 8
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.kobject** %tables_kobj, metadata !3484, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.declare(metadata i8** %dmi_table, metadata !3486, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3488, metadata !DIExpression()), !dbg !3489
  store i32 -12, i32* %ret, align 4, !dbg !3489
  %0 = load i32, i32* @dmi_available, align 4, !dbg !3490
  %tobool = icmp ne i32 %0, 0, !dbg !3490
  br i1 %tobool, label %if.end, label %if.then, !dbg !3492

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3493
  br label %return, !dbg !3493

if.end:                                           ; preds = %entry
  %1 = load %struct.kobject*, %struct.kobject** @firmware_kobj, align 8, !dbg !3494
  %call = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.kobject* %1) #8, !dbg !3495
  store %struct.kobject* %call, %struct.kobject** @dmi_kobj, align 8, !dbg !3496
  %2 = load %struct.kobject*, %struct.kobject** @dmi_kobj, align 8, !dbg !3497
  %tobool1 = icmp ne %struct.kobject* %2, null, !dbg !3497
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3499

if.then2:                                         ; preds = %if.end
  br label %err, !dbg !3500

if.end3:                                          ; preds = %if.end
  %3 = load %struct.kobject*, %struct.kobject** @dmi_kobj, align 8, !dbg !3501
  %call4 = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.kobject* %3) #8, !dbg !3502
  store %struct.kobject* %call4, %struct.kobject** %tables_kobj, align 8, !dbg !3503
  %4 = load %struct.kobject*, %struct.kobject** %tables_kobj, align 8, !dbg !3504
  %tobool5 = icmp ne %struct.kobject* %4, null, !dbg !3504
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3506

if.then6:                                         ; preds = %if.end3
  br label %err, !dbg !3507

if.end7:                                          ; preds = %if.end3
  %5 = load i64, i64* @dmi_base, align 8, !dbg !3508
  %6 = load i32, i32* @dmi_len, align 4, !dbg !3508
  %conv = zext i32 %6 to i64, !dbg !3508
  %call8 = call i8* @memremap(i64 %5, i64 %conv, i64 1) #8, !dbg !3508
  store i8* %call8, i8** %dmi_table, align 8, !dbg !3509
  %7 = load i8*, i8** %dmi_table, align 8, !dbg !3510
  %tobool9 = icmp ne i8* %7, null, !dbg !3510
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3512

if.then10:                                        ; preds = %if.end7
  br label %err_tables, !dbg !3513

if.end11:                                         ; preds = %if.end7
  %8 = load i32, i32* @smbios_entry_point_size, align 4, !dbg !3514
  %conv12 = sext i32 %8 to i64, !dbg !3514
  store i64 %conv12, i64* getelementptr inbounds (%struct.bin_attribute, %struct.bin_attribute* @bin_attr_smbios_entry_point, i32 0, i32 1), align 8, !dbg !3515
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @smbios_entry_point, i64 0, i64 0), i8** getelementptr inbounds (%struct.bin_attribute, %struct.bin_attribute* @bin_attr_smbios_entry_point, i32 0, i32 2), align 8, !dbg !3516
  %9 = load %struct.kobject*, %struct.kobject** %tables_kobj, align 8, !dbg !3517
  %call13 = call i32 @sysfs_create_bin_file(%struct.kobject* %9, %struct.bin_attribute* @bin_attr_smbios_entry_point) #8, !dbg !3518
  store i32 %call13, i32* %ret, align 4, !dbg !3519
  %10 = load i32, i32* %ret, align 4, !dbg !3520
  %tobool14 = icmp ne i32 %10, 0, !dbg !3520
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3522

if.then15:                                        ; preds = %if.end11
  br label %err_unmap, !dbg !3523

if.end16:                                         ; preds = %if.end11
  %11 = load i32, i32* @dmi_len, align 4, !dbg !3524
  %conv17 = zext i32 %11 to i64, !dbg !3524
  store i64 %conv17, i64* getelementptr inbounds (%struct.bin_attribute, %struct.bin_attribute* @bin_attr_DMI, i32 0, i32 1), align 8, !dbg !3525
  %12 = load i8*, i8** %dmi_table, align 8, !dbg !3526
  store i8* %12, i8** getelementptr inbounds (%struct.bin_attribute, %struct.bin_attribute* @bin_attr_DMI, i32 0, i32 2), align 8, !dbg !3527
  %13 = load %struct.kobject*, %struct.kobject** %tables_kobj, align 8, !dbg !3528
  %call18 = call i32 @sysfs_create_bin_file(%struct.kobject* %13, %struct.bin_attribute* @bin_attr_DMI) #8, !dbg !3529
  store i32 %call18, i32* %ret, align 4, !dbg !3530
  %14 = load i32, i32* %ret, align 4, !dbg !3531
  %tobool19 = icmp ne i32 %14, 0, !dbg !3531
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !3533

if.then20:                                        ; preds = %if.end16
  store i32 0, i32* %retval, align 4, !dbg !3534
  br label %return, !dbg !3534

if.end21:                                         ; preds = %if.end16
  %15 = load %struct.kobject*, %struct.kobject** %tables_kobj, align 8, !dbg !3535
  call void @sysfs_remove_bin_file(%struct.kobject* %15, %struct.bin_attribute* @bin_attr_smbios_entry_point) #8, !dbg !3536
  br label %err_unmap, !dbg !3536

err_unmap:                                        ; preds = %if.end21, %if.then15
  call void @llvm.dbg.label(metadata !3537), !dbg !3538
  %16 = load i8*, i8** %dmi_table, align 8, !dbg !3539
  call void @memunmap(i8* %16) #8, !dbg !3539
  br label %err_tables, !dbg !3539

err_tables:                                       ; preds = %err_unmap, %if.then10
  call void @llvm.dbg.label(metadata !3540), !dbg !3541
  %17 = load %struct.kobject*, %struct.kobject** %tables_kobj, align 8, !dbg !3542
  call void @kobject_del(%struct.kobject* %17) #8, !dbg !3543
  %18 = load %struct.kobject*, %struct.kobject** %tables_kobj, align 8, !dbg !3544
  call void @kobject_put(%struct.kobject* %18) #8, !dbg !3545
  br label %err, !dbg !3545

err:                                              ; preds = %err_tables, %if.then6, %if.then2
  call void @llvm.dbg.label(metadata !3546), !dbg !3547
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !3548
  %19 = load i32, i32* %ret, align 4, !dbg !3549
  store i32 %19, i32* %retval, align 4, !dbg !3550
  br label %return, !dbg !3550

return:                                           ; preds = %err, %if.then20, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !3551
  ret i32 %20, !dbg !3551
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @dmi_setup() #0 section ".init.text" !dbg !3552 {
entry:
  call void @dmi_scan_machine() #9, !dbg !3553
  %0 = load i32, i32* @dmi_available, align 4, !dbg !3554
  %tobool = icmp ne i32 %0, 0, !dbg !3554
  br i1 %tobool, label %if.end, label %if.then, !dbg !3556

if.then:                                          ; preds = %entry
  br label %return, !dbg !3557

if.end:                                           ; preds = %entry
  call void @dmi_memdev_walk() #9, !dbg !3558
  call void (i8*, ...) @dump_stack_set_arch_desc(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @dmi_ids_string, i64 0, i64 0)) #8, !dbg !3559
  br label %return, !dbg !3560

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3560
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_scan_machine() #0 section ".init.text" !dbg !3561 {
entry:
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %p, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.declare(metadata i8** %q, metadata !3564, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !3566, metadata !DIExpression()), !dbg !3567
  %call = call zeroext i1 @efi_enabled(i32 2) #8, !dbg !3568
  br i1 %call, label %if.then, label %if.else, !dbg !3570

if.then:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct.efi, %struct.efi* @efi, i32 0, i32 6), align 8, !dbg !3571
  %cmp = icmp ne i64 %0, -1, !dbg !3574
  br i1 %cmp, label %if.then1, label %if.end9, !dbg !3575

if.then1:                                         ; preds = %if.then
  %1 = load i64, i64* getelementptr inbounds (%struct.efi, %struct.efi* @efi, i32 0, i32 6), align 8, !dbg !3576
  %call2 = call i8* @early_memremap(i64 %1, i64 32) #8, !dbg !3578
  store i8* %call2, i8** %p, align 8, !dbg !3579
  %2 = load i8*, i8** %p, align 8, !dbg !3580
  %cmp3 = icmp eq i8* %2, null, !dbg !3582
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !3583

if.then4:                                         ; preds = %if.then1
  br label %error, !dbg !3584

if.end:                                           ; preds = %if.then1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3585
  %3 = load i8*, i8** %p, align 8, !dbg !3586
  call void @memcpy_fromio(i8* %arraydecay, i8* %3, i64 32) #8, !dbg !3587
  %4 = load i8*, i8** %p, align 8, !dbg !3588
  call void @early_memunmap(i8* %4, i64 32) #8, !dbg !3589
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3590
  %call6 = call i32 @dmi_smbios3_present(i8* %arraydecay5) #9, !dbg !3592
  %tobool = icmp ne i32 %call6, 0, !dbg !3592
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !3593

if.then7:                                         ; preds = %if.end
  store i32 1, i32* @dmi_available, align 4, !dbg !3594
  br label %return, !dbg !3596

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !3597

if.end9:                                          ; preds = %if.end8, %if.then
  %5 = load i64, i64* getelementptr inbounds (%struct.efi, %struct.efi* @efi, i32 0, i32 5), align 8, !dbg !3598
  %cmp10 = icmp eq i64 %5, -1, !dbg !3600
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3601

if.then11:                                        ; preds = %if.end9
  br label %error, !dbg !3602

if.end12:                                         ; preds = %if.end9
  %6 = load i64, i64* getelementptr inbounds (%struct.efi, %struct.efi* @efi, i32 0, i32 5), align 8, !dbg !3603
  %call13 = call i8* @early_memremap(i64 %6, i64 32) #8, !dbg !3604
  store i8* %call13, i8** %p, align 8, !dbg !3605
  %7 = load i8*, i8** %p, align 8, !dbg !3606
  %cmp14 = icmp eq i8* %7, null, !dbg !3608
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3609

if.then15:                                        ; preds = %if.end12
  br label %error, !dbg !3610

if.end16:                                         ; preds = %if.end12
  %arraydecay17 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3611
  %8 = load i8*, i8** %p, align 8, !dbg !3612
  call void @memcpy_fromio(i8* %arraydecay17, i8* %8, i64 32) #8, !dbg !3613
  %9 = load i8*, i8** %p, align 8, !dbg !3614
  call void @early_memunmap(i8* %9, i64 32) #8, !dbg !3615
  %arraydecay18 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3616
  %call19 = call i32 @dmi_present(i8* %arraydecay18) #9, !dbg !3618
  %tobool20 = icmp ne i32 %call19, 0, !dbg !3618
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3619

if.then21:                                        ; preds = %if.end16
  store i32 1, i32* @dmi_available, align 4, !dbg !3620
  br label %return, !dbg !3622

if.end22:                                         ; preds = %if.end16
  br label %if.end59, !dbg !3623

if.else:                                          ; preds = %entry
  %call23 = call i8* @early_memremap(i64 983040, i64 65536) #8, !dbg !3624
  store i8* %call23, i8** %p, align 8, !dbg !3627
  %10 = load i8*, i8** %p, align 8, !dbg !3628
  %cmp24 = icmp eq i8* %10, null, !dbg !3630
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3631

if.then25:                                        ; preds = %if.else
  br label %error, !dbg !3632

if.end26:                                         ; preds = %if.else
  %arraydecay27 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3633
  %11 = load i8*, i8** %p, align 8, !dbg !3634
  call void @memcpy_fromio(i8* %arraydecay27, i8* %11, i64 16) #8, !dbg !3635
  %12 = load i8*, i8** %p, align 8, !dbg !3636
  %add.ptr = getelementptr i8, i8* %12, i64 16, !dbg !3638
  store i8* %add.ptr, i8** %q, align 8, !dbg !3639
  br label %for.cond, !dbg !3640

for.cond:                                         ; preds = %for.inc, %if.end26
  %13 = load i8*, i8** %q, align 8, !dbg !3641
  %14 = load i8*, i8** %p, align 8, !dbg !3643
  %add.ptr28 = getelementptr i8, i8* %14, i64 65536, !dbg !3644
  %cmp29 = icmp ult i8* %13, %add.ptr28, !dbg !3645
  br i1 %cmp29, label %for.body, label %for.end, !dbg !3646

for.body:                                         ; preds = %for.cond
  %arraydecay30 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3647
  %add.ptr31 = getelementptr i8, i8* %arraydecay30, i64 16, !dbg !3649
  %15 = load i8*, i8** %q, align 8, !dbg !3650
  call void @memcpy_fromio(i8* %add.ptr31, i8* %15, i64 16) #8, !dbg !3651
  %arraydecay32 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3652
  %call33 = call i32 @dmi_smbios3_present(i8* %arraydecay32) #9, !dbg !3654
  %tobool34 = icmp ne i32 %call33, 0, !dbg !3654
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !3655

if.then35:                                        ; preds = %for.body
  store i32 1, i32* @dmi_available, align 4, !dbg !3656
  %16 = load i8*, i8** %p, align 8, !dbg !3658
  call void @early_memunmap(i8* %16, i64 65536) #8, !dbg !3659
  br label %return, !dbg !3660

if.end36:                                         ; preds = %for.body
  %arraydecay37 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3661
  %arraydecay38 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3662
  %add.ptr39 = getelementptr i8, i8* %arraydecay38, i64 16, !dbg !3663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay37, i8* align 1 %add.ptr39, i64 16, i1 false), !dbg !3661
  br label %for.inc, !dbg !3664

for.inc:                                          ; preds = %if.end36
  %17 = load i8*, i8** %q, align 8, !dbg !3665
  %add.ptr40 = getelementptr i8, i8* %17, i64 16, !dbg !3665
  store i8* %add.ptr40, i8** %q, align 8, !dbg !3665
  br label %for.cond, !dbg !3666, !llvm.loop !3667

for.end:                                          ; preds = %for.cond
  %arraydecay41 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3669
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay41, i8 0, i64 16, i1 false), !dbg !3669
  %18 = load i8*, i8** %p, align 8, !dbg !3670
  store i8* %18, i8** %q, align 8, !dbg !3672
  br label %for.cond42, !dbg !3673

for.cond42:                                       ; preds = %for.inc56, %for.end
  %19 = load i8*, i8** %q, align 8, !dbg !3674
  %20 = load i8*, i8** %p, align 8, !dbg !3676
  %add.ptr43 = getelementptr i8, i8* %20, i64 65536, !dbg !3677
  %cmp44 = icmp ult i8* %19, %add.ptr43, !dbg !3678
  br i1 %cmp44, label %for.body45, label %for.end58, !dbg !3679

for.body45:                                       ; preds = %for.cond42
  %arraydecay46 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3680
  %add.ptr47 = getelementptr i8, i8* %arraydecay46, i64 16, !dbg !3682
  %21 = load i8*, i8** %q, align 8, !dbg !3683
  call void @memcpy_fromio(i8* %add.ptr47, i8* %21, i64 16) #8, !dbg !3684
  %arraydecay48 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3685
  %call49 = call i32 @dmi_present(i8* %arraydecay48) #9, !dbg !3687
  %tobool50 = icmp ne i32 %call49, 0, !dbg !3687
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !3688

if.then51:                                        ; preds = %for.body45
  store i32 1, i32* @dmi_available, align 4, !dbg !3689
  %22 = load i8*, i8** %p, align 8, !dbg !3691
  call void @early_memunmap(i8* %22, i64 65536) #8, !dbg !3692
  br label %return, !dbg !3693

if.end52:                                         ; preds = %for.body45
  %arraydecay53 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3694
  %arraydecay54 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !3695
  %add.ptr55 = getelementptr i8, i8* %arraydecay54, i64 16, !dbg !3696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay53, i8* align 1 %add.ptr55, i64 16, i1 false), !dbg !3694
  br label %for.inc56, !dbg !3697

for.inc56:                                        ; preds = %if.end52
  %23 = load i8*, i8** %q, align 8, !dbg !3698
  %add.ptr57 = getelementptr i8, i8* %23, i64 16, !dbg !3698
  store i8* %add.ptr57, i8** %q, align 8, !dbg !3698
  br label %for.cond42, !dbg !3699, !llvm.loop !3700

for.end58:                                        ; preds = %for.cond42
  %24 = load i8*, i8** %p, align 8, !dbg !3702
  call void @early_memunmap(i8* %24, i64 65536) #8, !dbg !3703
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.end22
  br label %error, !dbg !3704

error:                                            ; preds = %if.end59, %if.then25, %if.then15, %if.then11, %if.then4
  call void @llvm.dbg.label(metadata !3705), !dbg !3706
  %call60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !3707
  br label %return, !dbg !3708

return:                                           ; preds = %error, %if.then51, %if.then35, %if.then21, %if.then7
  ret void, !dbg !3708
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_memdev_walk() #0 section ".init.text" !dbg !3709 {
entry:
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !3715
  %call = call i32 @dmi_walk_early(void (%struct.dmi_header*, i8*)* @count_mem_devices) #9, !dbg !3719
  %cmp = icmp eq i32 %call, 0, !dbg !3720
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !3721

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, i32* @dmi_memdev_nr, align 4, !dbg !3722
  %tobool = icmp ne i32 %0, 0, !dbg !3722
  br i1 %tobool, label %if.then, label %if.end6, !dbg !3723

if.then:                                          ; preds = %land.lhs.true
  %1 = load i32, i32* @dmi_memdev_nr, align 4, !dbg !3724
  %conv = sext i32 %1 to i64, !dbg !3724
  %mul = mul i64 32, %conv, !dbg !3725
  %conv1 = trunc i64 %mul to i32, !dbg !3726
  store i32 %conv1, i32* %len.addr.i, align 4
  %2 = load i32, i32* %len.addr.i, align 4, !dbg !3727
  %conv.i = zext i32 %2 to i64, !dbg !3727
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !3728
  %3 = bitcast i8* %call.i to %struct.dmi_memdev_info*, !dbg !3729
  store %struct.dmi_memdev_info* %3, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !3730
  %4 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !3731
  %tobool3 = icmp ne %struct.dmi_memdev_info* %4, null, !dbg !3731
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !3733

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @dmi_walk_early(void (%struct.dmi_header*, i8*)* @save_mem_devices) #9, !dbg !3734
  br label %if.end, !dbg !3734

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end6, !dbg !3735

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  ret void, !dbg !3736
}

; Function Attrs: noredzone
declare dso_local void @dump_stack_set_arch_desc(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dmi_check_system(%struct.dmi_system_id* %list) #2 !dbg !3737 {
entry:
  %list.addr = alloca %struct.dmi_system_id*, align 8
  %count = alloca i32, align 4
  %d = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %list, %struct.dmi_system_id** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %list.addr, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.declare(metadata i32* %count, metadata !3760, metadata !DIExpression()), !dbg !3761
  store i32 0, i32* %count, align 4, !dbg !3761
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d, metadata !3762, metadata !DIExpression()), !dbg !3763
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %list.addr, align 8, !dbg !3764
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %d, align 8, !dbg !3766
  br label %for.cond, !dbg !3767

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3768
  %call = call zeroext i1 @dmi_is_end_of_table(%struct.dmi_system_id* %1) #8, !dbg !3770
  %lnot = xor i1 %call, true, !dbg !3771
  br i1 %lnot, label %for.body, label %for.end, !dbg !3772

for.body:                                         ; preds = %for.cond
  %2 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3773
  %call1 = call zeroext i1 @dmi_matches(%struct.dmi_system_id* %2) #8, !dbg !3775
  br i1 %call1, label %if.then, label %if.end8, !dbg !3776

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %count, align 4, !dbg !3777
  %inc = add i32 %3, 1, !dbg !3777
  store i32 %inc, i32* %count, align 4, !dbg !3777
  %4 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3779
  %callback = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %4, i32 0, i32 0, !dbg !3781
  %callback2 = bitcast {}** %callback to i32 (%struct.dmi_system_id*)**, !dbg !3781
  %5 = load i32 (%struct.dmi_system_id*)*, i32 (%struct.dmi_system_id*)** %callback2, align 8, !dbg !3781
  %tobool = icmp ne i32 (%struct.dmi_system_id*)* %5, null, !dbg !3779
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3782

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3783
  %callback3 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %6, i32 0, i32 0, !dbg !3784
  %callback4 = bitcast {}** %callback3 to i32 (%struct.dmi_system_id*)**, !dbg !3784
  %7 = load i32 (%struct.dmi_system_id*)*, i32 (%struct.dmi_system_id*)** %callback4, align 8, !dbg !3784
  %8 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3785
  %call5 = call i32 %7(%struct.dmi_system_id* %8) #8, !dbg !3783
  %tobool6 = icmp ne i32 %call5, 0, !dbg !3783
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !3786

if.then7:                                         ; preds = %land.lhs.true
  br label %for.end, !dbg !3787

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end8, !dbg !3788

if.end8:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !3789

for.inc:                                          ; preds = %if.end8
  %9 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3790
  %incdec.ptr = getelementptr %struct.dmi_system_id, %struct.dmi_system_id* %9, i32 1, !dbg !3790
  store %struct.dmi_system_id* %incdec.ptr, %struct.dmi_system_id** %d, align 8, !dbg !3790
  br label %for.cond, !dbg !3791, !llvm.loop !3792

for.end:                                          ; preds = %if.then7, %for.cond
  %10 = load i32, i32* %count, align 4, !dbg !3794
  ret i32 %10, !dbg !3795
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dmi_is_end_of_table(%struct.dmi_system_id* %dmi) #2 !dbg !3796 {
entry:
  %dmi.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %dmi, %struct.dmi_system_id** %dmi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %dmi.addr, metadata !3799, metadata !DIExpression()), !dbg !3800
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %dmi.addr, align 8, !dbg !3801
  %matches = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 2, !dbg !3802
  %arrayidx = getelementptr [4 x %struct.dmi_strmatch], [4 x %struct.dmi_strmatch]* %matches, i64 0, i64 0, !dbg !3801
  %1 = bitcast %struct.dmi_strmatch* %arrayidx to i8*, !dbg !3803
  %bf.load = load i8, i8* %1, align 8, !dbg !3803
  %bf.clear = and i8 %bf.load, 127, !dbg !3803
  %conv = zext i8 %bf.clear to i32, !dbg !3801
  %cmp = icmp eq i32 %conv, 0, !dbg !3804
  ret i1 %cmp, !dbg !3805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dmi_matches(%struct.dmi_system_id* %dmi) #2 !dbg !3806 {
entry:
  %retval = alloca i1, align 1
  %dmi.addr = alloca %struct.dmi_system_id*, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %valid = alloca %struct.dmi_device*, align 8
  store %struct.dmi_system_id* %dmi, %struct.dmi_system_id** %dmi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %dmi.addr, metadata !3807, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3809, metadata !DIExpression()), !dbg !3810
  store i32 0, i32* %i, align 4, !dbg !3811
  br label %for.cond, !dbg !3813

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3814
  %conv = sext i32 %0 to i64, !dbg !3814
  %cmp = icmp ult i64 %conv, 4, !dbg !3816
  br i1 %cmp, label %for.body, label %for.end, !dbg !3817

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %s, metadata !3818, metadata !DIExpression()), !dbg !3820
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %dmi.addr, align 8, !dbg !3821
  %matches = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %1, i32 0, i32 2, !dbg !3822
  %2 = load i32, i32* %i, align 4, !dbg !3823
  %idxprom = sext i32 %2 to i64, !dbg !3821
  %arrayidx = getelementptr [4 x %struct.dmi_strmatch], [4 x %struct.dmi_strmatch]* %matches, i64 0, i64 %idxprom, !dbg !3821
  %3 = bitcast %struct.dmi_strmatch* %arrayidx to i8*, !dbg !3824
  %bf.load = load i8, i8* %3, align 8, !dbg !3824
  %bf.clear = and i8 %bf.load, 127, !dbg !3824
  %conv2 = zext i8 %bf.clear to i32, !dbg !3821
  store i32 %conv2, i32* %s, align 4, !dbg !3820
  %4 = load i32, i32* %s, align 4, !dbg !3825
  %cmp3 = icmp eq i32 %4, 0, !dbg !3827
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3828

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3829

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %s, align 4, !dbg !3830
  %cmp5 = icmp eq i32 %5, 24, !dbg !3832
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !3833

if.then7:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.dmi_device** %valid, metadata !3834, metadata !DIExpression()), !dbg !3838
  %6 = load %struct.dmi_system_id*, %struct.dmi_system_id** %dmi.addr, align 8, !dbg !3839
  %matches8 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %6, i32 0, i32 2, !dbg !3840
  %7 = load i32, i32* %i, align 4, !dbg !3841
  %idxprom9 = sext i32 %7 to i64, !dbg !3839
  %arrayidx10 = getelementptr [4 x %struct.dmi_strmatch], [4 x %struct.dmi_strmatch]* %matches8, i64 0, i64 %idxprom9, !dbg !3839
  %substr = getelementptr inbounds %struct.dmi_strmatch, %struct.dmi_strmatch* %arrayidx10, i32 0, i32 1, !dbg !3842
  %arraydecay = getelementptr inbounds [79 x i8], [79 x i8]* %substr, i64 0, i64 0, !dbg !3839
  %call = call %struct.dmi_device* @dmi_find_device(i32 -2, i8* %arraydecay, %struct.dmi_device* null) #8, !dbg !3843
  store %struct.dmi_device* %call, %struct.dmi_device** %valid, align 8, !dbg !3844
  %8 = load %struct.dmi_device*, %struct.dmi_device** %valid, align 8, !dbg !3845
  %tobool = icmp ne %struct.dmi_device* %8, null, !dbg !3845
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !3847

if.then11:                                        ; preds = %if.then7
  br label %for.inc, !dbg !3848

if.end12:                                         ; preds = %if.then7
  br label %if.end48, !dbg !3849

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %s, align 4, !dbg !3850
  %idxprom13 = sext i32 %9 to i64, !dbg !3852
  %arrayidx14 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom13, !dbg !3852
  %10 = load i8*, i8** %arrayidx14, align 8, !dbg !3852
  %tobool15 = icmp ne i8* %10, null, !dbg !3852
  br i1 %tobool15, label %if.then16, label %if.end47, !dbg !3853

if.then16:                                        ; preds = %if.else
  %11 = load %struct.dmi_system_id*, %struct.dmi_system_id** %dmi.addr, align 8, !dbg !3854
  %matches17 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %11, i32 0, i32 2, !dbg !3857
  %12 = load i32, i32* %i, align 4, !dbg !3858
  %idxprom18 = sext i32 %12 to i64, !dbg !3854
  %arrayidx19 = getelementptr [4 x %struct.dmi_strmatch], [4 x %struct.dmi_strmatch]* %matches17, i64 0, i64 %idxprom18, !dbg !3854
  %13 = bitcast %struct.dmi_strmatch* %arrayidx19 to i8*, !dbg !3859
  %bf.load20 = load i8, i8* %13, align 8, !dbg !3859
  %bf.lshr = lshr i8 %bf.load20, 7, !dbg !3859
  %tobool21 = icmp ne i8 %bf.lshr, 0, !dbg !3854
  br i1 %tobool21, label %if.then22, label %if.else34, !dbg !3860

if.then22:                                        ; preds = %if.then16
  %14 = load i32, i32* %s, align 4, !dbg !3861
  %idxprom23 = sext i32 %14 to i64, !dbg !3864
  %arrayidx24 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom23, !dbg !3864
  %15 = load i8*, i8** %arrayidx24, align 8, !dbg !3864
  %16 = load %struct.dmi_system_id*, %struct.dmi_system_id** %dmi.addr, align 8, !dbg !3865
  %matches25 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %16, i32 0, i32 2, !dbg !3866
  %17 = load i32, i32* %i, align 4, !dbg !3867
  %idxprom26 = sext i32 %17 to i64, !dbg !3865
  %arrayidx27 = getelementptr [4 x %struct.dmi_strmatch], [4 x %struct.dmi_strmatch]* %matches25, i64 0, i64 %idxprom26, !dbg !3865
  %substr28 = getelementptr inbounds %struct.dmi_strmatch, %struct.dmi_strmatch* %arrayidx27, i32 0, i32 1, !dbg !3868
  %arraydecay29 = getelementptr inbounds [79 x i8], [79 x i8]* %substr28, i64 0, i64 0, !dbg !3865
  %call30 = call i32 @strcmp(i8* %15, i8* %arraydecay29) #8, !dbg !3869
  %tobool31 = icmp ne i32 %call30, 0, !dbg !3869
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !3870

if.then32:                                        ; preds = %if.then22
  br label %for.inc, !dbg !3871

if.end33:                                         ; preds = %if.then22
  br label %if.end46, !dbg !3872

if.else34:                                        ; preds = %if.then16
  %18 = load i32, i32* %s, align 4, !dbg !3873
  %idxprom35 = sext i32 %18 to i64, !dbg !3876
  %arrayidx36 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom35, !dbg !3876
  %19 = load i8*, i8** %arrayidx36, align 8, !dbg !3876
  %20 = load %struct.dmi_system_id*, %struct.dmi_system_id** %dmi.addr, align 8, !dbg !3877
  %matches37 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %20, i32 0, i32 2, !dbg !3878
  %21 = load i32, i32* %i, align 4, !dbg !3879
  %idxprom38 = sext i32 %21 to i64, !dbg !3877
  %arrayidx39 = getelementptr [4 x %struct.dmi_strmatch], [4 x %struct.dmi_strmatch]* %matches37, i64 0, i64 %idxprom38, !dbg !3877
  %substr40 = getelementptr inbounds %struct.dmi_strmatch, %struct.dmi_strmatch* %arrayidx39, i32 0, i32 1, !dbg !3880
  %arraydecay41 = getelementptr inbounds [79 x i8], [79 x i8]* %substr40, i64 0, i64 0, !dbg !3877
  %call42 = call i8* @strstr(i8* %19, i8* %arraydecay41) #8, !dbg !3881
  %tobool43 = icmp ne i8* %call42, null, !dbg !3881
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3882

if.then44:                                        ; preds = %if.else34
  br label %for.inc, !dbg !3883

if.end45:                                         ; preds = %if.else34
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end33
  br label %if.end47, !dbg !3884

if.end47:                                         ; preds = %if.end46, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end12
  store i1 false, i1* %retval, align 1, !dbg !3885
  br label %return, !dbg !3885

for.inc:                                          ; preds = %if.then44, %if.then32, %if.then11
  %22 = load i32, i32* %i, align 4, !dbg !3886
  %inc = add i32 %22, 1, !dbg !3886
  store i32 %inc, i32* %i, align 4, !dbg !3886
  br label %for.cond, !dbg !3887, !llvm.loop !3888

for.end:                                          ; preds = %if.then, %for.cond
  store i1 true, i1* %retval, align 1, !dbg !3890
  br label %return, !dbg !3890

return:                                           ; preds = %for.end, %if.end48
  %23 = load i1, i1* %retval, align 1, !dbg !3891
  ret i1 %23, !dbg !3891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id* %list) #2 !dbg !3892 {
entry:
  %retval = alloca %struct.dmi_system_id*, align 8
  %list.addr = alloca %struct.dmi_system_id*, align 8
  %d = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %list, %struct.dmi_system_id** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %list.addr, metadata !3895, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d, metadata !3897, metadata !DIExpression()), !dbg !3898
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %list.addr, align 8, !dbg !3899
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %d, align 8, !dbg !3901
  br label %for.cond, !dbg !3902

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3903
  %call = call zeroext i1 @dmi_is_end_of_table(%struct.dmi_system_id* %1) #8, !dbg !3905
  %lnot = xor i1 %call, true, !dbg !3906
  br i1 %lnot, label %for.body, label %for.end, !dbg !3907

for.body:                                         ; preds = %for.cond
  %2 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3908
  %call1 = call zeroext i1 @dmi_matches(%struct.dmi_system_id* %2) #8, !dbg !3910
  br i1 %call1, label %if.then, label %if.end, !dbg !3911

if.then:                                          ; preds = %for.body
  %3 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3912
  store %struct.dmi_system_id* %3, %struct.dmi_system_id** %retval, align 8, !dbg !3913
  br label %return, !dbg !3913

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3914

for.inc:                                          ; preds = %if.end
  %4 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d, align 8, !dbg !3915
  %incdec.ptr = getelementptr %struct.dmi_system_id, %struct.dmi_system_id* %4, i32 1, !dbg !3915
  store %struct.dmi_system_id* %incdec.ptr, %struct.dmi_system_id** %d, align 8, !dbg !3915
  br label %for.cond, !dbg !3916, !llvm.loop !3917

for.end:                                          ; preds = %for.cond
  store %struct.dmi_system_id* null, %struct.dmi_system_id** %retval, align 8, !dbg !3919
  br label %return, !dbg !3919

return:                                           ; preds = %for.end, %if.then
  %5 = load %struct.dmi_system_id*, %struct.dmi_system_id** %retval, align 8, !dbg !3920
  ret %struct.dmi_system_id* %5, !dbg !3920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @dmi_get_system_info(i32 %field) #2 !dbg !3921 {
entry:
  %field.addr = alloca i32, align 4
  store i32 %field, i32* %field.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %field.addr, metadata !3924, metadata !DIExpression()), !dbg !3925
  %0 = load i32, i32* %field.addr, align 4, !dbg !3926
  %idxprom = sext i32 %0 to i64, !dbg !3927
  %arrayidx = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom, !dbg !3927
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !3927
  ret i8* %1, !dbg !3928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dmi_name_in_serial(i8* %str) #2 !dbg !3929 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %f = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.declare(metadata i32* %f, metadata !3932, metadata !DIExpression()), !dbg !3933
  store i32 9, i32* %f, align 4, !dbg !3933
  %0 = load i32, i32* %f, align 4, !dbg !3934
  %idxprom = sext i32 %0 to i64, !dbg !3936
  %arrayidx = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom, !dbg !3936
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !3936
  %tobool = icmp ne i8* %1, null, !dbg !3936
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3937

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %f, align 4, !dbg !3938
  %idxprom1 = sext i32 %2 to i64, !dbg !3939
  %arrayidx2 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom1, !dbg !3939
  %3 = load i8*, i8** %arrayidx2, align 8, !dbg !3939
  %4 = load i8*, i8** %str.addr, align 8, !dbg !3940
  %call = call i8* @strstr(i8* %3, i8* %4) #8, !dbg !3941
  %tobool3 = icmp ne i8* %call, null, !dbg !3941
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3942

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !3943
  br label %return, !dbg !3943

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !3944
  br label %return, !dbg !3944

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !3945
  ret i32 %5, !dbg !3945
}

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dmi_name_in_vendors(i8* %str) #2 !dbg !232 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %f = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3948, metadata !DIExpression()), !dbg !3949
  store i32 0, i32* %i, align 4, !dbg !3950
  br label %for.cond, !dbg !3952

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3953
  %idxprom = sext i32 %0 to i64, !dbg !3955
  %arrayidx = getelementptr [3 x i32], [3 x i32]* @dmi_name_in_vendors.fields, i64 0, i64 %idxprom, !dbg !3955
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3955
  %cmp = icmp ne i32 %1, 0, !dbg !3956
  br i1 %cmp, label %for.body, label %for.end, !dbg !3957

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %f, metadata !3958, metadata !DIExpression()), !dbg !3960
  %2 = load i32, i32* %i, align 4, !dbg !3961
  %idxprom1 = sext i32 %2 to i64, !dbg !3962
  %arrayidx2 = getelementptr [3 x i32], [3 x i32]* @dmi_name_in_vendors.fields, i64 0, i64 %idxprom1, !dbg !3962
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !3962
  store i32 %3, i32* %f, align 4, !dbg !3960
  %4 = load i32, i32* %f, align 4, !dbg !3963
  %idxprom3 = sext i32 %4 to i64, !dbg !3965
  %arrayidx4 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom3, !dbg !3965
  %5 = load i8*, i8** %arrayidx4, align 8, !dbg !3965
  %tobool = icmp ne i8* %5, null, !dbg !3965
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3966

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %f, align 4, !dbg !3967
  %idxprom5 = sext i32 %6 to i64, !dbg !3968
  %arrayidx6 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom5, !dbg !3968
  %7 = load i8*, i8** %arrayidx6, align 8, !dbg !3968
  %8 = load i8*, i8** %str.addr, align 8, !dbg !3969
  %call = call i8* @strstr(i8* %7, i8* %8) #8, !dbg !3970
  %tobool7 = icmp ne i8* %call, null, !dbg !3970
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3971

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !3972
  br label %return, !dbg !3972

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3973

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !3974
  %inc = add i32 %9, 1, !dbg !3974
  store i32 %inc, i32* %i, align 4, !dbg !3974
  br label %for.cond, !dbg !3975, !llvm.loop !3976

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3978
  br label %return, !dbg !3978

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3979
  ret i32 %10, !dbg !3979
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dmi_device* @dmi_find_device(i32 %type, i8* %name, %struct.dmi_device* %from) #2 !dbg !3980 {
entry:
  %retval = alloca %struct.dmi_device*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %from.addr = alloca %struct.dmi_device*, align 8
  %head = alloca %struct.list_head*, align 8
  %d = alloca %struct.list_head*, align 8
  %dev = alloca %struct.dmi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dmi_device*, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3983, metadata !DIExpression()), !dbg !3984
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3985, metadata !DIExpression()), !dbg !3986
  store %struct.dmi_device* %from, %struct.dmi_device** %from.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_device** %from.addr, metadata !3987, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.declare(metadata %struct.list_head** %head, metadata !3989, metadata !DIExpression()), !dbg !3992
  %0 = load %struct.dmi_device*, %struct.dmi_device** %from.addr, align 8, !dbg !3993
  %tobool = icmp ne %struct.dmi_device* %0, null, !dbg !3993
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3993

cond.true:                                        ; preds = %entry
  %1 = load %struct.dmi_device*, %struct.dmi_device** %from.addr, align 8, !dbg !3994
  %list = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %1, i32 0, i32 0, !dbg !3995
  br label %cond.end, !dbg !3993

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3993

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.list_head* [ %list, %cond.true ], [ @dmi_devices, %cond.false ], !dbg !3993
  store %struct.list_head* %cond, %struct.list_head** %head, align 8, !dbg !3992
  call void @llvm.dbg.declare(metadata %struct.list_head** %d, metadata !3996, metadata !DIExpression()), !dbg !3997
  %2 = load %struct.list_head*, %struct.list_head** %head, align 8, !dbg !3998
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4000
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4000
  store %struct.list_head* %3, %struct.list_head** %d, align 8, !dbg !4001
  br label %for.cond, !dbg !4002

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load %struct.list_head*, %struct.list_head** %d, align 8, !dbg !4003
  %cmp = icmp ne %struct.list_head* %4, @dmi_devices, !dbg !4005
  br i1 %cmp, label %for.body, label %for.end, !dbg !4006

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.dmi_device** %dev, metadata !4007, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4010, metadata !DIExpression()), !dbg !4012
  %5 = load %struct.list_head*, %struct.list_head** %d, align 8, !dbg !4012
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !4012
  store i8* %6, i8** %__mptr, align 8, !dbg !4012
  br label %do.body, !dbg !4012

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !4013

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !4012
  %add.ptr = getelementptr i8, i8* %7, i64 0, !dbg !4012
  %8 = bitcast i8* %add.ptr to %struct.dmi_device*, !dbg !4012
  store %struct.dmi_device* %8, %struct.dmi_device** %tmp, align 8, !dbg !4013
  %9 = load %struct.dmi_device*, %struct.dmi_device** %tmp, align 8, !dbg !4012
  store %struct.dmi_device* %9, %struct.dmi_device** %dev, align 8, !dbg !4009
  %10 = load i32, i32* %type.addr, align 4, !dbg !4015
  %cmp1 = icmp eq i32 %10, 0, !dbg !4017
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false, !dbg !4018

lor.lhs.false:                                    ; preds = %do.end
  %11 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !4019
  %type2 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %11, i32 0, i32 1, !dbg !4020
  %12 = load i32, i32* %type2, align 8, !dbg !4020
  %13 = load i32, i32* %type.addr, align 4, !dbg !4021
  %cmp3 = icmp eq i32 %12, %13, !dbg !4022
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !4023

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.end
  %14 = load i8*, i8** %name.addr, align 8, !dbg !4024
  %cmp4 = icmp eq i8* %14, null, !dbg !4025
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !4026

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %15 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !4027
  %name6 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %15, i32 0, i32 2, !dbg !4028
  %16 = load i8*, i8** %name6, align 8, !dbg !4028
  %17 = load i8*, i8** %name.addr, align 8, !dbg !4029
  %call = call i32 @strcmp(i8* %16, i8* %17) #8, !dbg !4030
  %cmp7 = icmp eq i32 %call, 0, !dbg !4031
  br i1 %cmp7, label %if.then, label %if.end, !dbg !4032

if.then:                                          ; preds = %lor.lhs.false5, %land.lhs.true
  %18 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !4033
  store %struct.dmi_device* %18, %struct.dmi_device** %retval, align 8, !dbg !4034
  br label %return, !dbg !4034

if.end:                                           ; preds = %lor.lhs.false5, %lor.lhs.false
  br label %for.inc, !dbg !4035

for.inc:                                          ; preds = %if.end
  %19 = load %struct.list_head*, %struct.list_head** %d, align 8, !dbg !4036
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i32 0, i32 0, !dbg !4037
  %20 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !4037
  store %struct.list_head* %20, %struct.list_head** %d, align 8, !dbg !4038
  br label %for.cond, !dbg !4039, !llvm.loop !4040

for.end:                                          ; preds = %for.cond
  store %struct.dmi_device* null, %struct.dmi_device** %retval, align 8, !dbg !4042
  br label %return, !dbg !4042

return:                                           ; preds = %for.end, %if.then
  %21 = load %struct.dmi_device*, %struct.dmi_device** %retval, align 8, !dbg !4043
  ret %struct.dmi_device* %21, !dbg !4043
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @dmi_get_date(i32 %field, i32* %yearp, i32* %monthp, i32* %dayp) #2 !dbg !4044 {
entry:
  %field.addr = alloca i32, align 4
  %yearp.addr = alloca i32*, align 8
  %monthp.addr = alloca i32*, align 8
  %dayp.addr = alloca i32*, align 8
  %year = alloca i32, align 4
  %month = alloca i32, align 4
  %day = alloca i32, align 4
  %exists = alloca i8, align 1
  %s = alloca i8*, align 8
  %y = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i32 %field, i32* %field.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %field.addr, metadata !4047, metadata !DIExpression()), !dbg !4048
  store i32* %yearp, i32** %yearp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %yearp.addr, metadata !4049, metadata !DIExpression()), !dbg !4050
  store i32* %monthp, i32** %monthp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %monthp.addr, metadata !4051, metadata !DIExpression()), !dbg !4052
  store i32* %dayp, i32** %dayp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dayp.addr, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.declare(metadata i32* %year, metadata !4055, metadata !DIExpression()), !dbg !4056
  store i32 0, i32* %year, align 4, !dbg !4056
  call void @llvm.dbg.declare(metadata i32* %month, metadata !4057, metadata !DIExpression()), !dbg !4058
  store i32 0, i32* %month, align 4, !dbg !4058
  call void @llvm.dbg.declare(metadata i32* %day, metadata !4059, metadata !DIExpression()), !dbg !4060
  store i32 0, i32* %day, align 4, !dbg !4060
  call void @llvm.dbg.declare(metadata i8* %exists, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.declare(metadata i8** %s, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.declare(metadata i8** %y, metadata !4065, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.declare(metadata i8** %e, metadata !4067, metadata !DIExpression()), !dbg !4068
  %0 = load i32, i32* %field.addr, align 4, !dbg !4069
  %call = call i8* @dmi_get_system_info(i32 %0) #8, !dbg !4070
  store i8* %call, i8** %s, align 8, !dbg !4071
  %1 = load i8*, i8** %s, align 8, !dbg !4072
  %tobool = icmp ne i8* %1, null, !dbg !4072
  %frombool = zext i1 %tobool to i8, !dbg !4073
  store i8 %frombool, i8* %exists, align 1, !dbg !4073
  %2 = load i8, i8* %exists, align 1, !dbg !4074
  %tobool1 = trunc i8 %2 to i1, !dbg !4074
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4076

if.then:                                          ; preds = %entry
  br label %out, !dbg !4077

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s, align 8, !dbg !4078
  %call2 = call i8* @strrchr(i8* %3, i32 47) #8, !dbg !4079
  store i8* %call2, i8** %y, align 8, !dbg !4080
  %4 = load i8*, i8** %y, align 8, !dbg !4081
  %tobool3 = icmp ne i8* %4, null, !dbg !4081
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4083

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !4084

if.end5:                                          ; preds = %if.end
  %5 = load i8*, i8** %y, align 8, !dbg !4085
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !4085
  store i8* %incdec.ptr, i8** %y, align 8, !dbg !4085
  %6 = load i8*, i8** %y, align 8, !dbg !4086
  %call6 = call i64 @simple_strtoul(i8* %6, i8** %e, i32 10) #8, !dbg !4087
  %conv = trunc i64 %call6 to i32, !dbg !4087
  store i32 %conv, i32* %year, align 4, !dbg !4088
  %7 = load i8*, i8** %y, align 8, !dbg !4089
  %8 = load i8*, i8** %e, align 8, !dbg !4091
  %cmp = icmp ne i8* %7, %8, !dbg !4092
  br i1 %cmp, label %land.lhs.true, label %if.end16, !dbg !4093

land.lhs.true:                                    ; preds = %if.end5
  %9 = load i32, i32* %year, align 4, !dbg !4094
  %cmp8 = icmp slt i32 %9, 100, !dbg !4095
  br i1 %cmp8, label %if.then10, label %if.end16, !dbg !4096

if.then10:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %year, align 4, !dbg !4097
  %add = add i32 %10, 1900, !dbg !4097
  store i32 %add, i32* %year, align 4, !dbg !4097
  %11 = load i32, i32* %year, align 4, !dbg !4099
  %cmp11 = icmp slt i32 %11, 1996, !dbg !4101
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !4102

if.then13:                                        ; preds = %if.then10
  %12 = load i32, i32* %year, align 4, !dbg !4103
  %add14 = add i32 %12, 100, !dbg !4103
  store i32 %add14, i32* %year, align 4, !dbg !4103
  br label %if.end15, !dbg !4104

if.end15:                                         ; preds = %if.then13, %if.then10
  br label %if.end16, !dbg !4105

if.end16:                                         ; preds = %if.end15, %land.lhs.true, %if.end5
  %13 = load i32, i32* %year, align 4, !dbg !4106
  %cmp17 = icmp sgt i32 %13, 9999, !dbg !4108
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4109

if.then19:                                        ; preds = %if.end16
  store i32 0, i32* %year, align 4, !dbg !4110
  br label %if.end20, !dbg !4111

if.end20:                                         ; preds = %if.then19, %if.end16
  %14 = load i8*, i8** %s, align 8, !dbg !4112
  %call21 = call i64 @simple_strtoul(i8* %14, i8** %e, i32 10) #8, !dbg !4113
  %conv22 = trunc i64 %call21 to i32, !dbg !4113
  store i32 %conv22, i32* %month, align 4, !dbg !4114
  %15 = load i8*, i8** %s, align 8, !dbg !4115
  %16 = load i8*, i8** %e, align 8, !dbg !4117
  %cmp23 = icmp eq i8* %15, %16, !dbg !4118
  br i1 %cmp23, label %if.then33, label %lor.lhs.false, !dbg !4119

lor.lhs.false:                                    ; preds = %if.end20
  %17 = load i8*, i8** %e, align 8, !dbg !4120
  %18 = load i8, i8* %17, align 1, !dbg !4121
  %conv25 = sext i8 %18 to i32, !dbg !4121
  %cmp26 = icmp ne i32 %conv25, 47, !dbg !4122
  br i1 %cmp26, label %if.then33, label %lor.lhs.false28, !dbg !4123

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %19 = load i32, i32* %month, align 4, !dbg !4124
  %tobool29 = icmp ne i32 %19, 0, !dbg !4124
  br i1 %tobool29, label %lor.lhs.false30, label %if.then33, !dbg !4125

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %20 = load i32, i32* %month, align 4, !dbg !4126
  %cmp31 = icmp sgt i32 %20, 12, !dbg !4127
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !4128

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false28, %lor.lhs.false, %if.end20
  store i32 0, i32* %month, align 4, !dbg !4129
  br label %out, !dbg !4131

if.end34:                                         ; preds = %lor.lhs.false30
  %21 = load i8*, i8** %e, align 8, !dbg !4132
  %add.ptr = getelementptr i8, i8* %21, i64 1, !dbg !4133
  store i8* %add.ptr, i8** %s, align 8, !dbg !4134
  %22 = load i8*, i8** %s, align 8, !dbg !4135
  %call35 = call i64 @simple_strtoul(i8* %22, i8** %e, i32 10) #8, !dbg !4136
  %conv36 = trunc i64 %call35 to i32, !dbg !4136
  store i32 %conv36, i32* %day, align 4, !dbg !4137
  %23 = load i8*, i8** %s, align 8, !dbg !4138
  %24 = load i8*, i8** %y, align 8, !dbg !4140
  %cmp37 = icmp eq i8* %23, %24, !dbg !4141
  br i1 %cmp37, label %if.then49, label %lor.lhs.false39, !dbg !4142

lor.lhs.false39:                                  ; preds = %if.end34
  %25 = load i8*, i8** %s, align 8, !dbg !4143
  %26 = load i8*, i8** %e, align 8, !dbg !4144
  %cmp40 = icmp eq i8* %25, %26, !dbg !4145
  br i1 %cmp40, label %if.then49, label %lor.lhs.false42, !dbg !4146

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %27 = load i8*, i8** %e, align 8, !dbg !4147
  %28 = load i8, i8* %27, align 1, !dbg !4148
  %conv43 = sext i8 %28 to i32, !dbg !4148
  %cmp44 = icmp ne i32 %conv43, 47, !dbg !4149
  br i1 %cmp44, label %if.then49, label %lor.lhs.false46, !dbg !4150

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %29 = load i32, i32* %day, align 4, !dbg !4151
  %cmp47 = icmp sgt i32 %29, 31, !dbg !4152
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !4153

if.then49:                                        ; preds = %lor.lhs.false46, %lor.lhs.false42, %lor.lhs.false39, %if.end34
  store i32 0, i32* %day, align 4, !dbg !4154
  br label %if.end50, !dbg !4155

if.end50:                                         ; preds = %if.then49, %lor.lhs.false46
  br label %out, !dbg !4156

out:                                              ; preds = %if.end50, %if.then33, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !4157), !dbg !4158
  %30 = load i32*, i32** %yearp.addr, align 8, !dbg !4159
  %tobool51 = icmp ne i32* %30, null, !dbg !4159
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !4161

if.then52:                                        ; preds = %out
  %31 = load i32, i32* %year, align 4, !dbg !4162
  %32 = load i32*, i32** %yearp.addr, align 8, !dbg !4163
  store i32 %31, i32* %32, align 4, !dbg !4164
  br label %if.end53, !dbg !4165

if.end53:                                         ; preds = %if.then52, %out
  %33 = load i32*, i32** %monthp.addr, align 8, !dbg !4166
  %tobool54 = icmp ne i32* %33, null, !dbg !4166
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !4168

if.then55:                                        ; preds = %if.end53
  %34 = load i32, i32* %month, align 4, !dbg !4169
  %35 = load i32*, i32** %monthp.addr, align 8, !dbg !4170
  store i32 %34, i32* %35, align 4, !dbg !4171
  br label %if.end56, !dbg !4172

if.end56:                                         ; preds = %if.then55, %if.end53
  %36 = load i32*, i32** %dayp.addr, align 8, !dbg !4173
  %tobool57 = icmp ne i32* %36, null, !dbg !4173
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !4175

if.then58:                                        ; preds = %if.end56
  %37 = load i32, i32* %day, align 4, !dbg !4176
  %38 = load i32*, i32** %dayp.addr, align 8, !dbg !4177
  store i32 %37, i32* %38, align 4, !dbg !4178
  br label %if.end59, !dbg !4179

if.end59:                                         ; preds = %if.then58, %if.end56
  %39 = load i8, i8* %exists, align 1, !dbg !4180
  %tobool60 = trunc i8 %39 to i1, !dbg !4180
  ret i1 %tobool60, !dbg !4181
}

; Function Attrs: noredzone
declare dso_local i8* @strrchr(i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dmi_get_bios_year() #2 !dbg !4182 {
entry:
  %retval = alloca i32, align 4
  %exists = alloca i8, align 1
  %year = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8* %exists, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.declare(metadata i32* %year, metadata !4185, metadata !DIExpression()), !dbg !4186
  %call = call zeroext i1 @dmi_get_date(i32 3, i32* %year, i32* null, i32* null) #8, !dbg !4187
  %frombool = zext i1 %call to i8, !dbg !4188
  store i8 %frombool, i8* %exists, align 1, !dbg !4188
  %0 = load i8, i8* %exists, align 1, !dbg !4189
  %tobool = trunc i8 %0 to i1, !dbg !4189
  br i1 %tobool, label %if.end, label %if.then, !dbg !4191

if.then:                                          ; preds = %entry
  store i32 -61, i32* %retval, align 4, !dbg !4192
  br label %return, !dbg !4192

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %year, align 4, !dbg !4193
  %tobool1 = icmp ne i32 %1, 0, !dbg !4193
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !4193

cond.true:                                        ; preds = %if.end
  %2 = load i32, i32* %year, align 4, !dbg !4194
  br label %cond.end, !dbg !4193

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4193

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -34, %cond.false ], !dbg !4193
  store i32 %cond, i32* %retval, align 4, !dbg !4195
  br label %return, !dbg !4195

return:                                           ; preds = %cond.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4196
  ret i32 %3, !dbg !4196
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dmi_walk(void (%struct.dmi_header*, i8*)* %decode, i8* %private_data) #2 !dbg !4197 {
entry:
  %retval = alloca i32, align 4
  %decode.addr = alloca void (%struct.dmi_header*, i8*)*, align 8
  %private_data.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  store void (%struct.dmi_header*, i8*)* %decode, void (%struct.dmi_header*, i8*)** %decode.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.dmi_header*, i8*)** %decode.addr, metadata !4201, metadata !DIExpression()), !dbg !4202
  store i8* %private_data, i8** %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %private_data.addr, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4205, metadata !DIExpression()), !dbg !4206
  %0 = load i32, i32* @dmi_available, align 4, !dbg !4207
  %tobool = icmp ne i32 %0, 0, !dbg !4207
  br i1 %tobool, label %if.end, label %if.then, !dbg !4209

if.then:                                          ; preds = %entry
  store i32 -6, i32* %retval, align 4, !dbg !4210
  br label %return, !dbg !4210

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @dmi_base, align 8, !dbg !4211
  %2 = load i32, i32* @dmi_len, align 4, !dbg !4211
  %conv = zext i32 %2 to i64, !dbg !4211
  %call = call i8* @memremap(i64 %1, i64 %conv, i64 1) #8, !dbg !4211
  store i8* %call, i8** %buf, align 8, !dbg !4212
  %3 = load i8*, i8** %buf, align 8, !dbg !4213
  %cmp = icmp eq i8* %3, null, !dbg !4215
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4216

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4217
  br label %return, !dbg !4217

if.end3:                                          ; preds = %if.end
  %4 = load i8*, i8** %buf, align 8, !dbg !4218
  %5 = load void (%struct.dmi_header*, i8*)*, void (%struct.dmi_header*, i8*)** %decode.addr, align 8, !dbg !4219
  %6 = load i8*, i8** %private_data.addr, align 8, !dbg !4220
  call void @dmi_decode_table(i8* %4, void (%struct.dmi_header*, i8*)* %5, i8* %6) #8, !dbg !4221
  %7 = load i8*, i8** %buf, align 8, !dbg !4222
  call void @memunmap(i8* %7) #8, !dbg !4222
  store i32 0, i32* %retval, align 4, !dbg !4223
  br label %return, !dbg !4223

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4224
  ret i32 %8, !dbg !4224
}

; Function Attrs: noredzone
declare dso_local i8* @memremap(i64, i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dmi_decode_table(i8* %buf, void (%struct.dmi_header*, i8*)* %decode, i8* %private_data) #2 !dbg !4225 {
entry:
  %buf.addr = alloca i8*, align 8
  %decode.addr = alloca void (%struct.dmi_header*, i8*)*, align 8
  %private_data.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %dm = alloca %struct.dmi_header*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4228, metadata !DIExpression()), !dbg !4229
  store void (%struct.dmi_header*, i8*)* %decode, void (%struct.dmi_header*, i8*)** %decode.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.dmi_header*, i8*)** %decode.addr, metadata !4230, metadata !DIExpression()), !dbg !4231
  store i8* %private_data, i8** %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %private_data.addr, metadata !4232, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata i8** %data, metadata !4234, metadata !DIExpression()), !dbg !4235
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4236
  store i8* %0, i8** %data, align 8, !dbg !4235
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4237, metadata !DIExpression()), !dbg !4238
  store i32 0, i32* %i, align 4, !dbg !4238
  br label %while.cond, !dbg !4239

while.cond:                                       ; preds = %if.end34, %entry
  %1 = load i16, i16* @dmi_num, align 2, !dbg !4240
  %tobool = icmp ne i16 %1, 0, !dbg !4240
  br i1 %tobool, label %lor.lhs.false, label %land.rhs, !dbg !4241

lor.lhs.false:                                    ; preds = %while.cond
  %2 = load i32, i32* %i, align 4, !dbg !4242
  %3 = load i16, i16* @dmi_num, align 2, !dbg !4243
  %conv = zext i16 %3 to i32, !dbg !4243
  %cmp = icmp slt i32 %2, %conv, !dbg !4244
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4245

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond
  %4 = load i8*, i8** %data, align 8, !dbg !4246
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4247
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64, !dbg !4248
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !4248
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4248
  %add = add i64 %sub.ptr.sub, 4, !dbg !4249
  %6 = load i32, i32* @dmi_len, align 4, !dbg !4250
  %conv2 = zext i32 %6 to i64, !dbg !4250
  %cmp3 = icmp ule i64 %add, %conv2, !dbg !4251
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %7 = phi i1 [ false, %lor.lhs.false ], [ %cmp3, %land.rhs ], !dbg !4252
  br i1 %7, label %while.body, label %while.end35, !dbg !4239

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm, metadata !4253, metadata !DIExpression()), !dbg !4255
  %8 = load i8*, i8** %data, align 8, !dbg !4256
  %9 = bitcast i8* %8 to %struct.dmi_header*, !dbg !4257
  store %struct.dmi_header* %9, %struct.dmi_header** %dm, align 8, !dbg !4255
  %10 = load %struct.dmi_header*, %struct.dmi_header** %dm, align 8, !dbg !4258
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %10, i32 0, i32 1, !dbg !4259
  %11 = load i8, i8* %length, align 1, !dbg !4259
  %conv5 = zext i8 %11 to i32, !dbg !4258
  %12 = load i8*, i8** %data, align 8, !dbg !4260
  %idx.ext = sext i32 %conv5 to i64, !dbg !4260
  %add.ptr = getelementptr i8, i8* %12, i64 %idx.ext, !dbg !4260
  store i8* %add.ptr, i8** %data, align 8, !dbg !4260
  br label %while.cond6, !dbg !4261

while.cond6:                                      ; preds = %while.body20, %while.body
  %13 = load i8*, i8** %data, align 8, !dbg !4262
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !4263
  %sub.ptr.lhs.cast7 = ptrtoint i8* %13 to i64, !dbg !4264
  %sub.ptr.rhs.cast8 = ptrtoint i8* %14 to i64, !dbg !4264
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8, !dbg !4264
  %15 = load i32, i32* @dmi_len, align 4, !dbg !4265
  %sub = sub i32 %15, 1, !dbg !4266
  %conv10 = zext i32 %sub to i64, !dbg !4265
  %cmp11 = icmp slt i64 %sub.ptr.sub9, %conv10, !dbg !4267
  br i1 %cmp11, label %land.rhs13, label %land.end19, !dbg !4268

land.rhs13:                                       ; preds = %while.cond6
  %16 = load i8*, i8** %data, align 8, !dbg !4269
  %arrayidx = getelementptr i8, i8* %16, i64 0, !dbg !4269
  %17 = load i8, i8* %arrayidx, align 1, !dbg !4269
  %conv14 = zext i8 %17 to i32, !dbg !4269
  %tobool15 = icmp ne i32 %conv14, 0, !dbg !4269
  br i1 %tobool15, label %lor.end, label %lor.rhs, !dbg !4270

lor.rhs:                                          ; preds = %land.rhs13
  %18 = load i8*, i8** %data, align 8, !dbg !4271
  %arrayidx16 = getelementptr i8, i8* %18, i64 1, !dbg !4271
  %19 = load i8, i8* %arrayidx16, align 1, !dbg !4271
  %conv17 = zext i8 %19 to i32, !dbg !4271
  %tobool18 = icmp ne i32 %conv17, 0, !dbg !4270
  br label %lor.end, !dbg !4270

lor.end:                                          ; preds = %lor.rhs, %land.rhs13
  %20 = phi i1 [ true, %land.rhs13 ], [ %tobool18, %lor.rhs ]
  br label %land.end19

land.end19:                                       ; preds = %lor.end, %while.cond6
  %21 = phi i1 [ false, %while.cond6 ], [ %20, %lor.end ], !dbg !4272
  br i1 %21, label %while.body20, label %while.end, !dbg !4261

while.body20:                                     ; preds = %land.end19
  %22 = load i8*, i8** %data, align 8, !dbg !4273
  %incdec.ptr = getelementptr i8, i8* %22, i32 1, !dbg !4273
  store i8* %incdec.ptr, i8** %data, align 8, !dbg !4273
  br label %while.cond6, !dbg !4261, !llvm.loop !4274

while.end:                                        ; preds = %land.end19
  %23 = load i8*, i8** %data, align 8, !dbg !4275
  %24 = load i8*, i8** %buf.addr, align 8, !dbg !4277
  %sub.ptr.lhs.cast21 = ptrtoint i8* %23 to i64, !dbg !4278
  %sub.ptr.rhs.cast22 = ptrtoint i8* %24 to i64, !dbg !4278
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22, !dbg !4278
  %25 = load i32, i32* @dmi_len, align 4, !dbg !4279
  %sub24 = sub i32 %25, 1, !dbg !4280
  %conv25 = zext i32 %sub24 to i64, !dbg !4279
  %cmp26 = icmp slt i64 %sub.ptr.sub23, %conv25, !dbg !4281
  br i1 %cmp26, label %if.then, label %if.end, !dbg !4282

if.then:                                          ; preds = %while.end
  %26 = load void (%struct.dmi_header*, i8*)*, void (%struct.dmi_header*, i8*)** %decode.addr, align 8, !dbg !4283
  %27 = load %struct.dmi_header*, %struct.dmi_header** %dm, align 8, !dbg !4284
  %28 = load i8*, i8** %private_data.addr, align 8, !dbg !4285
  call void %26(%struct.dmi_header* %27, i8* %28) #8, !dbg !4283
  br label %if.end, !dbg !4283

if.end:                                           ; preds = %if.then, %while.end
  %29 = load i8*, i8** %data, align 8, !dbg !4286
  %add.ptr28 = getelementptr i8, i8* %29, i64 2, !dbg !4286
  store i8* %add.ptr28, i8** %data, align 8, !dbg !4286
  %30 = load i32, i32* %i, align 4, !dbg !4287
  %inc = add i32 %30, 1, !dbg !4287
  store i32 %inc, i32* %i, align 4, !dbg !4287
  %31 = load i16, i16* @dmi_num, align 2, !dbg !4288
  %tobool29 = icmp ne i16 %31, 0, !dbg !4288
  br i1 %tobool29, label %if.end34, label %land.lhs.true, !dbg !4290

land.lhs.true:                                    ; preds = %if.end
  %32 = load %struct.dmi_header*, %struct.dmi_header** %dm, align 8, !dbg !4291
  %type = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %32, i32 0, i32 0, !dbg !4292
  %33 = load i8, i8* %type, align 1, !dbg !4292
  %conv30 = zext i8 %33 to i32, !dbg !4291
  %cmp31 = icmp eq i32 %conv30, 127, !dbg !4293
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !4294

if.then33:                                        ; preds = %land.lhs.true
  br label %while.end35, !dbg !4295

if.end34:                                         ; preds = %land.lhs.true, %if.end
  br label %while.cond, !dbg !4239, !llvm.loop !4296

while.end35:                                      ; preds = %if.then33, %land.end
  %34 = load i32, i32* @dmi_len, align 4, !dbg !4298
  %conv36 = zext i32 %34 to i64, !dbg !4298
  %35 = load i8*, i8** %data, align 8, !dbg !4300
  %36 = load i8*, i8** %buf.addr, align 8, !dbg !4301
  %sub.ptr.lhs.cast37 = ptrtoint i8* %35 to i64, !dbg !4302
  %sub.ptr.rhs.cast38 = ptrtoint i8* %36 to i64, !dbg !4302
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38, !dbg !4302
  %cmp40 = icmp sgt i64 %conv36, %sub.ptr.sub39, !dbg !4303
  br i1 %cmp40, label %if.then42, label %if.end47, !dbg !4304

if.then42:                                        ; preds = %while.end35
  %37 = load i8*, i8** %data, align 8, !dbg !4305
  %38 = load i8*, i8** %buf.addr, align 8, !dbg !4306
  %sub.ptr.lhs.cast43 = ptrtoint i8* %37 to i64, !dbg !4307
  %sub.ptr.rhs.cast44 = ptrtoint i8* %38 to i64, !dbg !4307
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44, !dbg !4307
  %conv46 = trunc i64 %sub.ptr.sub45 to i32, !dbg !4305
  store i32 %conv46, i32* @dmi_len, align 4, !dbg !4308
  br label %if.end47, !dbg !4309

if.end47:                                         ; preds = %if.then42, %while.end35
  ret void, !dbg !4310
}

; Function Attrs: noredzone
declare dso_local void @memunmap(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @dmi_match(i32 %f, i8* %str) #2 !dbg !4311 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %info = alloca i8*, align 8
  store i32 %f, i32* %f.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %f.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !4316, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.declare(metadata i8** %info, metadata !4318, metadata !DIExpression()), !dbg !4319
  %0 = load i32, i32* %f.addr, align 4, !dbg !4320
  %call = call i8* @dmi_get_system_info(i32 %0) #8, !dbg !4321
  store i8* %call, i8** %info, align 8, !dbg !4319
  %1 = load i8*, i8** %info, align 8, !dbg !4322
  %cmp = icmp eq i8* %1, null, !dbg !4324
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4325

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8, !dbg !4326
  %cmp1 = icmp eq i8* %2, null, !dbg !4327
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4328

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %info, align 8, !dbg !4329
  %4 = load i8*, i8** %str.addr, align 8, !dbg !4330
  %cmp2 = icmp eq i8* %3, %4, !dbg !4331
  store i1 %cmp2, i1* %retval, align 1, !dbg !4332
  br label %return, !dbg !4332

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %info, align 8, !dbg !4333
  %6 = load i8*, i8** %str.addr, align 8, !dbg !4334
  %call3 = call i32 @strcmp(i8* %5, i8* %6) #8, !dbg !4335
  %tobool = icmp ne i32 %call3, 0, !dbg !4336
  %lnot = xor i1 %tobool, true, !dbg !4336
  store i1 %lnot, i1* %retval, align 1, !dbg !4337
  br label %return, !dbg !4337

return:                                           ; preds = %if.end, %if.then
  %7 = load i1, i1* %retval, align 1, !dbg !4338
  ret i1 %7, !dbg !4338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dmi_memdev_name(i16 zeroext %handle, i8** %bank, i8** %device) #2 !dbg !4339 {
entry:
  %handle.addr = alloca i16, align 2
  %bank.addr = alloca i8**, align 8
  %device.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  store i16 %handle, i16* %handle.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %handle.addr, metadata !4343, metadata !DIExpression()), !dbg !4344
  store i8** %bank, i8*** %bank.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %bank.addr, metadata !4345, metadata !DIExpression()), !dbg !4346
  store i8** %device, i8*** %device.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %device.addr, metadata !4347, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4349, metadata !DIExpression()), !dbg !4350
  %0 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4351
  %cmp = icmp eq %struct.dmi_memdev_info* %0, null, !dbg !4353
  br i1 %cmp, label %if.then, label %if.end, !dbg !4354

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !4355

if.end:                                           ; preds = %entry
  store i32 0, i32* %n, align 4, !dbg !4356
  br label %for.cond, !dbg !4358

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %n, align 4, !dbg !4359
  %2 = load i32, i32* @dmi_memdev_nr, align 4, !dbg !4361
  %cmp1 = icmp slt i32 %1, %2, !dbg !4362
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4363

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %handle.addr, align 2, !dbg !4364
  %conv = zext i16 %3 to i32, !dbg !4364
  %4 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4367
  %5 = load i32, i32* %n, align 4, !dbg !4368
  %idxprom = sext i32 %5 to i64, !dbg !4367
  %arrayidx = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %4, i64 %idxprom, !dbg !4367
  %handle2 = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx, i32 0, i32 3, !dbg !4369
  %6 = load i16, i16* %handle2, align 8, !dbg !4369
  %conv3 = zext i16 %6 to i32, !dbg !4367
  %cmp4 = icmp eq i32 %conv, %conv3, !dbg !4370
  br i1 %cmp4, label %if.then6, label %if.end13, !dbg !4371

if.then6:                                         ; preds = %for.body
  %7 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4372
  %8 = load i32, i32* %n, align 4, !dbg !4374
  %idxprom7 = sext i32 %8 to i64, !dbg !4372
  %arrayidx8 = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %7, i64 %idxprom7, !dbg !4372
  %bank9 = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx8, i32 0, i32 1, !dbg !4375
  %9 = load i8*, i8** %bank9, align 8, !dbg !4375
  %10 = load i8**, i8*** %bank.addr, align 8, !dbg !4376
  store i8* %9, i8** %10, align 8, !dbg !4377
  %11 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4378
  %12 = load i32, i32* %n, align 4, !dbg !4379
  %idxprom10 = sext i32 %12 to i64, !dbg !4378
  %arrayidx11 = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %11, i64 %idxprom10, !dbg !4378
  %device12 = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx11, i32 0, i32 0, !dbg !4380
  %13 = load i8*, i8** %device12, align 8, !dbg !4380
  %14 = load i8**, i8*** %device.addr, align 8, !dbg !4381
  store i8* %13, i8** %14, align 8, !dbg !4382
  br label %for.end, !dbg !4383

if.end13:                                         ; preds = %for.body
  br label %for.inc, !dbg !4384

for.inc:                                          ; preds = %if.end13
  %15 = load i32, i32* %n, align 4, !dbg !4385
  %inc = add i32 %15, 1, !dbg !4385
  store i32 %inc, i32* %n, align 4, !dbg !4385
  br label %for.cond, !dbg !4386, !llvm.loop !4387

for.end:                                          ; preds = %if.then, %if.then6, %for.cond
  ret void, !dbg !4389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dmi_memdev_size(i16 zeroext %handle) #2 !dbg !4390 {
entry:
  %retval = alloca i64, align 8
  %handle.addr = alloca i16, align 2
  %n = alloca i32, align 4
  store i16 %handle, i16* %handle.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %handle.addr, metadata !4393, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4395, metadata !DIExpression()), !dbg !4396
  %0 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4397
  %tobool = icmp ne %struct.dmi_memdev_info* %0, null, !dbg !4397
  br i1 %tobool, label %if.then, label %if.end8, !dbg !4399

if.then:                                          ; preds = %entry
  store i32 0, i32* %n, align 4, !dbg !4400
  br label %for.cond, !dbg !4403

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %n, align 4, !dbg !4404
  %2 = load i32, i32* @dmi_memdev_nr, align 4, !dbg !4406
  %cmp = icmp slt i32 %1, %2, !dbg !4407
  br i1 %cmp, label %for.body, label %for.end, !dbg !4408

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %handle.addr, align 2, !dbg !4409
  %conv = zext i16 %3 to i32, !dbg !4409
  %4 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4412
  %5 = load i32, i32* %n, align 4, !dbg !4413
  %idxprom = sext i32 %5 to i64, !dbg !4412
  %arrayidx = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %4, i64 %idxprom, !dbg !4412
  %handle1 = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx, i32 0, i32 3, !dbg !4414
  %6 = load i16, i16* %handle1, align 8, !dbg !4414
  %conv2 = zext i16 %6 to i32, !dbg !4412
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !4415
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !4416

if.then5:                                         ; preds = %for.body
  %7 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4417
  %8 = load i32, i32* %n, align 4, !dbg !4418
  %idxprom6 = sext i32 %8 to i64, !dbg !4417
  %arrayidx7 = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %7, i64 %idxprom6, !dbg !4417
  %size = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx7, i32 0, i32 2, !dbg !4419
  %9 = load i64, i64* %size, align 8, !dbg !4419
  store i64 %9, i64* %retval, align 8, !dbg !4420
  br label %return, !dbg !4420

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4421

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %n, align 4, !dbg !4422
  %inc = add i32 %10, 1, !dbg !4422
  store i32 %inc, i32* %n, align 4, !dbg !4422
  br label %for.cond, !dbg !4423, !llvm.loop !4424

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !4426

if.end8:                                          ; preds = %for.end, %entry
  store i64 -1, i64* %retval, align 8, !dbg !4427
  br label %return, !dbg !4427

return:                                           ; preds = %if.end8, %if.then5
  %11 = load i64, i64* %retval, align 8, !dbg !4428
  ret i64 %11, !dbg !4428
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @dmi_memdev_type(i16 zeroext %handle) #2 !dbg !4429 {
entry:
  %retval = alloca i8, align 1
  %handle.addr = alloca i16, align 2
  %n = alloca i32, align 4
  store i16 %handle, i16* %handle.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %handle.addr, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4434, metadata !DIExpression()), !dbg !4435
  %0 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4436
  %tobool = icmp ne %struct.dmi_memdev_info* %0, null, !dbg !4436
  br i1 %tobool, label %if.then, label %if.end8, !dbg !4438

if.then:                                          ; preds = %entry
  store i32 0, i32* %n, align 4, !dbg !4439
  br label %for.cond, !dbg !4442

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %n, align 4, !dbg !4443
  %2 = load i32, i32* @dmi_memdev_nr, align 4, !dbg !4445
  %cmp = icmp slt i32 %1, %2, !dbg !4446
  br i1 %cmp, label %for.body, label %for.end, !dbg !4447

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %handle.addr, align 2, !dbg !4448
  %conv = zext i16 %3 to i32, !dbg !4448
  %4 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4451
  %5 = load i32, i32* %n, align 4, !dbg !4452
  %idxprom = sext i32 %5 to i64, !dbg !4451
  %arrayidx = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %4, i64 %idxprom, !dbg !4451
  %handle1 = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx, i32 0, i32 3, !dbg !4453
  %6 = load i16, i16* %handle1, align 8, !dbg !4453
  %conv2 = zext i16 %6 to i32, !dbg !4451
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !4454
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !4455

if.then5:                                         ; preds = %for.body
  %7 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4456
  %8 = load i32, i32* %n, align 4, !dbg !4457
  %idxprom6 = sext i32 %8 to i64, !dbg !4456
  %arrayidx7 = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %7, i64 %idxprom6, !dbg !4456
  %type = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx7, i32 0, i32 4, !dbg !4458
  %9 = load i8, i8* %type, align 2, !dbg !4458
  store i8 %9, i8* %retval, align 1, !dbg !4459
  br label %return, !dbg !4459

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4460

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %n, align 4, !dbg !4461
  %inc = add i32 %10, 1, !dbg !4461
  store i32 %inc, i32* %n, align 4, !dbg !4461
  br label %for.cond, !dbg !4462, !llvm.loop !4463

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !4465

if.end8:                                          ; preds = %for.end, %entry
  store i8 0, i8* %retval, align 1, !dbg !4466
  br label %return, !dbg !4466

return:                                           ; preds = %if.end8, %if.then5
  %11 = load i8, i8* %retval, align 1, !dbg !4467
  ret i8 %11, !dbg !4467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @dmi_memdev_handle(i32 %slot) #2 !dbg !4468 {
entry:
  %retval = alloca i16, align 2
  %slot.addr = alloca i32, align 4
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !4471, metadata !DIExpression()), !dbg !4472
  %0 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4473
  %tobool = icmp ne %struct.dmi_memdev_info* %0, null, !dbg !4473
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4475

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %slot.addr, align 4, !dbg !4476
  %cmp = icmp sge i32 %1, 0, !dbg !4477
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4478

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %slot.addr, align 4, !dbg !4479
  %3 = load i32, i32* @dmi_memdev_nr, align 4, !dbg !4480
  %cmp2 = icmp slt i32 %2, %3, !dbg !4481
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4482

if.then:                                          ; preds = %land.lhs.true1
  %4 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !4483
  %5 = load i32, i32* %slot.addr, align 4, !dbg !4484
  %idxprom = sext i32 %5 to i64, !dbg !4483
  %arrayidx = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %4, i64 %idxprom, !dbg !4483
  %handle = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx, i32 0, i32 3, !dbg !4485
  %6 = load i16, i16* %handle, align 8, !dbg !4485
  store i16 %6, i16* %retval, align 2, !dbg !4486
  br label %return, !dbg !4486

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  store i16 -1, i16* %retval, align 2, !dbg !4487
  br label %return, !dbg !4487

return:                                           ; preds = %if.end, %if.then
  %7 = load i16, i16* %retval, align 2, !dbg !4488
  ret i16 %7, !dbg !4488
}

; Function Attrs: noredzone
declare dso_local %struct.kobject* @kobject_create_and_add(i8*, %struct.kobject*) #1

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_bin_file(%struct.kobject*, %struct.bin_attribute*) #1

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_bin_file(%struct.kobject*, %struct.bin_attribute*) #1

; Function Attrs: noredzone
declare dso_local void @kobject_del(%struct.kobject*) #1

; Function Attrs: noredzone
declare dso_local void @kobject_put(%struct.kobject*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @raw_table_read(%struct.file* %file, %struct.kobject* %kobj, %struct.bin_attribute* %attr, i8* %buf, i64 %pos, i64 %count) #2 !dbg !4489 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4490, metadata !DIExpression()), !dbg !4491
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4492, metadata !DIExpression()), !dbg !4493
  store %struct.bin_attribute* %attr, %struct.bin_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %attr.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  store i64 %pos, i64* %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pos.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4502
  %1 = load %struct.bin_attribute*, %struct.bin_attribute** %attr.addr, align 8, !dbg !4503
  %private = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %1, i32 0, i32 2, !dbg !4504
  %2 = load i8*, i8** %private, align 8, !dbg !4504
  %3 = load i64, i64* %pos.addr, align 8, !dbg !4505
  %add.ptr = getelementptr i8, i8* %2, i64 %3, !dbg !4506
  %4 = load i64, i64* %count.addr, align 8, !dbg !4507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %add.ptr, i64 %4, i1 false), !dbg !4508
  %5 = load i64, i64* %count.addr, align 8, !dbg !4509
  ret i64 %5, !dbg !4510
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @efi_enabled(i32 %feature) #2 !dbg !4511 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, i32* %feature.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %feature.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  ret i1 false, !dbg !4517
}

; Function Attrs: noredzone
declare dso_local i8* @early_memremap(i64, i64) #1

; Function Attrs: noredzone
declare dso_local void @memcpy_fromio(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @early_memunmap(i8*, i64) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_smbios3_present(i8* %buf) #0 section ".init.text" !dbg !4518 {
entry:
  %p.addr.i.i26 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i26, metadata !4523, metadata !DIExpression()), !dbg !4530
  %p.addr.i27 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i27, metadata !4539, metadata !DIExpression()), !dbg !4540
  %p.addr.i.i24 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i24, metadata !4541, metadata !DIExpression()), !dbg !4547
  %p.addr.i25 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i25, metadata !4553, metadata !DIExpression()), !dbg !4554
  %p.addr.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i, metadata !4555, metadata !DIExpression()), !dbg !4562
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !4572, metadata !DIExpression()), !dbg !4573
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !4574, metadata !DIExpression()), !dbg !4575
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4576, metadata !DIExpression()), !dbg !4577
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4578
  %call = call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 5) #8, !dbg !4579
  %cmp = icmp eq i32 %call, 0, !dbg !4580
  br i1 %cmp, label %land.lhs.true, label %if.end23, !dbg !4581

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !4582
  %arrayidx = getelementptr i8, i8* %1, i64 6, !dbg !4582
  %2 = load i8, i8* %arrayidx, align 1, !dbg !4582
  %conv = zext i8 %2 to i32, !dbg !4582
  %cmp1 = icmp slt i32 %conv, 32, !dbg !4583
  br i1 %cmp1, label %land.lhs.true3, label %if.end23, !dbg !4584

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4585
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4586
  %arrayidx4 = getelementptr i8, i8* %4, i64 6, !dbg !4586
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !4586
  %call5 = call i32 @dmi_checksum(i8* %3, i8 zeroext %5) #9, !dbg !4587
  %tobool = icmp ne i32 %call5, 0, !dbg !4587
  br i1 %tobool, label %if.then, label %if.end23, !dbg !4588

if.then:                                          ; preds = %land.lhs.true3
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !4589
  %add.ptr = getelementptr i8, i8* %6, i64 6, !dbg !4590
  store i8* %add.ptr, i8** %p.addr.i, align 8
  %7 = load i8*, i8** %p.addr.i, align 8, !dbg !4591
  %8 = bitcast i8* %7 to i32*, !dbg !4592
  store i32* %8, i32** %p.addr.i.i, align 8
  %9 = load i32*, i32** %p.addr.i.i, align 8, !dbg !4593
  store i32* %9, i32** %p.addr.i.i.i, align 8
  %10 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !4594
  %11 = load i32, i32* %10, align 4, !dbg !4594
  %12 = call i1 @llvm.is.constant.i32(i32 %11) #11, !dbg !4594
  br i1 %12, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !4594

cond.true.i.i.i:                                  ; preds = %if.then
  %13 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !4594
  %14 = load i32, i32* %13, align 4, !dbg !4594
  %and.i.i.i = and i32 %14, 255, !dbg !4594
  %shl.i.i.i = shl i32 %and.i.i.i, 24, !dbg !4594
  %15 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !4594
  %16 = load i32, i32* %15, align 4, !dbg !4594
  %and1.i.i.i = and i32 %16, 65280, !dbg !4594
  %shl2.i.i.i = shl i32 %and1.i.i.i, 8, !dbg !4594
  %or.i.i.i = or i32 %shl.i.i.i, %shl2.i.i.i, !dbg !4594
  %17 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !4594
  %18 = load i32, i32* %17, align 4, !dbg !4594
  %and3.i.i.i = and i32 %18, 16711680, !dbg !4594
  %shr.i.i.i = lshr i32 %and3.i.i.i, 8, !dbg !4594
  %or4.i.i.i = or i32 %or.i.i.i, %shr.i.i.i, !dbg !4594
  %19 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !4594
  %20 = load i32, i32* %19, align 4, !dbg !4594
  %and5.i.i.i = and i32 %20, -16777216, !dbg !4594
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !4594
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !4594
  br label %get_unaligned_be32.exit, !dbg !4594

cond.false.i.i.i:                                 ; preds = %if.then
  %21 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !4594
  %22 = load i32, i32* %21, align 4, !dbg !4594
  %call.i.i.i = call i32 @__fswab32(i32 %22) #12, !dbg !4594
  br label %get_unaligned_be32.exit, !dbg !4594

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %or7.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !4594
  %and = and i32 %cond.i.i.i, 16777215, !dbg !4595
  store i32 %and, i32* @dmi_ver, align 4, !dbg !4596
  store i16 0, i16* @dmi_num, align 2, !dbg !4597
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !4598
  %add.ptr7 = getelementptr i8, i8* %23, i64 12, !dbg !4599
  store i8* %add.ptr7, i8** %p.addr.i25, align 8
  %24 = load i8*, i8** %p.addr.i25, align 8, !dbg !4600
  %25 = bitcast i8* %24 to i32*, !dbg !4601
  store i32* %25, i32** %p.addr.i.i24, align 8
  %26 = load i32*, i32** %p.addr.i.i24, align 8, !dbg !4602
  %27 = load i32, i32* %26, align 4, !dbg !4603
  store i32 %27, i32* @dmi_len, align 4, !dbg !4604
  %28 = load i8*, i8** %buf.addr, align 8, !dbg !4605
  %add.ptr9 = getelementptr i8, i8* %28, i64 16, !dbg !4606
  store i8* %add.ptr9, i8** %p.addr.i27, align 8
  %29 = load i8*, i8** %p.addr.i27, align 8, !dbg !4607
  %30 = bitcast i8* %29 to i64*, !dbg !4608
  store i64* %30, i64** %p.addr.i.i26, align 8
  %31 = load i64*, i64** %p.addr.i.i26, align 8, !dbg !4609
  %32 = load i64, i64* %31, align 8, !dbg !4610
  store i64 %32, i64* @dmi_base, align 8, !dbg !4611
  %33 = load i8*, i8** %buf.addr, align 8, !dbg !4612
  %arrayidx11 = getelementptr i8, i8* %33, i64 6, !dbg !4612
  %34 = load i8, i8* %arrayidx11, align 1, !dbg !4612
  %conv12 = zext i8 %34 to i32, !dbg !4612
  store i32 %conv12, i32* @smbios_entry_point_size, align 4, !dbg !4613
  %35 = load i8*, i8** %buf.addr, align 8, !dbg !4614
  %36 = load i32, i32* @smbios_entry_point_size, align 4, !dbg !4615
  %conv13 = sext i32 %36 to i64, !dbg !4615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @smbios_entry_point, i64 0, i64 0), i8* align 1 %35, i64 %conv13, i1 false), !dbg !4616
  %call14 = call i32 @dmi_walk_early(void (%struct.dmi_header*, i8*)* @dmi_decode) #9, !dbg !4617
  %cmp15 = icmp eq i32 %call14, 0, !dbg !4619
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !4620

if.then17:                                        ; preds = %get_unaligned_be32.exit
  %37 = load i32, i32* @dmi_ver, align 4, !dbg !4621
  %shr = lshr i32 %37, 16, !dbg !4621
  %38 = load i32, i32* @dmi_ver, align 4, !dbg !4621
  %shr18 = lshr i32 %38, 8, !dbg !4621
  %and19 = and i32 %shr18, 255, !dbg !4621
  %39 = load i32, i32* @dmi_ver, align 4, !dbg !4621
  %and20 = and i32 %39, 255, !dbg !4621
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %shr, i32 %and19, i32 %and20) #9, !dbg !4621
  call void @dmi_format_ids(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @dmi_ids_string, i64 0, i64 0), i64 128) #9, !dbg !4623
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @dmi_ids_string, i64 0, i64 0)) #9, !dbg !4624
  store i32 0, i32* %retval, align 4, !dbg !4625
  br label %return, !dbg !4625

if.end:                                           ; preds = %get_unaligned_be32.exit
  br label %if.end23, !dbg !4626

if.end23:                                         ; preds = %if.end, %land.lhs.true3, %land.lhs.true, %entry
  store i32 1, i32* %retval, align 4, !dbg !4627
  br label %return, !dbg !4627

return:                                           ; preds = %if.end23, %if.then17
  %40 = load i32, i32* %retval, align 4, !dbg !4628
  ret i32 %40, !dbg !4628
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_present(i8* %buf) #0 section ".init.text" !dbg !4629 {
entry:
  %p.addr.i.i62 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i62, metadata !4541, metadata !DIExpression()), !dbg !4630
  %p.addr.i63 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i63, metadata !4553, metadata !DIExpression()), !dbg !4635
  %p.addr.i.i60 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i60, metadata !4636, metadata !DIExpression()), !dbg !4642
  %p.addr.i61 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i61, metadata !4648, metadata !DIExpression()), !dbg !4649
  %p.addr.i.i58 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i58, metadata !4636, metadata !DIExpression()), !dbg !4650
  %p.addr.i59 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i59, metadata !4648, metadata !DIExpression()), !dbg !4653
  %p.addr.i.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i, metadata !4654, metadata !DIExpression()), !dbg !4660
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !4672, metadata !DIExpression()), !dbg !4673
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !4674, metadata !DIExpression()), !dbg !4675
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %smbios_ver = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4676, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.declare(metadata i32* %smbios_ver, metadata !4678, metadata !DIExpression()), !dbg !4679
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4680
  %call = call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 4) #8, !dbg !4681
  %cmp = icmp eq i32 %call, 0, !dbg !4682
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4683

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !4684
  %arrayidx = getelementptr i8, i8* %1, i64 5, !dbg !4684
  %2 = load i8, i8* %arrayidx, align 1, !dbg !4684
  %conv = zext i8 %2 to i32, !dbg !4684
  %cmp1 = icmp slt i32 %conv, 32, !dbg !4685
  br i1 %cmp1, label %land.lhs.true3, label %if.else, !dbg !4686

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4687
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4688
  %arrayidx4 = getelementptr i8, i8* %4, i64 5, !dbg !4688
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !4688
  %call5 = call i32 @dmi_checksum(i8* %3, i8 zeroext %5) #9, !dbg !4689
  %tobool = icmp ne i32 %call5, 0, !dbg !4689
  br i1 %tobool, label %if.then, label %if.else, !dbg !4690

if.then:                                          ; preds = %land.lhs.true3
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !4691
  %add.ptr = getelementptr i8, i8* %6, i64 6, !dbg !4692
  store i8* %add.ptr, i8** %p.addr.i, align 8
  %7 = load i8*, i8** %p.addr.i, align 8, !dbg !4693
  %8 = bitcast i8* %7 to i16*, !dbg !4694
  store i16* %8, i16** %p.addr.i.i, align 8
  %9 = load i16*, i16** %p.addr.i.i, align 8, !dbg !4695
  store i16* %9, i16** %p.addr.i.i.i, align 8
  %10 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !4696
  %11 = load i16, i16* %10, align 2, !dbg !4696
  %12 = call i1 @llvm.is.constant.i16(i16 %11) #11, !dbg !4696
  br i1 %12, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !4696

cond.true.i.i.i:                                  ; preds = %if.then
  %13 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !4696
  %14 = load i16, i16* %13, align 2, !dbg !4696
  %conv.i.i.i = zext i16 %14 to i32, !dbg !4696
  %and.i.i.i = and i32 %conv.i.i.i, 255, !dbg !4696
  %shl.i.i.i = shl i32 %and.i.i.i, 8, !dbg !4696
  %15 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !4696
  %16 = load i16, i16* %15, align 2, !dbg !4696
  %conv1.i.i.i = zext i16 %16 to i32, !dbg !4696
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !4696
  %shr.i.i.i = ashr i32 %and2.i.i.i, 8, !dbg !4696
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i, !dbg !4696
  %conv3.i.i.i = trunc i32 %or.i.i.i to i16, !dbg !4696
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !4696
  br label %get_unaligned_be16.exit, !dbg !4696

cond.false.i.i.i:                                 ; preds = %if.then
  %17 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !4696
  %18 = load i16, i16* %17, align 2, !dbg !4696
  %call.i.i.i = call zeroext i16 @__fswab16(i16 zeroext %18) #12, !dbg !4696
  %conv5.i.i.i = zext i16 %call.i.i.i to i32, !dbg !4696
  br label %get_unaligned_be16.exit, !dbg !4696

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ %conv5.i.i.i, %cond.false.i.i.i ], !dbg !4696
  %conv6.i.i.i = trunc i32 %cond.i.i.i to i16, !dbg !4696
  %conv7 = zext i16 %conv6.i.i.i to i32, !dbg !4697
  store i32 %conv7, i32* %smbios_ver, align 4, !dbg !4698
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !4699
  %arrayidx8 = getelementptr i8, i8* %19, i64 5, !dbg !4699
  %20 = load i8, i8* %arrayidx8, align 1, !dbg !4699
  %conv9 = zext i8 %20 to i32, !dbg !4699
  store i32 %conv9, i32* @smbios_entry_point_size, align 4, !dbg !4700
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !4701
  %22 = load i32, i32* @smbios_entry_point_size, align 4, !dbg !4702
  %conv10 = sext i32 %22 to i64, !dbg !4702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @smbios_entry_point, i64 0, i64 0), i8* align 1 %21, i64 %conv10, i1 false), !dbg !4703
  %23 = load i32, i32* %smbios_ver, align 4, !dbg !4704
  switch i32 %23, label %sw.epilog [
    i32 543, label %sw.bb
    i32 545, label %sw.bb
    i32 563, label %sw.bb11
  ], !dbg !4705

sw.bb:                                            ; preds = %get_unaligned_be16.exit, %get_unaligned_be16.exit
  store i32 0, i32* %tmp, align 4, !dbg !4706
  %24 = load i32, i32* %tmp, align 4, !dbg !4710
  store i32 515, i32* %smbios_ver, align 4, !dbg !4711
  br label %sw.epilog, !dbg !4712

sw.bb11:                                          ; preds = %get_unaligned_be16.exit
  store i32 0, i32* %tmp12, align 4, !dbg !4713
  %25 = load i32, i32* %tmp12, align 4, !dbg !4716
  store i32 518, i32* %smbios_ver, align 4, !dbg !4717
  br label %sw.epilog, !dbg !4718

sw.epilog:                                        ; preds = %get_unaligned_be16.exit, %sw.bb11, %sw.bb
  br label %if.end, !dbg !4719

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  store i32 0, i32* %smbios_ver, align 4, !dbg !4720
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  %26 = load i8*, i8** %buf.addr, align 8, !dbg !4722
  %add.ptr13 = getelementptr i8, i8* %26, i64 16, !dbg !4722
  store i8* %add.ptr13, i8** %buf.addr, align 8, !dbg !4722
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !4723
  %call14 = call i32 @memcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i64 5) #8, !dbg !4724
  %cmp15 = icmp eq i32 %call14, 0, !dbg !4725
  br i1 %cmp15, label %land.lhs.true17, label %if.end57, !dbg !4726

land.lhs.true17:                                  ; preds = %if.end
  %28 = load i8*, i8** %buf.addr, align 8, !dbg !4727
  %call18 = call i32 @dmi_checksum(i8* %28, i8 zeroext 15) #9, !dbg !4728
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4728
  br i1 %tobool19, label %if.then20, label %if.end57, !dbg !4729

if.then20:                                        ; preds = %land.lhs.true17
  %29 = load i32, i32* %smbios_ver, align 4, !dbg !4730
  %tobool21 = icmp ne i32 %29, 0, !dbg !4730
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !4732

if.then22:                                        ; preds = %if.then20
  %30 = load i32, i32* %smbios_ver, align 4, !dbg !4733
  store i32 %30, i32* @dmi_ver, align 4, !dbg !4734
  br label %if.end29, !dbg !4735

if.else23:                                        ; preds = %if.then20
  %31 = load i8*, i8** %buf.addr, align 8, !dbg !4736
  %arrayidx24 = getelementptr i8, i8* %31, i64 14, !dbg !4736
  %32 = load i8, i8* %arrayidx24, align 1, !dbg !4736
  %conv25 = zext i8 %32 to i32, !dbg !4736
  %and = and i32 %conv25, 240, !dbg !4737
  %shl = shl i32 %and, 4, !dbg !4738
  %33 = load i8*, i8** %buf.addr, align 8, !dbg !4739
  %arrayidx26 = getelementptr i8, i8* %33, i64 14, !dbg !4739
  %34 = load i8, i8* %arrayidx26, align 1, !dbg !4739
  %conv27 = zext i8 %34 to i32, !dbg !4739
  %and28 = and i32 %conv27, 15, !dbg !4740
  %or = or i32 %shl, %and28, !dbg !4741
  store i32 %or, i32* @dmi_ver, align 4, !dbg !4742
  br label %if.end29

if.end29:                                         ; preds = %if.else23, %if.then22
  %35 = load i32, i32* @dmi_ver, align 4, !dbg !4743
  %shl30 = shl i32 %35, 8, !dbg !4743
  store i32 %shl30, i32* @dmi_ver, align 4, !dbg !4743
  %36 = load i8*, i8** %buf.addr, align 8, !dbg !4744
  %add.ptr31 = getelementptr i8, i8* %36, i64 12, !dbg !4745
  store i8* %add.ptr31, i8** %p.addr.i59, align 8
  %37 = load i8*, i8** %p.addr.i59, align 8, !dbg !4746
  %38 = bitcast i8* %37 to i16*, !dbg !4747
  store i16* %38, i16** %p.addr.i.i58, align 8
  %39 = load i16*, i16** %p.addr.i.i58, align 8, !dbg !4748
  %40 = load i16, i16* %39, align 2, !dbg !4749
  store i16 %40, i16* @dmi_num, align 2, !dbg !4750
  %41 = load i8*, i8** %buf.addr, align 8, !dbg !4751
  %add.ptr33 = getelementptr i8, i8* %41, i64 6, !dbg !4752
  store i8* %add.ptr33, i8** %p.addr.i61, align 8
  %42 = load i8*, i8** %p.addr.i61, align 8, !dbg !4753
  %43 = bitcast i8* %42 to i16*, !dbg !4754
  store i16* %43, i16** %p.addr.i.i60, align 8
  %44 = load i16*, i16** %p.addr.i.i60, align 8, !dbg !4755
  %45 = load i16, i16* %44, align 2, !dbg !4756
  %conv35 = zext i16 %45 to i32, !dbg !4757
  store i32 %conv35, i32* @dmi_len, align 4, !dbg !4758
  %46 = load i8*, i8** %buf.addr, align 8, !dbg !4759
  %add.ptr36 = getelementptr i8, i8* %46, i64 8, !dbg !4760
  store i8* %add.ptr36, i8** %p.addr.i63, align 8
  %47 = load i8*, i8** %p.addr.i63, align 8, !dbg !4761
  %48 = bitcast i8* %47 to i32*, !dbg !4762
  store i32* %48, i32** %p.addr.i.i62, align 8
  %49 = load i32*, i32** %p.addr.i.i62, align 8, !dbg !4763
  %50 = load i32, i32* %49, align 4, !dbg !4764
  %conv38 = zext i32 %50 to i64, !dbg !4765
  store i64 %conv38, i64* @dmi_base, align 8, !dbg !4766
  %call39 = call i32 @dmi_walk_early(void (%struct.dmi_header*, i8*)* @dmi_decode) #9, !dbg !4767
  %cmp40 = icmp eq i32 %call39, 0, !dbg !4769
  br i1 %cmp40, label %if.then42, label %if.end56, !dbg !4770

if.then42:                                        ; preds = %if.end29
  %51 = load i32, i32* %smbios_ver, align 4, !dbg !4771
  %tobool43 = icmp ne i32 %51, 0, !dbg !4771
  br i1 %tobool43, label %if.then44, label %if.else48, !dbg !4774

if.then44:                                        ; preds = %if.then42
  %52 = load i32, i32* @dmi_ver, align 4, !dbg !4775
  %shr = lshr i32 %52, 16, !dbg !4775
  %53 = load i32, i32* @dmi_ver, align 4, !dbg !4775
  %shr45 = lshr i32 %53, 8, !dbg !4775
  %and46 = and i32 %shr45, 255, !dbg !4775
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %shr, i32 %and46) #9, !dbg !4775
  br label %if.end54, !dbg !4777

if.else48:                                        ; preds = %if.then42
  store i32 15, i32* @smbios_entry_point_size, align 4, !dbg !4778
  %54 = load i8*, i8** %buf.addr, align 8, !dbg !4780
  %55 = load i32, i32* @smbios_entry_point_size, align 4, !dbg !4781
  %conv49 = sext i32 %55 to i64, !dbg !4781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @smbios_entry_point, i64 0, i64 0), i8* align 1 %54, i64 %conv49, i1 false), !dbg !4782
  %56 = load i32, i32* @dmi_ver, align 4, !dbg !4783
  %shr50 = lshr i32 %56, 16, !dbg !4783
  %57 = load i32, i32* @dmi_ver, align 4, !dbg !4783
  %shr51 = lshr i32 %57, 8, !dbg !4783
  %and52 = and i32 %shr51, 255, !dbg !4783
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %shr50, i32 %and52) #9, !dbg !4783
  br label %if.end54

if.end54:                                         ; preds = %if.else48, %if.then44
  call void @dmi_format_ids(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @dmi_ids_string, i64 0, i64 0), i64 128) #9, !dbg !4784
  %call55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @dmi_ids_string, i64 0, i64 0)) #9, !dbg !4785
  store i32 0, i32* %retval, align 4, !dbg !4786
  br label %return, !dbg !4786

if.end56:                                         ; preds = %if.end29
  br label %if.end57, !dbg !4787

if.end57:                                         ; preds = %if.end56, %land.lhs.true17, %if.end
  store i32 1, i32* %retval, align 4, !dbg !4788
  br label %return, !dbg !4788

return:                                           ; preds = %if.end57, %if.end54
  %58 = load i32, i32* %retval, align 4, !dbg !4789
  ret i32 %58, !dbg !4789
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_checksum(i8* %buf, i8 zeroext %len) #0 section ".init.text" !dbg !4790 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %sum = alloca i8, align 1
  %a = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.declare(metadata i8* %sum, metadata !4797, metadata !DIExpression()), !dbg !4798
  store i8 0, i8* %sum, align 1, !dbg !4798
  call void @llvm.dbg.declare(metadata i32* %a, metadata !4799, metadata !DIExpression()), !dbg !4800
  store i32 0, i32* %a, align 4, !dbg !4801
  br label %for.cond, !dbg !4803

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %a, align 4, !dbg !4804
  %1 = load i8, i8* %len.addr, align 1, !dbg !4806
  %conv = zext i8 %1 to i32, !dbg !4806
  %cmp = icmp slt i32 %0, %conv, !dbg !4807
  br i1 %cmp, label %for.body, label %for.end, !dbg !4808

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4809
  %3 = load i32, i32* %a, align 4, !dbg !4810
  %idxprom = sext i32 %3 to i64, !dbg !4809
  %arrayidx = getelementptr i8, i8* %2, i64 %idxprom, !dbg !4809
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4809
  %conv2 = zext i8 %4 to i32, !dbg !4809
  %5 = load i8, i8* %sum, align 1, !dbg !4811
  %conv3 = zext i8 %5 to i32, !dbg !4811
  %add = add i32 %conv3, %conv2, !dbg !4811
  %conv4 = trunc i32 %add to i8, !dbg !4811
  store i8 %conv4, i8* %sum, align 1, !dbg !4811
  br label %for.inc, !dbg !4812

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %a, align 4, !dbg !4813
  %inc = add i32 %6, 1, !dbg !4813
  store i32 %inc, i32* %a, align 4, !dbg !4813
  br label %for.cond, !dbg !4814, !llvm.loop !4815

for.end:                                          ; preds = %for.cond
  %7 = load i8, i8* %sum, align 1, !dbg !4817
  %conv5 = zext i8 %7 to i32, !dbg !4817
  %cmp6 = icmp eq i32 %conv5, 0, !dbg !4818
  %conv7 = zext i1 %cmp6 to i32, !dbg !4818
  ret i32 %conv7, !dbg !4819
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_walk_early(void (%struct.dmi_header*, i8*)* %decode) #0 section ".init.text" !dbg !4820 {
entry:
  %retval = alloca i32, align 4
  %decode.addr = alloca void (%struct.dmi_header*, i8*)*, align 8
  %buf = alloca i8*, align 8
  %orig_dmi_len = alloca i32, align 4
  store void (%struct.dmi_header*, i8*)* %decode, void (%struct.dmi_header*, i8*)** %decode.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.dmi_header*, i8*)** %decode.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4825, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.declare(metadata i32* %orig_dmi_len, metadata !4827, metadata !DIExpression()), !dbg !4828
  %0 = load i32, i32* @dmi_len, align 4, !dbg !4829
  store i32 %0, i32* %orig_dmi_len, align 4, !dbg !4828
  %1 = load i64, i64* @dmi_base, align 8, !dbg !4830
  %2 = load i32, i32* %orig_dmi_len, align 4, !dbg !4831
  %conv = zext i32 %2 to i64, !dbg !4831
  %call = call i8* @early_memremap(i64 %1, i64 %conv) #8, !dbg !4832
  store i8* %call, i8** %buf, align 8, !dbg !4833
  %3 = load i8*, i8** %buf, align 8, !dbg !4834
  %cmp = icmp eq i8* %3, null, !dbg !4836
  br i1 %cmp, label %if.then, label %if.end, !dbg !4837

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4838
  br label %return, !dbg !4838

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf, align 8, !dbg !4839
  %5 = load void (%struct.dmi_header*, i8*)*, void (%struct.dmi_header*, i8*)** %decode.addr, align 8, !dbg !4840
  call void @dmi_decode_table(i8* %4, void (%struct.dmi_header*, i8*)* %5, i8* null) #8, !dbg !4841
  %6 = load i8*, i8** %buf, align 8, !dbg !4842
  %7 = load i32, i32* @dmi_len, align 4, !dbg !4843
  call void @add_device_randomness(i8* %6, i32 %7) #8, !dbg !4844
  %8 = load i8*, i8** %buf, align 8, !dbg !4845
  %9 = load i32, i32* %orig_dmi_len, align 4, !dbg !4846
  %conv2 = zext i32 %9 to i64, !dbg !4846
  call void @early_memunmap(i8* %8, i64 %conv2) #8, !dbg !4847
  store i32 0, i32* %retval, align 4, !dbg !4848
  br label %return, !dbg !4848

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4849
  ret i32 %10, !dbg !4849
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_decode(%struct.dmi_header* %dm, i8* %dummy) #0 section ".init.text" !dbg !4850 {
entry:
  %dm.addr = alloca %struct.dmi_header*, align 8
  %dummy.addr = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  store i8* %dummy, i8** %dummy.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dummy.addr, metadata !4853, metadata !DIExpression()), !dbg !4854
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4855
  %type = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %0, i32 0, i32 0, !dbg !4856
  %1 = load i8, i8* %type, align 1, !dbg !4856
  %conv = zext i8 %1 to i32, !dbg !4855
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 9, label %sw.bb4
    i32 10, label %sw.bb5
    i32 11, label %sw.bb6
    i32 38, label %sw.bb7
    i32 41, label %sw.bb8
  ], !dbg !4857

sw.bb:                                            ; preds = %entry
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4858
  call void @dmi_save_ident(%struct.dmi_header* %2, i32 1, i32 4) #9, !dbg !4860
  %3 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4861
  call void @dmi_save_ident(%struct.dmi_header* %3, i32 2, i32 5) #9, !dbg !4862
  %4 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4863
  call void @dmi_save_ident(%struct.dmi_header* %4, i32 3, i32 8) #9, !dbg !4864
  %5 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4865
  call void @dmi_save_release(%struct.dmi_header* %5, i32 4, i32 21) #9, !dbg !4866
  %6 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4867
  call void @dmi_save_release(%struct.dmi_header* %6, i32 5, i32 23) #9, !dbg !4868
  br label %sw.epilog, !dbg !4869

sw.bb1:                                           ; preds = %entry
  %7 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4870
  call void @dmi_save_ident(%struct.dmi_header* %7, i32 6, i32 4) #9, !dbg !4871
  %8 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4872
  call void @dmi_save_ident(%struct.dmi_header* %8, i32 7, i32 5) #9, !dbg !4873
  %9 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4874
  call void @dmi_save_ident(%struct.dmi_header* %9, i32 8, i32 6) #9, !dbg !4875
  %10 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4876
  call void @dmi_save_ident(%struct.dmi_header* %10, i32 9, i32 7) #9, !dbg !4877
  %11 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4878
  call void @dmi_save_uuid(%struct.dmi_header* %11, i32 10, i32 8) #9, !dbg !4879
  %12 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4880
  call void @dmi_save_ident(%struct.dmi_header* %12, i32 11, i32 25) #9, !dbg !4881
  %13 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4882
  call void @dmi_save_ident(%struct.dmi_header* %13, i32 12, i32 26) #9, !dbg !4883
  br label %sw.epilog, !dbg !4884

sw.bb2:                                           ; preds = %entry
  %14 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4885
  call void @dmi_save_ident(%struct.dmi_header* %14, i32 13, i32 4) #9, !dbg !4886
  %15 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4887
  call void @dmi_save_ident(%struct.dmi_header* %15, i32 14, i32 5) #9, !dbg !4888
  %16 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4889
  call void @dmi_save_ident(%struct.dmi_header* %16, i32 15, i32 6) #9, !dbg !4890
  %17 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4891
  call void @dmi_save_ident(%struct.dmi_header* %17, i32 16, i32 7) #9, !dbg !4892
  %18 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4893
  call void @dmi_save_ident(%struct.dmi_header* %18, i32 17, i32 8) #9, !dbg !4894
  br label %sw.epilog, !dbg !4895

sw.bb3:                                           ; preds = %entry
  %19 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4896
  call void @dmi_save_ident(%struct.dmi_header* %19, i32 18, i32 4) #9, !dbg !4897
  %20 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4898
  call void @dmi_save_type(%struct.dmi_header* %20, i32 19, i32 5) #9, !dbg !4899
  %21 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4900
  call void @dmi_save_ident(%struct.dmi_header* %21, i32 20, i32 6) #9, !dbg !4901
  %22 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4902
  call void @dmi_save_ident(%struct.dmi_header* %22, i32 21, i32 7) #9, !dbg !4903
  %23 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4904
  call void @dmi_save_ident(%struct.dmi_header* %23, i32 22, i32 8) #9, !dbg !4905
  br label %sw.epilog, !dbg !4906

sw.bb4:                                           ; preds = %entry
  %24 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4907
  call void @dmi_save_system_slot(%struct.dmi_header* %24) #9, !dbg !4908
  br label %sw.epilog, !dbg !4909

sw.bb5:                                           ; preds = %entry
  %25 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4910
  call void @dmi_save_devices(%struct.dmi_header* %25) #9, !dbg !4911
  br label %sw.epilog, !dbg !4912

sw.bb6:                                           ; preds = %entry
  %26 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4913
  call void @dmi_save_oem_strings_devices(%struct.dmi_header* %26) #9, !dbg !4914
  br label %sw.epilog, !dbg !4915

sw.bb7:                                           ; preds = %entry
  %27 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4916
  call void @dmi_save_ipmi_device(%struct.dmi_header* %27) #9, !dbg !4917
  br label %sw.epilog, !dbg !4918

sw.bb8:                                           ; preds = %entry
  %28 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !4919
  call void @dmi_save_extended_devices(%struct.dmi_header* %28) #9, !dbg !4920
  br label %sw.epilog, !dbg !4921

sw.epilog:                                        ; preds = %sw.bb8, %entry, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !4922
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_format_ids(i8* %buf, i64 %len) #0 section ".init.text" !dbg !4923 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %board = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.declare(metadata i32* %c, metadata !4930, metadata !DIExpression()), !dbg !4931
  store i32 0, i32* %c, align 4, !dbg !4931
  call void @llvm.dbg.declare(metadata i8** %board, metadata !4932, metadata !DIExpression()), !dbg !4933
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4934
  %1 = load i32, i32* %c, align 4, !dbg !4935
  %idx.ext = sext i32 %1 to i64, !dbg !4936
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !4936
  %2 = load i64, i64* %len.addr, align 8, !dbg !4937
  %3 = load i32, i32* %c, align 4, !dbg !4938
  %conv = sext i32 %3 to i64, !dbg !4938
  %sub = sub i64 %2, %conv, !dbg !4939
  %call = call i8* @dmi_get_system_info(i32 6) #8, !dbg !4940
  %call1 = call i32 @print_filtered(i8* %add.ptr, i64 %sub, i8* %call) #9, !dbg !4941
  %4 = load i32, i32* %c, align 4, !dbg !4942
  %add = add i32 %4, %call1, !dbg !4942
  store i32 %add, i32* %c, align 4, !dbg !4942
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4943
  %6 = load i32, i32* %c, align 4, !dbg !4944
  %idx.ext2 = sext i32 %6 to i64, !dbg !4945
  %add.ptr3 = getelementptr i8, i8* %5, i64 %idx.ext2, !dbg !4945
  %7 = load i64, i64* %len.addr, align 8, !dbg !4946
  %8 = load i32, i32* %c, align 4, !dbg !4947
  %conv4 = sext i32 %8 to i64, !dbg !4947
  %sub5 = sub i64 %7, %conv4, !dbg !4948
  %call6 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr3, i64 %sub5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !4949
  %9 = load i32, i32* %c, align 4, !dbg !4950
  %add7 = add i32 %9, %call6, !dbg !4950
  store i32 %add7, i32* %c, align 4, !dbg !4950
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !4951
  %11 = load i32, i32* %c, align 4, !dbg !4952
  %idx.ext8 = sext i32 %11 to i64, !dbg !4953
  %add.ptr9 = getelementptr i8, i8* %10, i64 %idx.ext8, !dbg !4953
  %12 = load i64, i64* %len.addr, align 8, !dbg !4954
  %13 = load i32, i32* %c, align 4, !dbg !4955
  %conv10 = sext i32 %13 to i64, !dbg !4955
  %sub11 = sub i64 %12, %conv10, !dbg !4956
  %call12 = call i8* @dmi_get_system_info(i32 7) #8, !dbg !4957
  %call13 = call i32 @print_filtered(i8* %add.ptr9, i64 %sub11, i8* %call12) #9, !dbg !4958
  %14 = load i32, i32* %c, align 4, !dbg !4959
  %add14 = add i32 %14, %call13, !dbg !4959
  store i32 %add14, i32* %c, align 4, !dbg !4959
  %call15 = call i8* @dmi_get_system_info(i32 14) #8, !dbg !4960
  store i8* %call15, i8** %board, align 8, !dbg !4961
  %15 = load i8*, i8** %board, align 8, !dbg !4962
  %tobool = icmp ne i8* %15, null, !dbg !4962
  br i1 %tobool, label %if.then, label %if.end, !dbg !4964

if.then:                                          ; preds = %entry
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !4965
  %17 = load i32, i32* %c, align 4, !dbg !4967
  %idx.ext16 = sext i32 %17 to i64, !dbg !4968
  %add.ptr17 = getelementptr i8, i8* %16, i64 %idx.ext16, !dbg !4968
  %18 = load i64, i64* %len.addr, align 8, !dbg !4969
  %19 = load i32, i32* %c, align 4, !dbg !4970
  %conv18 = sext i32 %19 to i64, !dbg !4970
  %sub19 = sub i64 %18, %conv18, !dbg !4971
  %call20 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr17, i64 %sub19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !4972
  %20 = load i32, i32* %c, align 4, !dbg !4973
  %add21 = add i32 %20, %call20, !dbg !4973
  store i32 %add21, i32* %c, align 4, !dbg !4973
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !4974
  %22 = load i32, i32* %c, align 4, !dbg !4975
  %idx.ext22 = sext i32 %22 to i64, !dbg !4976
  %add.ptr23 = getelementptr i8, i8* %21, i64 %idx.ext22, !dbg !4976
  %23 = load i64, i64* %len.addr, align 8, !dbg !4977
  %24 = load i32, i32* %c, align 4, !dbg !4978
  %conv24 = sext i32 %24 to i64, !dbg !4978
  %sub25 = sub i64 %23, %conv24, !dbg !4979
  %25 = load i8*, i8** %board, align 8, !dbg !4980
  %call26 = call i32 @print_filtered(i8* %add.ptr23, i64 %sub25, i8* %25) #9, !dbg !4981
  %26 = load i32, i32* %c, align 4, !dbg !4982
  %add27 = add i32 %26, %call26, !dbg !4982
  store i32 %add27, i32* %c, align 4, !dbg !4982
  br label %if.end, !dbg !4983

if.end:                                           ; preds = %if.then, %entry
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !4984
  %28 = load i32, i32* %c, align 4, !dbg !4985
  %idx.ext28 = sext i32 %28 to i64, !dbg !4986
  %add.ptr29 = getelementptr i8, i8* %27, i64 %idx.ext28, !dbg !4986
  %29 = load i64, i64* %len.addr, align 8, !dbg !4987
  %30 = load i32, i32* %c, align 4, !dbg !4988
  %conv30 = sext i32 %30 to i64, !dbg !4988
  %sub31 = sub i64 %29, %conv30, !dbg !4989
  %call32 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr29, i64 %sub31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !4990
  %31 = load i32, i32* %c, align 4, !dbg !4991
  %add33 = add i32 %31, %call32, !dbg !4991
  store i32 %add33, i32* %c, align 4, !dbg !4991
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !4992
  %33 = load i32, i32* %c, align 4, !dbg !4993
  %idx.ext34 = sext i32 %33 to i64, !dbg !4994
  %add.ptr35 = getelementptr i8, i8* %32, i64 %idx.ext34, !dbg !4994
  %34 = load i64, i64* %len.addr, align 8, !dbg !4995
  %35 = load i32, i32* %c, align 4, !dbg !4996
  %conv36 = sext i32 %35 to i64, !dbg !4996
  %sub37 = sub i64 %34, %conv36, !dbg !4997
  %call38 = call i8* @dmi_get_system_info(i32 2) #8, !dbg !4998
  %call39 = call i32 @print_filtered(i8* %add.ptr35, i64 %sub37, i8* %call38) #9, !dbg !4999
  %36 = load i32, i32* %c, align 4, !dbg !5000
  %add40 = add i32 %36, %call39, !dbg !5000
  store i32 %add40, i32* %c, align 4, !dbg !5000
  %37 = load i8*, i8** %buf.addr, align 8, !dbg !5001
  %38 = load i32, i32* %c, align 4, !dbg !5002
  %idx.ext41 = sext i32 %38 to i64, !dbg !5003
  %add.ptr42 = getelementptr i8, i8* %37, i64 %idx.ext41, !dbg !5003
  %39 = load i64, i64* %len.addr, align 8, !dbg !5004
  %40 = load i32, i32* %c, align 4, !dbg !5005
  %conv43 = sext i32 %40 to i64, !dbg !5005
  %sub44 = sub i64 %39, %conv43, !dbg !5006
  %call45 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr42, i64 %sub44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !5007
  %41 = load i32, i32* %c, align 4, !dbg !5008
  %add46 = add i32 %41, %call45, !dbg !5008
  store i32 %add46, i32* %c, align 4, !dbg !5008
  %42 = load i8*, i8** %buf.addr, align 8, !dbg !5009
  %43 = load i32, i32* %c, align 4, !dbg !5010
  %idx.ext47 = sext i32 %43 to i64, !dbg !5011
  %add.ptr48 = getelementptr i8, i8* %42, i64 %idx.ext47, !dbg !5011
  %44 = load i64, i64* %len.addr, align 8, !dbg !5012
  %45 = load i32, i32* %c, align 4, !dbg !5013
  %conv49 = sext i32 %45 to i64, !dbg !5013
  %sub50 = sub i64 %44, %conv49, !dbg !5014
  %call51 = call i8* @dmi_get_system_info(i32 3) #8, !dbg !5015
  %call52 = call i32 @print_filtered(i8* %add.ptr48, i64 %sub50, i8* %call51) #9, !dbg !5016
  %46 = load i32, i32* %c, align 4, !dbg !5017
  %add53 = add i32 %46, %call52, !dbg !5017
  store i32 %add53, i32* %c, align 4, !dbg !5017
  ret void, !dbg !5018
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #7 !dbg !5019 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  %0 = load i32, i32* %val.addr, align 4, !dbg !5024
  %call = call i32 @__arch_swab32(i32 %0) #12, !dbg !5025
  ret i32 %call, !dbg !5026
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #7 !dbg !5027 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  %0 = load i32, i32* %val.addr, align 4, !dbg !5031
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #13, !dbg !5032, !srcloc !5033
  store i32 %1, i32* %val.addr, align 4, !dbg !5032
  %2 = load i32, i32* %val.addr, align 4, !dbg !5034
  ret i32 %2, !dbg !5035
}

; Function Attrs: noredzone
declare dso_local void @add_device_randomness(i8*, i32) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_ident(%struct.dmi_header* %dm, i32 %slot, i32 %string) #0 section ".init.text" !dbg !5036 {
entry:
  %dm.addr = alloca %struct.dmi_header*, align 8
  %slot.addr = alloca i32, align 4
  %string.addr = alloca i32, align 4
  %d = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  store i32 %string, i32* %string.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %string.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.declare(metadata i8** %d, metadata !5045, metadata !DIExpression()), !dbg !5046
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5047
  %1 = bitcast %struct.dmi_header* %0 to i8*, !dbg !5048
  store i8* %1, i8** %d, align 8, !dbg !5046
  call void @llvm.dbg.declare(metadata i8** %p, metadata !5049, metadata !DIExpression()), !dbg !5050
  %2 = load i32, i32* %slot.addr, align 4, !dbg !5051
  %idxprom = sext i32 %2 to i64, !dbg !5053
  %arrayidx = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom, !dbg !5053
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !5053
  %tobool = icmp ne i8* %3, null, !dbg !5053
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5054

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5055
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %4, i32 0, i32 1, !dbg !5056
  %5 = load i8, i8* %length, align 1, !dbg !5056
  %conv = zext i8 %5 to i32, !dbg !5055
  %6 = load i32, i32* %string.addr, align 4, !dbg !5057
  %cmp = icmp sle i32 %conv, %6, !dbg !5058
  br i1 %cmp, label %if.then, label %if.end, !dbg !5059

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !5060

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5061
  %8 = load i8*, i8** %d, align 8, !dbg !5062
  %9 = load i32, i32* %string.addr, align 4, !dbg !5063
  %idxprom2 = sext i32 %9 to i64, !dbg !5062
  %arrayidx3 = getelementptr i8, i8* %8, i64 %idxprom2, !dbg !5062
  %10 = load i8, i8* %arrayidx3, align 1, !dbg !5062
  %call = call i8* @dmi_string(%struct.dmi_header* %7, i8 zeroext %10) #9, !dbg !5064
  store i8* %call, i8** %p, align 8, !dbg !5065
  %11 = load i8*, i8** %p, align 8, !dbg !5066
  %cmp4 = icmp eq i8* %11, null, !dbg !5068
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5069

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !5070

if.end7:                                          ; preds = %if.end
  %12 = load i8*, i8** %p, align 8, !dbg !5071
  %13 = load i32, i32* %slot.addr, align 4, !dbg !5072
  %idxprom8 = sext i32 %13 to i64, !dbg !5073
  %arrayidx9 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom8, !dbg !5073
  store i8* %12, i8** %arrayidx9, align 8, !dbg !5074
  br label %return, !dbg !5075

return:                                           ; preds = %if.end7, %if.then6, %if.then
  ret void, !dbg !5075
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_release(%struct.dmi_header* %dm, i32 %slot, i32 %index) #0 section ".init.text" !dbg !5076 {
entry:
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !5077
  %dm.addr = alloca %struct.dmi_header*, align 8
  %slot.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %minor = alloca i8*, align 8
  %major = alloca i8*, align 8
  %s = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.declare(metadata i8** %minor, metadata !5085, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.declare(metadata i8** %major, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata i8** %s, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load i32, i32* %slot.addr, align 4, !dbg !5091
  %idxprom = sext i32 %0 to i64, !dbg !5093
  %arrayidx = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom, !dbg !5093
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !5093
  %tobool = icmp ne i8* %1, null, !dbg !5093
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5094

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5095
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %2, i32 0, i32 1, !dbg !5096
  %3 = load i8, i8* %length, align 1, !dbg !5096
  %conv = zext i8 %3 to i32, !dbg !5095
  %4 = load i32, i32* %index.addr, align 4, !dbg !5097
  %cmp = icmp slt i32 %conv, %4, !dbg !5098
  br i1 %cmp, label %if.then, label %if.end, !dbg !5099

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !5100

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5101
  %6 = bitcast %struct.dmi_header* %5 to i8*, !dbg !5102
  %7 = load i32, i32* %index.addr, align 4, !dbg !5103
  %idx.ext = sext i32 %7 to i64, !dbg !5104
  %add.ptr = getelementptr i8, i8* %6, i64 %idx.ext, !dbg !5104
  store i8* %add.ptr, i8** %minor, align 8, !dbg !5105
  %8 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5106
  %9 = bitcast %struct.dmi_header* %8 to i8*, !dbg !5107
  %10 = load i32, i32* %index.addr, align 4, !dbg !5108
  %idx.ext2 = sext i32 %10 to i64, !dbg !5109
  %add.ptr3 = getelementptr i8, i8* %9, i64 %idx.ext2, !dbg !5109
  %add.ptr4 = getelementptr i8, i8* %add.ptr3, i64 -1, !dbg !5110
  store i8* %add.ptr4, i8** %major, align 8, !dbg !5111
  %11 = load i8*, i8** %major, align 8, !dbg !5112
  %12 = load i8, i8* %11, align 1, !dbg !5114
  %conv5 = zext i8 %12 to i32, !dbg !5114
  %cmp6 = icmp eq i32 %conv5, 255, !dbg !5115
  br i1 %cmp6, label %land.lhs.true, label %if.end12, !dbg !5116

land.lhs.true:                                    ; preds = %if.end
  %13 = load i8*, i8** %minor, align 8, !dbg !5117
  %14 = load i8, i8* %13, align 1, !dbg !5118
  %conv8 = zext i8 %14 to i32, !dbg !5118
  %cmp9 = icmp eq i32 %conv8, 255, !dbg !5119
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5120

if.then11:                                        ; preds = %land.lhs.true
  br label %return, !dbg !5121

if.end12:                                         ; preds = %land.lhs.true, %if.end
  store i32 8, i32* %len.addr.i, align 4
  %15 = load i32, i32* %len.addr.i, align 4, !dbg !5122
  %conv.i = zext i32 %15 to i64, !dbg !5122
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !5123
  store i8* %call.i, i8** %s, align 8, !dbg !5124
  %16 = load i8*, i8** %s, align 8, !dbg !5125
  %tobool13 = icmp ne i8* %16, null, !dbg !5125
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5127

if.then14:                                        ; preds = %if.end12
  br label %return, !dbg !5128

if.end15:                                         ; preds = %if.end12
  %17 = load i8*, i8** %s, align 8, !dbg !5129
  %18 = load i8*, i8** %major, align 8, !dbg !5130
  %19 = load i8, i8* %18, align 1, !dbg !5131
  %conv16 = zext i8 %19 to i32, !dbg !5131
  %20 = load i8*, i8** %minor, align 8, !dbg !5132
  %21 = load i8, i8* %20, align 1, !dbg !5133
  %conv17 = zext i8 %21 to i32, !dbg !5133
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %conv16, i32 %conv17) #8, !dbg !5134
  %22 = load i8*, i8** %s, align 8, !dbg !5135
  %23 = load i32, i32* %slot.addr, align 4, !dbg !5136
  %idxprom19 = sext i32 %23 to i64, !dbg !5137
  %arrayidx20 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom19, !dbg !5137
  store i8* %22, i8** %arrayidx20, align 8, !dbg !5138
  br label %return, !dbg !5139

return:                                           ; preds = %if.end15, %if.then14, %if.then11, %if.then
  ret void, !dbg !5139
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_uuid(%struct.dmi_header* %dm, i32 %slot, i32 %index) #0 section ".init.text" !dbg !5140 {
entry:
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !5141
  %dm.addr = alloca %struct.dmi_header*, align 8
  %slot.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %d = alloca i8*, align 8
  %s = alloca i8*, align 8
  %is_ff = alloca i32, align 4
  %is_00 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.declare(metadata i8** %d, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata i8** %s, metadata !5151, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.declare(metadata i32* %is_ff, metadata !5153, metadata !DIExpression()), !dbg !5154
  store i32 1, i32* %is_ff, align 4, !dbg !5154
  call void @llvm.dbg.declare(metadata i32* %is_00, metadata !5155, metadata !DIExpression()), !dbg !5156
  store i32 1, i32* %is_00, align 4, !dbg !5156
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5157, metadata !DIExpression()), !dbg !5158
  %0 = load i32, i32* %slot.addr, align 4, !dbg !5159
  %idxprom = sext i32 %0 to i64, !dbg !5161
  %arrayidx = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom, !dbg !5161
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !5161
  %tobool = icmp ne i8* %1, null, !dbg !5161
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5162

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5163
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %2, i32 0, i32 1, !dbg !5164
  %3 = load i8, i8* %length, align 1, !dbg !5164
  %conv = zext i8 %3 to i32, !dbg !5163
  %4 = load i32, i32* %index.addr, align 4, !dbg !5165
  %add = add i32 %4, 16, !dbg !5166
  %cmp = icmp slt i32 %conv, %add, !dbg !5167
  br i1 %cmp, label %if.then, label %if.end, !dbg !5168

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !5169

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5170
  %6 = bitcast %struct.dmi_header* %5 to i8*, !dbg !5171
  %7 = load i32, i32* %index.addr, align 4, !dbg !5172
  %idx.ext = sext i32 %7 to i64, !dbg !5173
  %add.ptr = getelementptr i8, i8* %6, i64 %idx.ext, !dbg !5173
  store i8* %add.ptr, i8** %d, align 8, !dbg !5174
  store i32 0, i32* %i, align 4, !dbg !5175
  br label %for.cond, !dbg !5177

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !5178
  %cmp2 = icmp slt i32 %8, 16, !dbg !5180
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !5181

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %is_ff, align 4, !dbg !5182
  %tobool4 = icmp ne i32 %9, 0, !dbg !5182
  br i1 %tobool4, label %lor.end, label %lor.rhs, !dbg !5183

lor.rhs:                                          ; preds = %land.rhs
  %10 = load i32, i32* %is_00, align 4, !dbg !5184
  %tobool5 = icmp ne i32 %10, 0, !dbg !5183
  br label %lor.end, !dbg !5183

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %11 = phi i1 [ true, %land.rhs ], [ %tobool5, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %11, %lor.end ], !dbg !5185
  br i1 %12, label %for.body, label %for.end, !dbg !5186

for.body:                                         ; preds = %land.end
  %13 = load i8*, i8** %d, align 8, !dbg !5187
  %14 = load i32, i32* %i, align 4, !dbg !5190
  %idxprom6 = sext i32 %14 to i64, !dbg !5187
  %arrayidx7 = getelementptr i8, i8* %13, i64 %idxprom6, !dbg !5187
  %15 = load i8, i8* %arrayidx7, align 1, !dbg !5187
  %conv8 = zext i8 %15 to i32, !dbg !5187
  %cmp9 = icmp ne i32 %conv8, 0, !dbg !5191
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5192

if.then11:                                        ; preds = %for.body
  store i32 0, i32* %is_00, align 4, !dbg !5193
  br label %if.end12, !dbg !5194

if.end12:                                         ; preds = %if.then11, %for.body
  %16 = load i8*, i8** %d, align 8, !dbg !5195
  %17 = load i32, i32* %i, align 4, !dbg !5197
  %idxprom13 = sext i32 %17 to i64, !dbg !5195
  %arrayidx14 = getelementptr i8, i8* %16, i64 %idxprom13, !dbg !5195
  %18 = load i8, i8* %arrayidx14, align 1, !dbg !5195
  %conv15 = zext i8 %18 to i32, !dbg !5195
  %cmp16 = icmp ne i32 %conv15, 255, !dbg !5198
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5199

if.then18:                                        ; preds = %if.end12
  store i32 0, i32* %is_ff, align 4, !dbg !5200
  br label %if.end19, !dbg !5201

if.end19:                                         ; preds = %if.then18, %if.end12
  br label %for.inc, !dbg !5202

for.inc:                                          ; preds = %if.end19
  %19 = load i32, i32* %i, align 4, !dbg !5203
  %inc = add i32 %19, 1, !dbg !5203
  store i32 %inc, i32* %i, align 4, !dbg !5203
  br label %for.cond, !dbg !5204, !llvm.loop !5205

for.end:                                          ; preds = %land.end
  %20 = load i32, i32* %is_ff, align 4, !dbg !5207
  %tobool20 = icmp ne i32 %20, 0, !dbg !5207
  br i1 %tobool20, label %if.then23, label %lor.lhs.false21, !dbg !5209

lor.lhs.false21:                                  ; preds = %for.end
  %21 = load i32, i32* %is_00, align 4, !dbg !5210
  %tobool22 = icmp ne i32 %21, 0, !dbg !5210
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5211

if.then23:                                        ; preds = %lor.lhs.false21, %for.end
  br label %return, !dbg !5212

if.end24:                                         ; preds = %lor.lhs.false21
  store i32 37, i32* %len.addr.i, align 4
  %22 = load i32, i32* %len.addr.i, align 4, !dbg !5213
  %conv.i = zext i32 %22 to i64, !dbg !5213
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !5214
  store i8* %call.i, i8** %s, align 8, !dbg !5215
  %23 = load i8*, i8** %s, align 8, !dbg !5216
  %tobool25 = icmp ne i8* %23, null, !dbg !5216
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !5218

if.then26:                                        ; preds = %if.end24
  br label %return, !dbg !5219

if.end27:                                         ; preds = %if.end24
  %24 = load i32, i32* @dmi_ver, align 4, !dbg !5220
  %cmp28 = icmp uge i32 %24, 132608, !dbg !5222
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !5223

if.then30:                                        ; preds = %if.end27
  %25 = load i8*, i8** %s, align 8, !dbg !5224
  %26 = load i8*, i8** %d, align 8, !dbg !5225
  %call31 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %26) #8, !dbg !5226
  br label %if.end33, !dbg !5226

if.else:                                          ; preds = %if.end27
  %27 = load i8*, i8** %s, align 8, !dbg !5227
  %28 = load i8*, i8** %d, align 8, !dbg !5228
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %28) #8, !dbg !5229
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %29 = load i8*, i8** %s, align 8, !dbg !5230
  %30 = load i32, i32* %slot.addr, align 4, !dbg !5231
  %idxprom34 = sext i32 %30 to i64, !dbg !5232
  %arrayidx35 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom34, !dbg !5232
  store i8* %29, i8** %arrayidx35, align 8, !dbg !5233
  br label %return, !dbg !5234

return:                                           ; preds = %if.end33, %if.then26, %if.then23, %if.then
  ret void, !dbg !5234
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_type(%struct.dmi_header* %dm, i32 %slot, i32 %index) #0 section ".init.text" !dbg !5235 {
entry:
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !5236
  %dm.addr = alloca %struct.dmi_header*, align 8
  %slot.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %d = alloca i8*, align 8
  %s = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5240, metadata !DIExpression()), !dbg !5241
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.declare(metadata i8** %d, metadata !5244, metadata !DIExpression()), !dbg !5245
  call void @llvm.dbg.declare(metadata i8** %s, metadata !5246, metadata !DIExpression()), !dbg !5247
  %0 = load i32, i32* %slot.addr, align 4, !dbg !5248
  %idxprom = sext i32 %0 to i64, !dbg !5250
  %arrayidx = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom, !dbg !5250
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !5250
  %tobool = icmp ne i8* %1, null, !dbg !5250
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5251

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5252
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %2, i32 0, i32 1, !dbg !5253
  %3 = load i8, i8* %length, align 1, !dbg !5253
  %conv = zext i8 %3 to i32, !dbg !5252
  %4 = load i32, i32* %index.addr, align 4, !dbg !5254
  %cmp = icmp sle i32 %conv, %4, !dbg !5255
  br i1 %cmp, label %if.then, label %if.end, !dbg !5256

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !5257

if.end:                                           ; preds = %lor.lhs.false
  store i32 4, i32* %len.addr.i, align 4
  %5 = load i32, i32* %len.addr.i, align 4, !dbg !5258
  %conv.i = zext i32 %5 to i64, !dbg !5258
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !5259
  store i8* %call.i, i8** %s, align 8, !dbg !5260
  %6 = load i8*, i8** %s, align 8, !dbg !5261
  %tobool2 = icmp ne i8* %6, null, !dbg !5261
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5263

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !5264

if.end4:                                          ; preds = %if.end
  %7 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5265
  %8 = bitcast %struct.dmi_header* %7 to i8*, !dbg !5266
  %9 = load i32, i32* %index.addr, align 4, !dbg !5267
  %idx.ext = sext i32 %9 to i64, !dbg !5268
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5268
  store i8* %add.ptr, i8** %d, align 8, !dbg !5269
  %10 = load i8*, i8** %s, align 8, !dbg !5270
  %11 = load i8*, i8** %d, align 8, !dbg !5271
  %12 = load i8, i8* %11, align 1, !dbg !5272
  %conv5 = zext i8 %12 to i32, !dbg !5272
  %and = and i32 %conv5, 127, !dbg !5273
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %and) #8, !dbg !5274
  %13 = load i8*, i8** %s, align 8, !dbg !5275
  %14 = load i32, i32* %slot.addr, align 4, !dbg !5276
  %idxprom7 = sext i32 %14 to i64, !dbg !5277
  %arrayidx8 = getelementptr [23 x i8*], [23 x i8*]* @dmi_ident, i64 0, i64 %idxprom7, !dbg !5277
  store i8* %13, i8** %arrayidx8, align 8, !dbg !5278
  br label %return, !dbg !5279

return:                                           ; preds = %if.end4, %if.then3, %if.then
  ret void, !dbg !5279
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_system_slot(%struct.dmi_header* %dm) #0 section ".init.text" !dbg !5280 {
entry:
  %dm.addr = alloca %struct.dmi_header*, align 8
  %d = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5283, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.declare(metadata i8** %d, metadata !5285, metadata !DIExpression()), !dbg !5286
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5287
  %1 = bitcast %struct.dmi_header* %0 to i8*, !dbg !5288
  store i8* %1, i8** %d, align 8, !dbg !5286
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5289
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %2, i32 0, i32 1, !dbg !5291
  %3 = load i8, i8* %length, align 1, !dbg !5291
  %conv = zext i8 %3 to i32, !dbg !5289
  %cmp = icmp slt i32 %conv, 17, !dbg !5292
  br i1 %cmp, label %if.then, label %if.end, !dbg !5293

if.then:                                          ; preds = %entry
  br label %return, !dbg !5294

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %d, align 8, !dbg !5295
  %add.ptr = getelementptr i8, i8* %4, i64 9, !dbg !5296
  %5 = bitcast i8* %add.ptr to i16*, !dbg !5297
  %6 = load i16, i16* %5, align 2, !dbg !5297
  %conv2 = zext i16 %6 to i32, !dbg !5297
  %7 = load i8*, i8** %d, align 8, !dbg !5298
  %add.ptr3 = getelementptr i8, i8* %7, i64 13, !dbg !5299
  %8 = bitcast i8* %add.ptr3 to i16*, !dbg !5300
  %9 = load i16, i16* %8, align 2, !dbg !5300
  %conv4 = zext i16 %9 to i32, !dbg !5300
  %10 = load i8*, i8** %d, align 8, !dbg !5301
  %arrayidx = getelementptr i8, i8* %10, i64 15, !dbg !5301
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5301
  %conv5 = zext i8 %11 to i32, !dbg !5301
  %12 = load i8*, i8** %d, align 8, !dbg !5302
  %arrayidx6 = getelementptr i8, i8* %12, i64 16, !dbg !5302
  %13 = load i8, i8* %arrayidx6, align 1, !dbg !5302
  %conv7 = zext i8 %13 to i32, !dbg !5302
  %14 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5303
  %15 = load i8*, i8** %d, align 8, !dbg !5304
  %arrayidx8 = getelementptr i8, i8* %15, i64 4, !dbg !5304
  %16 = load i8, i8* %arrayidx8, align 1, !dbg !5304
  %call = call i8* @dmi_string_nosave(%struct.dmi_header* %14, i8 zeroext %16) #9, !dbg !5305
  call void @dmi_save_dev_pciaddr(i32 %conv2, i32 %conv4, i32 %conv5, i32 %conv7, i8* %call, i32 -4) #9, !dbg !5306
  br label %return, !dbg !5307

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5307
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_devices(%struct.dmi_header* %dm) #0 section ".init.text" !dbg !5308 {
entry:
  %dm.addr = alloca %struct.dmi_header*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %d = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5311, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5313, metadata !DIExpression()), !dbg !5314
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5315
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %0, i32 0, i32 1, !dbg !5316
  %1 = load i8, i8* %length, align 1, !dbg !5316
  %conv = zext i8 %1 to i64, !dbg !5315
  %sub = sub i64 %conv, 4, !dbg !5317
  %div = udiv i64 %sub, 2, !dbg !5318
  %conv1 = trunc i64 %div to i32, !dbg !5319
  store i32 %conv1, i32* %count, align 4, !dbg !5314
  store i32 0, i32* %i, align 4, !dbg !5320
  br label %for.cond, !dbg !5322

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5323
  %3 = load i32, i32* %count, align 4, !dbg !5325
  %cmp = icmp slt i32 %2, %3, !dbg !5326
  br i1 %cmp, label %for.body, label %for.end, !dbg !5327

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %d, metadata !5328, metadata !DIExpression()), !dbg !5330
  %4 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5331
  %add.ptr = getelementptr %struct.dmi_header, %struct.dmi_header* %4, i64 1, !dbg !5332
  %5 = bitcast %struct.dmi_header* %add.ptr to i8*, !dbg !5333
  %6 = load i32, i32* %i, align 4, !dbg !5334
  %mul = mul i32 %6, 2, !dbg !5335
  %idx.ext = sext i32 %mul to i64, !dbg !5336
  %add.ptr3 = getelementptr i8, i8* %5, i64 %idx.ext, !dbg !5336
  store i8* %add.ptr3, i8** %d, align 8, !dbg !5330
  %7 = load i8*, i8** %d, align 8, !dbg !5337
  %8 = load i8, i8* %7, align 1, !dbg !5339
  %conv4 = sext i8 %8 to i32, !dbg !5339
  %and = and i32 %conv4, 128, !dbg !5340
  %cmp5 = icmp eq i32 %and, 0, !dbg !5341
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5342

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5343

if.end:                                           ; preds = %for.body
  %9 = load i8*, i8** %d, align 8, !dbg !5344
  %10 = load i8, i8* %9, align 1, !dbg !5345
  %conv7 = sext i8 %10 to i32, !dbg !5345
  %and8 = and i32 %conv7, 127, !dbg !5346
  %11 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5347
  %12 = load i8*, i8** %d, align 8, !dbg !5348
  %add.ptr9 = getelementptr i8, i8* %12, i64 1, !dbg !5349
  %13 = load i8, i8* %add.ptr9, align 1, !dbg !5350
  %call = call i8* @dmi_string_nosave(%struct.dmi_header* %11, i8 zeroext %13) #9, !dbg !5351
  call void @dmi_save_one_device(i32 %and8, i8* %call) #9, !dbg !5352
  br label %for.inc, !dbg !5353

for.inc:                                          ; preds = %if.end, %if.then
  %14 = load i32, i32* %i, align 4, !dbg !5354
  %inc = add i32 %14, 1, !dbg !5354
  store i32 %inc, i32* %i, align 4, !dbg !5354
  br label %for.cond, !dbg !5355, !llvm.loop !5356

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5358
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_oem_strings_devices(%struct.dmi_header* %dm) #0 section ".init.text" !dbg !5359 {
entry:
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !5360
  %dm.addr = alloca %struct.dmi_header*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %dev = alloca %struct.dmi_device*, align 8
  %devname = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5367, metadata !DIExpression()), !dbg !5368
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5369, metadata !DIExpression()), !dbg !5370
  call void @llvm.dbg.declare(metadata %struct.dmi_device** %dev, metadata !5371, metadata !DIExpression()), !dbg !5372
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5373
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %0, i32 0, i32 1, !dbg !5375
  %1 = load i8, i8* %length, align 1, !dbg !5375
  %conv = zext i8 %1 to i32, !dbg !5373
  %cmp = icmp slt i32 %conv, 5, !dbg !5376
  br i1 %cmp, label %if.then, label %if.end, !dbg !5377

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !5378

if.end:                                           ; preds = %entry
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5379
  %add.ptr = getelementptr %struct.dmi_header, %struct.dmi_header* %2, i64 1, !dbg !5380
  %3 = bitcast %struct.dmi_header* %add.ptr to i8*, !dbg !5381
  %4 = load i8, i8* %3, align 1, !dbg !5381
  %conv2 = zext i8 %4 to i32, !dbg !5381
  store i32 %conv2, i32* %count, align 4, !dbg !5382
  store i32 1, i32* %i, align 4, !dbg !5383
  br label %for.cond, !dbg !5384

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !5385
  %6 = load i32, i32* %count, align 4, !dbg !5386
  %cmp3 = icmp sle i32 %5, %6, !dbg !5387
  br i1 %cmp3, label %for.body, label %for.end, !dbg !5388

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %devname, metadata !5389, metadata !DIExpression()), !dbg !5390
  %7 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5391
  %8 = load i32, i32* %i, align 4, !dbg !5392
  %conv5 = trunc i32 %8 to i8, !dbg !5392
  %call = call i8* @dmi_string(%struct.dmi_header* %7, i8 zeroext %conv5) #9, !dbg !5393
  store i8* %call, i8** %devname, align 8, !dbg !5390
  %9 = load i8*, i8** %devname, align 8, !dbg !5394
  %cmp6 = icmp eq i8* %9, getelementptr inbounds ([1 x i8], [1 x i8]* @dmi_empty_string, i64 0, i64 0), !dbg !5396
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5397

if.then8:                                         ; preds = %for.body
  br label %for.inc, !dbg !5398

if.end9:                                          ; preds = %for.body
  store i32 40, i32* %len.addr.i, align 4
  %10 = load i32, i32* %len.addr.i, align 4, !dbg !5399
  %conv.i = zext i32 %10 to i64, !dbg !5399
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !5400
  %11 = bitcast i8* %call.i to %struct.dmi_device*, !dbg !5401
  store %struct.dmi_device* %11, %struct.dmi_device** %dev, align 8, !dbg !5402
  %12 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5403
  %tobool = icmp ne %struct.dmi_device* %12, null, !dbg !5403
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !5405

if.then11:                                        ; preds = %if.end9
  br label %for.end, !dbg !5406

if.end12:                                         ; preds = %if.end9
  %13 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5407
  %type = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %13, i32 0, i32 1, !dbg !5408
  store i32 -2, i32* %type, align 8, !dbg !5409
  %14 = load i8*, i8** %devname, align 8, !dbg !5410
  %15 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5411
  %name = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %15, i32 0, i32 2, !dbg !5412
  store i8* %14, i8** %name, align 8, !dbg !5413
  %16 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5414
  %device_data = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %16, i32 0, i32 3, !dbg !5415
  store i8* null, i8** %device_data, align 8, !dbg !5416
  %17 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5417
  %list = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %17, i32 0, i32 0, !dbg !5418
  call void @list_add(%struct.list_head* %list, %struct.list_head* @dmi_devices) #8, !dbg !5419
  br label %for.inc, !dbg !5420

for.inc:                                          ; preds = %if.end12, %if.then8
  %18 = load i32, i32* %i, align 4, !dbg !5421
  %inc = add i32 %18, 1, !dbg !5421
  store i32 %inc, i32* %i, align 4, !dbg !5421
  br label %for.cond, !dbg !5422, !llvm.loop !5423

for.end:                                          ; preds = %if.then, %if.then11, %for.cond
  ret void, !dbg !5425
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_ipmi_device(%struct.dmi_header* %dm) #0 section ".init.text" !dbg !5426 {
entry:
  %len.addr.i7 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i7, metadata !3710, metadata !DIExpression()), !dbg !5427
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !5429
  %dm.addr = alloca %struct.dmi_header*, align 8
  %dev = alloca %struct.dmi_device*, align 8
  %data = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.declare(metadata %struct.dmi_device** %dev, metadata !5433, metadata !DIExpression()), !dbg !5434
  call void @llvm.dbg.declare(metadata i8** %data, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5437
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %0, i32 0, i32 1, !dbg !5438
  %1 = load i8, i8* %length, align 1, !dbg !5438
  %conv = zext i8 %1 to i32, !dbg !5437
  store i32 %conv, i32* %len.addr.i, align 4
  %2 = load i32, i32* %len.addr.i, align 4, !dbg !5439
  %conv.i = zext i32 %2 to i64, !dbg !5439
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !5440
  store i8* %call.i, i8** %data, align 8, !dbg !5441
  %3 = load i8*, i8** %data, align 8, !dbg !5442
  %cmp = icmp eq i8* %3, null, !dbg !5444
  br i1 %cmp, label %if.then, label %if.end, !dbg !5445

if.then:                                          ; preds = %entry
  br label %return, !dbg !5446

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %data, align 8, !dbg !5447
  %5 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5448
  %6 = bitcast %struct.dmi_header* %5 to i8*, !dbg !5449
  %7 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5450
  %length2 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %7, i32 0, i32 1, !dbg !5451
  %8 = load i8, i8* %length2, align 1, !dbg !5451
  %conv3 = zext i8 %8 to i64, !dbg !5450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %6, i64 %conv3, i1 false), !dbg !5449
  store i32 40, i32* %len.addr.i7, align 4
  %9 = load i32, i32* %len.addr.i7, align 4, !dbg !5452
  %conv.i8 = zext i32 %9 to i64, !dbg !5452
  %call.i9 = call i8* @extend_brk(i64 %conv.i8, i64 4) #10, !dbg !5453
  %10 = bitcast i8* %call.i9 to %struct.dmi_device*, !dbg !5454
  store %struct.dmi_device* %10, %struct.dmi_device** %dev, align 8, !dbg !5455
  %11 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5456
  %tobool = icmp ne %struct.dmi_device* %11, null, !dbg !5456
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !5458

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !5459

if.end6:                                          ; preds = %if.end
  %12 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5460
  %type = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %12, i32 0, i32 1, !dbg !5461
  store i32 -1, i32* %type, align 8, !dbg !5462
  %13 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5463
  %name = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %13, i32 0, i32 2, !dbg !5464
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %name, align 8, !dbg !5465
  %14 = load i8*, i8** %data, align 8, !dbg !5466
  %15 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5467
  %device_data = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %15, i32 0, i32 3, !dbg !5468
  store i8* %14, i8** %device_data, align 8, !dbg !5469
  %16 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5470
  %list = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %16, i32 0, i32 0, !dbg !5471
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @dmi_devices) #8, !dbg !5472
  br label %return, !dbg !5473

return:                                           ; preds = %if.end6, %if.then5, %if.then
  ret void, !dbg !5473
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_extended_devices(%struct.dmi_header* %dm) #0 section ".init.text" !dbg !5474 {
entry:
  %dm.addr = alloca %struct.dmi_header*, align 8
  %name = alloca i8*, align 8
  %d = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.declare(metadata i8** %name, metadata !5477, metadata !DIExpression()), !dbg !5478
  call void @llvm.dbg.declare(metadata i8** %d, metadata !5479, metadata !DIExpression()), !dbg !5480
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5481
  %1 = bitcast %struct.dmi_header* %0 to i8*, !dbg !5482
  store i8* %1, i8** %d, align 8, !dbg !5480
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5483
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %2, i32 0, i32 1, !dbg !5485
  %3 = load i8, i8* %length, align 1, !dbg !5485
  %conv = zext i8 %3 to i32, !dbg !5483
  %cmp = icmp slt i32 %conv, 11, !dbg !5486
  br i1 %cmp, label %if.then, label %if.end, !dbg !5487

if.then:                                          ; preds = %entry
  br label %return, !dbg !5488

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %d, align 8, !dbg !5489
  %arrayidx = getelementptr i8, i8* %4, i64 5, !dbg !5489
  %5 = load i8, i8* %arrayidx, align 1, !dbg !5489
  %conv2 = zext i8 %5 to i32, !dbg !5489
  %and = and i32 %conv2, 128, !dbg !5491
  %cmp3 = icmp eq i32 %and, 0, !dbg !5492
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !5493

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !5494

if.end6:                                          ; preds = %if.end
  %6 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5495
  %7 = load i8*, i8** %d, align 8, !dbg !5496
  %arrayidx7 = getelementptr i8, i8* %7, i64 4, !dbg !5496
  %8 = load i8, i8* %arrayidx7, align 1, !dbg !5496
  %call = call i8* @dmi_string_nosave(%struct.dmi_header* %6, i8 zeroext %8) #9, !dbg !5497
  store i8* %call, i8** %name, align 8, !dbg !5498
  %9 = load i8*, i8** %d, align 8, !dbg !5499
  %arrayidx8 = getelementptr i8, i8* %9, i64 6, !dbg !5499
  %10 = load i8, i8* %arrayidx8, align 1, !dbg !5499
  %conv9 = zext i8 %10 to i32, !dbg !5499
  %11 = load i8*, i8** %d, align 8, !dbg !5500
  %add.ptr = getelementptr i8, i8* %11, i64 7, !dbg !5501
  %12 = bitcast i8* %add.ptr to i16*, !dbg !5502
  %13 = load i16, i16* %12, align 2, !dbg !5502
  %conv10 = zext i16 %13 to i32, !dbg !5502
  %14 = load i8*, i8** %d, align 8, !dbg !5503
  %arrayidx11 = getelementptr i8, i8* %14, i64 9, !dbg !5503
  %15 = load i8, i8* %arrayidx11, align 1, !dbg !5503
  %conv12 = zext i8 %15 to i32, !dbg !5503
  %16 = load i8*, i8** %d, align 8, !dbg !5504
  %arrayidx13 = getelementptr i8, i8* %16, i64 10, !dbg !5504
  %17 = load i8, i8* %arrayidx13, align 1, !dbg !5504
  %conv14 = zext i8 %17 to i32, !dbg !5504
  %18 = load i8*, i8** %name, align 8, !dbg !5505
  call void @dmi_save_dev_pciaddr(i32 %conv9, i32 %conv10, i32 %conv12, i32 %conv14, i8* %18, i32 -3) #9, !dbg !5506
  %19 = load i8*, i8** %d, align 8, !dbg !5507
  %arrayidx15 = getelementptr i8, i8* %19, i64 5, !dbg !5507
  %20 = load i8, i8* %arrayidx15, align 1, !dbg !5507
  %conv16 = zext i8 %20 to i32, !dbg !5507
  %and17 = and i32 %conv16, 127, !dbg !5508
  %21 = load i8*, i8** %name, align 8, !dbg !5509
  call void @dmi_save_one_device(i32 %and17, i8* %21) #9, !dbg !5510
  br label %return, !dbg !5511

return:                                           ; preds = %if.end6, %if.then5, %if.then
  ret void, !dbg !5511
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i8* @dmi_string(%struct.dmi_header* %dm, i8 zeroext %s) #0 section ".init.text" !dbg !5512 {
entry:
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !5515
  %retval = alloca i8*, align 8
  %dm.addr = alloca %struct.dmi_header*, align 8
  %s.addr = alloca i8, align 1
  %bp = alloca i8*, align 8
  %str = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i8 %s, i8* %s.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %s.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.declare(metadata i8** %bp, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5523
  %1 = load i8, i8* %s.addr, align 1, !dbg !5524
  %call = call i8* @dmi_string_nosave(%struct.dmi_header* %0, i8 zeroext %1) #9, !dbg !5525
  store i8* %call, i8** %bp, align 8, !dbg !5522
  call void @llvm.dbg.declare(metadata i8** %str, metadata !5526, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.declare(metadata i64* %len, metadata !5528, metadata !DIExpression()), !dbg !5529
  %2 = load i8*, i8** %bp, align 8, !dbg !5530
  %cmp = icmp eq i8* %2, getelementptr inbounds ([1 x i8], [1 x i8]* @dmi_empty_string, i64 0, i64 0), !dbg !5532
  br i1 %cmp, label %if.then, label %if.end, !dbg !5533

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @dmi_empty_string, i64 0, i64 0), i8** %retval, align 8, !dbg !5534
  br label %return, !dbg !5534

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %bp, align 8, !dbg !5535
  %call1 = call i64 @strlen(i8* %3) #8, !dbg !5536
  %add = add i64 %call1, 1, !dbg !5537
  store i64 %add, i64* %len, align 8, !dbg !5538
  %4 = load i64, i64* %len, align 8, !dbg !5539
  %conv = trunc i64 %4 to i32, !dbg !5539
  store i32 %conv, i32* %len.addr.i, align 4
  %5 = load i32, i32* %len.addr.i, align 4, !dbg !5540
  %conv.i = zext i32 %5 to i64, !dbg !5540
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !5541
  store i8* %call.i, i8** %str, align 8, !dbg !5542
  %6 = load i8*, i8** %str, align 8, !dbg !5543
  %cmp3 = icmp ne i8* %6, null, !dbg !5545
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !5546

if.then5:                                         ; preds = %if.end
  %7 = load i8*, i8** %str, align 8, !dbg !5547
  %8 = load i8*, i8** %bp, align 8, !dbg !5548
  %call6 = call i8* @strcpy(i8* %7, i8* %8) #8, !dbg !5549
  br label %if.end7, !dbg !5549

if.end7:                                          ; preds = %if.then5, %if.end
  %9 = load i8*, i8** %str, align 8, !dbg !5550
  store i8* %9, i8** %retval, align 8, !dbg !5551
  br label %return, !dbg !5551

return:                                           ; preds = %if.end7, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !5552
  ret i8* %10, !dbg !5552
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i8* @dmi_string_nosave(%struct.dmi_header* %dm, i8 zeroext %s) #0 section ".init.text" !dbg !5553 {
entry:
  %retval = alloca i8*, align 8
  %dm.addr = alloca %struct.dmi_header*, align 8
  %s.addr = alloca i8, align 1
  %bp = alloca i8*, align 8
  %nsp = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  store i8 %s, i8* %s.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %s.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  call void @llvm.dbg.declare(metadata i8** %bp, metadata !5558, metadata !DIExpression()), !dbg !5559
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5560
  %1 = bitcast %struct.dmi_header* %0 to i8*, !dbg !5561
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5562
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %2, i32 0, i32 1, !dbg !5563
  %3 = load i8, i8* %length, align 1, !dbg !5563
  %conv = zext i8 %3 to i32, !dbg !5562
  %idx.ext = sext i32 %conv to i64, !dbg !5564
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !5564
  store i8* %add.ptr, i8** %bp, align 8, !dbg !5559
  call void @llvm.dbg.declare(metadata i8** %nsp, metadata !5565, metadata !DIExpression()), !dbg !5566
  %4 = load i8, i8* %s.addr, align 1, !dbg !5567
  %tobool = icmp ne i8 %4, 0, !dbg !5567
  br i1 %tobool, label %if.then, label %if.end16, !dbg !5569

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !5570

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i8, i8* %s.addr, align 1, !dbg !5572
  %dec = add i8 %5, -1, !dbg !5572
  store i8 %dec, i8* %s.addr, align 1, !dbg !5572
  %conv1 = zext i8 %dec to i32, !dbg !5572
  %cmp = icmp sgt i32 %conv1, 0, !dbg !5573
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5574

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %bp, align 8, !dbg !5575
  %7 = load i8, i8* %6, align 1, !dbg !5576
  %conv3 = zext i8 %7 to i32, !dbg !5576
  %tobool4 = icmp ne i32 %conv3, 0, !dbg !5574
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !5577
  br i1 %8, label %while.body, label %while.end, !dbg !5570

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %bp, align 8, !dbg !5578
  %call = call i64 @strlen(i8* %9) #8, !dbg !5579
  %add = add i64 %call, 1, !dbg !5580
  %10 = load i8*, i8** %bp, align 8, !dbg !5581
  %add.ptr5 = getelementptr i8, i8* %10, i64 %add, !dbg !5581
  store i8* %add.ptr5, i8** %bp, align 8, !dbg !5581
  br label %while.cond, !dbg !5570, !llvm.loop !5582

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %bp, align 8, !dbg !5584
  store i8* %11, i8** %nsp, align 8, !dbg !5585
  br label %while.cond6, !dbg !5586

while.cond6:                                      ; preds = %while.body10, %while.end
  %12 = load i8*, i8** %nsp, align 8, !dbg !5587
  %13 = load i8, i8* %12, align 1, !dbg !5588
  %conv7 = zext i8 %13 to i32, !dbg !5588
  %cmp8 = icmp eq i32 %conv7, 32, !dbg !5589
  br i1 %cmp8, label %while.body10, label %while.end11, !dbg !5586

while.body10:                                     ; preds = %while.cond6
  %14 = load i8*, i8** %nsp, align 8, !dbg !5590
  %incdec.ptr = getelementptr i8, i8* %14, i32 1, !dbg !5590
  store i8* %incdec.ptr, i8** %nsp, align 8, !dbg !5590
  br label %while.cond6, !dbg !5586, !llvm.loop !5591

while.end11:                                      ; preds = %while.cond6
  %15 = load i8*, i8** %nsp, align 8, !dbg !5592
  %16 = load i8, i8* %15, align 1, !dbg !5594
  %conv12 = zext i8 %16 to i32, !dbg !5594
  %cmp13 = icmp ne i32 %conv12, 0, !dbg !5595
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !5596

if.then15:                                        ; preds = %while.end11
  %17 = load i8*, i8** %bp, align 8, !dbg !5597
  store i8* %17, i8** %retval, align 8, !dbg !5598
  br label %return, !dbg !5598

if.end:                                           ; preds = %while.end11
  br label %if.end16, !dbg !5599

if.end16:                                         ; preds = %if.end, %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @dmi_empty_string, i64 0, i64 0), i8** %retval, align 8, !dbg !5600
  br label %return, !dbg !5600

return:                                           ; preds = %if.end16, %if.then15
  %18 = load i8*, i8** %retval, align 8, !dbg !5601
  ret i8* %18, !dbg !5601
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local i8* @extend_brk(i64, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_dev_pciaddr(i32 %instance, i32 %segment, i32 %bus, i32 %devfn, i8* %name, i32 %type) #0 section ".init.text" !dbg !5602 {
entry:
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !5605
  %instance.addr = alloca i32, align 4
  %segment.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %dev = alloca %struct.dmi_dev_onboard*, align 8
  store i32 %instance, i32* %instance.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %instance.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  store i32 %segment, i32* %segment.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %segment.addr, metadata !5609, metadata !DIExpression()), !dbg !5610
  store i32 %bus, i32* %bus.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus.addr, metadata !5611, metadata !DIExpression()), !dbg !5612
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !5613, metadata !DIExpression()), !dbg !5614
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5615, metadata !DIExpression()), !dbg !5616
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata %struct.dmi_dev_onboard** %dev, metadata !5619, metadata !DIExpression()), !dbg !5628
  %0 = load i32, i32* %type.addr, align 4, !dbg !5629
  %cmp = icmp eq i32 %0, -4, !dbg !5631
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5632

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %segment.addr, align 4, !dbg !5633
  %cmp1 = icmp eq i32 %1, 65535, !dbg !5634
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !5635

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %bus.addr, align 4, !dbg !5636
  %cmp3 = icmp eq i32 %2, 255, !dbg !5637
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !5638

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, i32* %devfn.addr, align 4, !dbg !5639
  %cmp5 = icmp eq i32 %3, 255, !dbg !5640
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5641

if.then:                                          ; preds = %land.lhs.true4
  br label %return, !dbg !5642

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %4 = load i8*, i8** %name.addr, align 8, !dbg !5643
  %call = call i64 @strlen(i8* %4) #8, !dbg !5644
  %add = add i64 56, %call, !dbg !5645
  %add6 = add i64 %add, 1, !dbg !5646
  %conv = trunc i64 %add6 to i32, !dbg !5647
  store i32 %conv, i32* %len.addr.i, align 4
  %5 = load i32, i32* %len.addr.i, align 4, !dbg !5648
  %conv.i = zext i32 %5 to i64, !dbg !5648
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !5649
  %6 = bitcast i8* %call.i to %struct.dmi_dev_onboard*, !dbg !5650
  store %struct.dmi_dev_onboard* %6, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5651
  %7 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5652
  %tobool = icmp ne %struct.dmi_dev_onboard* %7, null, !dbg !5652
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !5654

if.then8:                                         ; preds = %if.end
  br label %return, !dbg !5655

if.end9:                                          ; preds = %if.end
  %8 = load i32, i32* %instance.addr, align 4, !dbg !5656
  %9 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5657
  %instance10 = getelementptr inbounds %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %9, i32 0, i32 1, !dbg !5658
  store i32 %8, i32* %instance10, align 8, !dbg !5659
  %10 = load i32, i32* %segment.addr, align 4, !dbg !5660
  %11 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5661
  %segment11 = getelementptr inbounds %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %11, i32 0, i32 2, !dbg !5662
  store i32 %10, i32* %segment11, align 4, !dbg !5663
  %12 = load i32, i32* %bus.addr, align 4, !dbg !5664
  %13 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5665
  %bus12 = getelementptr inbounds %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %13, i32 0, i32 3, !dbg !5666
  store i32 %12, i32* %bus12, align 8, !dbg !5667
  %14 = load i32, i32* %devfn.addr, align 4, !dbg !5668
  %15 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5669
  %devfn13 = getelementptr inbounds %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %15, i32 0, i32 4, !dbg !5670
  store i32 %14, i32* %devfn13, align 4, !dbg !5671
  %16 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5672
  %arrayidx = getelementptr %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %16, i64 1, !dbg !5672
  %17 = bitcast %struct.dmi_dev_onboard* %arrayidx to i8*, !dbg !5673
  %18 = load i8*, i8** %name.addr, align 8, !dbg !5674
  %call14 = call i8* @strcpy(i8* %17, i8* %18) #8, !dbg !5675
  %19 = load i32, i32* %type.addr, align 4, !dbg !5676
  %20 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5677
  %dev15 = getelementptr inbounds %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %20, i32 0, i32 0, !dbg !5678
  %type16 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %dev15, i32 0, i32 1, !dbg !5679
  store i32 %19, i32* %type16, align 8, !dbg !5680
  %21 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5681
  %arrayidx17 = getelementptr %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %21, i64 1, !dbg !5681
  %22 = bitcast %struct.dmi_dev_onboard* %arrayidx17 to i8*, !dbg !5682
  %23 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5683
  %dev18 = getelementptr inbounds %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %23, i32 0, i32 0, !dbg !5684
  %name19 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %dev18, i32 0, i32 2, !dbg !5685
  store i8* %22, i8** %name19, align 8, !dbg !5686
  %24 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5687
  %25 = bitcast %struct.dmi_dev_onboard* %24 to i8*, !dbg !5687
  %26 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5688
  %dev20 = getelementptr inbounds %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %26, i32 0, i32 0, !dbg !5689
  %device_data = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %dev20, i32 0, i32 3, !dbg !5690
  store i8* %25, i8** %device_data, align 8, !dbg !5691
  %27 = load %struct.dmi_dev_onboard*, %struct.dmi_dev_onboard** %dev, align 8, !dbg !5692
  %dev21 = getelementptr inbounds %struct.dmi_dev_onboard, %struct.dmi_dev_onboard* %27, i32 0, i32 0, !dbg !5693
  %list = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %dev21, i32 0, i32 0, !dbg !5694
  call void @list_add(%struct.list_head* %list, %struct.list_head* @dmi_devices) #8, !dbg !5695
  br label %return, !dbg !5696

return:                                           ; preds = %if.end9, %if.then8, %if.then
  ret void, !dbg !5696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #2 !dbg !5697 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5705
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5706
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5707
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !5708
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5708
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !5709
  ret void, !dbg !5710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !5711 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5714, metadata !DIExpression()), !dbg !5715
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5716, metadata !DIExpression()), !dbg !5717
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5720
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5722
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5723
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5724
  br i1 %call, label %if.end, label %if.then, !dbg !5725

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5726

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5727
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5728
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5729
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5730
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5731
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5732
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5733
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5734
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5735
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5736
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5737
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5738
  br label %do.body, !dbg !5739

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5740

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5742

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5740

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5744
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5744
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5744
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5744
  br label %do.end7, !dbg !5744

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5740

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5746
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !5747 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5750, metadata !DIExpression()), !dbg !5751
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5752, metadata !DIExpression()), !dbg !5753
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  ret i1 true, !dbg !5756
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dmi_save_one_device(i32 %type, i8* %name) #0 section ".init.text" !dbg !5757 {
entry:
  %len.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr.i, metadata !3710, metadata !DIExpression()), !dbg !5760
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %dev = alloca %struct.dmi_device*, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5762, metadata !DIExpression()), !dbg !5763
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  call void @llvm.dbg.declare(metadata %struct.dmi_device** %dev, metadata !5766, metadata !DIExpression()), !dbg !5767
  %0 = load i32, i32* %type.addr, align 4, !dbg !5768
  %1 = load i8*, i8** %name.addr, align 8, !dbg !5770
  %call = call %struct.dmi_device* @dmi_find_device(i32 %0, i8* %1, %struct.dmi_device* null) #8, !dbg !5771
  %tobool = icmp ne %struct.dmi_device* %call, null, !dbg !5771
  br i1 %tobool, label %if.then, label %if.end, !dbg !5772

if.then:                                          ; preds = %entry
  br label %return, !dbg !5773

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !dbg !5774
  %call1 = call i64 @strlen(i8* %2) #8, !dbg !5775
  %add = add i64 40, %call1, !dbg !5776
  %add2 = add i64 %add, 1, !dbg !5777
  %conv = trunc i64 %add2 to i32, !dbg !5778
  store i32 %conv, i32* %len.addr.i, align 4
  %3 = load i32, i32* %len.addr.i, align 4, !dbg !5779
  %conv.i = zext i32 %3 to i64, !dbg !5779
  %call.i = call i8* @extend_brk(i64 %conv.i, i64 4) #10, !dbg !5780
  %4 = bitcast i8* %call.i to %struct.dmi_device*, !dbg !5781
  store %struct.dmi_device* %4, %struct.dmi_device** %dev, align 8, !dbg !5782
  %5 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5783
  %tobool4 = icmp ne %struct.dmi_device* %5, null, !dbg !5783
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5785

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !5786

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %type.addr, align 4, !dbg !5787
  %7 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5788
  %type7 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %7, i32 0, i32 1, !dbg !5789
  store i32 %6, i32* %type7, align 8, !dbg !5790
  %8 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5791
  %add.ptr = getelementptr %struct.dmi_device, %struct.dmi_device* %8, i64 1, !dbg !5792
  %9 = bitcast %struct.dmi_device* %add.ptr to i8*, !dbg !5793
  %10 = load i8*, i8** %name.addr, align 8, !dbg !5794
  %call8 = call i8* @strcpy(i8* %9, i8* %10) #8, !dbg !5795
  %11 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5796
  %add.ptr9 = getelementptr %struct.dmi_device, %struct.dmi_device* %11, i64 1, !dbg !5797
  %12 = bitcast %struct.dmi_device* %add.ptr9 to i8*, !dbg !5798
  %13 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5799
  %name10 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %13, i32 0, i32 2, !dbg !5800
  store i8* %12, i8** %name10, align 8, !dbg !5801
  %14 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5802
  %device_data = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %14, i32 0, i32 3, !dbg !5803
  store i8* null, i8** %device_data, align 8, !dbg !5804
  %15 = load %struct.dmi_device*, %struct.dmi_device** %dev, align 8, !dbg !5805
  %list = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %15, i32 0, i32 0, !dbg !5806
  call void @list_add(%struct.list_head* %list, %struct.list_head* @dmi_devices) #8, !dbg !5807
  br label %return, !dbg !5808

return:                                           ; preds = %if.end6, %if.then5, %if.then
  ret void, !dbg !5808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #2 !dbg !5809 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5810, metadata !DIExpression()), !dbg !5811
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5814
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5815
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5816
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5816
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5817
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !5818
  ret void, !dbg !5819
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @print_filtered(i8* %buf, i64 %len, i8* %info) #0 section ".init.text" !dbg !5820 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %info.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  store i8* %info, i8** %info.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %info.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  call void @llvm.dbg.declare(metadata i32* %c, metadata !5829, metadata !DIExpression()), !dbg !5830
  store i32 0, i32* %c, align 4, !dbg !5830
  call void @llvm.dbg.declare(metadata i8** %p, metadata !5831, metadata !DIExpression()), !dbg !5832
  %0 = load i8*, i8** %info.addr, align 8, !dbg !5833
  %tobool = icmp ne i8* %0, null, !dbg !5833
  br i1 %tobool, label %if.end, label %if.then, !dbg !5835

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c, align 4, !dbg !5836
  store i32 %1, i32* %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %info.addr, align 8, !dbg !5838
  store i8* %2, i8** %p, align 8, !dbg !5840
  br label %for.cond, !dbg !5841

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8*, i8** %p, align 8, !dbg !5842
  %4 = load i8, i8* %3, align 1, !dbg !5844
  %tobool1 = icmp ne i8 %4, 0, !dbg !5845
  br i1 %tobool1, label %for.body, label %for.end, !dbg !5845

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8, !dbg !5846
  %6 = load i8, i8* %5, align 1, !dbg !5846
  %conv = zext i8 %6 to i32, !dbg !5846
  %idxprom = sext i32 %conv to i64, !dbg !5846
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !5846
  %7 = load i8, i8* %arrayidx, align 1, !dbg !5846
  %conv2 = zext i8 %7 to i32, !dbg !5846
  %and = and i32 %conv2, 151, !dbg !5846
  %cmp = icmp ne i32 %and, 0, !dbg !5846
  br i1 %cmp, label %if.then4, label %if.else, !dbg !5848

if.then4:                                         ; preds = %for.body
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5849
  %9 = load i32, i32* %c, align 4, !dbg !5850
  %idx.ext = sext i32 %9 to i64, !dbg !5851
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5851
  %10 = load i64, i64* %len.addr, align 8, !dbg !5852
  %11 = load i32, i32* %c, align 4, !dbg !5853
  %conv5 = sext i32 %11 to i64, !dbg !5853
  %sub = sub i64 %10, %conv5, !dbg !5854
  %12 = load i8*, i8** %p, align 8, !dbg !5855
  %13 = load i8, i8* %12, align 1, !dbg !5856
  %conv6 = sext i8 %13 to i32, !dbg !5856
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr, i64 %sub, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %conv6) #8, !dbg !5857
  %14 = load i32, i32* %c, align 4, !dbg !5858
  %add = add i32 %14, %call, !dbg !5858
  store i32 %add, i32* %c, align 4, !dbg !5858
  br label %if.end15, !dbg !5859

if.else:                                          ; preds = %for.body
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !5860
  %16 = load i32, i32* %c, align 4, !dbg !5861
  %idx.ext7 = sext i32 %16 to i64, !dbg !5862
  %add.ptr8 = getelementptr i8, i8* %15, i64 %idx.ext7, !dbg !5862
  %17 = load i64, i64* %len.addr, align 8, !dbg !5863
  %18 = load i32, i32* %c, align 4, !dbg !5864
  %conv9 = sext i32 %18 to i64, !dbg !5864
  %sub10 = sub i64 %17, %conv9, !dbg !5865
  %19 = load i8*, i8** %p, align 8, !dbg !5866
  %20 = load i8, i8* %19, align 1, !dbg !5867
  %conv11 = sext i8 %20 to i32, !dbg !5867
  %and12 = and i32 %conv11, 255, !dbg !5868
  %call13 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr8, i64 %sub10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %and12) #8, !dbg !5869
  %21 = load i32, i32* %c, align 4, !dbg !5870
  %add14 = add i32 %21, %call13, !dbg !5870
  store i32 %add14, i32* %c, align 4, !dbg !5870
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then4
  br label %for.inc, !dbg !5846

for.inc:                                          ; preds = %if.end15
  %22 = load i8*, i8** %p, align 8, !dbg !5871
  %incdec.ptr = getelementptr i8, i8* %22, i32 1, !dbg !5871
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !5871
  br label %for.cond, !dbg !5872, !llvm.loop !5873

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %c, align 4, !dbg !5875
  store i32 %23, i32* %retval, align 4, !dbg !5876
  br label %return, !dbg !5876

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !5877
  ret i32 %24, !dbg !5877
}

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #7 !dbg !5878 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5881, metadata !DIExpression()), !dbg !5882
  %0 = load i16, i16* %val.addr, align 2, !dbg !5883
  %conv = zext i16 %0 to i32, !dbg !5883
  %and = and i32 %conv, 255, !dbg !5883
  %shl = shl i32 %and, 8, !dbg !5883
  %1 = load i16, i16* %val.addr, align 2, !dbg !5883
  %conv1 = zext i16 %1 to i32, !dbg !5883
  %and2 = and i32 %conv1, 65280, !dbg !5883
  %shr = ashr i32 %and2, 8, !dbg !5883
  %or = or i32 %shl, %shr, !dbg !5883
  %conv3 = trunc i32 %or to i16, !dbg !5883
  ret i16 %conv3, !dbg !5884
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @count_mem_devices(%struct.dmi_header* %dm, i8* %v) #0 section ".init.text" !dbg !5885 {
entry:
  %dm.addr = alloca %struct.dmi_header*, align 8
  %v.addr = alloca i8*, align 8
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5886, metadata !DIExpression()), !dbg !5887
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !5888, metadata !DIExpression()), !dbg !5889
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5890
  %type = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %0, i32 0, i32 0, !dbg !5892
  %1 = load i8, i8* %type, align 1, !dbg !5892
  %conv = zext i8 %1 to i32, !dbg !5890
  %cmp = icmp ne i32 %conv, 17, !dbg !5893
  br i1 %cmp, label %if.then, label %if.end, !dbg !5894

if.then:                                          ; preds = %entry
  br label %return, !dbg !5895

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @dmi_memdev_nr, align 4, !dbg !5896
  %inc = add i32 %2, 1, !dbg !5896
  store i32 %inc, i32* @dmi_memdev_nr, align 4, !dbg !5896
  br label %return, !dbg !5897

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5897
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @save_mem_devices(%struct.dmi_header* %dm, i8* %v) #0 section ".init.text" !dbg !3471 {
entry:
  %p.addr.i.i67 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i67, metadata !4636, metadata !DIExpression()), !dbg !5898
  %p.addr.i68 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i68, metadata !4648, metadata !DIExpression()), !dbg !5902
  %p.addr.i.i65 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i65, metadata !4541, metadata !DIExpression()), !dbg !5903
  %p.addr.i66 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i66, metadata !4553, metadata !DIExpression()), !dbg !5911
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !4636, metadata !DIExpression()), !dbg !5912
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !4648, metadata !DIExpression()), !dbg !5916
  %dm.addr = alloca %struct.dmi_header*, align 8
  %v.addr = alloca i8*, align 8
  %d = alloca i8*, align 8
  %bytes = alloca i64, align 8
  %size = alloca i16, align 2
  %tmp = alloca i16, align 2
  %tmp23 = alloca i16, align 2
  %tmp53 = alloca i32, align 4
  store %struct.dmi_header* %dm, %struct.dmi_header** %dm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_header** %dm.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  call void @llvm.dbg.declare(metadata i8** %d, metadata !5921, metadata !DIExpression()), !dbg !5922
  %0 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5923
  %1 = bitcast %struct.dmi_header* %0 to i8*, !dbg !5924
  store i8* %1, i8** %d, align 8, !dbg !5922
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5925, metadata !DIExpression()), !dbg !5926
  call void @llvm.dbg.declare(metadata i16* %size, metadata !5927, metadata !DIExpression()), !dbg !5928
  %2 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5929
  %type = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %2, i32 0, i32 0, !dbg !5931
  %3 = load i8, i8* %type, align 1, !dbg !5931
  %conv = zext i8 %3 to i32, !dbg !5929
  %cmp = icmp ne i32 %conv, 17, !dbg !5932
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5933

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5934
  %length = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %4, i32 0, i32 1, !dbg !5935
  %5 = load i8, i8* %length, align 1, !dbg !5935
  %conv2 = zext i8 %5 to i32, !dbg !5934
  %cmp3 = icmp slt i32 %conv2, 19, !dbg !5936
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5937

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !5938

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* @save_mem_devices.nr, align 4, !dbg !5939
  %7 = load i32, i32* @dmi_memdev_nr, align 4, !dbg !5941
  %cmp5 = icmp sge i32 %6, %7, !dbg !5942
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5943

if.then7:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !5944
  br label %return, !dbg !5946

if.end8:                                          ; preds = %if.end
  %8 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5947
  %handle = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %8, i32 0, i32 2, !dbg !5947
  %9 = bitcast i16* %handle to i8*, !dbg !5947
  store i8* %9, i8** %p.addr.i, align 8
  %10 = load i8*, i8** %p.addr.i, align 8, !dbg !5948
  %11 = bitcast i8* %10 to i16*, !dbg !5949
  store i16* %11, i16** %p.addr.i.i, align 8
  %12 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5950
  %13 = load i16, i16* %12, align 2, !dbg !5951
  store i16 %13, i16* %tmp, align 2, !dbg !5952
  %14 = load i16, i16* %tmp, align 2, !dbg !5947
  %15 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !5953
  %16 = load i32, i32* @save_mem_devices.nr, align 4, !dbg !5954
  %idxprom = sext i32 %16 to i64, !dbg !5953
  %arrayidx = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %15, i64 %idxprom, !dbg !5953
  %handle10 = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx, i32 0, i32 3, !dbg !5955
  store i16 %14, i16* %handle10, align 8, !dbg !5956
  %17 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5957
  %18 = load i8*, i8** %d, align 8, !dbg !5958
  %arrayidx11 = getelementptr i8, i8* %18, i64 16, !dbg !5958
  %19 = load i8, i8* %arrayidx11, align 1, !dbg !5958
  %call12 = call i8* @dmi_string(%struct.dmi_header* %17, i8 zeroext %19) #9, !dbg !5959
  %20 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !5960
  %21 = load i32, i32* @save_mem_devices.nr, align 4, !dbg !5961
  %idxprom13 = sext i32 %21 to i64, !dbg !5960
  %arrayidx14 = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %20, i64 %idxprom13, !dbg !5960
  %device = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx14, i32 0, i32 0, !dbg !5962
  store i8* %call12, i8** %device, align 8, !dbg !5963
  %22 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !5964
  %23 = load i8*, i8** %d, align 8, !dbg !5965
  %arrayidx15 = getelementptr i8, i8* %23, i64 17, !dbg !5965
  %24 = load i8, i8* %arrayidx15, align 1, !dbg !5965
  %call16 = call i8* @dmi_string(%struct.dmi_header* %22, i8 zeroext %24) #9, !dbg !5966
  %25 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !5967
  %26 = load i32, i32* @save_mem_devices.nr, align 4, !dbg !5968
  %idxprom17 = sext i32 %26 to i64, !dbg !5967
  %arrayidx18 = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %25, i64 %idxprom17, !dbg !5967
  %bank = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx18, i32 0, i32 1, !dbg !5969
  store i8* %call16, i8** %bank, align 8, !dbg !5970
  %27 = load i8*, i8** %d, align 8, !dbg !5971
  %arrayidx19 = getelementptr i8, i8* %27, i64 18, !dbg !5971
  %28 = load i8, i8* %arrayidx19, align 1, !dbg !5971
  %29 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !5972
  %30 = load i32, i32* @save_mem_devices.nr, align 4, !dbg !5973
  %idxprom20 = sext i32 %30 to i64, !dbg !5972
  %arrayidx21 = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %29, i64 %idxprom20, !dbg !5972
  %type22 = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx21, i32 0, i32 4, !dbg !5974
  store i8 %28, i8* %type22, align 2, !dbg !5975
  %31 = load i8*, i8** %d, align 8, !dbg !5976
  %arrayidx24 = getelementptr i8, i8* %31, i64 12, !dbg !5976
  %32 = bitcast i8* %arrayidx24 to i16*, !dbg !5976
  %33 = bitcast i16* %32 to i8*, !dbg !5976
  store i8* %33, i8** %p.addr.i68, align 8
  %34 = load i8*, i8** %p.addr.i68, align 8, !dbg !5977
  %35 = bitcast i8* %34 to i16*, !dbg !5978
  store i16* %35, i16** %p.addr.i.i67, align 8
  %36 = load i16*, i16** %p.addr.i.i67, align 8, !dbg !5979
  %37 = load i16, i16* %36, align 2, !dbg !5980
  store i16 %37, i16* %tmp23, align 2, !dbg !5981
  %38 = load i16, i16* %tmp23, align 2, !dbg !5976
  store i16 %38, i16* %size, align 2, !dbg !5982
  %39 = load i16, i16* %size, align 2, !dbg !5983
  %conv26 = zext i16 %39 to i32, !dbg !5983
  %cmp27 = icmp eq i32 %conv26, 0, !dbg !5984
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !5985

if.then29:                                        ; preds = %if.end8
  store i64 0, i64* %bytes, align 8, !dbg !5986
  br label %if.end61, !dbg !5987

if.else:                                          ; preds = %if.end8
  %40 = load i16, i16* %size, align 2, !dbg !5988
  %conv30 = zext i16 %40 to i32, !dbg !5988
  %cmp31 = icmp eq i32 %conv30, 65535, !dbg !5989
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !5990

if.then33:                                        ; preds = %if.else
  store i64 -1, i64* %bytes, align 8, !dbg !5991
  br label %if.end60, !dbg !5992

if.else34:                                        ; preds = %if.else
  %41 = load i16, i16* %size, align 2, !dbg !5993
  %conv35 = zext i16 %41 to i32, !dbg !5993
  %and = and i32 %conv35, 32768, !dbg !5994
  %tobool = icmp ne i32 %and, 0, !dbg !5994
  br i1 %tobool, label %if.then36, label %if.else40, !dbg !5995

if.then36:                                        ; preds = %if.else34
  %42 = load i16, i16* %size, align 2, !dbg !5996
  %conv37 = zext i16 %42 to i32, !dbg !5996
  %and38 = and i32 %conv37, 32767, !dbg !5997
  %conv39 = sext i32 %and38 to i64, !dbg !5998
  %shl = shl i64 %conv39, 10, !dbg !5999
  store i64 %shl, i64* %bytes, align 8, !dbg !6000
  br label %if.end59, !dbg !6001

if.else40:                                        ; preds = %if.else34
  %43 = load i16, i16* %size, align 2, !dbg !6002
  %conv41 = zext i16 %43 to i32, !dbg !6002
  %cmp42 = icmp ne i32 %conv41, 32767, !dbg !6003
  br i1 %cmp42, label %if.then49, label %lor.lhs.false44, !dbg !6004

lor.lhs.false44:                                  ; preds = %if.else40
  %44 = load %struct.dmi_header*, %struct.dmi_header** %dm.addr, align 8, !dbg !6005
  %length45 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %44, i32 0, i32 1, !dbg !6006
  %45 = load i8, i8* %length45, align 1, !dbg !6006
  %conv46 = zext i8 %45 to i32, !dbg !6005
  %cmp47 = icmp slt i32 %conv46, 32, !dbg !6007
  br i1 %cmp47, label %if.then49, label %if.else52, !dbg !6008

if.then49:                                        ; preds = %lor.lhs.false44, %if.else40
  %46 = load i16, i16* %size, align 2, !dbg !6009
  %conv50 = zext i16 %46 to i64, !dbg !6010
  %shl51 = shl i64 %conv50, 20, !dbg !6011
  store i64 %shl51, i64* %bytes, align 8, !dbg !6012
  br label %if.end58, !dbg !6013

if.else52:                                        ; preds = %lor.lhs.false44
  %47 = load i8*, i8** %d, align 8, !dbg !6014
  %arrayidx54 = getelementptr i8, i8* %47, i64 28, !dbg !6014
  %48 = bitcast i8* %arrayidx54 to i32*, !dbg !6014
  %49 = bitcast i32* %48 to i8*, !dbg !6014
  store i8* %49, i8** %p.addr.i66, align 8
  %50 = load i8*, i8** %p.addr.i66, align 8, !dbg !6015
  %51 = bitcast i8* %50 to i32*, !dbg !6016
  store i32* %51, i32** %p.addr.i.i65, align 8
  %52 = load i32*, i32** %p.addr.i.i65, align 8, !dbg !6017
  %53 = load i32, i32* %52, align 4, !dbg !6018
  store i32 %53, i32* %tmp53, align 4, !dbg !6019
  %54 = load i32, i32* %tmp53, align 4, !dbg !6014
  %conv56 = zext i32 %54 to i64, !dbg !6020
  %shl57 = shl i64 %conv56, 20, !dbg !6021
  store i64 %shl57, i64* %bytes, align 8, !dbg !6022
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.then49
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then36
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then33
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then29
  %55 = load i64, i64* %bytes, align 8, !dbg !6023
  %56 = load %struct.dmi_memdev_info*, %struct.dmi_memdev_info** @dmi_memdev, align 8, !dbg !6024
  %57 = load i32, i32* @save_mem_devices.nr, align 4, !dbg !6025
  %idxprom62 = sext i32 %57 to i64, !dbg !6024
  %arrayidx63 = getelementptr %struct.dmi_memdev_info, %struct.dmi_memdev_info* %56, i64 %idxprom62, !dbg !6024
  %size64 = getelementptr inbounds %struct.dmi_memdev_info, %struct.dmi_memdev_info* %arrayidx63, i32 0, i32 2, !dbg !6026
  store i64 %55, i64* %size64, align 8, !dbg !6027
  %58 = load i32, i32* @save_mem_devices.nr, align 4, !dbg !6028
  %inc = add i32 %58, 1, !dbg !6028
  store i32 %inc, i32* @save_mem_devices.nr, align 4, !dbg !6028
  br label %return, !dbg !6029

return:                                           ; preds = %if.end61, %if.then7, %if.then
  ret void, !dbg !6029
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3476, !3477, !3478, !3479}
!llvm.ident = !{!3480}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dmi_init230", scope: !2, file: !3, line: 803, type: !173, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172, globals: !229, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/dmi_scan.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !34, !53, !61, !68, !74, !79, !85, !92, !98, !107, !115, !121, !126}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmi_field", file: !6, line: 532, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!9 = !DIEnumerator(name: "DMI_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DMI_BIOS_VENDOR", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DMI_BIOS_VERSION", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DMI_BIOS_DATE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "DMI_BIOS_RELEASE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "DMI_EC_FIRMWARE_RELEASE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "DMI_SYS_VENDOR", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "DMI_PRODUCT_NAME", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "DMI_PRODUCT_VERSION", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "DMI_PRODUCT_SERIAL", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "DMI_PRODUCT_UUID", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "DMI_PRODUCT_SKU", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "DMI_PRODUCT_FAMILY", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "DMI_BOARD_VENDOR", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "DMI_BOARD_NAME", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "DMI_BOARD_VERSION", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "DMI_BOARD_SERIAL", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "DMI_BOARD_ASSET_TAG", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "DMI_CHASSIS_VENDOR", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "DMI_CHASSIS_TYPE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "DMI_CHASSIS_VERSION", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "DMI_CHASSIS_SERIAL", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "DMI_CHASSIS_ASSET_TAG", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "DMI_STRING_MAX", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "DMI_OEM_STRING", value: 24, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmi_device_type", file: !35, line: 11, baseType: !36, size: 32, elements: !37)
!35 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!38 = !DIEnumerator(name: "DMI_DEV_TYPE_ANY", value: 0)
!39 = !DIEnumerator(name: "DMI_DEV_TYPE_OTHER", value: 1)
!40 = !DIEnumerator(name: "DMI_DEV_TYPE_UNKNOWN", value: 2)
!41 = !DIEnumerator(name: "DMI_DEV_TYPE_VIDEO", value: 3)
!42 = !DIEnumerator(name: "DMI_DEV_TYPE_SCSI", value: 4)
!43 = !DIEnumerator(name: "DMI_DEV_TYPE_ETHERNET", value: 5)
!44 = !DIEnumerator(name: "DMI_DEV_TYPE_TOKENRING", value: 6)
!45 = !DIEnumerator(name: "DMI_DEV_TYPE_SOUND", value: 7)
!46 = !DIEnumerator(name: "DMI_DEV_TYPE_PATA", value: 8)
!47 = !DIEnumerator(name: "DMI_DEV_TYPE_SATA", value: 9)
!48 = !DIEnumerator(name: "DMI_DEV_TYPE_SAS", value: 10)
!49 = !DIEnumerator(name: "DMI_DEV_TYPE_IPMI", value: -1)
!50 = !DIEnumerator(name: "DMI_DEV_TYPE_OEM_STRING", value: -2)
!51 = !DIEnumerator(name: "DMI_DEV_TYPE_DEV_ONBOARD", value: -3)
!52 = !DIEnumerator(name: "DMI_DEV_TYPE_DEV_SLOT", value: -4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 142, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/io.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMREMAP_WB", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "MEMREMAP_WT", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "MEMREMAP_WC", value: 4, isUnsigned: true)
!59 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8, isUnsigned: true)
!60 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !62, line: 15, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !69, line: 546, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !75, line: 65, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !80, line: 16, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !86, line: 59, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!91 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !93, line: 54, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !99, line: 296, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104, !105, !106}
!101 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!105 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !108, line: 9, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !116, line: 26, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!119 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!120 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !122, line: 10, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125}
!124 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmi_entry_type", file: !35, line: 29, baseType: !7, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!128 = !DIEnumerator(name: "DMI_ENTRY_BIOS", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "DMI_ENTRY_SYSTEM", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "DMI_ENTRY_BASEBOARD", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "DMI_ENTRY_CHASSIS", value: 3, isUnsigned: true)
!132 = !DIEnumerator(name: "DMI_ENTRY_PROCESSOR", value: 4, isUnsigned: true)
!133 = !DIEnumerator(name: "DMI_ENTRY_MEM_CONTROLLER", value: 5, isUnsigned: true)
!134 = !DIEnumerator(name: "DMI_ENTRY_MEM_MODULE", value: 6, isUnsigned: true)
!135 = !DIEnumerator(name: "DMI_ENTRY_CACHE", value: 7, isUnsigned: true)
!136 = !DIEnumerator(name: "DMI_ENTRY_PORT_CONNECTOR", value: 8, isUnsigned: true)
!137 = !DIEnumerator(name: "DMI_ENTRY_SYSTEM_SLOT", value: 9, isUnsigned: true)
!138 = !DIEnumerator(name: "DMI_ENTRY_ONBOARD_DEVICE", value: 10, isUnsigned: true)
!139 = !DIEnumerator(name: "DMI_ENTRY_OEMSTRINGS", value: 11, isUnsigned: true)
!140 = !DIEnumerator(name: "DMI_ENTRY_SYSCONF", value: 12, isUnsigned: true)
!141 = !DIEnumerator(name: "DMI_ENTRY_BIOS_LANG", value: 13, isUnsigned: true)
!142 = !DIEnumerator(name: "DMI_ENTRY_GROUP_ASSOC", value: 14, isUnsigned: true)
!143 = !DIEnumerator(name: "DMI_ENTRY_SYSTEM_EVENT_LOG", value: 15, isUnsigned: true)
!144 = !DIEnumerator(name: "DMI_ENTRY_PHYS_MEM_ARRAY", value: 16, isUnsigned: true)
!145 = !DIEnumerator(name: "DMI_ENTRY_MEM_DEVICE", value: 17, isUnsigned: true)
!146 = !DIEnumerator(name: "DMI_ENTRY_32_MEM_ERROR", value: 18, isUnsigned: true)
!147 = !DIEnumerator(name: "DMI_ENTRY_MEM_ARRAY_MAPPED_ADDR", value: 19, isUnsigned: true)
!148 = !DIEnumerator(name: "DMI_ENTRY_MEM_DEV_MAPPED_ADDR", value: 20, isUnsigned: true)
!149 = !DIEnumerator(name: "DMI_ENTRY_BUILTIN_POINTING_DEV", value: 21, isUnsigned: true)
!150 = !DIEnumerator(name: "DMI_ENTRY_PORTABLE_BATTERY", value: 22, isUnsigned: true)
!151 = !DIEnumerator(name: "DMI_ENTRY_SYSTEM_RESET", value: 23, isUnsigned: true)
!152 = !DIEnumerator(name: "DMI_ENTRY_HW_SECURITY", value: 24, isUnsigned: true)
!153 = !DIEnumerator(name: "DMI_ENTRY_SYSTEM_POWER_CONTROLS", value: 25, isUnsigned: true)
!154 = !DIEnumerator(name: "DMI_ENTRY_VOLTAGE_PROBE", value: 26, isUnsigned: true)
!155 = !DIEnumerator(name: "DMI_ENTRY_COOLING_DEV", value: 27, isUnsigned: true)
!156 = !DIEnumerator(name: "DMI_ENTRY_TEMP_PROBE", value: 28, isUnsigned: true)
!157 = !DIEnumerator(name: "DMI_ENTRY_ELECTRICAL_CURRENT_PROBE", value: 29, isUnsigned: true)
!158 = !DIEnumerator(name: "DMI_ENTRY_OOB_REMOTE_ACCESS", value: 30, isUnsigned: true)
!159 = !DIEnumerator(name: "DMI_ENTRY_BIS_ENTRY", value: 31, isUnsigned: true)
!160 = !DIEnumerator(name: "DMI_ENTRY_SYSTEM_BOOT", value: 32, isUnsigned: true)
!161 = !DIEnumerator(name: "DMI_ENTRY_MGMT_DEV", value: 33, isUnsigned: true)
!162 = !DIEnumerator(name: "DMI_ENTRY_MGMT_DEV_COMPONENT", value: 34, isUnsigned: true)
!163 = !DIEnumerator(name: "DMI_ENTRY_MGMT_DEV_THRES", value: 35, isUnsigned: true)
!164 = !DIEnumerator(name: "DMI_ENTRY_MEM_CHANNEL", value: 36, isUnsigned: true)
!165 = !DIEnumerator(name: "DMI_ENTRY_IPMI_DEV", value: 37, isUnsigned: true)
!166 = !DIEnumerator(name: "DMI_ENTRY_SYS_POWER_SUPPLY", value: 38, isUnsigned: true)
!167 = !DIEnumerator(name: "DMI_ENTRY_ADDITIONAL", value: 39, isUnsigned: true)
!168 = !DIEnumerator(name: "DMI_ENTRY_ONBOARD_DEV_EXT", value: 40, isUnsigned: true)
!169 = !DIEnumerator(name: "DMI_ENTRY_MGMT_CONTROLLER_HOST", value: 41, isUnsigned: true)
!170 = !DIEnumerator(name: "DMI_ENTRY_INACTIVE", value: 126, isUnsigned: true)
!171 = !DIEnumerator(name: "DMI_ENTRY_END_OF_TABLE", value: 127, isUnsigned: true)
!172 = !{!173, !174, !190, !195, !193, !196, !198, !200, !186, !202, !207, !211, !212, !36, !206, !214, !216, !209, !217, !208, !219, !220, !221, !222}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_device", file: !35, line: 82, size: 320, elements: !176)
!176 = !{!177, !184, !185, !189}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !175, file: !35, line: 83, baseType: !178, size: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !179, line: 178, size: 128, elements: !180)
!179 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !179, line: 179, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !179, line: 179, baseType: !182, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !35, line: 84, baseType: !36, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !35, line: 85, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "device_data", scope: !175, file: !35, line: 86, baseType: !173, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !192, line: 32, baseType: !193)
!192 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !194, line: 27, baseType: !7)
!194 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !192, line: 31, baseType: !193)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !192, line: 33, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !194, line: 31, baseType: !201)
!201 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !204, line: 17, baseType: !205)
!204 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !194, line: 21, baseType: !206)
!206 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !204, line: 19, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !194, line: 24, baseType: !210)
!210 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !182)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !192, line: 30, baseType: !209)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !192, line: 29, baseType: !209)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !204, line: 23, baseType: !200)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !204, line: 21, baseType: !193)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_header", file: !35, line: 76, size: 32, elements: !225)
!225 = !{!226, !227, !228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !224, file: !35, line: 77, baseType: !203, size: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !224, file: !35, line: 78, baseType: !203, size: 8, offset: 8)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !224, file: !35, line: 79, baseType: !208, size: 16, offset: 16)
!229 = !{!0, !230, !239, !3425, !3427, !3432, !3442, !3444, !3446, !3451, !3453, !3455, !3457, !3460, !3462, !3464, !3466, !3469, !3474}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "fields", scope: !232, file: !3, line: 958, type: !236, isLocal: true, isDefinition: true)
!232 = distinct !DISubprogram(name: "dmi_name_in_vendors", scope: !3, file: !3, line: 956, type: !233, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{!36, !186}
!235 = !{}
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 96, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 3)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "dmi_kobj", scope: !2, file: !3, line: 18, type: !241, isLocal: false, isDefinition: true)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !243, line: 64, size: 512, elements: !244)
!243 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!244 = !{!245, !246, !247, !248, !304, !3288, !3415, !3420, !3421, !3422, !3423, !3424}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !243, line: 65, baseType: !186, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !242, file: !243, line: 66, baseType: !178, size: 128, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !243, line: 67, baseType: !241, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !242, file: !243, line: 68, baseType: !249, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !243, line: 192, size: 704, elements: !251)
!251 = !{!252, !253, !268, !269}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !250, file: !243, line: 193, baseType: !178, size: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !250, file: !243, line: 194, baseType: !254, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !255, line: 83, baseType: !256)
!255 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !255, line: 71, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !255, line: 72, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 72, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !259, file: !255, line: 73, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !255, line: 20, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !262, file: !255, line: 21, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !266, line: 25, baseType: !267)
!266 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 25, elements: !235)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !250, file: !243, line: 195, baseType: !242, size: 512, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !250, file: !243, line: 196, baseType: !270, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !243, line: 156, size: 192, elements: !273)
!273 = !{!274, !279, !284}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !272, file: !243, line: 157, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!36, !249, !241}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !243, line: 158, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!186, !249, !241}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !272, file: !243, line: 159, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!36, !249, !241, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !243, line: 148, size: 20736, elements: !291)
!291 = !{!292, !294, !298, !299, !303}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !290, file: !243, line: 149, baseType: !293, size: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 192, elements: !237)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !290, file: !243, line: 150, baseType: !295, size: 4096, offset: 192)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 4096, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !290, file: !243, line: 151, baseType: !36, size: 32, offset: 4288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !290, file: !243, line: 152, baseType: !300, size: 16384, offset: 4320)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 16384, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 2048)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !290, file: !243, line: 153, baseType: !36, size: 32, offset: 20704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !242, file: !243, line: 69, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !243, line: 138, size: 448, elements: !307)
!307 = !{!308, !312, !341, !343, !3250, !3278, !3282}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !243, line: 139, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !241}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !306, file: !243, line: 140, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !316, line: 230, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !333}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !315, file: !316, line: 231, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !241, !327, !211}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !179, line: 60, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !324, line: 73, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !324, line: 15, baseType: !326)
!326 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !316, line: 30, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !316, line: 31, baseType: !186, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !328, file: !316, line: 32, baseType: !332, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !179, line: 19, baseType: !210)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !315, file: !316, line: 232, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!322, !241, !327, !186, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !179, line: 55, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !340)
!340 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !306, file: !243, line: 141, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !306, file: !243, line: 142, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !316, line: 84, size: 320, elements: !348)
!348 = !{!349, !350, !354, !3247, !3248}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !316, line: 85, baseType: !186, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !347, file: !316, line: 86, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!332, !241, !327, !36}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !347, file: !316, line: 88, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!332, !241, !358, !36}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !316, line: 168, size: 448, elements: !360)
!360 = !{!361, !362, !363, !364, !3242, !3243}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !316, line: 169, baseType: !328, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !359, file: !316, line: 170, baseType: !337, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !359, file: !316, line: 171, baseType: !173, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !359, file: !316, line: 172, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!322, !368, !241, !358, !211, !539, !337}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !99, line: 916, size: 1856, align: 32, elements: !370)
!370 = !{!371, !389, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3225, !3226, !3235, !3236, !3237, !3238, !3239, !3240, !3241}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !369, file: !99, line: 920, baseType: !372, size: 128)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !99, line: 917, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !372, file: !99, line: 918, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !376, line: 58, size: 64, elements: !377)
!376 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !376, line: 59, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !372, file: !99, line: 919, baseType: !381, size: 128, align: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !179, line: 216, size: 128, align: 64, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !179, line: 217, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !381, file: !179, line: 218, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !384}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !369, file: !99, line: 921, baseType: !390, size: 128, offset: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !391, line: 8, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !390, file: !391, line: 9, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !396, line: 18, flags: DIFlagFwdDecl)
!396 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !390, file: !391, line: 10, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !396, line: 89, size: 1536, elements: !400)
!400 = !{!401, !402, !412, !420, !421, !436, !3176, !3178, !3190, !3191, !3192, !3193, !3194, !3199, !3200, !3201}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !399, file: !396, line: 91, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !399, file: !396, line: 92, baseType: !403, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !404, line: 277, baseType: !405)
!404 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !404, line: 277, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !405, file: !404, line: 277, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !404, line: 70, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !404, line: 65, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !409, file: !404, line: 66, baseType: !7, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !399, file: !396, line: 93, baseType: !413, size: 128, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !414, line: 38, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !414, line: 39, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !413, file: !414, line: 39, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !399, file: !396, line: 94, baseType: !398, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !399, file: !396, line: 95, baseType: !422, size: 128, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !396, line: 47, size: 128, elements: !423)
!423 = !{!424, !433}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !396, line: 48, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !396, line: 48, size: 64, elements: !426)
!426 = !{!427, !432}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !396, line: 49, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !396, line: 49, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !428, file: !396, line: 50, baseType: !220, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !428, file: !396, line: 50, baseType: !220, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !425, file: !396, line: 52, baseType: !219, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !422, file: !396, line: 54, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !399, file: !396, line: 96, baseType: !437, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !99, line: 610, size: 4224, elements: !439)
!439 = !{!440, !441, !442, !450, !457, !458, !606, !2872, !2873, !2874, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !3144, !3152, !3153, !3154, !3172, !3173, !3174, !3175}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !438, file: !99, line: 611, baseType: !332, size: 16)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !438, file: !99, line: 612, baseType: !210, size: 16, offset: 16)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !438, file: !99, line: 613, baseType: !443, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !444, line: 23, baseType: !445)
!444 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 21, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !444, line: 22, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !179, line: 32, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !324, line: 49, baseType: !7)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !438, file: !99, line: 614, baseType: !451, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !444, line: 28, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 26, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !452, file: !444, line: 27, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !179, line: 33, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !324, line: 50, baseType: !7)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !438, file: !99, line: 615, baseType: !7, size: 32, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !438, file: !99, line: 622, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !99, line: 1864, size: 1536, align: 512, elements: !462)
!462 = !{!463, !467, !480, !484, !490, !494, !500, !504, !508, !512, !516, !517, !523, !527, !553, !582, !586, !592, !597, !601, !602}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !461, file: !99, line: 1865, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!398, !437, !398, !7}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !461, file: !99, line: 1866, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!186, !398, !437, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !473, line: 10, size: 128, elements: !474)
!473 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!474 = !{!475, !479}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !472, file: !473, line: 11, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !173}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !472, file: !473, line: 12, baseType: !173, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !461, file: !99, line: 1867, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!36, !437, !36}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !461, file: !99, line: 1868, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !437, !36}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !99, line: 581, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !461, file: !99, line: 1870, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!36, !398, !211, !36}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !461, file: !99, line: 1872, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!36, !437, !398, !332, !498}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !179, line: 30, baseType: !499)
!499 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !461, file: !99, line: 1873, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!36, !398, !437, !398}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !461, file: !99, line: 1874, baseType: !505, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!36, !437, !398}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !461, file: !99, line: 1875, baseType: !509, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!36, !437, !398, !186}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !461, file: !99, line: 1876, baseType: !513, size: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!36, !437, !398, !332}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !461, file: !99, line: 1877, baseType: !505, size: 64, offset: 640)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !461, file: !99, line: 1878, baseType: !518, size: 64, offset: 704)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!36, !437, !398, !332, !521}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !179, line: 16, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !179, line: 13, baseType: !220)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !461, file: !99, line: 1879, baseType: !524, size: 64, offset: 768)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!36, !437, !398, !437, !398, !7}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !461, file: !99, line: 1881, baseType: !528, size: 64, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!36, !398, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !99, line: 219, size: 640, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !542, !550, !551, !552}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !532, file: !99, line: 220, baseType: !7, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !532, file: !99, line: 221, baseType: !332, size: 16, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !532, file: !99, line: 222, baseType: !443, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !532, file: !99, line: 223, baseType: !451, size: 32, offset: 96)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !532, file: !99, line: 224, baseType: !539, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !179, line: 46, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !324, line: 88, baseType: !541)
!541 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !532, file: !99, line: 225, baseType: !543, size: 128, offset: 192)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !544, line: 13, size: 128, elements: !545)
!544 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!545 = !{!546, !549}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !543, file: !544, line: 14, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !544, line: 8, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !194, line: 30, baseType: !541)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !543, file: !544, line: 15, baseType: !326, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !532, file: !99, line: 226, baseType: !543, size: 128, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !532, file: !99, line: 227, baseType: !543, size: 128, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !532, file: !99, line: 234, baseType: !368, size: 64, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !461, file: !99, line: 1882, baseType: !554, size: 64, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!36, !557, !559, !220, !7}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !561, line: 22, size: 1152, elements: !562)
!561 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!562 = !{!563, !564, !565, !566, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !560, file: !561, line: 23, baseType: !220, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !560, file: !561, line: 24, baseType: !332, size: 16, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !560, file: !561, line: 25, baseType: !7, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !560, file: !561, line: 26, baseType: !567, size: 32, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !179, line: 104, baseType: !220)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !560, file: !561, line: 27, baseType: !219, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !560, file: !561, line: 28, baseType: !219, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !560, file: !561, line: 37, baseType: !219, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !560, file: !561, line: 38, baseType: !521, size: 32, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !560, file: !561, line: 39, baseType: !521, size: 32, offset: 352)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !560, file: !561, line: 40, baseType: !443, size: 32, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !560, file: !561, line: 41, baseType: !451, size: 32, offset: 416)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !560, file: !561, line: 42, baseType: !539, size: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !560, file: !561, line: 43, baseType: !543, size: 128, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !560, file: !561, line: 44, baseType: !543, size: 128, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !560, file: !561, line: 45, baseType: !543, size: 128, offset: 768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !560, file: !561, line: 46, baseType: !543, size: 128, offset: 896)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !560, file: !561, line: 47, baseType: !219, size: 64, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !560, file: !561, line: 48, baseType: !219, size: 64, offset: 1088)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !461, file: !99, line: 1883, baseType: !583, size: 64, offset: 960)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!322, !398, !211, !337}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !461, file: !99, line: 1884, baseType: !587, size: 64, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!36, !437, !590, !219, !219}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !99, line: 50, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !461, file: !99, line: 1886, baseType: !593, size: 64, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!36, !437, !596, !36}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !461, file: !99, line: 1887, baseType: !598, size: 64, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!36, !437, !398, !368, !7, !332}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !461, file: !99, line: 1890, baseType: !513, size: 64, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !461, file: !99, line: 1891, baseType: !603, size: 64, offset: 1280)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!36, !437, !488, !36}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !438, file: !99, line: 623, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !99, line: 1416, size: 9472, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !665, !2479, !2561, !2644, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2660, !2664, !2665, !2668, !2669, !2672, !2673, !2674, !2715, !2742, !2743, !2744, !2745, !2746, !2747, !2750, !2752, !2759, !2760, !2762, !2763, !2764, !2823, !2824, !2839, !2840, !2841, !2842, !2843, !2846, !2847, !2848, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !608, file: !99, line: 1417, baseType: !178, size: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !608, file: !99, line: 1418, baseType: !521, size: 32, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !608, file: !99, line: 1419, baseType: !206, size: 8, offset: 160)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !608, file: !99, line: 1420, baseType: !340, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !608, file: !99, line: 1421, baseType: !539, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !608, file: !99, line: 1422, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !99, line: 2228, size: 576, elements: !618)
!618 = !{!619, !620, !621, !628, !632, !636, !640, !644, !645, !655, !658, !659, !660, !662, !663, !664}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !617, file: !99, line: 2229, baseType: !186, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !617, file: !99, line: 2230, baseType: !36, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !617, file: !99, line: 2238, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!36, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !627, line: 28, flags: DIFlagFwdDecl)
!627 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !617, file: !99, line: 2239, baseType: !629, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !99, line: 70, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !617, file: !99, line: 2240, baseType: !633, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!398, !616, !36, !186, !173}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !617, file: !99, line: 2242, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !607}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !617, file: !99, line: 2243, baseType: !641, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !643, line: 189, flags: DIFlagFwdDecl)
!643 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !99, line: 2244, baseType: !616, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !617, file: !99, line: 2245, baseType: !646, size: 64, offset: 512)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !179, line: 182, size: 64, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !646, file: !179, line: 183, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !179, line: 186, size: 128, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !179, line: 187, baseType: !649, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !650, file: !179, line: 187, baseType: !654, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !617, file: !99, line: 2247, baseType: !656, offset: 576)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !657, line: 187, elements: !235)
!657 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !617, file: !99, line: 2248, baseType: !656, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !617, file: !99, line: 2249, baseType: !656, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !617, file: !99, line: 2250, baseType: !661, offset: 576)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, elements: !237)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !617, file: !99, line: 2252, baseType: !656, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !617, file: !99, line: 2253, baseType: !656, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !617, file: !99, line: 2254, baseType: !656, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !608, file: !99, line: 1423, baseType: !666, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !99, line: 1935, size: 1472, elements: !669)
!669 = !{!670, !674, !678, !679, !683, !689, !693, !694, !695, !699, !703, !704, !705, !706, !712, !717, !718, !774, !775, !776, !777, !2463, !2478}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !668, file: !99, line: 1936, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!437, !607}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !668, file: !99, line: 1937, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !437}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !668, file: !99, line: 1938, baseType: !675, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !668, file: !99, line: 1940, baseType: !680, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !437, !36}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !668, file: !99, line: 1941, baseType: !684, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!36, !437, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !99, line: 289, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !668, file: !99, line: 1942, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!36, !437}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !668, file: !99, line: 1943, baseType: !675, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !668, file: !99, line: 1944, baseType: !637, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !668, file: !99, line: 1945, baseType: !696, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!36, !607, !36}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !668, file: !99, line: 1946, baseType: !700, size: 64, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!36, !607}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !668, file: !99, line: 1947, baseType: !700, size: 64, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !668, file: !99, line: 1948, baseType: !700, size: 64, offset: 704)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !668, file: !99, line: 1949, baseType: !700, size: 64, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !668, file: !99, line: 1950, baseType: !707, size: 64, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!36, !398, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !99, line: 57, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !668, file: !99, line: 1951, baseType: !713, size: 64, offset: 896)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!36, !607, !716, !211}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !668, file: !99, line: 1952, baseType: !637, size: 64, offset: 960)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !668, file: !99, line: 1954, baseType: !719, size: 64, offset: 1024)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!36, !722, !398}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !724, line: 16, size: 896, elements: !725)
!724 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !747, !769, !770, !773}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !723, file: !724, line: 17, baseType: !211, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !723, file: !724, line: 18, baseType: !337, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !723, file: !724, line: 19, baseType: !337, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !723, file: !724, line: 20, baseType: !337, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !723, file: !724, line: 21, baseType: !337, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !723, file: !724, line: 22, baseType: !539, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !723, file: !724, line: 23, baseType: !539, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !723, file: !724, line: 24, baseType: !734, size: 192, offset: 448)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !735, line: 53, size: 192, elements: !736)
!735 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !745, !746}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !734, file: !735, line: 54, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !739, line: 13, baseType: !740)
!739 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !179, line: 175, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 173, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !741, file: !179, line: 174, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !204, line: 22, baseType: !548)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !734, file: !735, line: 55, baseType: !254, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !734, file: !735, line: 59, baseType: !178, size: 128, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !723, file: !724, line: 25, baseType: !748, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !724, line: 31, size: 256, elements: !751)
!751 = !{!752, !757, !761, !765}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !750, file: !724, line: 32, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!173, !722, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !750, file: !724, line: 33, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !722, !173}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !724, line: 34, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!173, !722, !173, !756}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !750, file: !724, line: 35, baseType: !766, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!36, !722, !173}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !723, file: !724, line: 26, baseType: !36, size: 32, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !723, file: !724, line: 27, baseType: !771, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !723, file: !724, line: 28, baseType: !173, size: 64, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !668, file: !99, line: 1955, baseType: !719, size: 64, offset: 1088)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !668, file: !99, line: 1956, baseType: !719, size: 64, offset: 1152)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !668, file: !99, line: 1957, baseType: !719, size: 64, offset: 1216)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !668, file: !99, line: 1963, baseType: !778, size: 64, offset: 1280)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!36, !607, !781, !804}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !783, line: 68, size: 512, align: 128, elements: !784)
!783 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !786, !2455, !2462}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !783, line: 69, baseType: !340, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 77, baseType: !787, size: 320, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 77, size: 320, elements: !788)
!788 = !{!789, !968, !973, !1001, !1009, !1015, !2386, !2454}
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !783, line: 78, baseType: !790, size: 320)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !783, line: 78, size: 320, elements: !791)
!791 = !{!792, !793, !966, !967}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !790, file: !783, line: 84, baseType: !178, size: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !790, file: !783, line: 86, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !99, line: 451, size: 1216, align: 64, elements: !796)
!796 = !{!797, !798, !806, !807, !812, !827, !836, !837, !838, !839, !959, !960, !963, !964, !965}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !795, file: !99, line: 452, baseType: !437, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !795, file: !99, line: 453, baseType: !799, size: 128, offset: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !800, line: 292, size: 128, elements: !801)
!800 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !803, !805}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !799, file: !800, line: 293, baseType: !254)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !799, file: !800, line: 295, baseType: !804, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !179, line: 148, baseType: !7)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !799, file: !800, line: 296, baseType: !173, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !795, file: !99, line: 454, baseType: !804, size: 32, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !795, file: !99, line: 455, baseType: !808, size: 32, offset: 224)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !179, line: 168, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 166, size: 32, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !809, file: !179, line: 167, baseType: !36, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !795, file: !99, line: 460, baseType: !813, size: 128, offset: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !814, line: 125, size: 128, elements: !815)
!814 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!815 = !{!816, !826}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !813, file: !814, line: 126, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !814, line: 31, size: 64, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !817, file: !814, line: 32, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !814, line: 24, size: 192, align: 64, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !821, file: !814, line: 25, baseType: !340, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !821, file: !814, line: 26, baseType: !820, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !821, file: !814, line: 27, baseType: !820, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !813, file: !814, line: 127, baseType: !820, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !795, file: !99, line: 461, baseType: !828, size: 256, offset: 384)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !829, line: 35, size: 256, elements: !830)
!829 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!830 = !{!831, !832, !833, !835}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !828, file: !829, line: 36, baseType: !738, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !828, file: !829, line: 42, baseType: !738, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !828, file: !829, line: 46, baseType: !834, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !255, line: 29, baseType: !262)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !828, file: !829, line: 47, baseType: !178, size: 128, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !795, file: !99, line: 462, baseType: !340, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !795, file: !99, line: 463, baseType: !340, size: 64, offset: 704)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !795, file: !99, line: 464, baseType: !340, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !795, file: !99, line: 465, baseType: !840, size: 64, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !99, line: 367, size: 1408, elements: !843)
!843 = !{!844, !848, !852, !856, !860, !864, !870, !876, !880, !885, !889, !893, !897, !923, !927, !933, !934, !935, !939, !944, !948, !955}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !842, file: !99, line: 368, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!36, !781, !687}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !842, file: !99, line: 369, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!36, !368, !781}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !842, file: !99, line: 372, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!36, !794, !687}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !842, file: !99, line: 375, baseType: !857, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!36, !781}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !842, file: !99, line: 381, baseType: !861, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!36, !368, !794, !182, !7}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !842, file: !99, line: 383, baseType: !865, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !99, line: 290, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !842, file: !99, line: 385, baseType: !871, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!36, !368, !794, !539, !7, !7, !874, !875}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !842, file: !99, line: 388, baseType: !877, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!36, !368, !794, !539, !7, !7, !781, !173}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !842, file: !99, line: 393, baseType: !881, size: 64, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!884, !794, !884}
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !179, line: 125, baseType: !219)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !842, file: !99, line: 394, baseType: !886, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !781, !7, !7}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !842, file: !99, line: 395, baseType: !890, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!36, !781, !804}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !842, file: !99, line: 396, baseType: !894, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !781}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !842, file: !99, line: 397, baseType: !898, size: 64, offset: 768)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!322, !901, !921}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !99, line: 320, size: 384, elements: !903)
!903 = !{!904, !905, !906, !910, !911, !912, !913, !914}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !902, file: !99, line: 321, baseType: !368, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !902, file: !99, line: 326, baseType: !539, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !902, file: !99, line: 327, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !901, !326, !326}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !902, file: !99, line: 328, baseType: !173, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !902, file: !99, line: 329, baseType: !36, size: 32, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !902, file: !99, line: 330, baseType: !208, size: 16, offset: 288)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !902, file: !99, line: 331, baseType: !208, size: 16, offset: 304)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !99, line: 332, baseType: !915, size: 64, offset: 320)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !99, line: 332, size: 64, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !915, file: !99, line: 333, baseType: !7, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !915, file: !99, line: 334, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !99, line: 334, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !99, line: 64, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !842, file: !99, line: 402, baseType: !924, size: 64, offset: 832)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!36, !794, !781, !781, !61}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !842, file: !99, line: 404, baseType: !928, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!498, !781, !931}
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !932, line: 305, baseType: !7)
!932 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!933 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !842, file: !99, line: 405, baseType: !894, size: 64, offset: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !842, file: !99, line: 406, baseType: !857, size: 64, offset: 1024)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !842, file: !99, line: 407, baseType: !936, size: 64, offset: 1088)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!36, !781, !340, !340}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !842, file: !99, line: 409, baseType: !940, size: 64, offset: 1152)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !781, !943, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !842, file: !99, line: 410, baseType: !945, size: 64, offset: 1216)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!36, !794, !781}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !842, file: !99, line: 413, baseType: !949, size: 64, offset: 1280)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!36, !952, !368, !954}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !99, line: 61, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !842, file: !99, line: 415, baseType: !956, size: 64, offset: 1344)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !368}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !99, line: 466, baseType: !340, size: 64, offset: 896)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !795, file: !99, line: 467, baseType: !961, size: 32, offset: 960)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !962, line: 8, baseType: !220)
!962 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!963 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !795, file: !99, line: 468, baseType: !254, offset: 992)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !795, file: !99, line: 469, baseType: !178, size: 128, offset: 1024)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !795, file: !99, line: 470, baseType: !173, size: 64, offset: 1152)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !790, file: !783, line: 87, baseType: !340, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !790, file: !783, line: 94, baseType: !340, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !783, line: 96, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !783, line: 96, size: 64, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !969, file: !783, line: 101, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !179, line: 143, baseType: !219)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !783, line: 103, baseType: !974, size: 320)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !783, line: 103, size: 320, elements: !975)
!975 = !{!976, !986, !989, !990}
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !783, line: 104, baseType: !977, size: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !783, line: 104, size: 128, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !977, file: !783, line: 105, baseType: !178, size: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !783, line: 106, baseType: !981, size: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !783, line: 106, size: 128, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !981, file: !783, line: 107, baseType: !781, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !981, file: !783, line: 109, baseType: !36, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !981, file: !783, line: 110, baseType: !36, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !974, file: !783, line: 117, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !783, line: 117, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !974, file: !783, line: 119, baseType: !173, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !783, line: 120, baseType: !991, size: 64, offset: 256)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !783, line: 120, size: 64, elements: !992)
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !991, file: !783, line: 121, baseType: !173, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !991, file: !783, line: 122, baseType: !340, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !783, line: 123, baseType: !996, size: 32)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !991, file: !783, line: 123, size: 32, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !996, file: !783, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !996, file: !783, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !996, file: !783, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !783, line: 130, baseType: !1002, size: 192)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !783, line: 130, size: 192, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1002, file: !783, line: 131, baseType: !340, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1002, file: !783, line: 134, baseType: !206, size: 8, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1002, file: !783, line: 135, baseType: !206, size: 8, offset: 72)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1002, file: !783, line: 136, baseType: !808, size: 32, offset: 96)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1002, file: !783, line: 137, baseType: !7, size: 32, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !783, line: 139, baseType: !1010, size: 256)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !783, line: 139, size: 256, elements: !1011)
!1011 = !{!1012, !1013, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1010, file: !783, line: 140, baseType: !340, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1010, file: !783, line: 141, baseType: !808, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1010, file: !783, line: 143, baseType: !178, size: 128, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !783, line: 145, baseType: !1016, size: 256)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !783, line: 145, size: 256, elements: !1017)
!1017 = !{!1018, !1019, !1022, !1023, !2385}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1016, file: !783, line: 146, baseType: !340, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1016, file: !783, line: 147, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1021, line: 509, baseType: !781)
!1021 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1016, file: !783, line: 148, baseType: !340, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !783, line: 149, baseType: !1024, size: 64, offset: 192)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !783, line: 149, size: 64, elements: !1025)
!1025 = !{!1026, !2384}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1024, file: !783, line: 150, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !783, line: 388, size: 7296, elements: !1029)
!1029 = !{!1030, !2380}
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !783, line: 389, baseType: !1031, size: 7296)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1028, file: !783, line: 389, size: 7296, elements: !1032)
!1032 = !{!1033, !1151, !1152, !1153, !1157, !1158, !1159, !1160, !1161, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1202, !1210, !1213, !1253, !1254, !2364, !2365, !2368, !2369, !2370, !2373, !2374, !2375, !2378, !2379}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1031, file: !783, line: 390, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !783, line: 305, size: 1472, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1051, !1052, !1057, !1058, !1061, !1145, !1146, !1147, !1148, !1149}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1035, file: !783, line: 308, baseType: !340, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1035, file: !783, line: 309, baseType: !340, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1035, file: !783, line: 313, baseType: !1034, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1035, file: !783, line: 313, baseType: !1034, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1035, file: !783, line: 315, baseType: !821, size: 192, align: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1035, file: !783, line: 323, baseType: !340, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1035, file: !783, line: 327, baseType: !1027, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1035, file: !783, line: 333, baseType: !1045, size: 64, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1021, line: 284, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1021, line: 284, size: 64, elements: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1046, file: !1021, line: 284, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1050, line: 19, baseType: !340)
!1050 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1035, file: !783, line: 334, baseType: !340, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1035, file: !783, line: 343, baseType: !1053, size: 256, offset: 704)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !783, line: 340, size: 256, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1053, file: !783, line: 341, baseType: !821, size: 192, align: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1053, file: !783, line: 342, baseType: !340, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1035, file: !783, line: 351, baseType: !178, size: 128, offset: 960)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1035, file: !783, line: 353, baseType: !1059, size: 64, offset: 1088)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !783, line: 353, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1035, file: !783, line: 356, baseType: !1062, size: 64, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !69, line: 557, size: 832, elements: !1065)
!1065 = !{!1066, !1070, !1071, !1075, !1079, !1119, !1123, !1127, !1131, !1132, !1133, !1137, !1141}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1064, file: !69, line: 558, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !1034}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1064, file: !69, line: 559, baseType: !1067, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1064, file: !69, line: 560, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!36, !1034, !340}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1064, file: !69, line: 561, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!36, !1034}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1064, file: !69, line: 562, baseType: !1080, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !783, line: 682, baseType: !7)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !69, line: 508, size: 768, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1099, !1106, !1112, !1113, !1114, !1116, !1118}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1085, file: !69, line: 509, baseType: !1034, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !69, line: 510, baseType: !7, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1085, file: !69, line: 511, baseType: !804, size: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1085, file: !69, line: 512, baseType: !340, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1085, file: !69, line: 513, baseType: !340, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1085, file: !69, line: 514, baseType: !1093, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1021, line: 385, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1021, line: 385, size: 64, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1095, file: !1021, line: 385, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1050, line: 15, baseType: !340)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1085, file: !69, line: 516, baseType: !1100, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1021, line: 359, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1021, line: 359, size: 64, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1102, file: !1021, line: 359, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1050, line: 16, baseType: !340)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1085, file: !69, line: 519, baseType: !1107, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1050, line: 21, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1050, line: 21, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1108, file: !1050, line: 21, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1050, line: 14, baseType: !340)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1085, file: !69, line: 521, baseType: !781, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1085, file: !69, line: 522, baseType: !781, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1085, file: !69, line: 528, baseType: !1115, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1085, file: !69, line: 532, baseType: !1117, size: 64, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1085, file: !69, line: 536, baseType: !1020, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1064, file: !69, line: 563, baseType: !1120, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!1083, !1084, !68}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1064, file: !69, line: 565, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !1084, !340, !340}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1064, file: !69, line: 567, baseType: !1128, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!340, !1034}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1064, file: !69, line: 571, baseType: !1080, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1064, file: !69, line: 574, baseType: !1080, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1064, file: !69, line: 579, baseType: !1134, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!36, !1034, !340, !173, !36, !36}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1064, file: !69, line: 585, baseType: !1138, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!186, !1034}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1064, file: !69, line: 615, baseType: !1142, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!781, !1034, !340}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1035, file: !783, line: 359, baseType: !340, size: 64, offset: 1216)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1035, file: !783, line: 361, baseType: !368, size: 64, offset: 1280)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1035, file: !783, line: 362, baseType: !173, size: 64, offset: 1344)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1035, file: !783, line: 365, baseType: !738, size: 64, offset: 1408)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1035, file: !783, line: 373, baseType: !1150, offset: 1472)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !783, line: 296, elements: !235)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1031, file: !783, line: 391, baseType: !817, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1031, file: !783, line: 392, baseType: !219, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1031, file: !783, line: 394, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!340, !368, !340, !340, !340, !340}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1031, file: !783, line: 398, baseType: !340, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1031, file: !783, line: 399, baseType: !340, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1031, file: !783, line: 405, baseType: !340, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1031, file: !783, line: 406, baseType: !340, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1031, file: !783, line: 407, baseType: !1162, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1021, line: 286, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1021, line: 286, size: 64, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1164, file: !1021, line: 286, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1050, line: 18, baseType: !340)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1031, file: !783, line: 416, baseType: !808, size: 32, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1031, file: !783, line: 428, baseType: !808, size: 32, offset: 608)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1031, file: !783, line: 437, baseType: !808, size: 32, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1031, file: !783, line: 447, baseType: !808, size: 32, offset: 672)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1031, file: !783, line: 450, baseType: !738, size: 64, offset: 704)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1031, file: !783, line: 452, baseType: !36, size: 32, offset: 768)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1031, file: !783, line: 454, baseType: !254, offset: 800)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1031, file: !783, line: 457, baseType: !828, size: 256, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1031, file: !783, line: 459, baseType: !178, size: 128, offset: 1088)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1031, file: !783, line: 466, baseType: !340, size: 64, offset: 1216)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1031, file: !783, line: 467, baseType: !340, size: 64, offset: 1280)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1031, file: !783, line: 469, baseType: !340, size: 64, offset: 1344)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1031, file: !783, line: 470, baseType: !340, size: 64, offset: 1408)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1031, file: !783, line: 471, baseType: !740, size: 64, offset: 1472)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1031, file: !783, line: 472, baseType: !340, size: 64, offset: 1536)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1031, file: !783, line: 473, baseType: !340, size: 64, offset: 1600)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1031, file: !783, line: 474, baseType: !340, size: 64, offset: 1664)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1031, file: !783, line: 475, baseType: !340, size: 64, offset: 1728)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1031, file: !783, line: 477, baseType: !254, offset: 1792)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1031, file: !783, line: 478, baseType: !340, size: 64, offset: 1792)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1031, file: !783, line: 478, baseType: !340, size: 64, offset: 1856)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1031, file: !783, line: 478, baseType: !340, size: 64, offset: 1920)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1031, file: !783, line: 478, baseType: !340, size: 64, offset: 1984)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1031, file: !783, line: 479, baseType: !340, size: 64, offset: 2048)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1031, file: !783, line: 479, baseType: !340, size: 64, offset: 2112)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1031, file: !783, line: 479, baseType: !340, size: 64, offset: 2176)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1031, file: !783, line: 480, baseType: !340, size: 64, offset: 2240)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1031, file: !783, line: 480, baseType: !340, size: 64, offset: 2304)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1031, file: !783, line: 480, baseType: !340, size: 64, offset: 2368)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1031, file: !783, line: 480, baseType: !340, size: 64, offset: 2432)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1031, file: !783, line: 482, baseType: !1199, size: 2816, offset: 2496)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2816, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 44)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1031, file: !783, line: 488, baseType: !1203, size: 256, offset: 5312)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1204, line: 60, size: 256, elements: !1205)
!1204 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1203, file: !1204, line: 61, baseType: !1207, size: 256)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 256, elements: !1208)
!1208 = !{!1209}
!1209 = !DISubrange(count: 4)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1031, file: !783, line: 490, baseType: !1211, size: 64, offset: 5568)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !783, line: 490, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1031, file: !783, line: 493, baseType: !1214, size: 896, offset: 5632)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1215, line: 53, baseType: !1216)
!1215 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 13, size: 896, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1224, !1225, !1226, !1227, !1247, !1248, !1249}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1216, file: !1215, line: 18, baseType: !219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1216, file: !1215, line: 28, baseType: !740, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1216, file: !1215, line: 31, baseType: !828, size: 256, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1216, file: !1215, line: 32, baseType: !1222, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1215, line: 32, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1216, file: !1215, line: 37, baseType: !210, size: 16, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1216, file: !1215, line: 40, baseType: !734, size: 192, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1216, file: !1215, line: 41, baseType: !173, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1216, file: !1215, line: 42, baseType: !1228, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1231, line: 13, size: 896, elements: !1232)
!1231 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1230, file: !1231, line: 14, baseType: !173, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1230, file: !1231, line: 15, baseType: !340, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1230, file: !1231, line: 17, baseType: !340, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1230, file: !1231, line: 17, baseType: !340, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1230, file: !1231, line: 19, baseType: !326, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1230, file: !1231, line: 21, baseType: !326, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1230, file: !1231, line: 22, baseType: !326, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1230, file: !1231, line: 23, baseType: !326, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1230, file: !1231, line: 24, baseType: !326, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1230, file: !1231, line: 25, baseType: !326, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1230, file: !1231, line: 26, baseType: !326, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1230, file: !1231, line: 27, baseType: !326, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1230, file: !1231, line: 28, baseType: !326, size: 64, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1230, file: !1231, line: 29, baseType: !326, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1216, file: !1215, line: 44, baseType: !808, size: 32, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1216, file: !1215, line: 50, baseType: !208, size: 16, offset: 864)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1216, file: !1215, line: 51, baseType: !1250, size: 16, offset: 880)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !204, line: 18, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !194, line: 23, baseType: !1252)
!1252 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1031, file: !783, line: 495, baseType: !340, size: 64, offset: 6528)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1031, file: !783, line: 497, baseType: !1255, size: 64, offset: 6592)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !783, line: 381, size: 384, elements: !1257)
!1257 = !{!1258, !1259, !2363}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1256, file: !783, line: 382, baseType: !808, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1256, file: !783, line: 383, baseType: !1260, size: 128, offset: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !783, line: 376, size: 128, elements: !1261)
!1261 = !{!1262, !2361}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1260, file: !783, line: 377, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1265, line: 640, size: 48640, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1273, !1275, !1276, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1293, !1311, !1322, !1405, !1406, !1407, !1418, !1419, !1421, !1422, !1423, !1424, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1507, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1545, !1547, !1548, !1549, !1561, !1562, !1563, !1564, !1565, !1566, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1590, !1595, !1779, !1780, !1781, !1782, !1786, !1789, !1792, !1795, !1798, !1802, !1903, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1949, !1950, !1951, !1952, !1953, !1958, !1959, !1960, !1963, !1964, !1967, !1970, !1973, !1976, !2019, !2022, !2023, !2102, !2103, !2106, !2107, !2110, !2111, !2112, !2116, !2117, !2118, !2131, !2132, !2133, !2143, !2148, !2151, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1264, file: !1265, line: 646, baseType: !1268, size: 128)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1269, line: 56, size: 128, elements: !1270)
!1269 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1268, file: !1269, line: 57, baseType: !340, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1268, file: !1269, line: 58, baseType: !220, size: 32, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1264, file: !1265, line: 649, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !326)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1264, file: !1265, line: 657, baseType: !173, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1264, file: !1265, line: 658, baseType: !1277, size: 32, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1278, line: 113, baseType: !1279)
!1278 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1278, line: 111, size: 32, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1279, file: !1278, line: 112, baseType: !808, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !1265, line: 660, baseType: !7, size: 32, offset: 288)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1264, file: !1265, line: 661, baseType: !7, size: 32, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1264, file: !1265, line: 684, baseType: !36, size: 32, offset: 352)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1264, file: !1265, line: 686, baseType: !36, size: 32, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1264, file: !1265, line: 687, baseType: !36, size: 32, offset: 416)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1264, file: !1265, line: 688, baseType: !36, size: 32, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1264, file: !1265, line: 689, baseType: !7, size: 32, offset: 480)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1264, file: !1265, line: 691, baseType: !1290, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1265, line: 691, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1264, file: !1265, line: 692, baseType: !1294, size: 832, offset: 576)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1265, line: 451, size: 832, elements: !1295)
!1295 = !{!1296, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1294, file: !1265, line: 453, baseType: !1297, size: 128)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1265, line: 325, size: 128, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1297, file: !1265, line: 326, baseType: !340, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1297, file: !1265, line: 327, baseType: !220, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1294, file: !1265, line: 454, baseType: !821, size: 192, align: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1294, file: !1265, line: 455, baseType: !178, size: 128, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1294, file: !1265, line: 456, baseType: !7, size: 32, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1294, file: !1265, line: 458, baseType: !219, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1294, file: !1265, line: 459, baseType: !219, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1294, file: !1265, line: 460, baseType: !219, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1294, file: !1265, line: 461, baseType: !219, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1294, file: !1265, line: 463, baseType: !219, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1294, file: !1265, line: 465, baseType: !1310, offset: 832)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1265, line: 415, elements: !235)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1264, file: !1265, line: 693, baseType: !1312, size: 384, offset: 1408)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1265, line: 489, size: 384, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1312, file: !1265, line: 490, baseType: !178, size: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1312, file: !1265, line: 491, baseType: !340, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1312, file: !1265, line: 492, baseType: !340, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1312, file: !1265, line: 493, baseType: !7, size: 32, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1312, file: !1265, line: 494, baseType: !210, size: 16, offset: 288)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1312, file: !1265, line: 495, baseType: !210, size: 16, offset: 304)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1312, file: !1265, line: 497, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1264, file: !1265, line: 697, baseType: !1323, size: 1792, offset: 1792)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1265, line: 507, size: 1792, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1402, !1403}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1323, file: !1265, line: 508, baseType: !821, size: 192, align: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1323, file: !1265, line: 515, baseType: !219, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1323, file: !1265, line: 516, baseType: !219, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1323, file: !1265, line: 517, baseType: !219, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1323, file: !1265, line: 518, baseType: !219, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1323, file: !1265, line: 519, baseType: !219, size: 64, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1323, file: !1265, line: 526, baseType: !744, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1323, file: !1265, line: 527, baseType: !219, size: 64, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1323, file: !1265, line: 528, baseType: !7, size: 32, offset: 640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1323, file: !1265, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1323, file: !1265, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1323, file: !1265, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1323, file: !1265, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1323, file: !1265, line: 563, baseType: !1339, size: 512, offset: 704)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !75, line: 118, size: 512, elements: !1340)
!1340 = !{!1341, !1349, !1350, !1355, !1398, !1399, !1400, !1401}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1339, file: !75, line: 119, baseType: !1342, size: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1343, line: 9, size: 256, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1342, file: !1343, line: 10, baseType: !821, size: 192, align: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1342, file: !1343, line: 11, baseType: !1347, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1348, line: 29, baseType: !744)
!1348 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1339, file: !75, line: 120, baseType: !1347, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1339, file: !75, line: 121, baseType: !1351, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!74, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1339, file: !75, line: 122, baseType: !1356, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !75, line: 159, size: 512, align: 512, elements: !1358)
!1358 = !{!1359, !1379, !1380, !1383, !1388, !1389, !1393, !1397}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1357, file: !75, line: 160, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !75, line: 214, size: 4608, align: 512, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1361, file: !75, line: 215, baseType: !834)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1361, file: !75, line: 216, baseType: !7, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1361, file: !75, line: 217, baseType: !7, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1361, file: !75, line: 218, baseType: !7, size: 32, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1361, file: !75, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1361, file: !75, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1361, file: !75, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1361, file: !75, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1361, file: !75, line: 233, baseType: !1347, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1361, file: !75, line: 234, baseType: !1354, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1361, file: !75, line: 235, baseType: !1347, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1361, file: !75, line: 236, baseType: !1354, size: 64, offset: 320)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1361, file: !75, line: 237, baseType: !1376, size: 4096, offset: 512)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1357, size: 4096, elements: !1377)
!1377 = !{!1378}
!1378 = !DISubrange(count: 8)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1357, file: !75, line: 161, baseType: !7, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1357, file: !75, line: 162, baseType: !1381, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !179, line: 27, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !324, line: 96, baseType: !36)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1357, file: !75, line: 163, baseType: !1384, size: 32, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !404, line: 276, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !404, line: 276, size: 32, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1385, file: !404, line: 276, baseType: !408, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1357, file: !75, line: 164, baseType: !1354, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1357, file: !75, line: 165, baseType: !1390, size: 128, offset: 256)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1343, line: 14, size: 128, elements: !1391)
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1390, file: !1343, line: 15, baseType: !813, size: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1357, file: !75, line: 166, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1347}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1357, file: !75, line: 167, baseType: !1347, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1339, file: !75, line: 123, baseType: !203, size: 8, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1339, file: !75, line: 124, baseType: !203, size: 8, offset: 456)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1339, file: !75, line: 125, baseType: !203, size: 8, offset: 464)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1339, file: !75, line: 126, baseType: !203, size: 8, offset: 472)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1323, file: !1265, line: 572, baseType: !1339, size: 512, offset: 1216)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1323, file: !1265, line: 580, baseType: !1404, size: 64, offset: 1728)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1264, file: !1265, line: 721, baseType: !7, size: 32, offset: 3584)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1264, file: !1265, line: 722, baseType: !36, size: 32, offset: 3616)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1264, file: !1265, line: 723, baseType: !1408, size: 64, offset: 3648)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1411, line: 17, baseType: !1412)
!1411 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1411, line: 17, size: 64, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1412, file: !1411, line: 17, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 1)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1264, file: !1265, line: 724, baseType: !1410, size: 64, offset: 3712)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1264, file: !1265, line: 749, baseType: !1420, offset: 3776)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1265, line: 290, elements: !235)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1264, file: !1265, line: 751, baseType: !178, size: 128, offset: 3776)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1264, file: !1265, line: 757, baseType: !1027, size: 64, offset: 3904)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1264, file: !1265, line: 758, baseType: !1027, size: 64, offset: 3968)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1264, file: !1265, line: 761, baseType: !1425, size: 320, offset: 4032)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1204, line: 34, size: 320, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1425, file: !1204, line: 35, baseType: !219, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1425, file: !1204, line: 36, baseType: !1429, size: 256, offset: 64)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 256, elements: !1208)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1264, file: !1265, line: 766, baseType: !36, size: 32, offset: 4352)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1264, file: !1265, line: 767, baseType: !36, size: 32, offset: 4384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1264, file: !1265, line: 768, baseType: !36, size: 32, offset: 4416)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1264, file: !1265, line: 770, baseType: !36, size: 32, offset: 4448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1264, file: !1265, line: 772, baseType: !340, size: 64, offset: 4480)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1264, file: !1265, line: 775, baseType: !7, size: 32, offset: 4544)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1264, file: !1265, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1264, file: !1265, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1264, file: !1265, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1264, file: !1265, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1264, file: !1265, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1264, file: !1265, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1264, file: !1265, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1264, file: !1265, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1264, file: !1265, line: 831, baseType: !340, size: 64, offset: 4672)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1264, file: !1265, line: 833, baseType: !1446, size: 384, offset: 4736)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !80, line: 25, size: 384, elements: !1447)
!1447 = !{!1448, !1453}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1446, file: !80, line: 26, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!326, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !80, line: 27, baseType: !1454, size: 320, offset: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !80, line: 27, size: 320, elements: !1455)
!1455 = !{!1456, !1465, !1492}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1454, file: !80, line: 36, baseType: !1457, size: 320)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1454, file: !80, line: 29, size: 320, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1457, file: !80, line: 30, baseType: !221, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1457, file: !80, line: 31, baseType: !220, size: 32, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1457, file: !80, line: 32, baseType: !220, size: 32, offset: 96)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1457, file: !80, line: 33, baseType: !220, size: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1457, file: !80, line: 34, baseType: !219, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1457, file: !80, line: 35, baseType: !221, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1454, file: !80, line: 46, baseType: !1466, size: 192)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1454, file: !80, line: 38, size: 192, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1491}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1466, file: !80, line: 39, baseType: !1381, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1466, file: !80, line: 40, baseType: !79, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !80, line: 41, baseType: !1471, size: 64, offset: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1466, file: !80, line: 41, size: 64, elements: !1472)
!1472 = !{!1473, !1481}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1471, file: !80, line: 42, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1476, line: 7, size: 128, elements: !1477)
!1476 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1477 = !{!1478, !1480}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1475, file: !1476, line: 8, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !324, line: 93, baseType: !541)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1475, file: !1476, line: 9, baseType: !541, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1471, file: !80, line: 43, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1484, line: 7, size: 64, elements: !1485)
!1484 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1485 = !{!1486, !1490}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1483, file: !1484, line: 8, baseType: !1487, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1484, line: 5, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !204, line: 20, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !194, line: 26, baseType: !36)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1483, file: !1484, line: 9, baseType: !1488, size: 32, offset: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1466, file: !80, line: 45, baseType: !219, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1454, file: !80, line: 54, baseType: !1493, size: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1454, file: !80, line: 48, size: 256, elements: !1494)
!1494 = !{!1495, !1503, !1504, !1505, !1506}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1493, file: !80, line: 49, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1498, line: 36, size: 64, elements: !1499)
!1498 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1497, file: !1498, line: 37, baseType: !36, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1497, file: !1498, line: 38, baseType: !1252, size: 16, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1497, file: !1498, line: 39, baseType: !1252, size: 16, offset: 48)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1493, file: !80, line: 50, baseType: !36, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1493, file: !80, line: 51, baseType: !36, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1493, file: !80, line: 52, baseType: !340, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1493, file: !80, line: 53, baseType: !340, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1264, file: !1265, line: 835, baseType: !1508, size: 32, offset: 5120)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !179, line: 22, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !324, line: 28, baseType: !36)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1264, file: !1265, line: 836, baseType: !1508, size: 32, offset: 5152)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1264, file: !1265, line: 840, baseType: !340, size: 64, offset: 5184)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1264, file: !1265, line: 849, baseType: !1263, size: 64, offset: 5248)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1264, file: !1265, line: 852, baseType: !1263, size: 64, offset: 5312)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1264, file: !1265, line: 857, baseType: !178, size: 128, offset: 5376)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1264, file: !1265, line: 858, baseType: !178, size: 128, offset: 5504)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1264, file: !1265, line: 859, baseType: !1263, size: 64, offset: 5632)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1264, file: !1265, line: 867, baseType: !178, size: 128, offset: 5696)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1264, file: !1265, line: 868, baseType: !178, size: 128, offset: 5824)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1264, file: !1265, line: 871, baseType: !1520, size: 64, offset: 5952)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !108, line: 59, size: 768, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1528, !1529, !1536, !1537}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1521, file: !108, line: 61, baseType: !1277, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1521, file: !108, line: 62, baseType: !7, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1521, file: !108, line: 63, baseType: !254, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1521, file: !108, line: 65, baseType: !1527, size: 256, offset: 64)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 256, elements: !1208)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1521, file: !108, line: 66, baseType: !646, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1521, file: !108, line: 68, baseType: !1530, size: 128, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1531, line: 40, baseType: !1532)
!1531 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1531, line: 36, size: 128, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !1531, line: 37, baseType: !254)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1532, file: !1531, line: 38, baseType: !178, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1521, file: !108, line: 69, baseType: !381, size: 128, align: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1521, file: !108, line: 70, baseType: !1538, size: 128, offset: 640)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1539, size: 128, elements: !1416)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !108, line: 54, size: 128, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1539, file: !108, line: 55, baseType: !36, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1539, file: !108, line: 56, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !108, line: 56, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1264, file: !1265, line: 872, baseType: !1546, size: 512, offset: 6016)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 512, elements: !1208)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1264, file: !1265, line: 873, baseType: !178, size: 128, offset: 6528)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1264, file: !1265, line: 874, baseType: !178, size: 128, offset: 6656)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1264, file: !1265, line: 876, baseType: !1550, size: 64, offset: 6784)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1552, line: 26, size: 192, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1551, file: !1552, line: 27, baseType: !7, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1551, file: !1552, line: 28, baseType: !1556, size: 128, offset: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1557, line: 43, size: 128, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1556, file: !1557, line: 44, baseType: !834)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1556, file: !1557, line: 45, baseType: !178, size: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1264, file: !1265, line: 879, baseType: !716, size: 64, offset: 6848)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1264, file: !1265, line: 882, baseType: !716, size: 64, offset: 6912)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1264, file: !1265, line: 884, baseType: !219, size: 64, offset: 6976)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1264, file: !1265, line: 885, baseType: !219, size: 64, offset: 7040)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1264, file: !1265, line: 890, baseType: !219, size: 64, offset: 7104)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1264, file: !1265, line: 891, baseType: !1567, size: 128, offset: 7168)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1265, line: 242, size: 128, elements: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1567, file: !1265, line: 244, baseType: !219, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1567, file: !1265, line: 245, baseType: !219, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1567, file: !1265, line: 246, baseType: !834, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1264, file: !1265, line: 900, baseType: !340, size: 64, offset: 7296)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1264, file: !1265, line: 901, baseType: !340, size: 64, offset: 7360)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1264, file: !1265, line: 904, baseType: !219, size: 64, offset: 7424)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1264, file: !1265, line: 907, baseType: !219, size: 64, offset: 7488)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1264, file: !1265, line: 910, baseType: !340, size: 64, offset: 7552)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1264, file: !1265, line: 911, baseType: !340, size: 64, offset: 7616)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1264, file: !1265, line: 914, baseType: !1579, size: 640, offset: 7680)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1580, line: 123, size: 640, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582, !1588, !1589}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1579, file: !1580, line: 124, baseType: !1583, size: 576)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1584, size: 576, elements: !237)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1580, line: 108, size: 192, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1584, file: !1580, line: 109, baseType: !219, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1584, file: !1580, line: 110, baseType: !1390, size: 128, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1579, file: !1580, line: 125, baseType: !7, size: 32, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1579, file: !1580, line: 126, baseType: !7, size: 32, offset: 608)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1264, file: !1265, line: 917, baseType: !1591, size: 192, offset: 8320)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1580, line: 134, size: 192, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1591, file: !1580, line: 135, baseType: !381, size: 128, align: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1591, file: !1580, line: 136, baseType: !7, size: 32, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1264, file: !1265, line: 923, baseType: !1596, size: 64, offset: 8512)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1599, line: 111, size: 1280, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1620, !1621, !1622, !1623, !1624, !1625, !1732, !1733, !1734, !1735, !1761, !1764, !1774}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1598, file: !1599, line: 112, baseType: !808, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1598, file: !1599, line: 120, baseType: !443, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1598, file: !1599, line: 121, baseType: !451, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1598, file: !1599, line: 122, baseType: !443, size: 32, offset: 96)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1598, file: !1599, line: 123, baseType: !451, size: 32, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1598, file: !1599, line: 124, baseType: !443, size: 32, offset: 160)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1598, file: !1599, line: 125, baseType: !451, size: 32, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1598, file: !1599, line: 126, baseType: !443, size: 32, offset: 224)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1598, file: !1599, line: 127, baseType: !451, size: 32, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1598, file: !1599, line: 128, baseType: !7, size: 32, offset: 288)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1598, file: !1599, line: 129, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1613, line: 26, baseType: !1614)
!1613 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1613, line: 24, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1614, file: !1613, line: 25, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 64, elements: !1618)
!1618 = !{!1619}
!1619 = !DISubrange(count: 2)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1598, file: !1599, line: 130, baseType: !1612, size: 64, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1598, file: !1599, line: 131, baseType: !1612, size: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1598, file: !1599, line: 132, baseType: !1612, size: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1598, file: !1599, line: 133, baseType: !1612, size: 64, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1598, file: !1599, line: 135, baseType: !206, size: 8, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1598, file: !1599, line: 137, baseType: !1626, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1628, line: 189, size: 1664, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631, !1634, !1639, !1640, !1643, !1644, !1649, !1650, !1651, !1652, !1654, !1655, !1656, !1657, !1658, !1696, !1717}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1627, file: !1628, line: 190, baseType: !1277, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1627, file: !1628, line: 191, baseType: !1632, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1628, line: 28, baseType: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !179, line: 98, baseType: !1488)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1628, line: 192, baseType: !1635, size: 192, offset: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !1628, line: 192, size: 192, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1635, file: !1628, line: 193, baseType: !178, size: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1635, file: !1628, line: 194, baseType: !821, size: 192, align: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1627, file: !1628, line: 199, baseType: !828, size: 256, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1627, file: !1628, line: 200, baseType: !1641, size: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1628, line: 200, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1627, file: !1628, line: 201, baseType: !173, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1628, line: 202, baseType: !1645, size: 64, offset: 640)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !1628, line: 202, size: 64, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1645, file: !1628, line: 203, baseType: !547, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1645, file: !1628, line: 204, baseType: !547, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1627, file: !1628, line: 206, baseType: !547, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1627, file: !1628, line: 207, baseType: !443, size: 32, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1627, file: !1628, line: 208, baseType: !451, size: 32, offset: 800)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1627, file: !1628, line: 209, baseType: !1653, size: 32, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1628, line: 31, baseType: !567)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1627, file: !1628, line: 210, baseType: !210, size: 16, offset: 864)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1627, file: !1628, line: 211, baseType: !210, size: 16, offset: 880)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1627, file: !1628, line: 215, baseType: !1252, size: 16, offset: 896)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1627, file: !1628, line: 222, baseType: !340, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1628, line: 239, baseType: !1659, size: 320, offset: 1024)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !1628, line: 239, size: 320, elements: !1660)
!1660 = !{!1661, !1688}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1659, file: !1628, line: 240, baseType: !1662, size: 320)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1628, line: 108, size: 320, elements: !1663)
!1663 = !{!1664, !1665, !1677, !1680, !1687}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1662, file: !1628, line: 110, baseType: !340, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1628, line: 111, baseType: !1666, size: 64, offset: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1628, line: 111, size: 64, elements: !1667)
!1667 = !{!1668, !1676}
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !1628, line: 112, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !1628, line: 112, size: 64, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1669, file: !1628, line: 114, baseType: !208, size: 16)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1669, file: !1628, line: 115, baseType: !1673, size: 48, offset: 16)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 48, elements: !1674)
!1674 = !{!1675}
!1675 = !DISubrange(count: 6)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1666, file: !1628, line: 121, baseType: !340, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1662, file: !1628, line: 123, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1628, line: 96, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1662, file: !1628, line: 124, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1628, line: 102, size: 192, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1682, file: !1628, line: 103, baseType: !381, size: 128, align: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1682, file: !1628, line: 104, baseType: !1277, size: 32, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1682, file: !1628, line: 105, baseType: !498, size: 8, offset: 160)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1662, file: !1628, line: 125, baseType: !186, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1628, line: 241, baseType: !1689, size: 320)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !1628, line: 241, size: 320, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1689, file: !1628, line: 242, baseType: !340, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1689, file: !1628, line: 243, baseType: !340, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1689, file: !1628, line: 244, baseType: !1678, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1689, file: !1628, line: 245, baseType: !1681, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1689, file: !1628, line: 246, baseType: !211, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1628, line: 254, baseType: !1697, size: 256, offset: 1344)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !1628, line: 254, size: 256, elements: !1698)
!1698 = !{!1699, !1705}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1697, file: !1628, line: 255, baseType: !1700, size: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1628, line: 128, size: 256, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1700, file: !1628, line: 129, baseType: !173, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1700, file: !1628, line: 130, baseType: !1704, size: 256)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !1208)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1628, line: 256, baseType: !1706, size: 256)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1628, line: 256, size: 256, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1706, file: !1628, line: 258, baseType: !178, size: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1706, file: !1628, line: 259, baseType: !1710, size: 128, offset: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1711, line: 22, size: 128, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !{!1713, !1716}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1710, file: !1711, line: 23, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1711, line: 23, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1710, file: !1711, line: 24, baseType: !340, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1627, file: !1628, line: 274, baseType: !1718, size: 64, offset: 1600)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1628, line: 170, size: 192, elements: !1720)
!1720 = !{!1721, !1730, !1731}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1719, file: !1628, line: 171, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1628, line: 165, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!36, !1626, !1726, !1728, !1626}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1719, file: !1628, line: 172, baseType: !1626, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1719, file: !1628, line: 173, baseType: !1678, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1598, file: !1599, line: 138, baseType: !1626, size: 64, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1598, file: !1599, line: 139, baseType: !1626, size: 64, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1598, file: !1599, line: 140, baseType: !1626, size: 64, offset: 896)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1598, file: !1599, line: 145, baseType: !1736, size: 64, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1738, line: 13, size: 896, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1737, file: !1738, line: 14, baseType: !1277, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1737, file: !1738, line: 15, baseType: !808, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1737, file: !1738, line: 16, baseType: !808, size: 32, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1737, file: !1738, line: 21, baseType: !738, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1737, file: !1738, line: 27, baseType: !340, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1737, file: !1738, line: 28, baseType: !340, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1737, file: !1738, line: 29, baseType: !738, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1737, file: !1738, line: 32, baseType: !650, size: 128, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1737, file: !1738, line: 33, baseType: !443, size: 32, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1737, file: !1738, line: 37, baseType: !738, size: 64, offset: 576)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1737, file: !1738, line: 44, baseType: !1751, size: 256, offset: 640)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1752, line: 15, size: 256, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1751, file: !1752, line: 16, baseType: !834)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1751, file: !1752, line: 18, baseType: !36, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1751, file: !1752, line: 19, baseType: !36, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1751, file: !1752, line: 20, baseType: !36, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1751, file: !1752, line: 21, baseType: !36, size: 32, offset: 96)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1751, file: !1752, line: 22, baseType: !340, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1751, file: !1752, line: 23, baseType: !340, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1598, file: !1599, line: 146, baseType: !1762, size: 64, offset: 1024)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !444, line: 18, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1598, file: !1599, line: 147, baseType: !1765, size: 64, offset: 1088)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1599, line: 25, size: 64, elements: !1767)
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1766, file: !1599, line: 26, baseType: !808, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1766, file: !1599, line: 27, baseType: !36, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1766, file: !1599, line: 28, baseType: !1771, offset: 64)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, elements: !1772)
!1772 = !{!1773}
!1773 = !DISubrange(count: 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 149, baseType: !1775, size: 128, offset: 1152)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 149, size: 128, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1775, file: !1599, line: 150, baseType: !36, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1775, file: !1599, line: 151, baseType: !381, size: 128, align: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1264, file: !1265, line: 926, baseType: !1596, size: 64, offset: 8576)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1264, file: !1265, line: 929, baseType: !1596, size: 64, offset: 8640)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1264, file: !1265, line: 933, baseType: !1626, size: 64, offset: 8704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1264, file: !1265, line: 943, baseType: !1783, size: 128, offset: 8768)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !1784)
!1784 = !{!1785}
!1785 = !DISubrange(count: 16)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1264, file: !1265, line: 945, baseType: !1787, size: 64, offset: 8896)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1265, line: 49, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1264, file: !1265, line: 956, baseType: !1790, size: 64, offset: 8960)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1265, line: 45, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1264, file: !1265, line: 959, baseType: !1793, size: 64, offset: 9024)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1265, line: 959, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1264, file: !1265, line: 962, baseType: !1796, size: 64, offset: 9088)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1265, line: 66, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1264, file: !1265, line: 966, baseType: !1799, size: 64, offset: 9152)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1801, line: 35, flags: DIFlagFwdDecl)
!1801 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1264, file: !1265, line: 969, baseType: !1803, size: 64, offset: 9216)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1805, line: 82, size: 7296, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1813, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1842, !1851, !1852, !1854, !1855, !1856, !1859, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1889, !1890, !1897, !1898, !1899, !1900, !1901, !1902}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1804, file: !1805, line: 83, baseType: !1277, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1804, file: !1805, line: 84, baseType: !808, size: 32, offset: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1804, file: !1805, line: 85, baseType: !36, size: 32, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1804, file: !1805, line: 86, baseType: !178, size: 128, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1804, file: !1805, line: 88, baseType: !1530, size: 128, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1804, file: !1805, line: 91, baseType: !1263, size: 64, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1804, file: !1805, line: 94, baseType: !1814, size: 192, offset: 448)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1815, line: 30, size: 192, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1814, file: !1815, line: 31, baseType: !178, size: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1814, file: !1815, line: 32, baseType: !1819, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1820, line: 25, baseType: !1821)
!1820 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1820, line: 23, size: 64, elements: !1822)
!1822 = !{!1823}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1821, file: !1820, line: 24, baseType: !1415, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1804, file: !1805, line: 97, baseType: !646, size: 64, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1804, file: !1805, line: 100, baseType: !36, size: 32, offset: 704)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1804, file: !1805, line: 106, baseType: !36, size: 32, offset: 736)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1804, file: !1805, line: 107, baseType: !1263, size: 64, offset: 768)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1804, file: !1805, line: 110, baseType: !36, size: 32, offset: 832)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !1805, line: 111, baseType: !7, size: 32, offset: 864)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1804, file: !1805, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1804, file: !1805, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1804, file: !1805, line: 128, baseType: !36, size: 32, offset: 928)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1804, file: !1805, line: 129, baseType: !178, size: 128, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1804, file: !1805, line: 132, baseType: !1339, size: 512, offset: 1088)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1804, file: !1805, line: 133, baseType: !1347, size: 64, offset: 1600)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1804, file: !1805, line: 140, baseType: !1837, size: 256, offset: 1664)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, size: 256, elements: !1618)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1805, line: 38, size: 128, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1838, file: !1805, line: 39, baseType: !219, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1838, file: !1805, line: 40, baseType: !219, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1804, file: !1805, line: 146, baseType: !1843, size: 192, offset: 1920)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1805, line: 66, size: 192, elements: !1844)
!1844 = !{!1845}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1843, file: !1805, line: 67, baseType: !1846, size: 192)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1805, line: 47, size: 192, elements: !1847)
!1847 = !{!1848, !1849, !1850}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1846, file: !1805, line: 48, baseType: !740, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1846, file: !1805, line: 49, baseType: !740, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1846, file: !1805, line: 50, baseType: !740, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1804, file: !1805, line: 150, baseType: !1579, size: 640, offset: 2112)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1804, file: !1805, line: 153, baseType: !1853, size: 256, offset: 2752)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, size: 256, elements: !1208)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1804, file: !1805, line: 159, baseType: !1520, size: 64, offset: 3008)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1804, file: !1805, line: 162, baseType: !36, size: 32, offset: 3072)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1804, file: !1805, line: 164, baseType: !1857, size: 64, offset: 3136)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1805, line: 164, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1804, file: !1805, line: 175, baseType: !1860, size: 32, offset: 3200)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !404, line: 805, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 798, size: 32, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1861, file: !404, line: 803, baseType: !403, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !404, line: 804, baseType: !254, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1804, file: !1805, line: 176, baseType: !219, size: 64, offset: 3264)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1804, file: !1805, line: 176, baseType: !219, size: 64, offset: 3328)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1804, file: !1805, line: 176, baseType: !219, size: 64, offset: 3392)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1804, file: !1805, line: 176, baseType: !219, size: 64, offset: 3456)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1804, file: !1805, line: 177, baseType: !219, size: 64, offset: 3520)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1804, file: !1805, line: 178, baseType: !219, size: 64, offset: 3584)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1804, file: !1805, line: 179, baseType: !1567, size: 128, offset: 3648)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1804, file: !1805, line: 180, baseType: !340, size: 64, offset: 3776)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1804, file: !1805, line: 180, baseType: !340, size: 64, offset: 3840)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1804, file: !1805, line: 180, baseType: !340, size: 64, offset: 3904)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1804, file: !1805, line: 180, baseType: !340, size: 64, offset: 3968)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1804, file: !1805, line: 181, baseType: !340, size: 64, offset: 4032)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1804, file: !1805, line: 181, baseType: !340, size: 64, offset: 4096)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1804, file: !1805, line: 181, baseType: !340, size: 64, offset: 4160)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1804, file: !1805, line: 181, baseType: !340, size: 64, offset: 4224)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1804, file: !1805, line: 182, baseType: !340, size: 64, offset: 4288)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1804, file: !1805, line: 182, baseType: !340, size: 64, offset: 4352)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1804, file: !1805, line: 182, baseType: !340, size: 64, offset: 4416)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1804, file: !1805, line: 182, baseType: !340, size: 64, offset: 4480)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1804, file: !1805, line: 183, baseType: !340, size: 64, offset: 4544)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1804, file: !1805, line: 183, baseType: !340, size: 64, offset: 4608)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1804, file: !1805, line: 184, baseType: !1887, offset: 4672)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1888, line: 12, elements: !235)
!1888 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1804, file: !1805, line: 192, baseType: !201, size: 64, offset: 4672)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1804, file: !1805, line: 203, baseType: !1891, size: 2048, offset: 4736)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1892, size: 2048, elements: !1784)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1893, line: 43, size: 128, elements: !1894)
!1893 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1892, file: !1893, line: 44, baseType: !339, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1892, file: !1893, line: 45, baseType: !339, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1804, file: !1805, line: 220, baseType: !498, size: 8, offset: 6784)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1804, file: !1805, line: 221, baseType: !1252, size: 16, offset: 6800)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1804, file: !1805, line: 222, baseType: !1252, size: 16, offset: 6816)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1804, file: !1805, line: 224, baseType: !1027, size: 64, offset: 6848)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1804, file: !1805, line: 227, baseType: !734, size: 192, offset: 6912)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1804, file: !1805, line: 233, baseType: !734, size: 192, offset: 7104)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1264, file: !1265, line: 970, baseType: !1904, size: 64, offset: 9280)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1805, line: 20, size: 16576, elements: !1906)
!1906 = !{!1907, !1908, !1909, !1910}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1905, file: !1805, line: 21, baseType: !254)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1905, file: !1805, line: 22, baseType: !1277, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1905, file: !1805, line: 23, baseType: !1530, size: 128, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1905, file: !1805, line: 24, baseType: !1911, size: 16384, offset: 192)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1912, size: 16384, elements: !296)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1815, line: 49, size: 256, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1912, file: !1815, line: 50, baseType: !1915, size: 256)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1815, line: 35, size: 256, elements: !1916)
!1916 = !{!1917, !1924, !1925, !1931}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1915, file: !1815, line: 37, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1919, line: 19, baseType: !1920)
!1919 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1919, line: 18, baseType: !1922)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !36}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1915, file: !1815, line: 38, baseType: !340, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1915, file: !1815, line: 44, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1919, line: 22, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1919, line: 21, baseType: !1929)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1915, file: !1815, line: 46, baseType: !1819, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1264, file: !1265, line: 971, baseType: !1819, size: 64, offset: 9344)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1264, file: !1265, line: 972, baseType: !1819, size: 64, offset: 9408)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1264, file: !1265, line: 974, baseType: !1819, size: 64, offset: 9472)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1264, file: !1265, line: 975, baseType: !1814, size: 192, offset: 9536)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1264, file: !1265, line: 976, baseType: !340, size: 64, offset: 9728)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1264, file: !1265, line: 977, baseType: !337, size: 64, offset: 9792)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1264, file: !1265, line: 978, baseType: !7, size: 32, offset: 9856)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1264, file: !1265, line: 980, baseType: !384, size: 64, offset: 9920)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1264, file: !1265, line: 989, baseType: !1941, size: 128, offset: 9984)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1942, line: 35, size: 128, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1943 = !{!1944, !1945, !1946}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1941, file: !1942, line: 36, baseType: !36, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1941, file: !1942, line: 37, baseType: !808, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1941, file: !1942, line: 38, baseType: !1947, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1942, line: 23, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1264, file: !1265, line: 992, baseType: !219, size: 64, offset: 10112)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1264, file: !1265, line: 993, baseType: !219, size: 64, offset: 10176)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1264, file: !1265, line: 996, baseType: !254, offset: 10240)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1264, file: !1265, line: 999, baseType: !834, offset: 10240)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1264, file: !1265, line: 1001, baseType: !1954, size: 64, offset: 10240)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1265, line: 636, size: 64, elements: !1955)
!1955 = !{!1956}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1954, file: !1265, line: 637, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1264, file: !1265, line: 1005, baseType: !813, size: 128, offset: 10304)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1264, file: !1265, line: 1007, baseType: !1263, size: 64, offset: 10432)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1264, file: !1265, line: 1009, baseType: !1961, size: 64, offset: 10496)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1265, line: 1009, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1264, file: !1265, line: 1043, baseType: !173, size: 64, offset: 10560)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1264, file: !1265, line: 1046, baseType: !1965, size: 64, offset: 10624)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1265, line: 41, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1264, file: !1265, line: 1050, baseType: !1968, size: 64, offset: 10688)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1265, line: 42, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1264, file: !1265, line: 1054, baseType: !1971, size: 64, offset: 10752)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1265, line: 55, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1264, file: !1265, line: 1056, baseType: !1974, size: 64, offset: 10816)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1265, line: 40, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1264, file: !1265, line: 1058, baseType: !1977, size: 64, offset: 10880)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1979, line: 99, size: 704, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1987, !2006, !2007}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1978, file: !1979, line: 100, baseType: !738, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1978, file: !1979, line: 101, baseType: !808, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1978, file: !1979, line: 102, baseType: !808, size: 32, offset: 96)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1978, file: !1979, line: 105, baseType: !254, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1978, file: !1979, line: 107, baseType: !210, size: 16, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1978, file: !1979, line: 109, baseType: !799, size: 128, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1978, file: !1979, line: 110, baseType: !1988, size: 64, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1979, line: 73, size: 448, elements: !1990)
!1990 = !{!1991, !1994, !1995, !2000, !2005}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1989, file: !1979, line: 74, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1979, line: 74, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1989, file: !1979, line: 75, baseType: !1977, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1989, file: !1979, line: 83, baseType: !1996, size: 128, offset: 128)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1989, file: !1979, line: 83, size: 128, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1996, file: !1979, line: 84, baseType: !178, size: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1996, file: !1979, line: 85, baseType: !987, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1989, file: !1979, line: 87, baseType: !2001, size: 128, offset: 256)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1989, file: !1979, line: 87, size: 128, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2001, file: !1979, line: 88, baseType: !650, size: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2001, file: !1979, line: 89, baseType: !381, size: 128, align: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1989, file: !1979, line: 92, baseType: !7, size: 32, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1978, file: !1979, line: 111, baseType: !646, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1978, file: !1979, line: 113, baseType: !2008, size: 256, offset: 448)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2009, line: 102, size: 256, elements: !2010)
!2009 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2010 = !{!2011, !2012, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2008, file: !2009, line: 103, baseType: !738, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2008, file: !2009, line: 104, baseType: !178, size: 128, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2008, file: !2009, line: 105, baseType: !2014, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2009, line: 21, baseType: !2015)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1264, file: !1265, line: 1061, baseType: !2020, size: 64, offset: 10944)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1265, line: 43, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1264, file: !1265, line: 1064, baseType: !340, size: 64, offset: 11008)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1264, file: !1265, line: 1065, baseType: !2024, size: 64, offset: 11072)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1815, line: 14, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1815, line: 12, size: 384, elements: !2027)
!2027 = !{!2028}
!2028 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !1815, line: 13, baseType: !2029, size: 384)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !1815, line: 13, size: 384, elements: !2030)
!2030 = !{!2031, !2032, !2033, !2034}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2029, file: !1815, line: 13, baseType: !36, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2029, file: !1815, line: 13, baseType: !36, size: 32, offset: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2029, file: !1815, line: 13, baseType: !36, size: 32, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2029, file: !1815, line: 13, baseType: !2035, size: 256, offset: 128)
!2035 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2036, line: 32, size: 256, elements: !2037)
!2036 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !{!2038, !2043, !2056, !2062, !2071, !2091, !2096}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2035, file: !2036, line: 37, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !2036, line: 34, size: 64, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2039, file: !2036, line: 35, baseType: !1509, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2039, file: !2036, line: 36, baseType: !449, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2035, file: !2036, line: 45, baseType: !2044, size: 192)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !2036, line: 40, size: 192, elements: !2045)
!2045 = !{!2046, !2048, !2049, !2055}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2044, file: !2036, line: 41, baseType: !2047, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !324, line: 95, baseType: !36)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2044, file: !2036, line: 42, baseType: !36, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2044, file: !2036, line: 43, baseType: !2050, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2036, line: 11, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2036, line: 8, size: 64, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2051, file: !2036, line: 9, baseType: !36, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2051, file: !2036, line: 10, baseType: !173, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2044, file: !2036, line: 44, baseType: !36, size: 32, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2035, file: !2036, line: 52, baseType: !2057, size: 128)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !2036, line: 48, size: 128, elements: !2058)
!2058 = !{!2059, !2060, !2061}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2057, file: !2036, line: 49, baseType: !1509, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2057, file: !2036, line: 50, baseType: !449, size: 32, offset: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2057, file: !2036, line: 51, baseType: !2050, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2035, file: !2036, line: 61, baseType: !2063, size: 256)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !2036, line: 55, size: 256, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2068, !2070}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2063, file: !2036, line: 56, baseType: !1509, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2063, file: !2036, line: 57, baseType: !449, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2063, file: !2036, line: 58, baseType: !36, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2063, file: !2036, line: 59, baseType: !2069, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !324, line: 94, baseType: !325)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2063, file: !2036, line: 60, baseType: !2069, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2035, file: !2036, line: 95, baseType: !2072, size: 256)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !2036, line: 64, size: 256, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2072, file: !2036, line: 65, baseType: !173, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !2072, file: !2036, line: 77, baseType: !2076, size: 192, offset: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2072, file: !2036, line: 77, size: 192, elements: !2077)
!2077 = !{!2078, !2079, !2086}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2076, file: !2036, line: 82, baseType: !1252, size: 16)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2076, file: !2036, line: 88, baseType: !2080, size: 192)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2036, line: 84, size: 192, elements: !2081)
!2081 = !{!2082, !2084, !2085}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2080, file: !2036, line: 85, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !1377)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2080, file: !2036, line: 86, baseType: !173, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2080, file: !2036, line: 87, baseType: !173, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2076, file: !2036, line: 93, baseType: !2087, size: 96)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2036, line: 90, size: 96, elements: !2088)
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2087, file: !2036, line: 91, baseType: !2083, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2087, file: !2036, line: 92, baseType: !193, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2035, file: !2036, line: 101, baseType: !2092, size: 128)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !2036, line: 98, size: 128, elements: !2093)
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2092, file: !2036, line: 99, baseType: !326, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2092, file: !2036, line: 100, baseType: !36, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2035, file: !2036, line: 108, baseType: !2097, size: 128)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !2036, line: 104, size: 128, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2097, file: !2036, line: 105, baseType: !173, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2097, file: !2036, line: 106, baseType: !36, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2097, file: !2036, line: 107, baseType: !7, size: 32, offset: 96)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1264, file: !1265, line: 1067, baseType: !1887, offset: 11136)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1264, file: !1265, line: 1099, baseType: !2104, size: 64, offset: 11136)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1265, line: 56, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1264, file: !1265, line: 1103, baseType: !178, size: 128, offset: 11200)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1264, file: !1265, line: 1104, baseType: !2108, size: 64, offset: 11328)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1265, line: 46, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1264, file: !1265, line: 1105, baseType: !734, size: 192, offset: 11392)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1264, file: !1265, line: 1106, baseType: !7, size: 32, offset: 11584)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1264, file: !1265, line: 1109, baseType: !2113, size: 128, offset: 11648)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2114, size: 128, elements: !1618)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1265, line: 51, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1264, file: !1265, line: 1110, baseType: !734, size: 192, offset: 11776)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1264, file: !1265, line: 1111, baseType: !178, size: 128, offset: 11968)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1264, file: !1265, line: 1173, baseType: !2119, size: 64, offset: 12096)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2121, line: 62, size: 256, align: 256, elements: !2122)
!2121 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !{!2123, !2124, !2125, !2130}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2120, file: !2121, line: 75, baseType: !193, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2120, file: !2121, line: 90, baseType: !193, size: 32, offset: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2120, file: !2121, line: 124, baseType: !2126, size: 64, offset: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2120, file: !2121, line: 109, size: 64, elements: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2126, file: !2121, line: 110, baseType: !200, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2126, file: !2121, line: 112, baseType: !200, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !2121, line: 144, baseType: !193, size: 32, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1264, file: !1265, line: 1174, baseType: !220, size: 32, offset: 12160)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1264, file: !1265, line: 1179, baseType: !340, size: 64, offset: 12224)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1264, file: !1265, line: 1182, baseType: !2134, size: 128, offset: 12288)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1204, line: 76, size: 128, elements: !2135)
!2135 = !{!2136, !2141, !2142}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2134, file: !1204, line: 85, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2138, line: 7, size: 64, elements: !2139)
!2138 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2137, file: !2138, line: 12, baseType: !1412, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2134, file: !1204, line: 88, baseType: !498, size: 8, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2134, file: !1204, line: 95, baseType: !498, size: 8, offset: 72)
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !1265, line: 1184, baseType: !2144, size: 128, offset: 12416)
!2144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !1265, line: 1184, size: 128, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2144, file: !1265, line: 1185, baseType: !1277, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2144, file: !1265, line: 1186, baseType: !381, size: 128, align: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1264, file: !1265, line: 1190, baseType: !2149, size: 64, offset: 12544)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1265, line: 53, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1264, file: !1265, line: 1192, baseType: !2152, size: 128, offset: 12608)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1204, line: 64, size: 128, elements: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2152, file: !1204, line: 65, baseType: !781, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2152, file: !1204, line: 67, baseType: !193, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2152, file: !1204, line: 68, baseType: !193, size: 32, offset: 96)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1264, file: !1265, line: 1206, baseType: !36, size: 32, offset: 12736)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1264, file: !1265, line: 1207, baseType: !36, size: 32, offset: 12768)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1264, file: !1265, line: 1209, baseType: !340, size: 64, offset: 12800)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1264, file: !1265, line: 1219, baseType: !219, size: 64, offset: 12864)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1264, file: !1265, line: 1220, baseType: !219, size: 64, offset: 12928)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1264, file: !1265, line: 1317, baseType: !36, size: 32, offset: 12992)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1264, file: !1265, line: 1319, baseType: !1263, size: 64, offset: 13056)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1264, file: !1265, line: 1322, baseType: !2165, size: 64, offset: 13120)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2167, line: 56, size: 512, elements: !2168)
!2167 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174, !2175, !2177}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2166, file: !2167, line: 57, baseType: !2165, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2166, file: !2167, line: 58, baseType: !173, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2166, file: !2167, line: 59, baseType: !340, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2166, file: !2167, line: 60, baseType: !340, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2166, file: !2167, line: 61, baseType: !874, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2166, file: !2167, line: 62, baseType: !7, size: 32, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2166, file: !2167, line: 63, baseType: !2176, size: 64, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !179, line: 153, baseType: !219)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2166, file: !2167, line: 64, baseType: !2178, size: 64, offset: 448)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1264, file: !1265, line: 1326, baseType: !1277, size: 32, offset: 13184)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1264, file: !1265, line: 1342, baseType: !173, size: 64, offset: 13248)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1264, file: !1265, line: 1343, baseType: !200, size: 64, offset: 13312)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1264, file: !1265, line: 1344, baseType: !219, size: 64, offset: 13376)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1264, file: !1265, line: 1345, baseType: !200, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1264, file: !1265, line: 1346, baseType: !200, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1264, file: !1265, line: 1347, baseType: !200, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1264, file: !1265, line: 1348, baseType: !381, size: 128, align: 64, offset: 13504)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1264, file: !1265, line: 1358, baseType: !2189, size: 34816, offset: 13824)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2190, line: 485, size: 34816, elements: !2191)
!2190 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2191 = !{!2192, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2221, !2222, !2223, !2224, !2225, !2226, !2229, !2230, !2231}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2189, file: !2190, line: 487, baseType: !2193, size: 192)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2194, size: 192, elements: !237)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2195, line: 16, size: 64, elements: !2196)
!2195 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2194, file: !2195, line: 17, baseType: !208, size: 16)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2194, file: !2195, line: 18, baseType: !208, size: 16, offset: 16)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2194, file: !2195, line: 19, baseType: !208, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2194, file: !2195, line: 19, baseType: !208, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2194, file: !2195, line: 19, baseType: !208, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2194, file: !2195, line: 19, baseType: !208, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2194, file: !2195, line: 19, baseType: !208, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2194, file: !2195, line: 20, baseType: !208, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2194, file: !2195, line: 20, baseType: !208, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2194, file: !2195, line: 20, baseType: !208, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2194, file: !2195, line: 20, baseType: !208, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2194, file: !2195, line: 20, baseType: !208, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2194, file: !2195, line: 20, baseType: !208, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2189, file: !2190, line: 491, baseType: !340, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2189, file: !2190, line: 495, baseType: !210, size: 16, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2189, file: !2190, line: 496, baseType: !210, size: 16, offset: 272)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2189, file: !2190, line: 497, baseType: !210, size: 16, offset: 288)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2189, file: !2190, line: 498, baseType: !210, size: 16, offset: 304)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2189, file: !2190, line: 502, baseType: !340, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2189, file: !2190, line: 503, baseType: !340, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2189, file: !2190, line: 514, baseType: !2218, size: 256, offset: 448)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2219, size: 256, elements: !1208)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2190, line: 483, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2189, file: !2190, line: 516, baseType: !340, size: 64, offset: 704)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2189, file: !2190, line: 518, baseType: !340, size: 64, offset: 768)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2189, file: !2190, line: 520, baseType: !340, size: 64, offset: 832)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2189, file: !2190, line: 521, baseType: !340, size: 64, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2189, file: !2190, line: 522, baseType: !340, size: 64, offset: 960)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2189, file: !2190, line: 528, baseType: !2227, size: 64, offset: 1024)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2190, line: 10, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2189, file: !2190, line: 535, baseType: !340, size: 64, offset: 1088)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2189, file: !2190, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2189, file: !2190, line: 540, baseType: !2232, size: 33280, offset: 1536)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2233, line: 317, size: 33280, elements: !2234)
!2233 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2234 = !{!2235, !2236, !2237}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2232, file: !2233, line: 330, baseType: !7, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2232, file: !2233, line: 337, baseType: !340, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2232, file: !2233, line: 348, baseType: !2238, size: 32768, offset: 512)
!2238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2233, line: 304, size: 32768, elements: !2239)
!2239 = !{!2240, !2255, !2294, !2344, !2357}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2238, file: !2233, line: 305, baseType: !2241, size: 896)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2233, line: 12, size: 896, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2254}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2241, file: !2233, line: 13, baseType: !220, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2241, file: !2233, line: 14, baseType: !220, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2241, file: !2233, line: 15, baseType: !220, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2241, file: !2233, line: 16, baseType: !220, size: 32, offset: 96)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2241, file: !2233, line: 17, baseType: !220, size: 32, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2241, file: !2233, line: 18, baseType: !220, size: 32, offset: 160)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2241, file: !2233, line: 19, baseType: !220, size: 32, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2241, file: !2233, line: 22, baseType: !2251, size: 640, offset: 224)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 640, elements: !2252)
!2252 = !{!2253}
!2253 = !DISubrange(count: 20)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2241, file: !2233, line: 25, baseType: !220, size: 32, offset: 864)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2238, file: !2233, line: 306, baseType: !2256, size: 4096, align: 128)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2233, line: 34, size: 4096, align: 128, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2277, !2278, !2279, !2283, !2285, !2289}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2256, file: !2233, line: 35, baseType: !208, size: 16)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2256, file: !2233, line: 36, baseType: !208, size: 16, offset: 16)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2256, file: !2233, line: 37, baseType: !208, size: 16, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2256, file: !2233, line: 38, baseType: !208, size: 16, offset: 48)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2233, line: 39, baseType: !2263, size: 128, offset: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2256, file: !2233, line: 39, size: 128, elements: !2264)
!2264 = !{!2265, !2270}
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !2233, line: 40, baseType: !2266, size: 128)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2263, file: !2233, line: 40, size: 128, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2266, file: !2233, line: 41, baseType: !219, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2266, file: !2233, line: 42, baseType: !219, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !2233, line: 44, baseType: !2271, size: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2263, file: !2233, line: 44, size: 128, elements: !2272)
!2272 = !{!2273, !2274, !2275, !2276}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2271, file: !2233, line: 45, baseType: !220, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2271, file: !2233, line: 46, baseType: !220, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2271, file: !2233, line: 47, baseType: !220, size: 32, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2271, file: !2233, line: 48, baseType: !220, size: 32, offset: 96)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2256, file: !2233, line: 51, baseType: !220, size: 32, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2256, file: !2233, line: 52, baseType: !220, size: 32, offset: 224)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2256, file: !2233, line: 55, baseType: !2280, size: 1024, offset: 256)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !2281)
!2281 = !{!2282}
!2282 = !DISubrange(count: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2256, file: !2233, line: 58, baseType: !2284, size: 2048, offset: 1280)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !296)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2256, file: !2233, line: 60, baseType: !2286, size: 384, offset: 3328)
!2286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 384, elements: !2287)
!2287 = !{!2288}
!2288 = !DISubrange(count: 12)
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2233, line: 62, baseType: !2290, size: 384, offset: 3712)
!2290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2256, file: !2233, line: 62, size: 384, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2290, file: !2233, line: 63, baseType: !2286, size: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2290, file: !2233, line: 64, baseType: !2286, size: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2238, file: !2233, line: 307, baseType: !2295, size: 1088)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2233, line: 79, size: 1088, elements: !2296)
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2343}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2295, file: !2233, line: 80, baseType: !220, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2295, file: !2233, line: 81, baseType: !220, size: 32, offset: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2295, file: !2233, line: 82, baseType: !220, size: 32, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2295, file: !2233, line: 83, baseType: !220, size: 32, offset: 96)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2295, file: !2233, line: 84, baseType: !220, size: 32, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2295, file: !2233, line: 85, baseType: !220, size: 32, offset: 160)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2295, file: !2233, line: 86, baseType: !220, size: 32, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2295, file: !2233, line: 88, baseType: !2251, size: 640, offset: 224)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2295, file: !2233, line: 89, baseType: !203, size: 8, offset: 864)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2295, file: !2233, line: 90, baseType: !203, size: 8, offset: 872)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2295, file: !2233, line: 91, baseType: !203, size: 8, offset: 880)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2295, file: !2233, line: 92, baseType: !203, size: 8, offset: 888)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2295, file: !2233, line: 93, baseType: !203, size: 8, offset: 896)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2295, file: !2233, line: 94, baseType: !203, size: 8, offset: 904)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2295, file: !2233, line: 95, baseType: !2312, size: 64, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2314, line: 11, size: 128, elements: !2315)
!2314 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2315 = !{!2316, !2317}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2313, file: !2314, line: 12, baseType: !326, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2313, file: !2314, line: 13, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2320, line: 56, size: 1344, elements: !2321)
!2320 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2319, file: !2320, line: 61, baseType: !340, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2319, file: !2320, line: 62, baseType: !340, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2319, file: !2320, line: 63, baseType: !340, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2319, file: !2320, line: 64, baseType: !340, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2319, file: !2320, line: 65, baseType: !340, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2319, file: !2320, line: 66, baseType: !340, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2319, file: !2320, line: 68, baseType: !340, size: 64, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2319, file: !2320, line: 69, baseType: !340, size: 64, offset: 448)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2319, file: !2320, line: 70, baseType: !340, size: 64, offset: 512)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2319, file: !2320, line: 71, baseType: !340, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2319, file: !2320, line: 72, baseType: !340, size: 64, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2319, file: !2320, line: 73, baseType: !340, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2319, file: !2320, line: 74, baseType: !340, size: 64, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2319, file: !2320, line: 75, baseType: !340, size: 64, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2319, file: !2320, line: 76, baseType: !340, size: 64, offset: 896)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2319, file: !2320, line: 81, baseType: !340, size: 64, offset: 960)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2319, file: !2320, line: 83, baseType: !340, size: 64, offset: 1024)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2319, file: !2320, line: 84, baseType: !340, size: 64, offset: 1088)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2319, file: !2320, line: 85, baseType: !340, size: 64, offset: 1152)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2319, file: !2320, line: 86, baseType: !340, size: 64, offset: 1216)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2319, file: !2320, line: 87, baseType: !340, size: 64, offset: 1280)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2295, file: !2233, line: 96, baseType: !220, size: 32, offset: 1024)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2238, file: !2233, line: 308, baseType: !2345, size: 4608, align: 512)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2233, line: 289, size: 4608, align: 512, elements: !2346)
!2346 = !{!2347, !2348, !2355}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2345, file: !2233, line: 290, baseType: !2256, size: 4096, align: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2345, file: !2233, line: 291, baseType: !2349, size: 512, offset: 4096)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2233, line: 268, size: 512, elements: !2350)
!2350 = !{!2351, !2352, !2353}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2349, file: !2233, line: 269, baseType: !219, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2349, file: !2233, line: 270, baseType: !219, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2349, file: !2233, line: 271, baseType: !2354, size: 384, offset: 128)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 384, elements: !1674)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2345, file: !2233, line: 292, baseType: !2356, offset: 4608)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, elements: !1772)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2238, file: !2233, line: 309, baseType: !2358, size: 32768)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 32768, elements: !2359)
!2359 = !{!2360}
!2360 = !DISubrange(count: 4096)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1260, file: !783, line: 378, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1256, file: !783, line: 384, baseType: !1551, size: 192, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1031, file: !783, line: 500, baseType: !254, offset: 6656)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1031, file: !783, line: 501, baseType: !2366, size: 64, offset: 6656)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !783, line: 387, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1031, file: !783, line: 516, baseType: !1762, size: 64, offset: 6720)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1031, file: !783, line: 519, baseType: !368, size: 64, offset: 6784)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1031, file: !783, line: 521, baseType: !2371, size: 64, offset: 6848)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !783, line: 521, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1031, file: !783, line: 545, baseType: !808, size: 32, offset: 6912)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1031, file: !783, line: 548, baseType: !498, size: 8, offset: 6944)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1031, file: !783, line: 550, baseType: !2376, offset: 6952)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2377, line: 142, elements: !235)
!2377 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1031, file: !783, line: 554, baseType: !2008, size: 256, offset: 6976)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1031, file: !783, line: 557, baseType: !220, size: 32, offset: 7232)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1028, file: !783, line: 565, baseType: !2381, offset: 7296)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !2382)
!2382 = !{!2383}
!2383 = !DISubrange(count: -1)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1024, file: !783, line: 151, baseType: !808, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1016, file: !783, line: 156, baseType: !254, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !783, line: 159, baseType: !2387, size: 128)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !783, line: 159, size: 128, elements: !2388)
!2388 = !{!2389, !2453}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2387, file: !783, line: 161, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !86, line: 110, size: 1152, elements: !2392)
!2392 = !{!2393, !2403, !2424, !2425, !2426, !2427, !2428, !2440, !2441, !2442}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2391, file: !86, line: 111, baseType: !2394, size: 384)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !86, line: 19, size: 384, elements: !2395)
!2395 = !{!2396, !2398, !2399, !2400, !2401, !2402}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2394, file: !86, line: 20, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2394, file: !86, line: 21, baseType: !2397, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2394, file: !86, line: 22, baseType: !2397, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2394, file: !86, line: 23, baseType: !340, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2394, file: !86, line: 24, baseType: !340, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2394, file: !86, line: 25, baseType: !340, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2391, file: !86, line: 112, baseType: !2404, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2406, line: 105, size: 128, elements: !2407)
!2406 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2405, file: !2406, line: 110, baseType: !340, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2405, file: !2406, line: 118, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2406, line: 95, size: 448, elements: !2412)
!2412 = !{!2413, !2414, !2419, !2420, !2421, !2422, !2423}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2411, file: !2406, line: 96, baseType: !738, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2411, file: !2406, line: 97, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2406, line: 60, baseType: !2417)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2404}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2411, file: !2406, line: 98, baseType: !2415, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2411, file: !2406, line: 99, baseType: !498, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2411, file: !2406, line: 100, baseType: !498, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2411, file: !2406, line: 101, baseType: !381, size: 128, align: 64, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2411, file: !2406, line: 102, baseType: !2404, size: 64, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2391, file: !86, line: 113, baseType: !2405, size: 128, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2391, file: !86, line: 114, baseType: !1551, size: 192, offset: 576)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2391, file: !86, line: 115, baseType: !85, size: 32, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2391, file: !86, line: 116, baseType: !7, size: 32, offset: 800)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2391, file: !86, line: 117, baseType: !2429, size: 64, offset: 832)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !86, line: 67, size: 256, elements: !2432)
!2432 = !{!2433, !2434, !2438, !2439}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2431, file: !86, line: 73, baseType: !894, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2431, file: !86, line: 78, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !2390}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2431, file: !86, line: 83, baseType: !2435, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2431, file: !86, line: 89, baseType: !1080, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2391, file: !86, line: 118, baseType: !173, size: 64, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2391, file: !86, line: 119, baseType: !36, size: 32, offset: 960)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !86, line: 120, baseType: !2443, size: 128, offset: 1024)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2391, file: !86, line: 120, size: 128, elements: !2444)
!2444 = !{!2445, !2451}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2443, file: !86, line: 121, baseType: !2446, size: 128)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2447, line: 6, size: 128, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2446, file: !2447, line: 7, baseType: !219, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2446, file: !2447, line: 8, baseType: !219, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2443, file: !86, line: 122, baseType: !2452)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2446, elements: !1772)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2387, file: !783, line: 162, baseType: !173, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !787, file: !783, line: 176, baseType: !381, size: 128, align: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 179, baseType: !2456, size: 32, offset: 384)
!2456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 179, size: 32, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2456, file: !783, line: 184, baseType: !808, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2456, file: !783, line: 192, baseType: !7, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2456, file: !783, line: 194, baseType: !7, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2456, file: !783, line: 195, baseType: !36, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !782, file: !783, line: 199, baseType: !808, size: 32, offset: 416)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !668, file: !99, line: 1964, baseType: !2464, size: 64, offset: 1344)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!326, !607, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2469, line: 12, size: 256, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2470 = !{!2471, !2472, !2473, !2474, !2475}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2468, file: !2469, line: 13, baseType: !804, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2468, file: !2469, line: 16, baseType: !36, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2468, file: !2469, line: 23, baseType: !340, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2468, file: !2469, line: 30, baseType: !340, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2468, file: !2469, line: 33, baseType: !2476, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !783, line: 27, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !668, file: !99, line: 1966, baseType: !2464, size: 64, offset: 1408)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !608, file: !99, line: 1424, baseType: !2480, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2482)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !93, line: 322, size: 704, elements: !2483)
!2483 = !{!2484, !2530, !2534, !2538, !2539, !2540, !2541, !2542, !2547, !2552, !2556}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2482, file: !93, line: 323, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!36, !2488}
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !93, line: 294, size: 1600, elements: !2490)
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2515, !2516, !2517}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2489, file: !93, line: 295, baseType: !650, size: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2489, file: !93, line: 296, baseType: !178, size: 128, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2489, file: !93, line: 297, baseType: !178, size: 128, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2489, file: !93, line: 298, baseType: !178, size: 128, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2489, file: !93, line: 299, baseType: !734, size: 192, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2489, file: !93, line: 300, baseType: !254, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2489, file: !93, line: 301, baseType: !808, size: 32, offset: 704)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2489, file: !93, line: 302, baseType: !607, size: 64, offset: 768)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2489, file: !93, line: 303, baseType: !2500, size: 64, offset: 832)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !93, line: 68, size: 64, elements: !2501)
!2501 = !{!2502, !2514}
!2502 = !DIDerivedType(tag: DW_TAG_member, scope: !2500, file: !93, line: 69, baseType: !2503, size: 32)
!2503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2500, file: !93, line: 69, size: 32, elements: !2504)
!2504 = !{!2505, !2506, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2503, file: !93, line: 70, baseType: !443, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2503, file: !93, line: 71, baseType: !451, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2503, file: !93, line: 72, baseType: !2508, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2509, line: 24, baseType: !2510)
!2509 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2509, line: 22, size: 32, elements: !2511)
!2511 = !{!2512}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2510, file: !2509, line: 23, baseType: !2513, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2509, line: 20, baseType: !449)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2500, file: !93, line: 74, baseType: !92, size: 32, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2489, file: !93, line: 304, baseType: !539, size: 64, offset: 896)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2489, file: !93, line: 305, baseType: !340, size: 64, offset: 960)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2489, file: !93, line: 306, baseType: !2518, size: 576, offset: 1024)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !93, line: 205, size: 576, elements: !2519)
!2519 = !{!2520, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2518, file: !93, line: 206, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !93, line: 66, baseType: !541)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2518, file: !93, line: 207, baseType: !2521, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2518, file: !93, line: 208, baseType: !2521, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2518, file: !93, line: 209, baseType: !2521, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2518, file: !93, line: 210, baseType: !2521, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2518, file: !93, line: 211, baseType: !2521, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2518, file: !93, line: 212, baseType: !2521, size: 64, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2518, file: !93, line: 213, baseType: !547, size: 64, offset: 448)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2518, file: !93, line: 214, baseType: !547, size: 64, offset: 512)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2482, file: !93, line: 324, baseType: !2531, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2488, !607, !36}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2482, file: !93, line: 325, baseType: !2535, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2488}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2482, file: !93, line: 326, baseType: !2485, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2482, file: !93, line: 327, baseType: !2485, size: 64, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2482, file: !93, line: 328, baseType: !2485, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2482, file: !93, line: 329, baseType: !696, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2482, file: !93, line: 332, baseType: !2543, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!2546, !437}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2482, file: !93, line: 333, baseType: !2548, size: 64, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!36, !437, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2482, file: !93, line: 335, baseType: !2553, size: 64, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!36, !437, !2546}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2482, file: !93, line: 337, baseType: !2557, size: 64, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!36, !607, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !608, file: !99, line: 1425, baseType: !2562, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !93, line: 428, size: 704, elements: !2565)
!2565 = !{!2566, !2570, !2571, !2575, !2576, !2577, !2592, !2615, !2619, !2620, !2643}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2564, file: !93, line: 429, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!36, !607, !36, !36, !557}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2564, file: !93, line: 430, baseType: !696, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2564, file: !93, line: 431, baseType: !2572, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!36, !607, !7}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2564, file: !93, line: 432, baseType: !2572, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2564, file: !93, line: 433, baseType: !696, size: 64, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2564, file: !93, line: 434, baseType: !2578, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!36, !607, !36, !2581}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !93, line: 415, size: 256, elements: !2583)
!2583 = !{!2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2582, file: !93, line: 416, baseType: !36, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2582, file: !93, line: 417, baseType: !7, size: 32, offset: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2582, file: !93, line: 418, baseType: !7, size: 32, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2582, file: !93, line: 420, baseType: !7, size: 32, offset: 96)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2582, file: !93, line: 421, baseType: !7, size: 32, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2582, file: !93, line: 422, baseType: !7, size: 32, offset: 160)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2582, file: !93, line: 423, baseType: !7, size: 32, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2582, file: !93, line: 424, baseType: !7, size: 32, offset: 224)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2564, file: !93, line: 435, baseType: !2593, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!36, !607, !2500, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !93, line: 343, size: 960, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2597, file: !93, line: 344, baseType: !36, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2597, file: !93, line: 345, baseType: !219, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2597, file: !93, line: 346, baseType: !219, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2597, file: !93, line: 347, baseType: !219, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2597, file: !93, line: 348, baseType: !219, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2597, file: !93, line: 349, baseType: !219, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2597, file: !93, line: 350, baseType: !219, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2597, file: !93, line: 351, baseType: !744, size: 64, offset: 448)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2597, file: !93, line: 353, baseType: !744, size: 64, offset: 512)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2597, file: !93, line: 354, baseType: !36, size: 32, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2597, file: !93, line: 355, baseType: !36, size: 32, offset: 608)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2597, file: !93, line: 356, baseType: !219, size: 64, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2597, file: !93, line: 357, baseType: !219, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2597, file: !93, line: 358, baseType: !219, size: 64, offset: 768)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2597, file: !93, line: 359, baseType: !744, size: 64, offset: 832)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2597, file: !93, line: 360, baseType: !36, size: 32, offset: 896)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2564, file: !93, line: 436, baseType: !2616, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!36, !607, !2560, !2596}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2564, file: !93, line: 438, baseType: !2593, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2564, file: !93, line: 439, baseType: !2621, size: 64, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!36, !607, !2624}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !93, line: 409, size: 1408, elements: !2626)
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2625, file: !93, line: 410, baseType: !7, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2625, file: !93, line: 411, baseType: !2629, size: 1344, offset: 64)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2630, size: 1344, elements: !237)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !93, line: 395, size: 448, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2642}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2630, file: !93, line: 396, baseType: !7, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2630, file: !93, line: 397, baseType: !7, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2630, file: !93, line: 399, baseType: !7, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2630, file: !93, line: 400, baseType: !7, size: 32, offset: 96)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2630, file: !93, line: 401, baseType: !7, size: 32, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2630, file: !93, line: 402, baseType: !7, size: 32, offset: 160)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2630, file: !93, line: 403, baseType: !7, size: 32, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2630, file: !93, line: 404, baseType: !201, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2630, file: !93, line: 405, baseType: !2641, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !179, line: 126, baseType: !219)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2630, file: !93, line: 406, baseType: !2641, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2564, file: !93, line: 440, baseType: !2572, size: 64, offset: 640)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !608, file: !99, line: 1426, baseType: !2645, size: 64, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !99, line: 49, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !608, file: !99, line: 1427, baseType: !340, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !608, file: !99, line: 1428, baseType: !340, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !608, file: !99, line: 1429, baseType: !340, size: 64, offset: 768)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !608, file: !99, line: 1430, baseType: !398, size: 64, offset: 832)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !608, file: !99, line: 1431, baseType: !828, size: 256, offset: 896)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !608, file: !99, line: 1432, baseType: !36, size: 32, offset: 1152)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !608, file: !99, line: 1433, baseType: !808, size: 32, offset: 1184)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !608, file: !99, line: 1437, baseType: !2656, size: 64, offset: 1216)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !99, line: 1437, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !608, file: !99, line: 1449, baseType: !2661, size: 64, offset: 1280)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !414, line: 34, size: 64, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2661, file: !414, line: 35, baseType: !417, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !608, file: !99, line: 1450, baseType: !178, size: 128, offset: 1344)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !608, file: !99, line: 1451, baseType: !2666, size: 64, offset: 1472)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !99, line: 699, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !608, file: !99, line: 1452, baseType: !1974, size: 64, offset: 1536)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !608, file: !99, line: 1453, baseType: !2670, size: 64, offset: 1600)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !99, line: 1453, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !608, file: !99, line: 1454, baseType: !650, size: 128, offset: 1664)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !608, file: !99, line: 1455, baseType: !7, size: 32, offset: 1792)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !608, file: !99, line: 1456, baseType: !2675, size: 2432, offset: 1856)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !93, line: 518, size: 2432, elements: !2676)
!2676 = !{!2677, !2678, !2679, !2681, !2713}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2675, file: !93, line: 519, baseType: !7, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2675, file: !93, line: 520, baseType: !828, size: 256, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2675, file: !93, line: 521, baseType: !2680, size: 192, offset: 320)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 192, elements: !237)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2675, file: !93, line: 522, baseType: !2682, size: 1728, offset: 512)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2683, size: 1728, elements: !237)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !93, line: 222, size: 576, elements: !2684)
!2684 = !{!2685, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2683, file: !93, line: 223, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !93, line: 443, size: 256, elements: !2688)
!2688 = !{!2689, !2690, !2703, !2704}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2687, file: !93, line: 444, baseType: !36, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2687, file: !93, line: 445, baseType: !2691, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !93, line: 310, size: 512, elements: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2693, file: !93, line: 311, baseType: !696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2693, file: !93, line: 312, baseType: !696, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2693, file: !93, line: 313, baseType: !696, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2693, file: !93, line: 314, baseType: !696, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2693, file: !93, line: 315, baseType: !2485, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2693, file: !93, line: 316, baseType: !2485, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2693, file: !93, line: 317, baseType: !2485, size: 64, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2693, file: !93, line: 318, baseType: !2557, size: 64, offset: 448)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2687, file: !93, line: 446, baseType: !641, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2687, file: !93, line: 447, baseType: !2686, size: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2683, file: !93, line: 224, baseType: !36, size: 32, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2683, file: !93, line: 226, baseType: !178, size: 128, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2683, file: !93, line: 227, baseType: !340, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2683, file: !93, line: 228, baseType: !7, size: 32, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2683, file: !93, line: 229, baseType: !7, size: 32, offset: 352)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2683, file: !93, line: 230, baseType: !2521, size: 64, offset: 384)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2683, file: !93, line: 231, baseType: !2521, size: 64, offset: 448)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2683, file: !93, line: 232, baseType: !173, size: 64, offset: 512)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2675, file: !93, line: 523, baseType: !2714, size: 192, offset: 2240)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2691, size: 192, elements: !237)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !608, file: !99, line: 1458, baseType: !2716, size: 2112, offset: 4288)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !99, line: 1410, size: 2112, elements: !2717)
!2717 = !{!2718, !2719, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2716, file: !99, line: 1411, baseType: !36, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2716, file: !99, line: 1412, baseType: !1530, size: 128, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2716, file: !99, line: 1413, baseType: !2721, size: 1920, offset: 192)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2722, size: 1920, elements: !237)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2723, line: 12, size: 640, elements: !2724)
!2723 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2724 = !{!2725, !2733, !2735, !2740, !2741}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2722, file: !2723, line: 13, baseType: !2726, size: 320)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2727, line: 17, size: 320, elements: !2728)
!2727 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2728 = !{!2729, !2730, !2731, !2732}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2726, file: !2727, line: 18, baseType: !36, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2726, file: !2727, line: 19, baseType: !36, size: 32, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2726, file: !2727, line: 20, baseType: !1530, size: 128, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2726, file: !2727, line: 22, baseType: !381, size: 128, align: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2722, file: !2723, line: 14, baseType: !2734, size: 64, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2722, file: !2723, line: 15, baseType: !2736, size: 64, offset: 384)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2737, line: 16, size: 64, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2738 = !{!2739}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2736, file: !2737, line: 17, baseType: !1263, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2722, file: !2723, line: 16, baseType: !1530, size: 128, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2722, file: !2723, line: 17, baseType: !808, size: 32, offset: 576)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !608, file: !99, line: 1465, baseType: !173, size: 64, offset: 6400)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !608, file: !99, line: 1468, baseType: !220, size: 32, offset: 6464)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !608, file: !99, line: 1470, baseType: !547, size: 64, offset: 6528)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !608, file: !99, line: 1471, baseType: !547, size: 64, offset: 6592)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !608, file: !99, line: 1473, baseType: !193, size: 32, offset: 6656)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !608, file: !99, line: 1474, baseType: !2748, size: 64, offset: 6720)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !99, line: 603, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !608, file: !99, line: 1477, baseType: !2751, size: 256, offset: 6784)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !2281)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !608, file: !99, line: 1478, baseType: !2753, size: 128, offset: 7040)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2754, line: 18, baseType: !2755)
!2754 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2754, line: 16, size: 128, elements: !2756)
!2756 = !{!2757}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2755, file: !2754, line: 17, baseType: !2758, size: 128)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !1784)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !608, file: !99, line: 1480, baseType: !7, size: 32, offset: 7168)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !608, file: !99, line: 1481, baseType: !2761, size: 32, offset: 7200)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !179, line: 150, baseType: !7)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !608, file: !99, line: 1487, baseType: !734, size: 192, offset: 7232)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !608, file: !99, line: 1493, baseType: !186, size: 64, offset: 7424)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !608, file: !99, line: 1495, baseType: !2765, size: 64, offset: 7488)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !396, line: 135, size: 1024, align: 512, elements: !2768)
!2768 = !{!2769, !2773, !2774, !2781, !2787, !2791, !2795, !2799, !2800, !2804, !2808, !2813, !2817}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2767, file: !396, line: 136, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!36, !398, !7}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2767, file: !396, line: 137, baseType: !2770, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2767, file: !396, line: 138, baseType: !2775, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!36, !2778, !2780}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2767, file: !396, line: 139, baseType: !2782, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!36, !2778, !7, !186, !2785}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2767, file: !396, line: 141, baseType: !2788, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!36, !2778}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2767, file: !396, line: 142, baseType: !2792, size: 64, offset: 320)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!36, !398}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2767, file: !396, line: 143, baseType: !2796, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !398}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2767, file: !396, line: 144, baseType: !2796, size: 64, offset: 448)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2767, file: !396, line: 145, baseType: !2801, size: 64, offset: 512)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !398, !437}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2767, file: !396, line: 146, baseType: !2805, size: 64, offset: 576)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!211, !398, !211, !36}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2767, file: !396, line: 147, baseType: !2809, size: 64, offset: 640)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!394, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2767, file: !396, line: 148, baseType: !2814, size: 64, offset: 704)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!36, !557, !498}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2767, file: !396, line: 149, baseType: !2818, size: 64, offset: 768)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!398, !398, !2821}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !608, file: !99, line: 1500, baseType: !36, size: 32, offset: 7552)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !608, file: !99, line: 1502, baseType: !2825, size: 448, offset: 7616)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2469, line: 60, size: 448, elements: !2826)
!2826 = !{!2827, !2832, !2833, !2834, !2835, !2836, !2837}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2825, file: !2469, line: 61, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!340, !2831, !2467}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2825, file: !2469, line: 63, baseType: !2828, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2825, file: !2469, line: 66, baseType: !326, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2825, file: !2469, line: 67, baseType: !36, size: 32, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !2469, line: 68, baseType: !7, size: 32, offset: 224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2825, file: !2469, line: 71, baseType: !178, size: 128, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2825, file: !2469, line: 77, baseType: !2838, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !608, file: !99, line: 1505, baseType: !738, size: 64, offset: 8064)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !608, file: !99, line: 1508, baseType: !738, size: 64, offset: 8128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !608, file: !99, line: 1511, baseType: !36, size: 32, offset: 8192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !608, file: !99, line: 1514, baseType: !961, size: 32, offset: 8224)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !608, file: !99, line: 1517, baseType: !2844, size: 64, offset: 8256)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2009, line: 18, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !608, file: !99, line: 1518, baseType: !646, size: 64, offset: 8320)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !608, file: !99, line: 1525, baseType: !1762, size: 64, offset: 8384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !608, file: !99, line: 1532, baseType: !2849, size: 64, offset: 8448)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2850, line: 52, size: 64, elements: !2851)
!2850 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2851 = !{!2852}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2849, file: !2850, line: 53, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2850, line: 40, size: 256, elements: !2855)
!2855 = !{!2856, !2857, !2862}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2854, file: !2850, line: 42, baseType: !254)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2854, file: !2850, line: 44, baseType: !2858, size: 192)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2850, line: 28, size: 192, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2858, file: !2850, line: 29, baseType: !178, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2858, file: !2850, line: 31, baseType: !326, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2854, file: !2850, line: 49, baseType: !326, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !608, file: !99, line: 1533, baseType: !2849, size: 64, offset: 8512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !608, file: !99, line: 1534, baseType: !381, size: 128, align: 64, offset: 8576)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !608, file: !99, line: 1535, baseType: !2008, size: 256, offset: 8704)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !608, file: !99, line: 1537, baseType: !734, size: 192, offset: 8960)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !608, file: !99, line: 1542, baseType: !36, size: 32, offset: 9152)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !608, file: !99, line: 1545, baseType: !254, offset: 9184)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !608, file: !99, line: 1546, baseType: !178, size: 128, offset: 9216)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !608, file: !99, line: 1548, baseType: !254, offset: 9344)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !608, file: !99, line: 1549, baseType: !178, size: 128, offset: 9344)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !438, file: !99, line: 624, baseType: !794, size: 64, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !438, file: !99, line: 631, baseType: !340, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !99, line: 639, baseType: !2875, size: 32, offset: 384)
!2875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !99, line: 639, size: 32, elements: !2876)
!2876 = !{!2877, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2875, file: !99, line: 640, baseType: !2878, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2875, file: !99, line: 641, baseType: !7, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !438, file: !99, line: 643, baseType: !521, size: 32, offset: 416)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !438, file: !99, line: 644, baseType: !539, size: 64, offset: 448)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !438, file: !99, line: 645, baseType: !543, size: 128, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !438, file: !99, line: 646, baseType: !543, size: 128, offset: 640)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !438, file: !99, line: 647, baseType: !543, size: 128, offset: 768)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !438, file: !99, line: 648, baseType: !254, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !438, file: !99, line: 649, baseType: !210, size: 16, offset: 896)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !438, file: !99, line: 650, baseType: !203, size: 8, offset: 912)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !438, file: !99, line: 651, baseType: !203, size: 8, offset: 920)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !438, file: !99, line: 652, baseType: !2641, size: 64, offset: 960)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !438, file: !99, line: 659, baseType: !340, size: 64, offset: 1024)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !438, file: !99, line: 660, baseType: !828, size: 256, offset: 1088)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !438, file: !99, line: 662, baseType: !340, size: 64, offset: 1344)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !438, file: !99, line: 663, baseType: !340, size: 64, offset: 1408)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !438, file: !99, line: 665, baseType: !650, size: 128, offset: 1472)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !438, file: !99, line: 666, baseType: !178, size: 128, offset: 1600)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !438, file: !99, line: 675, baseType: !178, size: 128, offset: 1728)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !438, file: !99, line: 676, baseType: !178, size: 128, offset: 1856)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !438, file: !99, line: 677, baseType: !178, size: 128, offset: 1984)
!2899 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !99, line: 678, baseType: !2900, size: 128, offset: 2112)
!2900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !99, line: 678, size: 128, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2900, file: !99, line: 679, baseType: !646, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2900, file: !99, line: 680, baseType: !381, size: 128, align: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !438, file: !99, line: 682, baseType: !740, size: 64, offset: 2240)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !438, file: !99, line: 683, baseType: !740, size: 64, offset: 2304)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !438, file: !99, line: 684, baseType: !808, size: 32, offset: 2368)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !438, file: !99, line: 685, baseType: !808, size: 32, offset: 2400)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !438, file: !99, line: 686, baseType: !808, size: 32, offset: 2432)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !438, file: !99, line: 688, baseType: !808, size: 32, offset: 2464)
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !99, line: 690, baseType: !2911, size: 64, offset: 2496)
!2911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !99, line: 690, size: 64, elements: !2912)
!2912 = !{!2913, !3143}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2911, file: !99, line: 691, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2916)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !99, line: 1822, size: 2048, elements: !2917)
!2917 = !{!2918, !2919, !2923, !2927, !2931, !2932, !2933, !2937, !2950, !2951, !2967, !2971, !2972, !2976, !2977, !2981, !2986, !2987, !2991, !2995, !3103, !3107, !3108, !3112, !3113, !3117, !3121, !3126, !3130, !3134, !3138, !3142}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2916, file: !99, line: 1823, baseType: !641, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2916, file: !99, line: 1824, baseType: !2920, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!539, !368, !539, !36}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2916, file: !99, line: 1825, baseType: !2924, size: 64, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!322, !368, !211, !337, !756}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2916, file: !99, line: 1826, baseType: !2928, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!322, !368, !186, !337, !756}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2916, file: !99, line: 1827, baseType: !898, size: 64, offset: 256)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2916, file: !99, line: 1828, baseType: !898, size: 64, offset: 320)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2916, file: !99, line: 1829, baseType: !2934, size: 64, offset: 384)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!36, !901, !498}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2916, file: !99, line: 1830, baseType: !2938, size: 64, offset: 448)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!36, !368, !2941}
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !99, line: 1776, size: 128, elements: !2943)
!2943 = !{!2944, !2949}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2942, file: !99, line: 1777, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !99, line: 1773, baseType: !2946)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!36, !2941, !186, !36, !539, !219, !7}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2942, file: !99, line: 1778, baseType: !539, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2916, file: !99, line: 1831, baseType: !2938, size: 64, offset: 512)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2916, file: !99, line: 1832, baseType: !2952, size: 64, offset: 576)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!2955, !368, !2956}
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !192, line: 52, baseType: !7)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2958, line: 43, size: 128, elements: !2959)
!2958 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2959 = !{!2960, !2966}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2957, file: !2958, line: 44, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2958, line: 37, baseType: !2962)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !368, !2965, !2956}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2957, file: !2958, line: 45, baseType: !2955, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2916, file: !99, line: 1833, baseType: !2968, size: 64, offset: 640)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!326, !368, !7, !340}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2916, file: !99, line: 1834, baseType: !2968, size: 64, offset: 704)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2916, file: !99, line: 1835, baseType: !2973, size: 64, offset: 768)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!36, !368, !1034}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2916, file: !99, line: 1836, baseType: !340, size: 64, offset: 832)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2916, file: !99, line: 1837, baseType: !2978, size: 64, offset: 896)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!36, !437, !368}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2916, file: !99, line: 1838, baseType: !2982, size: 64, offset: 960)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!36, !368, !2985}
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !99, line: 1007, baseType: !173)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2916, file: !99, line: 1839, baseType: !2978, size: 64, offset: 1024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2916, file: !99, line: 1840, baseType: !2988, size: 64, offset: 1088)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!36, !368, !539, !539, !36}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2916, file: !99, line: 1841, baseType: !2992, size: 64, offset: 1152)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!36, !36, !368, !36}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2916, file: !99, line: 1842, baseType: !2996, size: 64, offset: 1216)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!36, !368, !36, !2999}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !99, line: 1062, size: 1664, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3033, !3034, !3035, !3048, !3079}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3000, file: !99, line: 1063, baseType: !2999, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3000, file: !99, line: 1064, baseType: !178, size: 128, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3000, file: !99, line: 1065, baseType: !650, size: 128, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3000, file: !99, line: 1066, baseType: !178, size: 128, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3000, file: !99, line: 1069, baseType: !178, size: 128, offset: 448)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3000, file: !99, line: 1072, baseType: !2985, size: 64, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3000, file: !99, line: 1073, baseType: !7, size: 32, offset: 640)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3000, file: !99, line: 1074, baseType: !206, size: 8, offset: 672)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3000, file: !99, line: 1075, baseType: !7, size: 32, offset: 704)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3000, file: !99, line: 1076, baseType: !36, size: 32, offset: 736)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3000, file: !99, line: 1077, baseType: !1530, size: 128, offset: 768)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3000, file: !99, line: 1078, baseType: !368, size: 64, offset: 896)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3000, file: !99, line: 1079, baseType: !539, size: 64, offset: 960)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3000, file: !99, line: 1080, baseType: !539, size: 64, offset: 1024)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3000, file: !99, line: 1082, baseType: !3017, size: 64, offset: 1088)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !99, line: 1314, size: 320, elements: !3019)
!3019 = !{!3020, !3028, !3029, !3030, !3031, !3032}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3018, file: !99, line: 1315, baseType: !3021)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3022, line: 20, baseType: !3023)
!3022 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3022, line: 11, elements: !3024)
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3023, file: !3022, line: 12, baseType: !3026)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !266, line: 33, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 31, elements: !235)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3018, file: !99, line: 1316, baseType: !36, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3018, file: !99, line: 1317, baseType: !36, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3018, file: !99, line: 1318, baseType: !3017, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3018, file: !99, line: 1319, baseType: !368, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3018, file: !99, line: 1320, baseType: !381, size: 128, align: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3000, file: !99, line: 1084, baseType: !340, size: 64, offset: 1152)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3000, file: !99, line: 1085, baseType: !340, size: 64, offset: 1216)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3000, file: !99, line: 1087, baseType: !3036, size: 64, offset: 1280)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !99, line: 1011, size: 128, elements: !3039)
!3039 = !{!3040, !3044}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3038, file: !99, line: 1012, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !2999, !2999}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3038, file: !99, line: 1013, baseType: !3045, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !2999}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3000, file: !99, line: 1088, baseType: !3049, size: 64, offset: 1344)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3051)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !99, line: 1016, size: 512, elements: !3052)
!3052 = !{!3053, !3057, !3061, !3062, !3066, !3070, !3074, !3078}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3051, file: !99, line: 1017, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!2985, !2985}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3051, file: !99, line: 1018, baseType: !3058, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !2985}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3051, file: !99, line: 1019, baseType: !3045, size: 64, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3051, file: !99, line: 1020, baseType: !3063, size: 64, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!36, !2999, !36}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3051, file: !99, line: 1021, baseType: !3067, size: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!498, !2999}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3051, file: !99, line: 1022, baseType: !3071, size: 64, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!36, !2999, !36, !182}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3051, file: !99, line: 1023, baseType: !3075, size: 64, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !2999, !875}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3051, file: !99, line: 1024, baseType: !3067, size: 64, offset: 448)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3000, file: !99, line: 1097, baseType: !3080, size: 256, offset: 1408)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !99, line: 1089, size: 256, elements: !3081)
!3081 = !{!3082, !3091, !3097}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3080, file: !99, line: 1090, baseType: !3083, size: 256)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3084, line: 10, size: 256, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3085 = !{!3086, !3087, !3090}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3083, file: !3084, line: 11, baseType: !220, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3083, file: !3084, line: 12, baseType: !3088, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3084, line: 5, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3083, file: !3084, line: 13, baseType: !178, size: 128, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3080, file: !99, line: 1091, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3084, line: 17, size: 64, elements: !3093)
!3093 = !{!3094}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3092, file: !3084, line: 18, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3084, line: 16, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3080, file: !99, line: 1096, baseType: !3098, size: 192)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !99, line: 1092, size: 192, elements: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3098, file: !99, line: 1093, baseType: !178, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3098, file: !99, line: 1094, baseType: !36, size: 32, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3098, file: !99, line: 1095, baseType: !7, size: 32, offset: 160)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2916, file: !99, line: 1843, baseType: !3104, size: 64, offset: 1280)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!322, !368, !781, !36, !337, !756, !36}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2916, file: !99, line: 1844, baseType: !1154, size: 64, offset: 1344)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2916, file: !99, line: 1845, baseType: !3109, size: 64, offset: 1408)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!36, !36}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2916, file: !99, line: 1846, baseType: !2996, size: 64, offset: 1472)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2916, file: !99, line: 1847, baseType: !3114, size: 64, offset: 1536)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!322, !2149, !368, !756, !337, !7}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2916, file: !99, line: 1848, baseType: !3118, size: 64, offset: 1600)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!322, !368, !756, !2149, !337, !7}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2916, file: !99, line: 1849, baseType: !3122, size: 64, offset: 1664)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!36, !368, !326, !3125, !875}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2916, file: !99, line: 1850, baseType: !3127, size: 64, offset: 1728)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!326, !368, !36, !539, !539}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2916, file: !99, line: 1852, baseType: !3131, size: 64, offset: 1792)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !722, !368}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2916, file: !99, line: 1856, baseType: !3135, size: 64, offset: 1856)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!322, !368, !539, !368, !539, !337, !7}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2916, file: !99, line: 1858, baseType: !3139, size: 64, offset: 1920)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!539, !368, !539, !368, !539, !539, !7}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2916, file: !99, line: 1861, baseType: !2988, size: 64, offset: 1984)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2911, file: !99, line: 692, baseType: !675, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !438, file: !99, line: 694, baseType: !3145, size: 64, offset: 2560)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !99, line: 1100, size: 384, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3146, file: !99, line: 1101, baseType: !254)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3146, file: !99, line: 1102, baseType: !178, size: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3146, file: !99, line: 1103, baseType: !178, size: 128, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3146, file: !99, line: 1104, baseType: !178, size: 128, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !438, file: !99, line: 695, baseType: !795, size: 1216, align: 64, offset: 2624)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !438, file: !99, line: 696, baseType: !178, size: 128, offset: 3840)
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !99, line: 697, baseType: !3155, size: 64, offset: 3968)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !99, line: 697, size: 64, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3170, !3171}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3155, file: !99, line: 698, baseType: !2149, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3155, file: !99, line: 699, baseType: !2666, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3155, file: !99, line: 700, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3162, line: 14, size: 832, elements: !3163)
!3162 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3161, file: !3162, line: 15, baseType: !242, size: 512)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3161, file: !3162, line: 16, baseType: !641, size: 64, offset: 512)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3161, file: !3162, line: 17, baseType: !2914, size: 64, offset: 576)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3161, file: !3162, line: 18, baseType: !178, size: 128, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3161, file: !3162, line: 19, baseType: !521, size: 32, offset: 768)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3161, file: !3162, line: 20, baseType: !7, size: 32, offset: 800)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3155, file: !99, line: 701, baseType: !211, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3155, file: !99, line: 702, baseType: !7, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !438, file: !99, line: 705, baseType: !193, size: 32, offset: 4032)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !438, file: !99, line: 708, baseType: !193, size: 32, offset: 4064)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !438, file: !99, line: 709, baseType: !2748, size: 64, offset: 4096)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !438, file: !99, line: 720, baseType: !173, size: 64, offset: 4160)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !399, file: !396, line: 98, baseType: !3177, size: 256, offset: 448)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !2281)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !399, file: !396, line: 101, baseType: !3179, size: 32, offset: 704)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3180, line: 25, size: 32, elements: !3181)
!3180 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3181 = !{!3182}
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !3179, file: !3180, line: 26, baseType: !3183, size: 32)
!3183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3179, file: !3180, line: 26, size: 32, elements: !3184)
!3184 = !{!3185}
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !3180, line: 30, baseType: !3186, size: 32)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3183, file: !3180, line: 30, size: 32, elements: !3187)
!3187 = !{!3188, !3189}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3186, file: !3180, line: 31, baseType: !254)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3186, file: !3180, line: 32, baseType: !36, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !399, file: !396, line: 102, baseType: !2765, size: 64, offset: 768)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !399, file: !396, line: 103, baseType: !607, size: 64, offset: 832)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !399, file: !396, line: 104, baseType: !340, size: 64, offset: 896)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !399, file: !396, line: 105, baseType: !173, size: 64, offset: 960)
!3194 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !396, line: 107, baseType: !3195, size: 128, offset: 1024)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !396, line: 107, size: 128, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3195, file: !396, line: 108, baseType: !178, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3195, file: !396, line: 109, baseType: !2965, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !399, file: !396, line: 111, baseType: !178, size: 128, offset: 1152)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !399, file: !396, line: 112, baseType: !178, size: 128, offset: 1280)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !399, file: !396, line: 120, baseType: !3202, size: 128, offset: 1408)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !396, line: 116, size: 128, elements: !3203)
!3203 = !{!3204, !3205, !3206}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3202, file: !396, line: 117, baseType: !650, size: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3202, file: !396, line: 118, baseType: !413, size: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3202, file: !396, line: 119, baseType: !381, size: 128, align: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !369, file: !99, line: 922, baseType: !437, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !369, file: !99, line: 923, baseType: !2914, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !369, file: !99, line: 929, baseType: !254, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !369, file: !99, line: 930, baseType: !98, size: 32, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !369, file: !99, line: 931, baseType: !738, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !369, file: !99, line: 932, baseType: !7, size: 32, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !369, file: !99, line: 933, baseType: !2761, size: 32, offset: 544)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !369, file: !99, line: 934, baseType: !734, size: 192, offset: 576)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !369, file: !99, line: 935, baseType: !539, size: 64, offset: 768)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !369, file: !99, line: 936, baseType: !3217, size: 192, offset: 832)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !99, line: 885, size: 192, elements: !3218)
!3218 = !{!3219, !3220, !3221, !3222, !3223, !3224}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3217, file: !99, line: 886, baseType: !3021)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3217, file: !99, line: 887, baseType: !1520, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3217, file: !99, line: 888, baseType: !107, size: 32, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3217, file: !99, line: 889, baseType: !443, size: 32, offset: 96)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3217, file: !99, line: 889, baseType: !443, size: 32, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3217, file: !99, line: 890, baseType: !36, size: 32, offset: 160)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !369, file: !99, line: 937, baseType: !1596, size: 64, offset: 1024)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !369, file: !99, line: 938, baseType: !3227, size: 256, offset: 1088)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !99, line: 896, size: 256, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3232, !3233, !3234}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3227, file: !99, line: 897, baseType: !340, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3227, file: !99, line: 898, baseType: !7, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3227, file: !99, line: 899, baseType: !7, size: 32, offset: 96)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3227, file: !99, line: 902, baseType: !7, size: 32, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3227, file: !99, line: 903, baseType: !7, size: 32, offset: 160)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3227, file: !99, line: 904, baseType: !539, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !369, file: !99, line: 940, baseType: !219, size: 64, offset: 1344)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !369, file: !99, line: 945, baseType: !173, size: 64, offset: 1408)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !369, file: !99, line: 949, baseType: !178, size: 128, offset: 1472)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !369, file: !99, line: 950, baseType: !178, size: 128, offset: 1600)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !369, file: !99, line: 952, baseType: !794, size: 64, offset: 1728)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !369, file: !99, line: 953, baseType: !961, size: 32, offset: 1792)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !369, file: !99, line: 954, baseType: !961, size: 32, offset: 1824)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !316, line: 174, baseType: !365, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !359, file: !316, line: 176, baseType: !3244, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!36, !368, !241, !358, !1034}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !347, file: !316, line: 90, baseType: !342, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !347, file: !316, line: 91, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !306, file: !243, line: 143, baseType: !3251, size: 64, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!3254, !241}
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3256)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !116, line: 39, size: 384, elements: !3257)
!3257 = !{!3258, !3259, !3263, !3267, !3273, !3277}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3256, file: !116, line: 40, baseType: !115, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3256, file: !116, line: 41, baseType: !3260, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!498}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3256, file: !116, line: 42, baseType: !3264, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!173}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3256, file: !116, line: 43, baseType: !3268, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!2178, !3271}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !116, line: 19, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3256, file: !116, line: 44, baseType: !3274, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!2178}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3256, file: !116, line: 45, baseType: !476, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !306, file: !243, line: 144, baseType: !3279, size: 64, offset: 320)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!2178, !241}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !306, file: !243, line: 145, baseType: !3283, size: 64, offset: 384)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{null, !241, !3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !242, file: !243, line: 70, baseType: !3289, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !627, line: 123, size: 1024, elements: !3291)
!3291 = !{!3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3408, !3409, !3410, !3411, !3412}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3290, file: !627, line: 124, baseType: !808, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3290, file: !627, line: 125, baseType: !808, size: 32, offset: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3290, file: !627, line: 135, baseType: !3289, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3290, file: !627, line: 136, baseType: !186, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3290, file: !627, line: 138, baseType: !821, size: 192, align: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3290, file: !627, line: 140, baseType: !2178, size: 64, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3290, file: !627, line: 141, baseType: !7, size: 32, offset: 448)
!3299 = !DIDerivedType(tag: DW_TAG_member, scope: !3290, file: !627, line: 142, baseType: !3300, size: 256, offset: 512)
!3300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3290, file: !627, line: 142, size: 256, elements: !3301)
!3301 = !{!3302, !3348, !3352}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3300, file: !627, line: 143, baseType: !3303, size: 192)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !627, line: 91, size: 192, elements: !3304)
!3304 = !{!3305, !3306, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3303, file: !627, line: 92, baseType: !340, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3303, file: !627, line: 94, baseType: !817, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3303, file: !627, line: 100, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !627, line: 180, size: 704, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3320, !3321, !3322, !3346, !3347}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3309, file: !627, line: 182, baseType: !3289, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3309, file: !627, line: 183, baseType: !7, size: 32, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3309, file: !627, line: 186, baseType: !3314, size: 192, offset: 128)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3315, line: 19, size: 192, elements: !3316)
!3315 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3316 = !{!3317, !3318, !3319}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3314, file: !3315, line: 20, baseType: !799, size: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3314, file: !3315, line: 21, baseType: !7, size: 32, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3314, file: !3315, line: 22, baseType: !7, size: 32, offset: 160)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3309, file: !627, line: 187, baseType: !220, size: 32, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3309, file: !627, line: 188, baseType: !220, size: 32, offset: 352)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3309, file: !627, line: 189, baseType: !3323, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !627, line: 168, size: 320, elements: !3325)
!3325 = !{!3326, !3330, !3334, !3338, !3342}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3324, file: !627, line: 169, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!36, !722, !3308}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3324, file: !627, line: 171, baseType: !3331, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!36, !3289, !186, !332}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3324, file: !627, line: 173, baseType: !3335, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!36, !3289}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3324, file: !627, line: 174, baseType: !3339, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!36, !3289, !3289, !186}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3324, file: !627, line: 176, baseType: !3343, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!36, !722, !3289, !3308}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3309, file: !627, line: 192, baseType: !178, size: 128, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3309, file: !627, line: 194, baseType: !1530, size: 128, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3300, file: !627, line: 144, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !627, line: 103, size: 64, elements: !3350)
!3350 = !{!3351}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3349, file: !627, line: 104, baseType: !3289, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3300, file: !627, line: 145, baseType: !3353, size: 256)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !627, line: 107, size: 256, elements: !3354)
!3354 = !{!3355, !3403, !3406, !3407}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3353, file: !627, line: 108, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !627, line: 217, size: 768, elements: !3359)
!3359 = !{!3360, !3380, !3384, !3385, !3386, !3387, !3388, !3392, !3393, !3394, !3395, !3399}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3358, file: !627, line: 222, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!36, !3364}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !627, line: 197, size: 1088, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3365, file: !627, line: 199, baseType: !3289, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3365, file: !627, line: 200, baseType: !368, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3365, file: !627, line: 201, baseType: !722, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3365, file: !627, line: 202, baseType: !173, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3365, file: !627, line: 205, baseType: !734, size: 192, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3365, file: !627, line: 206, baseType: !734, size: 192, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3365, file: !627, line: 207, baseType: !36, size: 32, offset: 640)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3365, file: !627, line: 208, baseType: !178, size: 128, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3365, file: !627, line: 209, baseType: !211, size: 64, offset: 832)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3365, file: !627, line: 211, baseType: !337, size: 64, offset: 896)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3365, file: !627, line: 212, baseType: !498, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3365, file: !627, line: 213, baseType: !498, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3365, file: !627, line: 214, baseType: !1062, size: 64, offset: 1024)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3358, file: !627, line: 223, baseType: !3381, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !3364}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3358, file: !627, line: 236, baseType: !766, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3358, file: !627, line: 238, baseType: !753, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3358, file: !627, line: 239, baseType: !762, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3358, file: !627, line: 240, baseType: !758, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3358, file: !627, line: 242, baseType: !3389, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!322, !3364, !211, !337, !539}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3358, file: !627, line: 252, baseType: !337, size: 64, offset: 448)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3358, file: !627, line: 259, baseType: !498, size: 8, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3358, file: !627, line: 260, baseType: !3389, size: 64, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3358, file: !627, line: 263, baseType: !3396, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!2955, !3364, !2956}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3358, file: !627, line: 266, baseType: !3400, size: 64, offset: 704)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!36, !3364, !1034}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3353, file: !627, line: 109, baseType: !3404, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !627, line: 31, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3353, file: !627, line: 110, baseType: !539, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3353, file: !627, line: 111, baseType: !3289, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3290, file: !627, line: 148, baseType: !173, size: 64, offset: 768)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3290, file: !627, line: 154, baseType: !219, size: 64, offset: 832)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3290, file: !627, line: 156, baseType: !210, size: 16, offset: 896)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3290, file: !627, line: 157, baseType: !332, size: 16, offset: 912)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3290, file: !627, line: 158, baseType: !3413, size: 64, offset: 960)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !627, line: 32, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !242, file: !243, line: 71, baseType: !3416, size: 32, offset: 448)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3417, line: 19, size: 32, elements: !3418)
!3417 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3418 = !{!3419}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3416, file: !3417, line: 20, baseType: !1277, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !242, file: !243, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !242, file: !243, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !242, file: !243, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !242, file: !243, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !242, file: !243, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3425 = !DIGlobalVariableExpression(var: !3426, expr: !DIExpression())
!3426 = distinct !DIGlobalVariable(name: "dmi_len", scope: !2, file: !3, line: 29, type: !220, isLocal: true, isDefinition: true)
!3427 = !DIGlobalVariableExpression(var: !3428, expr: !DIExpression())
!3428 = distinct !DIGlobalVariable(name: "dmi_ids_string", scope: !2, file: !3, line: 35, type: !3429, isLocal: true, isDefinition: true)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1024, elements: !3430)
!3430 = !{!3431}
!3431 = !DISubrange(count: 128)
!3432 = !DIGlobalVariableExpression(var: !3433, expr: !DIExpression())
!3433 = distinct !DIGlobalVariable(name: "dmi_memdev", scope: !2, file: !3, line: 43, type: !3434, isLocal: true, isDefinition: true)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_memdev_info", file: !3, line: 37, size: 256, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3441}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3435, file: !3, line: 38, baseType: !186, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bank", scope: !3435, file: !3, line: 39, baseType: !186, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3435, file: !3, line: 40, baseType: !219, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3435, file: !3, line: 41, baseType: !208, size: 16, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3435, file: !3, line: 42, baseType: !203, size: 8, offset: 208)
!3442 = !DIGlobalVariableExpression(var: !3443, expr: !DIExpression())
!3443 = distinct !DIGlobalVariable(name: "dmi_memdev_nr", scope: !2, file: !3, line: 44, type: !36, isLocal: true, isDefinition: true)
!3444 = !DIGlobalVariableExpression(var: !3445, expr: !DIExpression())
!3445 = distinct !DIGlobalVariable(name: "dmi_base", scope: !2, file: !3, line: 135, type: !2176, isLocal: true, isDefinition: true)
!3446 = !DIGlobalVariableExpression(var: !3447, expr: !DIExpression())
!3447 = distinct !DIGlobalVariable(name: "dmi_ident", scope: !2, file: !3, line: 166, type: !3448, isLocal: true, isDefinition: true)
!3448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 1472, elements: !3449)
!3449 = !{!3450}
!3450 = !DISubrange(count: 23)
!3451 = !DIGlobalVariableExpression(var: !3452, expr: !DIExpression())
!3452 = distinct !DIGlobalVariable(name: "dmi_available", scope: !2, file: !3, line: 168, type: !36, isLocal: false, isDefinition: true)
!3453 = !DIGlobalVariableExpression(var: !3454, expr: !DIExpression())
!3454 = distinct !DIGlobalVariable(name: "smbios_entry_point_size", scope: !2, file: !3, line: 32, type: !36, isLocal: true, isDefinition: true)
!3455 = !DIGlobalVariableExpression(var: !3456, expr: !DIExpression())
!3456 = distinct !DIGlobalVariable(name: "bin_attr_smbios_entry_point", scope: !2, file: !3, line: 750, type: !359, isLocal: true, isDefinition: true)
!3457 = !DIGlobalVariableExpression(var: !3458, expr: !DIExpression())
!3458 = distinct !DIGlobalVariable(name: "smbios_entry_point", scope: !2, file: !3, line: 31, type: !3459, isLocal: true, isDefinition: true)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !2281)
!3460 = !DIGlobalVariableExpression(var: !3461, expr: !DIExpression())
!3461 = distinct !DIGlobalVariable(name: "bin_attr_DMI", scope: !2, file: !3, line: 751, type: !359, isLocal: true, isDefinition: true)
!3462 = !DIGlobalVariableExpression(var: !3463, expr: !DIExpression())
!3463 = distinct !DIGlobalVariable(name: "dmi_ver", scope: !2, file: !3, line: 28, type: !220, isLocal: true, isDefinition: true)
!3464 = !DIGlobalVariableExpression(var: !3465, expr: !DIExpression())
!3465 = distinct !DIGlobalVariable(name: "dmi_num", scope: !2, file: !3, line: 30, type: !208, isLocal: true, isDefinition: true)
!3466 = !DIGlobalVariableExpression(var: !3467, expr: !DIExpression())
!3467 = distinct !DIGlobalVariable(name: "dmi_empty_string", scope: !2, file: !3, line: 26, type: !3468, isLocal: true, isDefinition: true)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 8, elements: !1416)
!3469 = !DIGlobalVariableExpression(var: !3470, expr: !DIExpression())
!3470 = distinct !DIGlobalVariable(name: "nr", scope: !3471, file: !3, line: 423, type: !36, isLocal: true, isDefinition: true)
!3471 = distinct !DISubprogram(name: "save_mem_devices", scope: !3, file: !3, line: 420, type: !3472, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !222, !173}
!3474 = !DIGlobalVariableExpression(var: !3475, expr: !DIExpression())
!3475 = distinct !DIGlobalVariable(name: "dmi_devices", scope: !2, file: !3, line: 167, type: !178, isLocal: true, isDefinition: true)
!3476 = !{i32 7, !"Dwarf Version", i32 4}
!3477 = !{i32 2, !"Debug Info Version", i32 3}
!3478 = !{i32 1, !"wchar_size", i32 2}
!3479 = !{i32 1, !"Code Model", i32 2}
!3480 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3481 = distinct !DISubprogram(name: "dmi_init", scope: !3, file: !3, line: 753, type: !3482, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!36}
!3484 = !DILocalVariable(name: "tables_kobj", scope: !3481, file: !3, line: 755, type: !241)
!3485 = !DILocation(line: 755, column: 18, scope: !3481)
!3486 = !DILocalVariable(name: "dmi_table", scope: !3481, file: !3, line: 756, type: !202)
!3487 = !DILocation(line: 756, column: 6, scope: !3481)
!3488 = !DILocalVariable(name: "ret", scope: !3481, file: !3, line: 757, type: !36)
!3489 = !DILocation(line: 757, column: 6, scope: !3481)
!3490 = !DILocation(line: 759, column: 7, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 759, column: 6)
!3492 = !DILocation(line: 759, column: 6, scope: !3481)
!3493 = !DILocation(line: 760, column: 3, scope: !3491)
!3494 = !DILocation(line: 767, column: 43, scope: !3481)
!3495 = !DILocation(line: 767, column: 13, scope: !3481)
!3496 = !DILocation(line: 767, column: 11, scope: !3481)
!3497 = !DILocation(line: 768, column: 7, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 768, column: 6)
!3499 = !DILocation(line: 768, column: 6, scope: !3481)
!3500 = !DILocation(line: 769, column: 3, scope: !3498)
!3501 = !DILocation(line: 771, column: 49, scope: !3481)
!3502 = !DILocation(line: 771, column: 16, scope: !3481)
!3503 = !DILocation(line: 771, column: 14, scope: !3481)
!3504 = !DILocation(line: 772, column: 7, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 772, column: 6)
!3506 = !DILocation(line: 772, column: 6, scope: !3481)
!3507 = !DILocation(line: 773, column: 3, scope: !3505)
!3508 = !DILocation(line: 775, column: 14, scope: !3481)
!3509 = !DILocation(line: 775, column: 12, scope: !3481)
!3510 = !DILocation(line: 776, column: 7, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 776, column: 6)
!3512 = !DILocation(line: 776, column: 6, scope: !3481)
!3513 = !DILocation(line: 777, column: 3, scope: !3511)
!3514 = !DILocation(line: 779, column: 37, scope: !3481)
!3515 = !DILocation(line: 779, column: 35, scope: !3481)
!3516 = !DILocation(line: 780, column: 38, scope: !3481)
!3517 = !DILocation(line: 781, column: 30, scope: !3481)
!3518 = !DILocation(line: 781, column: 8, scope: !3481)
!3519 = !DILocation(line: 781, column: 6, scope: !3481)
!3520 = !DILocation(line: 782, column: 6, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 782, column: 6)
!3522 = !DILocation(line: 782, column: 6, scope: !3481)
!3523 = !DILocation(line: 783, column: 3, scope: !3521)
!3524 = !DILocation(line: 785, column: 22, scope: !3481)
!3525 = !DILocation(line: 785, column: 20, scope: !3481)
!3526 = !DILocation(line: 786, column: 25, scope: !3481)
!3527 = !DILocation(line: 786, column: 23, scope: !3481)
!3528 = !DILocation(line: 787, column: 30, scope: !3481)
!3529 = !DILocation(line: 787, column: 8, scope: !3481)
!3530 = !DILocation(line: 787, column: 6, scope: !3481)
!3531 = !DILocation(line: 788, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 788, column: 6)
!3533 = !DILocation(line: 788, column: 6, scope: !3481)
!3534 = !DILocation(line: 789, column: 3, scope: !3532)
!3535 = !DILocation(line: 791, column: 24, scope: !3481)
!3536 = !DILocation(line: 791, column: 2, scope: !3481)
!3537 = !DILabel(scope: !3481, name: "err_unmap", file: !3, line: 793)
!3538 = !DILocation(line: 793, column: 2, scope: !3481)
!3539 = !DILocation(line: 794, column: 2, scope: !3481)
!3540 = !DILabel(scope: !3481, name: "err_tables", file: !3, line: 795)
!3541 = !DILocation(line: 795, column: 2, scope: !3481)
!3542 = !DILocation(line: 796, column: 14, scope: !3481)
!3543 = !DILocation(line: 796, column: 2, scope: !3481)
!3544 = !DILocation(line: 797, column: 14, scope: !3481)
!3545 = !DILocation(line: 797, column: 2, scope: !3481)
!3546 = !DILabel(scope: !3481, name: "err", file: !3, line: 798)
!3547 = !DILocation(line: 798, column: 2, scope: !3481)
!3548 = !DILocation(line: 799, column: 2, scope: !3481)
!3549 = !DILocation(line: 801, column: 9, scope: !3481)
!3550 = !DILocation(line: 801, column: 2, scope: !3481)
!3551 = !DILocation(line: 802, column: 1, scope: !3481)
!3552 = distinct !DISubprogram(name: "dmi_setup", scope: !3, file: !3, line: 813, type: !1929, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3553 = !DILocation(line: 815, column: 2, scope: !3552)
!3554 = !DILocation(line: 816, column: 7, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 816, column: 6)
!3556 = !DILocation(line: 816, column: 6, scope: !3552)
!3557 = !DILocation(line: 817, column: 3, scope: !3555)
!3558 = !DILocation(line: 819, column: 2, scope: !3552)
!3559 = !DILocation(line: 820, column: 2, scope: !3552)
!3560 = !DILocation(line: 821, column: 1, scope: !3552)
!3561 = distinct !DISubprogram(name: "dmi_scan_machine", scope: !3, file: !3, line: 651, type: !1929, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3562 = !DILocalVariable(name: "p", scope: !3561, file: !3, line: 653, type: !211)
!3563 = !DILocation(line: 653, column: 16, scope: !3561)
!3564 = !DILocalVariable(name: "q", scope: !3561, file: !3, line: 653, type: !211)
!3565 = !DILocation(line: 653, column: 20, scope: !3561)
!3566 = !DILocalVariable(name: "buf", scope: !3561, file: !3, line: 654, type: !2751)
!3567 = !DILocation(line: 654, column: 7, scope: !3561)
!3568 = !DILocation(line: 656, column: 6, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 656, column: 6)
!3570 = !DILocation(line: 656, column: 6, scope: !3561)
!3571 = !DILocation(line: 670, column: 11, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 670, column: 7)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 656, column: 38)
!3574 = !DILocation(line: 670, column: 19, scope: !3572)
!3575 = !DILocation(line: 670, column: 7, scope: !3573)
!3576 = !DILocation(line: 671, column: 28, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 670, column: 46)
!3578 = !DILocation(line: 671, column: 8, scope: !3577)
!3579 = !DILocation(line: 671, column: 6, scope: !3577)
!3580 = !DILocation(line: 672, column: 8, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 672, column: 8)
!3582 = !DILocation(line: 672, column: 10, scope: !3581)
!3583 = !DILocation(line: 672, column: 8, scope: !3577)
!3584 = !DILocation(line: 673, column: 5, scope: !3581)
!3585 = !DILocation(line: 674, column: 18, scope: !3577)
!3586 = !DILocation(line: 674, column: 23, scope: !3577)
!3587 = !DILocation(line: 674, column: 4, scope: !3577)
!3588 = !DILocation(line: 675, column: 20, scope: !3577)
!3589 = !DILocation(line: 675, column: 4, scope: !3577)
!3590 = !DILocation(line: 677, column: 29, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 677, column: 8)
!3592 = !DILocation(line: 677, column: 9, scope: !3591)
!3593 = !DILocation(line: 677, column: 8, scope: !3577)
!3594 = !DILocation(line: 678, column: 19, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 677, column: 35)
!3596 = !DILocation(line: 679, column: 5, scope: !3595)
!3597 = !DILocation(line: 681, column: 3, scope: !3577)
!3598 = !DILocation(line: 682, column: 11, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 682, column: 7)
!3600 = !DILocation(line: 682, column: 18, scope: !3599)
!3601 = !DILocation(line: 682, column: 7, scope: !3573)
!3602 = !DILocation(line: 683, column: 4, scope: !3599)
!3603 = !DILocation(line: 689, column: 27, scope: !3573)
!3604 = !DILocation(line: 689, column: 7, scope: !3573)
!3605 = !DILocation(line: 689, column: 5, scope: !3573)
!3606 = !DILocation(line: 690, column: 7, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 690, column: 7)
!3608 = !DILocation(line: 690, column: 9, scope: !3607)
!3609 = !DILocation(line: 690, column: 7, scope: !3573)
!3610 = !DILocation(line: 691, column: 4, scope: !3607)
!3611 = !DILocation(line: 692, column: 17, scope: !3573)
!3612 = !DILocation(line: 692, column: 22, scope: !3573)
!3613 = !DILocation(line: 692, column: 3, scope: !3573)
!3614 = !DILocation(line: 693, column: 19, scope: !3573)
!3615 = !DILocation(line: 693, column: 3, scope: !3573)
!3616 = !DILocation(line: 695, column: 20, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 695, column: 7)
!3618 = !DILocation(line: 695, column: 8, scope: !3617)
!3619 = !DILocation(line: 695, column: 7, scope: !3573)
!3620 = !DILocation(line: 696, column: 18, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 695, column: 26)
!3622 = !DILocation(line: 697, column: 4, scope: !3621)
!3623 = !DILocation(line: 699, column: 2, scope: !3573)
!3624 = !DILocation(line: 700, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 699, column: 67)
!3626 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 699, column: 13)
!3627 = !DILocation(line: 700, column: 5, scope: !3625)
!3628 = !DILocation(line: 701, column: 7, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 701, column: 7)
!3630 = !DILocation(line: 701, column: 9, scope: !3629)
!3631 = !DILocation(line: 701, column: 7, scope: !3625)
!3632 = !DILocation(line: 702, column: 4, scope: !3629)
!3633 = !DILocation(line: 708, column: 17, scope: !3625)
!3634 = !DILocation(line: 708, column: 22, scope: !3625)
!3635 = !DILocation(line: 708, column: 3, scope: !3625)
!3636 = !DILocation(line: 709, column: 12, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 709, column: 3)
!3638 = !DILocation(line: 709, column: 14, scope: !3637)
!3639 = !DILocation(line: 709, column: 10, scope: !3637)
!3640 = !DILocation(line: 709, column: 8, scope: !3637)
!3641 = !DILocation(line: 709, column: 20, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 709, column: 3)
!3643 = !DILocation(line: 709, column: 24, scope: !3642)
!3644 = !DILocation(line: 709, column: 26, scope: !3642)
!3645 = !DILocation(line: 709, column: 22, scope: !3642)
!3646 = !DILocation(line: 709, column: 3, scope: !3637)
!3647 = !DILocation(line: 710, column: 18, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 709, column: 46)
!3649 = !DILocation(line: 710, column: 22, scope: !3648)
!3650 = !DILocation(line: 710, column: 28, scope: !3648)
!3651 = !DILocation(line: 710, column: 4, scope: !3648)
!3652 = !DILocation(line: 711, column: 29, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 711, column: 8)
!3654 = !DILocation(line: 711, column: 9, scope: !3653)
!3655 = !DILocation(line: 711, column: 8, scope: !3648)
!3656 = !DILocation(line: 712, column: 19, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 711, column: 35)
!3658 = !DILocation(line: 713, column: 21, scope: !3657)
!3659 = !DILocation(line: 713, column: 5, scope: !3657)
!3660 = !DILocation(line: 714, column: 5, scope: !3657)
!3661 = !DILocation(line: 716, column: 4, scope: !3648)
!3662 = !DILocation(line: 716, column: 16, scope: !3648)
!3663 = !DILocation(line: 716, column: 20, scope: !3648)
!3664 = !DILocation(line: 717, column: 3, scope: !3648)
!3665 = !DILocation(line: 709, column: 39, scope: !3642)
!3666 = !DILocation(line: 709, column: 3, scope: !3642)
!3667 = distinct !{!3667, !3646, !3668}
!3668 = !DILocation(line: 717, column: 3, scope: !3637)
!3669 = !DILocation(line: 726, column: 3, scope: !3625)
!3670 = !DILocation(line: 727, column: 12, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 727, column: 3)
!3672 = !DILocation(line: 727, column: 10, scope: !3671)
!3673 = !DILocation(line: 727, column: 8, scope: !3671)
!3674 = !DILocation(line: 727, column: 15, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 727, column: 3)
!3676 = !DILocation(line: 727, column: 19, scope: !3675)
!3677 = !DILocation(line: 727, column: 21, scope: !3675)
!3678 = !DILocation(line: 727, column: 17, scope: !3675)
!3679 = !DILocation(line: 727, column: 3, scope: !3671)
!3680 = !DILocation(line: 728, column: 18, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 727, column: 41)
!3682 = !DILocation(line: 728, column: 22, scope: !3681)
!3683 = !DILocation(line: 728, column: 28, scope: !3681)
!3684 = !DILocation(line: 728, column: 4, scope: !3681)
!3685 = !DILocation(line: 729, column: 21, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 729, column: 8)
!3687 = !DILocation(line: 729, column: 9, scope: !3686)
!3688 = !DILocation(line: 729, column: 8, scope: !3681)
!3689 = !DILocation(line: 730, column: 19, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 729, column: 27)
!3691 = !DILocation(line: 731, column: 21, scope: !3690)
!3692 = !DILocation(line: 731, column: 5, scope: !3690)
!3693 = !DILocation(line: 732, column: 5, scope: !3690)
!3694 = !DILocation(line: 734, column: 4, scope: !3681)
!3695 = !DILocation(line: 734, column: 16, scope: !3681)
!3696 = !DILocation(line: 734, column: 20, scope: !3681)
!3697 = !DILocation(line: 735, column: 3, scope: !3681)
!3698 = !DILocation(line: 727, column: 34, scope: !3675)
!3699 = !DILocation(line: 727, column: 3, scope: !3675)
!3700 = distinct !{!3700, !3679, !3701}
!3701 = !DILocation(line: 735, column: 3, scope: !3671)
!3702 = !DILocation(line: 736, column: 19, scope: !3625)
!3703 = !DILocation(line: 736, column: 3, scope: !3625)
!3704 = !DILocation(line: 656, column: 35, scope: !3569)
!3705 = !DILabel(scope: !3561, name: "error", file: !3, line: 738)
!3706 = !DILocation(line: 738, column: 2, scope: !3561)
!3707 = !DILocation(line: 739, column: 2, scope: !3561)
!3708 = !DILocation(line: 740, column: 1, scope: !3561)
!3709 = distinct !DISubprogram(name: "dmi_memdev_walk", scope: !3, file: !3, line: 454, type: !1929, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3710 = !DILocalVariable(name: "len", arg: 1, scope: !3711, file: !3712, line: 11, type: !7)
!3711 = distinct !DISubprogram(name: "dmi_alloc", scope: !3712, file: !3712, line: 11, type: !3713, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3712 = !DIFile(filename: "./arch/x86/include/asm/dmi.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!173, !7}
!3715 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 457, column: 16, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 456, column: 63)
!3718 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 456, column: 6)
!3719 = !DILocation(line: 456, column: 6, scope: !3718)
!3720 = !DILocation(line: 456, column: 40, scope: !3718)
!3721 = !DILocation(line: 456, column: 45, scope: !3718)
!3722 = !DILocation(line: 456, column: 48, scope: !3718)
!3723 = !DILocation(line: 456, column: 6, scope: !3709)
!3724 = !DILocation(line: 457, column: 48, scope: !3717)
!3725 = !DILocation(line: 457, column: 46, scope: !3717)
!3726 = !DILocation(line: 457, column: 26, scope: !3717)
!3727 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !3716)
!3728 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !3716)
!3729 = !DILocation(line: 457, column: 16, scope: !3717)
!3730 = !DILocation(line: 457, column: 14, scope: !3717)
!3731 = !DILocation(line: 458, column: 7, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 458, column: 7)
!3733 = !DILocation(line: 458, column: 7, scope: !3717)
!3734 = !DILocation(line: 459, column: 4, scope: !3732)
!3735 = !DILocation(line: 460, column: 2, scope: !3717)
!3736 = !DILocation(line: 461, column: 1, scope: !3709)
!3737 = distinct !DISubprogram(name: "dmi_check_system", scope: !3, file: !3, line: 885, type: !3738, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!36, !3740}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3742)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !6, line: 566, size: 2752, elements: !3743)
!3743 = !{!3744, !3746, !3747, !3757}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3742, file: !6, line: 567, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !3742, file: !6, line: 568, baseType: !186, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !3742, file: !6, line: 569, baseType: !3748, size: 2560, offset: 128)
!3748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3749, size: 2560, elements: !1208)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !6, line: 560, size: 640, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3749, file: !6, line: 561, baseType: !206, size: 7, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !3749, file: !6, line: 562, baseType: !206, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !3749, file: !6, line: 563, baseType: !3754, size: 632, offset: 8)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 632, elements: !3755)
!3755 = !{!3756}
!3756 = !DISubrange(count: 79)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3742, file: !6, line: 570, baseType: !173, size: 64, offset: 2688)
!3758 = !DILocalVariable(name: "list", arg: 1, scope: !3737, file: !3, line: 885, type: !3740)
!3759 = !DILocation(line: 885, column: 50, scope: !3737)
!3760 = !DILocalVariable(name: "count", scope: !3737, file: !3, line: 887, type: !36)
!3761 = !DILocation(line: 887, column: 6, scope: !3737)
!3762 = !DILocalVariable(name: "d", scope: !3737, file: !3, line: 888, type: !3740)
!3763 = !DILocation(line: 888, column: 30, scope: !3737)
!3764 = !DILocation(line: 890, column: 11, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 890, column: 2)
!3766 = !DILocation(line: 890, column: 9, scope: !3765)
!3767 = !DILocation(line: 890, column: 7, scope: !3765)
!3768 = !DILocation(line: 890, column: 38, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 890, column: 2)
!3770 = !DILocation(line: 890, column: 18, scope: !3769)
!3771 = !DILocation(line: 890, column: 17, scope: !3769)
!3772 = !DILocation(line: 890, column: 2, scope: !3765)
!3773 = !DILocation(line: 891, column: 19, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 891, column: 7)
!3775 = !DILocation(line: 891, column: 7, scope: !3774)
!3776 = !DILocation(line: 891, column: 7, scope: !3769)
!3777 = !DILocation(line: 892, column: 9, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 891, column: 23)
!3779 = !DILocation(line: 893, column: 8, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 893, column: 8)
!3781 = !DILocation(line: 893, column: 11, scope: !3780)
!3782 = !DILocation(line: 893, column: 20, scope: !3780)
!3783 = !DILocation(line: 893, column: 23, scope: !3780)
!3784 = !DILocation(line: 893, column: 26, scope: !3780)
!3785 = !DILocation(line: 893, column: 35, scope: !3780)
!3786 = !DILocation(line: 893, column: 8, scope: !3778)
!3787 = !DILocation(line: 894, column: 5, scope: !3780)
!3788 = !DILocation(line: 895, column: 3, scope: !3778)
!3789 = !DILocation(line: 891, column: 20, scope: !3774)
!3790 = !DILocation(line: 890, column: 43, scope: !3769)
!3791 = !DILocation(line: 890, column: 2, scope: !3769)
!3792 = distinct !{!3792, !3772, !3793}
!3793 = !DILocation(line: 895, column: 3, scope: !3765)
!3794 = !DILocation(line: 897, column: 9, scope: !3737)
!3795 = !DILocation(line: 897, column: 2, scope: !3737)
!3796 = distinct !DISubprogram(name: "dmi_is_end_of_table", scope: !3, file: !3, line: 865, type: !3797, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!498, !3740}
!3799 = !DILocalVariable(name: "dmi", arg: 1, scope: !3796, file: !3, line: 865, type: !3740)
!3800 = !DILocation(line: 865, column: 61, scope: !3796)
!3801 = !DILocation(line: 867, column: 9, scope: !3796)
!3802 = !DILocation(line: 867, column: 14, scope: !3796)
!3803 = !DILocation(line: 867, column: 25, scope: !3796)
!3804 = !DILocation(line: 867, column: 30, scope: !3796)
!3805 = !DILocation(line: 867, column: 2, scope: !3796)
!3806 = distinct !DISubprogram(name: "dmi_matches", scope: !3, file: !3, line: 827, type: !3797, scopeLine: 828, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3807 = !DILocalVariable(name: "dmi", arg: 1, scope: !3806, file: !3, line: 827, type: !3740)
!3808 = !DILocation(line: 827, column: 53, scope: !3806)
!3809 = !DILocalVariable(name: "i", scope: !3806, file: !3, line: 829, type: !36)
!3810 = !DILocation(line: 829, column: 6, scope: !3806)
!3811 = !DILocation(line: 831, column: 9, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 831, column: 2)
!3813 = !DILocation(line: 831, column: 7, scope: !3812)
!3814 = !DILocation(line: 831, column: 14, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 831, column: 2)
!3816 = !DILocation(line: 831, column: 16, scope: !3815)
!3817 = !DILocation(line: 831, column: 2, scope: !3812)
!3818 = !DILocalVariable(name: "s", scope: !3819, file: !3, line: 832, type: !36)
!3819 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 831, column: 49)
!3820 = !DILocation(line: 832, column: 7, scope: !3819)
!3821 = !DILocation(line: 832, column: 11, scope: !3819)
!3822 = !DILocation(line: 832, column: 16, scope: !3819)
!3823 = !DILocation(line: 832, column: 24, scope: !3819)
!3824 = !DILocation(line: 832, column: 27, scope: !3819)
!3825 = !DILocation(line: 833, column: 7, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 833, column: 7)
!3827 = !DILocation(line: 833, column: 9, scope: !3826)
!3828 = !DILocation(line: 833, column: 7, scope: !3819)
!3829 = !DILocation(line: 834, column: 4, scope: !3826)
!3830 = !DILocation(line: 835, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 835, column: 7)
!3832 = !DILocation(line: 835, column: 9, scope: !3831)
!3833 = !DILocation(line: 835, column: 7, scope: !3819)
!3834 = !DILocalVariable(name: "valid", scope: !3835, file: !3, line: 837, type: !3836)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 835, column: 28)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!3838 = !DILocation(line: 837, column: 29, scope: !3835)
!3839 = !DILocation(line: 840, column: 7, scope: !3835)
!3840 = !DILocation(line: 840, column: 12, scope: !3835)
!3841 = !DILocation(line: 840, column: 20, scope: !3835)
!3842 = !DILocation(line: 840, column: 23, scope: !3835)
!3843 = !DILocation(line: 839, column: 12, scope: !3835)
!3844 = !DILocation(line: 839, column: 10, scope: !3835)
!3845 = !DILocation(line: 841, column: 8, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 841, column: 8)
!3847 = !DILocation(line: 841, column: 8, scope: !3835)
!3848 = !DILocation(line: 842, column: 5, scope: !3846)
!3849 = !DILocation(line: 843, column: 3, scope: !3835)
!3850 = !DILocation(line: 843, column: 24, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 843, column: 14)
!3852 = !DILocation(line: 843, column: 14, scope: !3851)
!3853 = !DILocation(line: 843, column: 14, scope: !3831)
!3854 = !DILocation(line: 844, column: 8, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 844, column: 8)
!3856 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 843, column: 28)
!3857 = !DILocation(line: 844, column: 13, scope: !3855)
!3858 = !DILocation(line: 844, column: 21, scope: !3855)
!3859 = !DILocation(line: 844, column: 24, scope: !3855)
!3860 = !DILocation(line: 844, column: 8, scope: !3856)
!3861 = !DILocation(line: 845, column: 27, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 845, column: 9)
!3863 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 844, column: 37)
!3864 = !DILocation(line: 845, column: 17, scope: !3862)
!3865 = !DILocation(line: 846, column: 10, scope: !3862)
!3866 = !DILocation(line: 846, column: 15, scope: !3862)
!3867 = !DILocation(line: 846, column: 23, scope: !3862)
!3868 = !DILocation(line: 846, column: 26, scope: !3862)
!3869 = !DILocation(line: 845, column: 10, scope: !3862)
!3870 = !DILocation(line: 845, column: 9, scope: !3863)
!3871 = !DILocation(line: 847, column: 6, scope: !3862)
!3872 = !DILocation(line: 848, column: 4, scope: !3863)
!3873 = !DILocation(line: 849, column: 26, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 849, column: 9)
!3875 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 848, column: 11)
!3876 = !DILocation(line: 849, column: 16, scope: !3874)
!3877 = !DILocation(line: 850, column: 9, scope: !3874)
!3878 = !DILocation(line: 850, column: 14, scope: !3874)
!3879 = !DILocation(line: 850, column: 22, scope: !3874)
!3880 = !DILocation(line: 850, column: 25, scope: !3874)
!3881 = !DILocation(line: 849, column: 9, scope: !3874)
!3882 = !DILocation(line: 849, column: 9, scope: !3875)
!3883 = !DILocation(line: 851, column: 6, scope: !3874)
!3884 = !DILocation(line: 853, column: 3, scope: !3856)
!3885 = !DILocation(line: 856, column: 3, scope: !3819)
!3886 = !DILocation(line: 831, column: 45, scope: !3815)
!3887 = !DILocation(line: 831, column: 2, scope: !3815)
!3888 = distinct !{!3888, !3817, !3889}
!3889 = !DILocation(line: 857, column: 2, scope: !3812)
!3890 = !DILocation(line: 858, column: 2, scope: !3806)
!3891 = !DILocation(line: 859, column: 1, scope: !3806)
!3892 = distinct !DISubprogram(name: "dmi_first_match", scope: !3, file: !3, line: 915, type: !3893, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!3740, !3740}
!3895 = !DILocalVariable(name: "list", arg: 1, scope: !3892, file: !3, line: 915, type: !3740)
!3896 = !DILocation(line: 915, column: 73, scope: !3892)
!3897 = !DILocalVariable(name: "d", scope: !3892, file: !3, line: 917, type: !3740)
!3898 = !DILocation(line: 917, column: 30, scope: !3892)
!3899 = !DILocation(line: 919, column: 11, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 919, column: 2)
!3901 = !DILocation(line: 919, column: 9, scope: !3900)
!3902 = !DILocation(line: 919, column: 7, scope: !3900)
!3903 = !DILocation(line: 919, column: 38, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 919, column: 2)
!3905 = !DILocation(line: 919, column: 18, scope: !3904)
!3906 = !DILocation(line: 919, column: 17, scope: !3904)
!3907 = !DILocation(line: 919, column: 2, scope: !3900)
!3908 = !DILocation(line: 920, column: 19, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 920, column: 7)
!3910 = !DILocation(line: 920, column: 7, scope: !3909)
!3911 = !DILocation(line: 920, column: 7, scope: !3904)
!3912 = !DILocation(line: 921, column: 11, scope: !3909)
!3913 = !DILocation(line: 921, column: 4, scope: !3909)
!3914 = !DILocation(line: 920, column: 20, scope: !3909)
!3915 = !DILocation(line: 919, column: 43, scope: !3904)
!3916 = !DILocation(line: 919, column: 2, scope: !3904)
!3917 = distinct !{!3917, !3907, !3918}
!3918 = !DILocation(line: 921, column: 11, scope: !3900)
!3919 = !DILocation(line: 923, column: 2, scope: !3892)
!3920 = !DILocation(line: 924, column: 1, scope: !3892)
!3921 = distinct !DISubprogram(name: "dmi_get_system_info", scope: !3, file: !3, line: 934, type: !3922, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!186, !36}
!3924 = !DILocalVariable(name: "field", arg: 1, scope: !3921, file: !3, line: 934, type: !36)
!3925 = !DILocation(line: 934, column: 37, scope: !3921)
!3926 = !DILocation(line: 936, column: 19, scope: !3921)
!3927 = !DILocation(line: 936, column: 9, scope: !3921)
!3928 = !DILocation(line: 936, column: 2, scope: !3921)
!3929 = distinct !DISubprogram(name: "dmi_name_in_serial", scope: !3, file: !3, line: 944, type: !233, scopeLine: 945, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3930 = !DILocalVariable(name: "str", arg: 1, scope: !3929, file: !3, line: 944, type: !186)
!3931 = !DILocation(line: 944, column: 36, scope: !3929)
!3932 = !DILocalVariable(name: "f", scope: !3929, file: !3, line: 946, type: !36)
!3933 = !DILocation(line: 946, column: 6, scope: !3929)
!3934 = !DILocation(line: 947, column: 16, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 947, column: 6)
!3936 = !DILocation(line: 947, column: 6, scope: !3935)
!3937 = !DILocation(line: 947, column: 19, scope: !3935)
!3938 = !DILocation(line: 947, column: 39, scope: !3935)
!3939 = !DILocation(line: 947, column: 29, scope: !3935)
!3940 = !DILocation(line: 947, column: 43, scope: !3935)
!3941 = !DILocation(line: 947, column: 22, scope: !3935)
!3942 = !DILocation(line: 947, column: 6, scope: !3929)
!3943 = !DILocation(line: 948, column: 3, scope: !3935)
!3944 = !DILocation(line: 949, column: 2, scope: !3929)
!3945 = !DILocation(line: 950, column: 1, scope: !3929)
!3946 = !DILocalVariable(name: "str", arg: 1, scope: !232, file: !3, line: 956, type: !186)
!3947 = !DILocation(line: 956, column: 37, scope: !232)
!3948 = !DILocalVariable(name: "i", scope: !232, file: !3, line: 959, type: !36)
!3949 = !DILocation(line: 959, column: 6, scope: !232)
!3950 = !DILocation(line: 960, column: 9, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !232, file: !3, line: 960, column: 2)
!3952 = !DILocation(line: 960, column: 7, scope: !3951)
!3953 = !DILocation(line: 960, column: 21, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 960, column: 2)
!3955 = !DILocation(line: 960, column: 14, scope: !3954)
!3956 = !DILocation(line: 960, column: 24, scope: !3954)
!3957 = !DILocation(line: 960, column: 2, scope: !3951)
!3958 = !DILocalVariable(name: "f", scope: !3959, file: !3, line: 961, type: !36)
!3959 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 960, column: 42)
!3960 = !DILocation(line: 961, column: 7, scope: !3959)
!3961 = !DILocation(line: 961, column: 18, scope: !3959)
!3962 = !DILocation(line: 961, column: 11, scope: !3959)
!3963 = !DILocation(line: 962, column: 17, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 962, column: 7)
!3965 = !DILocation(line: 962, column: 7, scope: !3964)
!3966 = !DILocation(line: 962, column: 20, scope: !3964)
!3967 = !DILocation(line: 962, column: 40, scope: !3964)
!3968 = !DILocation(line: 962, column: 30, scope: !3964)
!3969 = !DILocation(line: 962, column: 44, scope: !3964)
!3970 = !DILocation(line: 962, column: 23, scope: !3964)
!3971 = !DILocation(line: 962, column: 7, scope: !3959)
!3972 = !DILocation(line: 963, column: 4, scope: !3964)
!3973 = !DILocation(line: 964, column: 2, scope: !3959)
!3974 = !DILocation(line: 960, column: 38, scope: !3954)
!3975 = !DILocation(line: 960, column: 2, scope: !3954)
!3976 = distinct !{!3976, !3957, !3977}
!3977 = !DILocation(line: 964, column: 2, scope: !3951)
!3978 = !DILocation(line: 965, column: 2, scope: !232)
!3979 = !DILocation(line: 966, column: 1, scope: !232)
!3980 = distinct !DISubprogram(name: "dmi_find_device", scope: !3, file: !3, line: 981, type: !3981, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!3836, !36, !186, !3836}
!3983 = !DILocalVariable(name: "type", arg: 1, scope: !3980, file: !3, line: 981, type: !36)
!3984 = !DILocation(line: 981, column: 46, scope: !3980)
!3985 = !DILocalVariable(name: "name", arg: 2, scope: !3980, file: !3, line: 981, type: !186)
!3986 = !DILocation(line: 981, column: 64, scope: !3980)
!3987 = !DILocalVariable(name: "from", arg: 3, scope: !3980, file: !3, line: 982, type: !3836)
!3988 = !DILocation(line: 982, column: 34, scope: !3980)
!3989 = !DILocalVariable(name: "head", scope: !3980, file: !3, line: 984, type: !3990)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!3992 = !DILocation(line: 984, column: 26, scope: !3980)
!3993 = !DILocation(line: 984, column: 33, scope: !3980)
!3994 = !DILocation(line: 984, column: 41, scope: !3980)
!3995 = !DILocation(line: 984, column: 47, scope: !3980)
!3996 = !DILocalVariable(name: "d", scope: !3980, file: !3, line: 985, type: !182)
!3997 = !DILocation(line: 985, column: 20, scope: !3980)
!3998 = !DILocation(line: 987, column: 11, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 987, column: 2)
!4000 = !DILocation(line: 987, column: 17, scope: !3999)
!4001 = !DILocation(line: 987, column: 9, scope: !3999)
!4002 = !DILocation(line: 987, column: 7, scope: !3999)
!4003 = !DILocation(line: 987, column: 23, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 987, column: 2)
!4005 = !DILocation(line: 987, column: 25, scope: !4004)
!4006 = !DILocation(line: 987, column: 2, scope: !3999)
!4007 = !DILocalVariable(name: "dev", scope: !4008, file: !3, line: 988, type: !3836)
!4008 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 987, column: 55)
!4009 = !DILocation(line: 988, column: 28, scope: !4008)
!4010 = !DILocalVariable(name: "__mptr", scope: !4011, file: !3, line: 989, type: !173)
!4011 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 989, column: 4)
!4012 = !DILocation(line: 989, column: 4, scope: !4011)
!4013 = !DILocation(line: 989, column: 4, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 989, column: 4)
!4015 = !DILocation(line: 991, column: 9, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 991, column: 7)
!4017 = !DILocation(line: 991, column: 14, scope: !4016)
!4018 = !DILocation(line: 991, column: 35, scope: !4016)
!4019 = !DILocation(line: 991, column: 39, scope: !4016)
!4020 = !DILocation(line: 991, column: 44, scope: !4016)
!4021 = !DILocation(line: 991, column: 52, scope: !4016)
!4022 = !DILocation(line: 991, column: 49, scope: !4016)
!4023 = !DILocation(line: 991, column: 59, scope: !4016)
!4024 = !DILocation(line: 992, column: 9, scope: !4016)
!4025 = !DILocation(line: 992, column: 14, scope: !4016)
!4026 = !DILocation(line: 992, column: 23, scope: !4016)
!4027 = !DILocation(line: 992, column: 34, scope: !4016)
!4028 = !DILocation(line: 992, column: 39, scope: !4016)
!4029 = !DILocation(line: 992, column: 45, scope: !4016)
!4030 = !DILocation(line: 992, column: 27, scope: !4016)
!4031 = !DILocation(line: 992, column: 51, scope: !4016)
!4032 = !DILocation(line: 991, column: 7, scope: !4008)
!4033 = !DILocation(line: 993, column: 11, scope: !4016)
!4034 = !DILocation(line: 993, column: 4, scope: !4016)
!4035 = !DILocation(line: 994, column: 2, scope: !4008)
!4036 = !DILocation(line: 987, column: 46, scope: !4004)
!4037 = !DILocation(line: 987, column: 49, scope: !4004)
!4038 = !DILocation(line: 987, column: 44, scope: !4004)
!4039 = !DILocation(line: 987, column: 2, scope: !4004)
!4040 = distinct !{!4040, !4006, !4041}
!4041 = !DILocation(line: 994, column: 2, scope: !3999)
!4042 = !DILocation(line: 996, column: 2, scope: !3980)
!4043 = !DILocation(line: 997, column: 1, scope: !3980)
!4044 = distinct !DISubprogram(name: "dmi_get_date", scope: !3, file: !3, line: 1018, type: !4045, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!498, !36, !716, !716, !716}
!4047 = !DILocalVariable(name: "field", arg: 1, scope: !4044, file: !3, line: 1018, type: !36)
!4048 = !DILocation(line: 1018, column: 23, scope: !4044)
!4049 = !DILocalVariable(name: "yearp", arg: 2, scope: !4044, file: !3, line: 1018, type: !716)
!4050 = !DILocation(line: 1018, column: 35, scope: !4044)
!4051 = !DILocalVariable(name: "monthp", arg: 3, scope: !4044, file: !3, line: 1018, type: !716)
!4052 = !DILocation(line: 1018, column: 47, scope: !4044)
!4053 = !DILocalVariable(name: "dayp", arg: 4, scope: !4044, file: !3, line: 1018, type: !716)
!4054 = !DILocation(line: 1018, column: 60, scope: !4044)
!4055 = !DILocalVariable(name: "year", scope: !4044, file: !3, line: 1020, type: !36)
!4056 = !DILocation(line: 1020, column: 6, scope: !4044)
!4057 = !DILocalVariable(name: "month", scope: !4044, file: !3, line: 1020, type: !36)
!4058 = !DILocation(line: 1020, column: 16, scope: !4044)
!4059 = !DILocalVariable(name: "day", scope: !4044, file: !3, line: 1020, type: !36)
!4060 = !DILocation(line: 1020, column: 27, scope: !4044)
!4061 = !DILocalVariable(name: "exists", scope: !4044, file: !3, line: 1021, type: !498)
!4062 = !DILocation(line: 1021, column: 7, scope: !4044)
!4063 = !DILocalVariable(name: "s", scope: !4044, file: !3, line: 1022, type: !186)
!4064 = !DILocation(line: 1022, column: 14, scope: !4044)
!4065 = !DILocalVariable(name: "y", scope: !4044, file: !3, line: 1022, type: !186)
!4066 = !DILocation(line: 1022, column: 18, scope: !4044)
!4067 = !DILocalVariable(name: "e", scope: !4044, file: !3, line: 1023, type: !211)
!4068 = !DILocation(line: 1023, column: 8, scope: !4044)
!4069 = !DILocation(line: 1025, column: 26, scope: !4044)
!4070 = !DILocation(line: 1025, column: 6, scope: !4044)
!4071 = !DILocation(line: 1025, column: 4, scope: !4044)
!4072 = !DILocation(line: 1026, column: 11, scope: !4044)
!4073 = !DILocation(line: 1026, column: 9, scope: !4044)
!4074 = !DILocation(line: 1027, column: 7, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1027, column: 6)
!4076 = !DILocation(line: 1027, column: 6, scope: !4044)
!4077 = !DILocation(line: 1028, column: 3, scope: !4075)
!4078 = !DILocation(line: 1036, column: 14, scope: !4044)
!4079 = !DILocation(line: 1036, column: 6, scope: !4044)
!4080 = !DILocation(line: 1036, column: 4, scope: !4044)
!4081 = !DILocation(line: 1037, column: 7, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1037, column: 6)
!4083 = !DILocation(line: 1037, column: 6, scope: !4044)
!4084 = !DILocation(line: 1038, column: 3, scope: !4082)
!4085 = !DILocation(line: 1040, column: 3, scope: !4044)
!4086 = !DILocation(line: 1041, column: 24, scope: !4044)
!4087 = !DILocation(line: 1041, column: 9, scope: !4044)
!4088 = !DILocation(line: 1041, column: 7, scope: !4044)
!4089 = !DILocation(line: 1042, column: 6, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1042, column: 6)
!4091 = !DILocation(line: 1042, column: 11, scope: !4090)
!4092 = !DILocation(line: 1042, column: 8, scope: !4090)
!4093 = !DILocation(line: 1042, column: 13, scope: !4090)
!4094 = !DILocation(line: 1042, column: 16, scope: !4090)
!4095 = !DILocation(line: 1042, column: 21, scope: !4090)
!4096 = !DILocation(line: 1042, column: 6, scope: !4044)
!4097 = !DILocation(line: 1043, column: 8, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 1042, column: 28)
!4099 = !DILocation(line: 1044, column: 7, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 1044, column: 7)
!4101 = !DILocation(line: 1044, column: 12, scope: !4100)
!4102 = !DILocation(line: 1044, column: 7, scope: !4098)
!4103 = !DILocation(line: 1045, column: 9, scope: !4100)
!4104 = !DILocation(line: 1045, column: 4, scope: !4100)
!4105 = !DILocation(line: 1046, column: 2, scope: !4098)
!4106 = !DILocation(line: 1047, column: 6, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1047, column: 6)
!4108 = !DILocation(line: 1047, column: 11, scope: !4107)
!4109 = !DILocation(line: 1047, column: 6, scope: !4044)
!4110 = !DILocation(line: 1048, column: 8, scope: !4107)
!4111 = !DILocation(line: 1048, column: 3, scope: !4107)
!4112 = !DILocation(line: 1051, column: 25, scope: !4044)
!4113 = !DILocation(line: 1051, column: 10, scope: !4044)
!4114 = !DILocation(line: 1051, column: 8, scope: !4044)
!4115 = !DILocation(line: 1052, column: 6, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1052, column: 6)
!4117 = !DILocation(line: 1052, column: 11, scope: !4116)
!4118 = !DILocation(line: 1052, column: 8, scope: !4116)
!4119 = !DILocation(line: 1052, column: 13, scope: !4116)
!4120 = !DILocation(line: 1052, column: 17, scope: !4116)
!4121 = !DILocation(line: 1052, column: 16, scope: !4116)
!4122 = !DILocation(line: 1052, column: 19, scope: !4116)
!4123 = !DILocation(line: 1052, column: 26, scope: !4116)
!4124 = !DILocation(line: 1052, column: 30, scope: !4116)
!4125 = !DILocation(line: 1052, column: 36, scope: !4116)
!4126 = !DILocation(line: 1052, column: 39, scope: !4116)
!4127 = !DILocation(line: 1052, column: 45, scope: !4116)
!4128 = !DILocation(line: 1052, column: 6, scope: !4044)
!4129 = !DILocation(line: 1053, column: 9, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 1052, column: 51)
!4131 = !DILocation(line: 1054, column: 3, scope: !4130)
!4132 = !DILocation(line: 1057, column: 6, scope: !4044)
!4133 = !DILocation(line: 1057, column: 8, scope: !4044)
!4134 = !DILocation(line: 1057, column: 4, scope: !4044)
!4135 = !DILocation(line: 1058, column: 23, scope: !4044)
!4136 = !DILocation(line: 1058, column: 8, scope: !4044)
!4137 = !DILocation(line: 1058, column: 6, scope: !4044)
!4138 = !DILocation(line: 1059, column: 6, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1059, column: 6)
!4140 = !DILocation(line: 1059, column: 11, scope: !4139)
!4141 = !DILocation(line: 1059, column: 8, scope: !4139)
!4142 = !DILocation(line: 1059, column: 13, scope: !4139)
!4143 = !DILocation(line: 1059, column: 16, scope: !4139)
!4144 = !DILocation(line: 1059, column: 21, scope: !4139)
!4145 = !DILocation(line: 1059, column: 18, scope: !4139)
!4146 = !DILocation(line: 1059, column: 23, scope: !4139)
!4147 = !DILocation(line: 1059, column: 27, scope: !4139)
!4148 = !DILocation(line: 1059, column: 26, scope: !4139)
!4149 = !DILocation(line: 1059, column: 29, scope: !4139)
!4150 = !DILocation(line: 1059, column: 36, scope: !4139)
!4151 = !DILocation(line: 1059, column: 39, scope: !4139)
!4152 = !DILocation(line: 1059, column: 43, scope: !4139)
!4153 = !DILocation(line: 1059, column: 6, scope: !4044)
!4154 = !DILocation(line: 1060, column: 7, scope: !4139)
!4155 = !DILocation(line: 1060, column: 3, scope: !4139)
!4156 = !DILocation(line: 1059, column: 45, scope: !4139)
!4157 = !DILabel(scope: !4044, name: "out", file: !3, line: 1061)
!4158 = !DILocation(line: 1061, column: 1, scope: !4044)
!4159 = !DILocation(line: 1062, column: 6, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1062, column: 6)
!4161 = !DILocation(line: 1062, column: 6, scope: !4044)
!4162 = !DILocation(line: 1063, column: 12, scope: !4160)
!4163 = !DILocation(line: 1063, column: 4, scope: !4160)
!4164 = !DILocation(line: 1063, column: 10, scope: !4160)
!4165 = !DILocation(line: 1063, column: 3, scope: !4160)
!4166 = !DILocation(line: 1064, column: 6, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1064, column: 6)
!4168 = !DILocation(line: 1064, column: 6, scope: !4044)
!4169 = !DILocation(line: 1065, column: 13, scope: !4167)
!4170 = !DILocation(line: 1065, column: 4, scope: !4167)
!4171 = !DILocation(line: 1065, column: 11, scope: !4167)
!4172 = !DILocation(line: 1065, column: 3, scope: !4167)
!4173 = !DILocation(line: 1066, column: 6, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1066, column: 6)
!4175 = !DILocation(line: 1066, column: 6, scope: !4044)
!4176 = !DILocation(line: 1067, column: 11, scope: !4174)
!4177 = !DILocation(line: 1067, column: 4, scope: !4174)
!4178 = !DILocation(line: 1067, column: 9, scope: !4174)
!4179 = !DILocation(line: 1067, column: 3, scope: !4174)
!4180 = !DILocation(line: 1068, column: 9, scope: !4044)
!4181 = !DILocation(line: 1068, column: 2, scope: !4044)
!4182 = distinct !DISubprogram(name: "dmi_get_bios_year", scope: !3, file: !3, line: 1079, type: !3482, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4183 = !DILocalVariable(name: "exists", scope: !4182, file: !3, line: 1081, type: !498)
!4184 = !DILocation(line: 1081, column: 7, scope: !4182)
!4185 = !DILocalVariable(name: "year", scope: !4182, file: !3, line: 1082, type: !36)
!4186 = !DILocation(line: 1082, column: 6, scope: !4182)
!4187 = !DILocation(line: 1084, column: 11, scope: !4182)
!4188 = !DILocation(line: 1084, column: 9, scope: !4182)
!4189 = !DILocation(line: 1085, column: 7, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 1085, column: 6)
!4191 = !DILocation(line: 1085, column: 6, scope: !4182)
!4192 = !DILocation(line: 1086, column: 3, scope: !4190)
!4193 = !DILocation(line: 1088, column: 9, scope: !4182)
!4194 = !DILocation(line: 1088, column: 16, scope: !4182)
!4195 = !DILocation(line: 1088, column: 2, scope: !4182)
!4196 = !DILocation(line: 1089, column: 1, scope: !4182)
!4197 = distinct !DISubprogram(name: "dmi_walk", scope: !3, file: !3, line: 1100, type: !4198, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!36, !4200, !173}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!4201 = !DILocalVariable(name: "decode", arg: 1, scope: !4197, file: !3, line: 1100, type: !4200)
!4202 = !DILocation(line: 1100, column: 21, scope: !4197)
!4203 = !DILocalVariable(name: "private_data", arg: 2, scope: !4197, file: !3, line: 1101, type: !173)
!4204 = !DILocation(line: 1101, column: 13, scope: !4197)
!4205 = !DILocalVariable(name: "buf", scope: !4197, file: !3, line: 1103, type: !202)
!4206 = !DILocation(line: 1103, column: 6, scope: !4197)
!4207 = !DILocation(line: 1105, column: 7, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 1105, column: 6)
!4209 = !DILocation(line: 1105, column: 6, scope: !4197)
!4210 = !DILocation(line: 1106, column: 3, scope: !4208)
!4211 = !DILocation(line: 1108, column: 8, scope: !4197)
!4212 = !DILocation(line: 1108, column: 6, scope: !4197)
!4213 = !DILocation(line: 1109, column: 6, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 1109, column: 6)
!4215 = !DILocation(line: 1109, column: 10, scope: !4214)
!4216 = !DILocation(line: 1109, column: 6, scope: !4197)
!4217 = !DILocation(line: 1110, column: 3, scope: !4214)
!4218 = !DILocation(line: 1112, column: 19, scope: !4197)
!4219 = !DILocation(line: 1112, column: 24, scope: !4197)
!4220 = !DILocation(line: 1112, column: 32, scope: !4197)
!4221 = !DILocation(line: 1112, column: 2, scope: !4197)
!4222 = !DILocation(line: 1114, column: 2, scope: !4197)
!4223 = !DILocation(line: 1115, column: 2, scope: !4197)
!4224 = !DILocation(line: 1116, column: 1, scope: !4197)
!4225 = distinct !DISubprogram(name: "dmi_decode_table", scope: !3, file: !3, line: 87, type: !4226, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !202, !4200, !173}
!4228 = !DILocalVariable(name: "buf", arg: 1, scope: !4225, file: !3, line: 87, type: !202)
!4229 = !DILocation(line: 87, column: 34, scope: !4225)
!4230 = !DILocalVariable(name: "decode", arg: 2, scope: !4225, file: !3, line: 88, type: !4200)
!4231 = !DILocation(line: 88, column: 16, scope: !4225)
!4232 = !DILocalVariable(name: "private_data", arg: 3, scope: !4225, file: !3, line: 89, type: !173)
!4233 = !DILocation(line: 89, column: 15, scope: !4225)
!4234 = !DILocalVariable(name: "data", scope: !4225, file: !3, line: 91, type: !202)
!4235 = !DILocation(line: 91, column: 6, scope: !4225)
!4236 = !DILocation(line: 91, column: 13, scope: !4225)
!4237 = !DILocalVariable(name: "i", scope: !4225, file: !3, line: 92, type: !36)
!4238 = !DILocation(line: 92, column: 6, scope: !4225)
!4239 = !DILocation(line: 100, column: 2, scope: !4225)
!4240 = !DILocation(line: 100, column: 11, scope: !4225)
!4241 = !DILocation(line: 100, column: 19, scope: !4225)
!4242 = !DILocation(line: 100, column: 22, scope: !4225)
!4243 = !DILocation(line: 100, column: 26, scope: !4225)
!4244 = !DILocation(line: 100, column: 24, scope: !4225)
!4245 = !DILocation(line: 100, column: 35, scope: !4225)
!4246 = !DILocation(line: 101, column: 10, scope: !4225)
!4247 = !DILocation(line: 101, column: 17, scope: !4225)
!4248 = !DILocation(line: 101, column: 15, scope: !4225)
!4249 = !DILocation(line: 101, column: 21, scope: !4225)
!4250 = !DILocation(line: 101, column: 53, scope: !4225)
!4251 = !DILocation(line: 101, column: 50, scope: !4225)
!4252 = !DILocation(line: 0, scope: !4225)
!4253 = !DILocalVariable(name: "dm", scope: !4254, file: !3, line: 102, type: !222)
!4254 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 101, column: 62)
!4255 = !DILocation(line: 102, column: 28, scope: !4254)
!4256 = !DILocation(line: 102, column: 60, scope: !4254)
!4257 = !DILocation(line: 102, column: 33, scope: !4254)
!4258 = !DILocation(line: 109, column: 11, scope: !4254)
!4259 = !DILocation(line: 109, column: 15, scope: !4254)
!4260 = !DILocation(line: 109, column: 8, scope: !4254)
!4261 = !DILocation(line: 110, column: 3, scope: !4254)
!4262 = !DILocation(line: 110, column: 11, scope: !4254)
!4263 = !DILocation(line: 110, column: 18, scope: !4254)
!4264 = !DILocation(line: 110, column: 16, scope: !4254)
!4265 = !DILocation(line: 110, column: 24, scope: !4254)
!4266 = !DILocation(line: 110, column: 32, scope: !4254)
!4267 = !DILocation(line: 110, column: 22, scope: !4254)
!4268 = !DILocation(line: 110, column: 37, scope: !4254)
!4269 = !DILocation(line: 110, column: 41, scope: !4254)
!4270 = !DILocation(line: 110, column: 49, scope: !4254)
!4271 = !DILocation(line: 110, column: 52, scope: !4254)
!4272 = !DILocation(line: 0, scope: !4254)
!4273 = !DILocation(line: 111, column: 8, scope: !4254)
!4274 = distinct !{!4274, !4261, !4273}
!4275 = !DILocation(line: 112, column: 7, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 112, column: 7)
!4277 = !DILocation(line: 112, column: 14, scope: !4276)
!4278 = !DILocation(line: 112, column: 12, scope: !4276)
!4279 = !DILocation(line: 112, column: 20, scope: !4276)
!4280 = !DILocation(line: 112, column: 28, scope: !4276)
!4281 = !DILocation(line: 112, column: 18, scope: !4276)
!4282 = !DILocation(line: 112, column: 7, scope: !4254)
!4283 = !DILocation(line: 113, column: 4, scope: !4276)
!4284 = !DILocation(line: 113, column: 11, scope: !4276)
!4285 = !DILocation(line: 113, column: 15, scope: !4276)
!4286 = !DILocation(line: 115, column: 8, scope: !4254)
!4287 = !DILocation(line: 116, column: 4, scope: !4254)
!4288 = !DILocation(line: 126, column: 8, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 126, column: 7)
!4290 = !DILocation(line: 126, column: 16, scope: !4289)
!4291 = !DILocation(line: 126, column: 19, scope: !4289)
!4292 = !DILocation(line: 126, column: 23, scope: !4289)
!4293 = !DILocation(line: 126, column: 28, scope: !4289)
!4294 = !DILocation(line: 126, column: 7, scope: !4254)
!4295 = !DILocation(line: 127, column: 4, scope: !4289)
!4296 = distinct !{!4296, !4239, !4297}
!4297 = !DILocation(line: 128, column: 2, scope: !4225)
!4298 = !DILocation(line: 131, column: 6, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 131, column: 6)
!4300 = !DILocation(line: 131, column: 16, scope: !4299)
!4301 = !DILocation(line: 131, column: 23, scope: !4299)
!4302 = !DILocation(line: 131, column: 21, scope: !4299)
!4303 = !DILocation(line: 131, column: 14, scope: !4299)
!4304 = !DILocation(line: 131, column: 6, scope: !4225)
!4305 = !DILocation(line: 132, column: 13, scope: !4299)
!4306 = !DILocation(line: 132, column: 20, scope: !4299)
!4307 = !DILocation(line: 132, column: 18, scope: !4299)
!4308 = !DILocation(line: 132, column: 11, scope: !4299)
!4309 = !DILocation(line: 132, column: 3, scope: !4299)
!4310 = !DILocation(line: 133, column: 1, scope: !4225)
!4311 = distinct !DISubprogram(name: "dmi_match", scope: !3, file: !3, line: 1126, type: !4312, scopeLine: 1127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!498, !5, !186}
!4314 = !DILocalVariable(name: "f", arg: 1, scope: !4311, file: !3, line: 1126, type: !5)
!4315 = !DILocation(line: 1126, column: 31, scope: !4311)
!4316 = !DILocalVariable(name: "str", arg: 2, scope: !4311, file: !3, line: 1126, type: !186)
!4317 = !DILocation(line: 1126, column: 46, scope: !4311)
!4318 = !DILocalVariable(name: "info", scope: !4311, file: !3, line: 1128, type: !186)
!4319 = !DILocation(line: 1128, column: 14, scope: !4311)
!4320 = !DILocation(line: 1128, column: 41, scope: !4311)
!4321 = !DILocation(line: 1128, column: 21, scope: !4311)
!4322 = !DILocation(line: 1130, column: 6, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 1130, column: 6)
!4324 = !DILocation(line: 1130, column: 11, scope: !4323)
!4325 = !DILocation(line: 1130, column: 19, scope: !4323)
!4326 = !DILocation(line: 1130, column: 22, scope: !4323)
!4327 = !DILocation(line: 1130, column: 26, scope: !4323)
!4328 = !DILocation(line: 1130, column: 6, scope: !4311)
!4329 = !DILocation(line: 1131, column: 10, scope: !4323)
!4330 = !DILocation(line: 1131, column: 18, scope: !4323)
!4331 = !DILocation(line: 1131, column: 15, scope: !4323)
!4332 = !DILocation(line: 1131, column: 3, scope: !4323)
!4333 = !DILocation(line: 1133, column: 17, scope: !4311)
!4334 = !DILocation(line: 1133, column: 23, scope: !4311)
!4335 = !DILocation(line: 1133, column: 10, scope: !4311)
!4336 = !DILocation(line: 1133, column: 9, scope: !4311)
!4337 = !DILocation(line: 1133, column: 2, scope: !4311)
!4338 = !DILocation(line: 1134, column: 1, scope: !4311)
!4339 = distinct !DISubprogram(name: "dmi_memdev_name", scope: !3, file: !3, line: 1137, type: !4340, scopeLine: 1138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !208, !4342, !4342}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!4343 = !DILocalVariable(name: "handle", arg: 1, scope: !4339, file: !3, line: 1137, type: !208)
!4344 = !DILocation(line: 1137, column: 26, scope: !4339)
!4345 = !DILocalVariable(name: "bank", arg: 2, scope: !4339, file: !3, line: 1137, type: !4342)
!4346 = !DILocation(line: 1137, column: 47, scope: !4339)
!4347 = !DILocalVariable(name: "device", arg: 3, scope: !4339, file: !3, line: 1137, type: !4342)
!4348 = !DILocation(line: 1137, column: 66, scope: !4339)
!4349 = !DILocalVariable(name: "n", scope: !4339, file: !3, line: 1139, type: !36)
!4350 = !DILocation(line: 1139, column: 6, scope: !4339)
!4351 = !DILocation(line: 1141, column: 6, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 1141, column: 6)
!4353 = !DILocation(line: 1141, column: 17, scope: !4352)
!4354 = !DILocation(line: 1141, column: 6, scope: !4339)
!4355 = !DILocation(line: 1142, column: 3, scope: !4352)
!4356 = !DILocation(line: 1144, column: 9, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 1144, column: 2)
!4358 = !DILocation(line: 1144, column: 7, scope: !4357)
!4359 = !DILocation(line: 1144, column: 14, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1144, column: 2)
!4361 = !DILocation(line: 1144, column: 18, scope: !4360)
!4362 = !DILocation(line: 1144, column: 16, scope: !4360)
!4363 = !DILocation(line: 1144, column: 2, scope: !4357)
!4364 = !DILocation(line: 1145, column: 7, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 1145, column: 7)
!4366 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 1144, column: 38)
!4367 = !DILocation(line: 1145, column: 17, scope: !4365)
!4368 = !DILocation(line: 1145, column: 28, scope: !4365)
!4369 = !DILocation(line: 1145, column: 31, scope: !4365)
!4370 = !DILocation(line: 1145, column: 14, scope: !4365)
!4371 = !DILocation(line: 1145, column: 7, scope: !4366)
!4372 = !DILocation(line: 1146, column: 12, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 1145, column: 39)
!4374 = !DILocation(line: 1146, column: 23, scope: !4373)
!4375 = !DILocation(line: 1146, column: 26, scope: !4373)
!4376 = !DILocation(line: 1146, column: 5, scope: !4373)
!4377 = !DILocation(line: 1146, column: 10, scope: !4373)
!4378 = !DILocation(line: 1147, column: 14, scope: !4373)
!4379 = !DILocation(line: 1147, column: 25, scope: !4373)
!4380 = !DILocation(line: 1147, column: 28, scope: !4373)
!4381 = !DILocation(line: 1147, column: 5, scope: !4373)
!4382 = !DILocation(line: 1147, column: 12, scope: !4373)
!4383 = !DILocation(line: 1148, column: 4, scope: !4373)
!4384 = !DILocation(line: 1150, column: 2, scope: !4366)
!4385 = !DILocation(line: 1144, column: 34, scope: !4360)
!4386 = !DILocation(line: 1144, column: 2, scope: !4360)
!4387 = distinct !{!4387, !4363, !4388}
!4388 = !DILocation(line: 1150, column: 2, scope: !4357)
!4389 = !DILocation(line: 1151, column: 1, scope: !4339)
!4390 = distinct !DISubprogram(name: "dmi_memdev_size", scope: !3, file: !3, line: 1154, type: !4391, scopeLine: 1155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!219, !208}
!4393 = !DILocalVariable(name: "handle", arg: 1, scope: !4390, file: !3, line: 1154, type: !208)
!4394 = !DILocation(line: 1154, column: 25, scope: !4390)
!4395 = !DILocalVariable(name: "n", scope: !4390, file: !3, line: 1156, type: !36)
!4396 = !DILocation(line: 1156, column: 6, scope: !4390)
!4397 = !DILocation(line: 1158, column: 6, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 1158, column: 6)
!4399 = !DILocation(line: 1158, column: 6, scope: !4390)
!4400 = !DILocation(line: 1159, column: 10, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 1159, column: 3)
!4402 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 1158, column: 18)
!4403 = !DILocation(line: 1159, column: 8, scope: !4401)
!4404 = !DILocation(line: 1159, column: 15, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 1159, column: 3)
!4406 = !DILocation(line: 1159, column: 19, scope: !4405)
!4407 = !DILocation(line: 1159, column: 17, scope: !4405)
!4408 = !DILocation(line: 1159, column: 3, scope: !4401)
!4409 = !DILocation(line: 1160, column: 8, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 1160, column: 8)
!4411 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 1159, column: 39)
!4412 = !DILocation(line: 1160, column: 18, scope: !4410)
!4413 = !DILocation(line: 1160, column: 29, scope: !4410)
!4414 = !DILocation(line: 1160, column: 32, scope: !4410)
!4415 = !DILocation(line: 1160, column: 15, scope: !4410)
!4416 = !DILocation(line: 1160, column: 8, scope: !4411)
!4417 = !DILocation(line: 1161, column: 12, scope: !4410)
!4418 = !DILocation(line: 1161, column: 23, scope: !4410)
!4419 = !DILocation(line: 1161, column: 26, scope: !4410)
!4420 = !DILocation(line: 1161, column: 5, scope: !4410)
!4421 = !DILocation(line: 1162, column: 3, scope: !4411)
!4422 = !DILocation(line: 1159, column: 35, scope: !4405)
!4423 = !DILocation(line: 1159, column: 3, scope: !4405)
!4424 = distinct !{!4424, !4408, !4425}
!4425 = !DILocation(line: 1162, column: 3, scope: !4401)
!4426 = !DILocation(line: 1163, column: 2, scope: !4402)
!4427 = !DILocation(line: 1164, column: 2, scope: !4390)
!4428 = !DILocation(line: 1165, column: 1, scope: !4390)
!4429 = distinct !DISubprogram(name: "dmi_memdev_type", scope: !3, file: !3, line: 1175, type: !4430, scopeLine: 1176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!203, !208}
!4432 = !DILocalVariable(name: "handle", arg: 1, scope: !4429, file: !3, line: 1175, type: !208)
!4433 = !DILocation(line: 1175, column: 24, scope: !4429)
!4434 = !DILocalVariable(name: "n", scope: !4429, file: !3, line: 1177, type: !36)
!4435 = !DILocation(line: 1177, column: 6, scope: !4429)
!4436 = !DILocation(line: 1179, column: 6, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 1179, column: 6)
!4438 = !DILocation(line: 1179, column: 6, scope: !4429)
!4439 = !DILocation(line: 1180, column: 10, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 1180, column: 3)
!4441 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 1179, column: 18)
!4442 = !DILocation(line: 1180, column: 8, scope: !4440)
!4443 = !DILocation(line: 1180, column: 15, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 1180, column: 3)
!4445 = !DILocation(line: 1180, column: 19, scope: !4444)
!4446 = !DILocation(line: 1180, column: 17, scope: !4444)
!4447 = !DILocation(line: 1180, column: 3, scope: !4440)
!4448 = !DILocation(line: 1181, column: 8, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1181, column: 8)
!4450 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 1180, column: 39)
!4451 = !DILocation(line: 1181, column: 18, scope: !4449)
!4452 = !DILocation(line: 1181, column: 29, scope: !4449)
!4453 = !DILocation(line: 1181, column: 32, scope: !4449)
!4454 = !DILocation(line: 1181, column: 15, scope: !4449)
!4455 = !DILocation(line: 1181, column: 8, scope: !4450)
!4456 = !DILocation(line: 1182, column: 12, scope: !4449)
!4457 = !DILocation(line: 1182, column: 23, scope: !4449)
!4458 = !DILocation(line: 1182, column: 26, scope: !4449)
!4459 = !DILocation(line: 1182, column: 5, scope: !4449)
!4460 = !DILocation(line: 1183, column: 3, scope: !4450)
!4461 = !DILocation(line: 1180, column: 35, scope: !4444)
!4462 = !DILocation(line: 1180, column: 3, scope: !4444)
!4463 = distinct !{!4463, !4447, !4464}
!4464 = !DILocation(line: 1183, column: 3, scope: !4440)
!4465 = !DILocation(line: 1184, column: 2, scope: !4441)
!4466 = !DILocation(line: 1185, column: 2, scope: !4429)
!4467 = !DILocation(line: 1186, column: 1, scope: !4429)
!4468 = distinct !DISubprogram(name: "dmi_memdev_handle", scope: !3, file: !3, line: 1196, type: !4469, scopeLine: 1197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!208, !36}
!4471 = !DILocalVariable(name: "slot", arg: 1, scope: !4468, file: !3, line: 1196, type: !36)
!4472 = !DILocation(line: 1196, column: 27, scope: !4468)
!4473 = !DILocation(line: 1198, column: 6, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 1198, column: 6)
!4475 = !DILocation(line: 1198, column: 17, scope: !4474)
!4476 = !DILocation(line: 1198, column: 20, scope: !4474)
!4477 = !DILocation(line: 1198, column: 25, scope: !4474)
!4478 = !DILocation(line: 1198, column: 30, scope: !4474)
!4479 = !DILocation(line: 1198, column: 33, scope: !4474)
!4480 = !DILocation(line: 1198, column: 40, scope: !4474)
!4481 = !DILocation(line: 1198, column: 38, scope: !4474)
!4482 = !DILocation(line: 1198, column: 6, scope: !4468)
!4483 = !DILocation(line: 1199, column: 10, scope: !4474)
!4484 = !DILocation(line: 1199, column: 21, scope: !4474)
!4485 = !DILocation(line: 1199, column: 27, scope: !4474)
!4486 = !DILocation(line: 1199, column: 3, scope: !4474)
!4487 = !DILocation(line: 1201, column: 2, scope: !4468)
!4488 = !DILocation(line: 1202, column: 1, scope: !4468)
!4489 = distinct !DISubprogram(name: "raw_table_read", scope: !3, file: !3, line: 742, type: !366, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4490 = !DILocalVariable(name: "file", arg: 1, scope: !4489, file: !3, line: 742, type: !368)
!4491 = !DILocation(line: 742, column: 44, scope: !4489)
!4492 = !DILocalVariable(name: "kobj", arg: 2, scope: !4489, file: !3, line: 742, type: !241)
!4493 = !DILocation(line: 742, column: 66, scope: !4489)
!4494 = !DILocalVariable(name: "attr", arg: 3, scope: !4489, file: !3, line: 743, type: !358)
!4495 = !DILocation(line: 743, column: 32, scope: !4489)
!4496 = !DILocalVariable(name: "buf", arg: 4, scope: !4489, file: !3, line: 743, type: !211)
!4497 = !DILocation(line: 743, column: 44, scope: !4489)
!4498 = !DILocalVariable(name: "pos", arg: 5, scope: !4489, file: !3, line: 744, type: !539)
!4499 = !DILocation(line: 744, column: 17, scope: !4489)
!4500 = !DILocalVariable(name: "count", arg: 6, scope: !4489, file: !3, line: 744, type: !337)
!4501 = !DILocation(line: 744, column: 29, scope: !4489)
!4502 = !DILocation(line: 746, column: 9, scope: !4489)
!4503 = !DILocation(line: 746, column: 14, scope: !4489)
!4504 = !DILocation(line: 746, column: 20, scope: !4489)
!4505 = !DILocation(line: 746, column: 30, scope: !4489)
!4506 = !DILocation(line: 746, column: 28, scope: !4489)
!4507 = !DILocation(line: 746, column: 35, scope: !4489)
!4508 = !DILocation(line: 746, column: 2, scope: !4489)
!4509 = !DILocation(line: 747, column: 9, scope: !4489)
!4510 = !DILocation(line: 747, column: 2, scope: !4489)
!4511 = distinct !DISubprogram(name: "efi_enabled", scope: !4512, file: !4512, line: 813, type: !4513, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4512 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/lizy2001/genbc/linux")
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!498, !36}
!4515 = !DILocalVariable(name: "feature", arg: 1, scope: !4511, file: !4512, line: 813, type: !36)
!4516 = !DILocation(line: 813, column: 36, scope: !4511)
!4517 = !DILocation(line: 815, column: 2, scope: !4511)
!4518 = distinct !DISubprogram(name: "dmi_smbios3_present", scope: !3, file: !3, line: 628, type: !4519, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!36, !4521}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!4523 = !DILocalVariable(name: "p", arg: 1, scope: !4524, file: !4525, line: 48, type: !4528)
!4524 = distinct !DISubprogram(name: "__le64_to_cpup", scope: !4525, file: !4525, line: 48, type: !4526, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4525 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!200, !4528}
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!4530 = !DILocation(line: 48, column: 59, scope: !4524, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 20, column: 9, scope: !4532, inlinedAt: !4536)
!4532 = distinct !DISubprogram(name: "get_unaligned_le64", scope: !4533, file: !4533, line: 18, type: !4534, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4533 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!219, !2178}
!4536 = distinct !DILocation(line: 635, column: 14, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 631, column: 48)
!4538 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 630, column: 6)
!4539 = !DILocalVariable(name: "p", arg: 1, scope: !4532, file: !4533, line: 18, type: !2178)
!4540 = !DILocation(line: 18, column: 59, scope: !4532, inlinedAt: !4536)
!4541 = !DILocalVariable(name: "p", arg: 1, scope: !4542, file: !4525, line: 56, type: !4545)
!4542 = distinct !DISubprogram(name: "__le32_to_cpup", scope: !4525, file: !4525, line: 56, type: !4543, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!193, !4545}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!4547 = !DILocation(line: 56, column: 59, scope: !4542, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 15, column: 9, scope: !4549, inlinedAt: !4552)
!4549 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !4533, file: !4533, line: 13, type: !4550, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!220, !2178}
!4552 = distinct !DILocation(line: 634, column: 13, scope: !4537)
!4553 = !DILocalVariable(name: "p", arg: 1, scope: !4549, file: !4533, line: 13, type: !2178)
!4554 = !DILocation(line: 13, column: 59, scope: !4549, inlinedAt: !4552)
!4555 = !DILocalVariable(name: "p", arg: 1, scope: !4556, file: !4557, line: 184, type: !4560)
!4556 = distinct !DISubprogram(name: "__swab32p", scope: !4557, file: !4557, line: 184, type: !4558, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4557 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!193, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!4562 = !DILocation(line: 184, column: 53, scope: !4556, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 82, column: 9, scope: !4564, inlinedAt: !4569)
!4564 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !4525, file: !4525, line: 80, type: !4565, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!193, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!4569 = distinct !DILocation(line: 30, column: 9, scope: !4570, inlinedAt: !4571)
!4570 = distinct !DISubprogram(name: "get_unaligned_be32", scope: !4533, file: !4533, line: 28, type: !4550, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4571 = distinct !DILocation(line: 632, column: 13, scope: !4537)
!4572 = !DILocalVariable(name: "p", arg: 1, scope: !4564, file: !4525, line: 80, type: !4567)
!4573 = !DILocation(line: 80, column: 59, scope: !4564, inlinedAt: !4569)
!4574 = !DILocalVariable(name: "p", arg: 1, scope: !4570, file: !4533, line: 28, type: !2178)
!4575 = !DILocation(line: 28, column: 59, scope: !4570, inlinedAt: !4571)
!4576 = !DILocalVariable(name: "buf", arg: 1, scope: !4518, file: !3, line: 628, type: !4521)
!4577 = !DILocation(line: 628, column: 49, scope: !4518)
!4578 = !DILocation(line: 630, column: 13, scope: !4538)
!4579 = !DILocation(line: 630, column: 6, scope: !4538)
!4580 = !DILocation(line: 630, column: 30, scope: !4538)
!4581 = !DILocation(line: 630, column: 35, scope: !4538)
!4582 = !DILocation(line: 631, column: 6, scope: !4538)
!4583 = !DILocation(line: 631, column: 13, scope: !4538)
!4584 = !DILocation(line: 631, column: 18, scope: !4538)
!4585 = !DILocation(line: 631, column: 34, scope: !4538)
!4586 = !DILocation(line: 631, column: 39, scope: !4538)
!4587 = !DILocation(line: 631, column: 21, scope: !4538)
!4588 = !DILocation(line: 630, column: 6, scope: !4518)
!4589 = !DILocation(line: 632, column: 32, scope: !4537)
!4590 = !DILocation(line: 632, column: 36, scope: !4537)
!4591 = !DILocation(line: 30, column: 32, scope: !4570, inlinedAt: !4571)
!4592 = !DILocation(line: 30, column: 22, scope: !4570, inlinedAt: !4571)
!4593 = !DILocation(line: 82, column: 28, scope: !4564, inlinedAt: !4569)
!4594 = !DILocation(line: 189, column: 9, scope: !4556, inlinedAt: !4563)
!4595 = !DILocation(line: 632, column: 41, scope: !4537)
!4596 = !DILocation(line: 632, column: 11, scope: !4537)
!4597 = !DILocation(line: 633, column: 11, scope: !4537)
!4598 = !DILocation(line: 634, column: 32, scope: !4537)
!4599 = !DILocation(line: 634, column: 36, scope: !4537)
!4600 = !DILocation(line: 15, column: 32, scope: !4549, inlinedAt: !4552)
!4601 = !DILocation(line: 15, column: 22, scope: !4549, inlinedAt: !4552)
!4602 = !DILocation(line: 58, column: 25, scope: !4542, inlinedAt: !4548)
!4603 = !DILocation(line: 58, column: 24, scope: !4542, inlinedAt: !4548)
!4604 = !DILocation(line: 634, column: 11, scope: !4537)
!4605 = !DILocation(line: 635, column: 33, scope: !4537)
!4606 = !DILocation(line: 635, column: 37, scope: !4537)
!4607 = !DILocation(line: 20, column: 32, scope: !4532, inlinedAt: !4536)
!4608 = !DILocation(line: 20, column: 22, scope: !4532, inlinedAt: !4536)
!4609 = !DILocation(line: 50, column: 25, scope: !4524, inlinedAt: !4531)
!4610 = !DILocation(line: 50, column: 24, scope: !4524, inlinedAt: !4531)
!4611 = !DILocation(line: 635, column: 12, scope: !4537)
!4612 = !DILocation(line: 636, column: 29, scope: !4537)
!4613 = !DILocation(line: 636, column: 27, scope: !4537)
!4614 = !DILocation(line: 637, column: 30, scope: !4537)
!4615 = !DILocation(line: 637, column: 35, scope: !4537)
!4616 = !DILocation(line: 637, column: 3, scope: !4537)
!4617 = !DILocation(line: 639, column: 7, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 639, column: 7)
!4619 = !DILocation(line: 639, column: 34, scope: !4618)
!4620 = !DILocation(line: 639, column: 7, scope: !4537)
!4621 = !DILocation(line: 640, column: 4, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 639, column: 40)
!4623 = !DILocation(line: 643, column: 4, scope: !4622)
!4624 = !DILocation(line: 644, column: 4, scope: !4622)
!4625 = !DILocation(line: 645, column: 4, scope: !4622)
!4626 = !DILocation(line: 647, column: 2, scope: !4537)
!4627 = !DILocation(line: 648, column: 2, scope: !4518)
!4628 = !DILocation(line: 649, column: 1, scope: !4518)
!4629 = distinct !DISubprogram(name: "dmi_present", scope: !3, file: !3, line: 565, type: !4519, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4630 = !DILocation(line: 56, column: 59, scope: !4542, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 15, column: 9, scope: !4549, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 602, column: 14, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 594, column: 61)
!4634 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 594, column: 6)
!4635 = !DILocation(line: 13, column: 59, scope: !4549, inlinedAt: !4632)
!4636 = !DILocalVariable(name: "p", arg: 1, scope: !4637, file: !4525, line: 64, type: !4640)
!4637 = distinct !DISubprogram(name: "__le16_to_cpup", scope: !4525, file: !4525, line: 64, type: !4638, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!209, !4640}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!4642 = !DILocation(line: 64, column: 59, scope: !4637, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 10, column: 9, scope: !4644, inlinedAt: !4647)
!4644 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !4533, file: !4533, line: 8, type: !4645, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!208, !2178}
!4647 = distinct !DILocation(line: 601, column: 13, scope: !4633)
!4648 = !DILocalVariable(name: "p", arg: 1, scope: !4644, file: !4533, line: 8, type: !2178)
!4649 = !DILocation(line: 8, column: 59, scope: !4644, inlinedAt: !4647)
!4650 = !DILocation(line: 64, column: 59, scope: !4637, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 10, column: 9, scope: !4644, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 600, column: 13, scope: !4633)
!4653 = !DILocation(line: 8, column: 59, scope: !4644, inlinedAt: !4652)
!4654 = !DILocalVariable(name: "p", arg: 1, scope: !4655, file: !4557, line: 171, type: !4658)
!4655 = distinct !DISubprogram(name: "__swab16p", scope: !4557, file: !4557, line: 171, type: !4656, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!209, !4658}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!4660 = !DILocation(line: 171, column: 53, scope: !4655, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 90, column: 9, scope: !4662, inlinedAt: !4667)
!4662 = distinct !DISubprogram(name: "__be16_to_cpup", scope: !4525, file: !4525, line: 88, type: !4663, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!209, !4665}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4667 = distinct !DILocation(line: 25, column: 9, scope: !4668, inlinedAt: !4669)
!4668 = distinct !DISubprogram(name: "get_unaligned_be16", scope: !4533, file: !4533, line: 23, type: !4645, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4669 = distinct !DILocation(line: 571, column: 16, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 570, column: 48)
!4671 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 569, column: 6)
!4672 = !DILocalVariable(name: "p", arg: 1, scope: !4662, file: !4525, line: 88, type: !4665)
!4673 = !DILocation(line: 88, column: 59, scope: !4662, inlinedAt: !4667)
!4674 = !DILocalVariable(name: "p", arg: 1, scope: !4668, file: !4533, line: 23, type: !2178)
!4675 = !DILocation(line: 23, column: 59, scope: !4668, inlinedAt: !4669)
!4676 = !DILocalVariable(name: "buf", arg: 1, scope: !4629, file: !3, line: 565, type: !4521)
!4677 = !DILocation(line: 565, column: 41, scope: !4629)
!4678 = !DILocalVariable(name: "smbios_ver", scope: !4629, file: !3, line: 567, type: !220)
!4679 = !DILocation(line: 567, column: 6, scope: !4629)
!4680 = !DILocation(line: 569, column: 13, scope: !4671)
!4681 = !DILocation(line: 569, column: 6, scope: !4671)
!4682 = !DILocation(line: 569, column: 29, scope: !4671)
!4683 = !DILocation(line: 569, column: 34, scope: !4671)
!4684 = !DILocation(line: 570, column: 6, scope: !4671)
!4685 = !DILocation(line: 570, column: 13, scope: !4671)
!4686 = !DILocation(line: 570, column: 18, scope: !4671)
!4687 = !DILocation(line: 570, column: 34, scope: !4671)
!4688 = !DILocation(line: 570, column: 39, scope: !4671)
!4689 = !DILocation(line: 570, column: 21, scope: !4671)
!4690 = !DILocation(line: 569, column: 6, scope: !4629)
!4691 = !DILocation(line: 571, column: 35, scope: !4670)
!4692 = !DILocation(line: 571, column: 39, scope: !4670)
!4693 = !DILocation(line: 25, column: 32, scope: !4668, inlinedAt: !4669)
!4694 = !DILocation(line: 25, column: 22, scope: !4668, inlinedAt: !4669)
!4695 = !DILocation(line: 90, column: 28, scope: !4662, inlinedAt: !4667)
!4696 = !DILocation(line: 176, column: 9, scope: !4655, inlinedAt: !4661)
!4697 = !DILocation(line: 571, column: 16, scope: !4670)
!4698 = !DILocation(line: 571, column: 14, scope: !4670)
!4699 = !DILocation(line: 572, column: 29, scope: !4670)
!4700 = !DILocation(line: 572, column: 27, scope: !4670)
!4701 = !DILocation(line: 573, column: 30, scope: !4670)
!4702 = !DILocation(line: 573, column: 35, scope: !4670)
!4703 = !DILocation(line: 573, column: 3, scope: !4670)
!4704 = !DILocation(line: 576, column: 11, scope: !4670)
!4705 = !DILocation(line: 576, column: 3, scope: !4670)
!4706 = !DILocation(line: 579, column: 4, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 579, column: 4)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 579, column: 4)
!4709 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 576, column: 23)
!4710 = !DILocation(line: 579, column: 4, scope: !4708)
!4711 = !DILocation(line: 581, column: 15, scope: !4709)
!4712 = !DILocation(line: 582, column: 4, scope: !4709)
!4713 = !DILocation(line: 584, column: 4, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 584, column: 4)
!4715 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 584, column: 4)
!4716 = !DILocation(line: 584, column: 4, scope: !4715)
!4717 = !DILocation(line: 585, column: 15, scope: !4709)
!4718 = !DILocation(line: 586, column: 4, scope: !4709)
!4719 = !DILocation(line: 588, column: 2, scope: !4670)
!4720 = !DILocation(line: 589, column: 14, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 588, column: 9)
!4722 = !DILocation(line: 592, column: 6, scope: !4629)
!4723 = !DILocation(line: 594, column: 13, scope: !4634)
!4724 = !DILocation(line: 594, column: 6, scope: !4634)
!4725 = !DILocation(line: 594, column: 30, scope: !4634)
!4726 = !DILocation(line: 594, column: 35, scope: !4634)
!4727 = !DILocation(line: 594, column: 51, scope: !4634)
!4728 = !DILocation(line: 594, column: 38, scope: !4634)
!4729 = !DILocation(line: 594, column: 6, scope: !4629)
!4730 = !DILocation(line: 595, column: 7, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 595, column: 7)
!4732 = !DILocation(line: 595, column: 7, scope: !4633)
!4733 = !DILocation(line: 596, column: 14, scope: !4731)
!4734 = !DILocation(line: 596, column: 12, scope: !4731)
!4735 = !DILocation(line: 596, column: 4, scope: !4731)
!4736 = !DILocation(line: 598, column: 15, scope: !4731)
!4737 = !DILocation(line: 598, column: 23, scope: !4731)
!4738 = !DILocation(line: 598, column: 31, scope: !4731)
!4739 = !DILocation(line: 598, column: 39, scope: !4731)
!4740 = !DILocation(line: 598, column: 47, scope: !4731)
!4741 = !DILocation(line: 598, column: 36, scope: !4731)
!4742 = !DILocation(line: 598, column: 12, scope: !4731)
!4743 = !DILocation(line: 599, column: 11, scope: !4633)
!4744 = !DILocation(line: 600, column: 32, scope: !4633)
!4745 = !DILocation(line: 600, column: 36, scope: !4633)
!4746 = !DILocation(line: 10, column: 32, scope: !4644, inlinedAt: !4652)
!4747 = !DILocation(line: 10, column: 22, scope: !4644, inlinedAt: !4652)
!4748 = !DILocation(line: 66, column: 25, scope: !4637, inlinedAt: !4651)
!4749 = !DILocation(line: 66, column: 24, scope: !4637, inlinedAt: !4651)
!4750 = !DILocation(line: 600, column: 11, scope: !4633)
!4751 = !DILocation(line: 601, column: 32, scope: !4633)
!4752 = !DILocation(line: 601, column: 36, scope: !4633)
!4753 = !DILocation(line: 10, column: 32, scope: !4644, inlinedAt: !4647)
!4754 = !DILocation(line: 10, column: 22, scope: !4644, inlinedAt: !4647)
!4755 = !DILocation(line: 66, column: 25, scope: !4637, inlinedAt: !4643)
!4756 = !DILocation(line: 66, column: 24, scope: !4637, inlinedAt: !4643)
!4757 = !DILocation(line: 601, column: 13, scope: !4633)
!4758 = !DILocation(line: 601, column: 11, scope: !4633)
!4759 = !DILocation(line: 602, column: 33, scope: !4633)
!4760 = !DILocation(line: 602, column: 37, scope: !4633)
!4761 = !DILocation(line: 15, column: 32, scope: !4549, inlinedAt: !4632)
!4762 = !DILocation(line: 15, column: 22, scope: !4549, inlinedAt: !4632)
!4763 = !DILocation(line: 58, column: 25, scope: !4542, inlinedAt: !4631)
!4764 = !DILocation(line: 58, column: 24, scope: !4542, inlinedAt: !4631)
!4765 = !DILocation(line: 602, column: 14, scope: !4633)
!4766 = !DILocation(line: 602, column: 12, scope: !4633)
!4767 = !DILocation(line: 604, column: 7, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 604, column: 7)
!4769 = !DILocation(line: 604, column: 34, scope: !4768)
!4770 = !DILocation(line: 604, column: 7, scope: !4633)
!4771 = !DILocation(line: 605, column: 8, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 605, column: 8)
!4773 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 604, column: 40)
!4774 = !DILocation(line: 605, column: 8, scope: !4773)
!4775 = !DILocation(line: 606, column: 5, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 605, column: 20)
!4777 = !DILocation(line: 608, column: 4, scope: !4776)
!4778 = !DILocation(line: 609, column: 29, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 608, column: 11)
!4780 = !DILocation(line: 610, column: 32, scope: !4779)
!4781 = !DILocation(line: 611, column: 12, scope: !4779)
!4782 = !DILocation(line: 610, column: 5, scope: !4779)
!4783 = !DILocation(line: 612, column: 5, scope: !4779)
!4784 = !DILocation(line: 615, column: 4, scope: !4773)
!4785 = !DILocation(line: 616, column: 4, scope: !4773)
!4786 = !DILocation(line: 617, column: 4, scope: !4773)
!4787 = !DILocation(line: 619, column: 2, scope: !4633)
!4788 = !DILocation(line: 621, column: 2, scope: !4629)
!4789 = !DILocation(line: 622, column: 1, scope: !4629)
!4790 = distinct !DISubprogram(name: "dmi_checksum", scope: !3, file: !3, line: 155, type: !4791, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!36, !4521, !203}
!4793 = !DILocalVariable(name: "buf", arg: 1, scope: !4790, file: !3, line: 155, type: !4521)
!4794 = !DILocation(line: 155, column: 42, scope: !4790)
!4795 = !DILocalVariable(name: "len", arg: 2, scope: !4790, file: !3, line: 155, type: !203)
!4796 = !DILocation(line: 155, column: 50, scope: !4790)
!4797 = !DILocalVariable(name: "sum", scope: !4790, file: !3, line: 157, type: !203)
!4798 = !DILocation(line: 157, column: 5, scope: !4790)
!4799 = !DILocalVariable(name: "a", scope: !4790, file: !3, line: 158, type: !36)
!4800 = !DILocation(line: 158, column: 6, scope: !4790)
!4801 = !DILocation(line: 160, column: 9, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 160, column: 2)
!4803 = !DILocation(line: 160, column: 7, scope: !4802)
!4804 = !DILocation(line: 160, column: 14, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 160, column: 2)
!4806 = !DILocation(line: 160, column: 18, scope: !4805)
!4807 = !DILocation(line: 160, column: 16, scope: !4805)
!4808 = !DILocation(line: 160, column: 2, scope: !4802)
!4809 = !DILocation(line: 161, column: 10, scope: !4805)
!4810 = !DILocation(line: 161, column: 14, scope: !4805)
!4811 = !DILocation(line: 161, column: 7, scope: !4805)
!4812 = !DILocation(line: 161, column: 3, scope: !4805)
!4813 = !DILocation(line: 160, column: 24, scope: !4805)
!4814 = !DILocation(line: 160, column: 2, scope: !4805)
!4815 = distinct !{!4815, !4808, !4816}
!4816 = !DILocation(line: 161, column: 15, scope: !4802)
!4817 = !DILocation(line: 163, column: 9, scope: !4790)
!4818 = !DILocation(line: 163, column: 13, scope: !4790)
!4819 = !DILocation(line: 163, column: 2, scope: !4790)
!4820 = distinct !DISubprogram(name: "dmi_walk_early", scope: !3, file: !3, line: 137, type: !4821, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!36, !4200}
!4823 = !DILocalVariable(name: "decode", arg: 1, scope: !4820, file: !3, line: 137, type: !4200)
!4824 = !DILocation(line: 137, column: 41, scope: !4820)
!4825 = !DILocalVariable(name: "buf", scope: !4820, file: !3, line: 140, type: !202)
!4826 = !DILocation(line: 140, column: 6, scope: !4820)
!4827 = !DILocalVariable(name: "orig_dmi_len", scope: !4820, file: !3, line: 141, type: !220)
!4828 = !DILocation(line: 141, column: 6, scope: !4820)
!4829 = !DILocation(line: 141, column: 21, scope: !4820)
!4830 = !DILocation(line: 143, column: 24, scope: !4820)
!4831 = !DILocation(line: 143, column: 34, scope: !4820)
!4832 = !DILocation(line: 143, column: 8, scope: !4820)
!4833 = !DILocation(line: 143, column: 6, scope: !4820)
!4834 = !DILocation(line: 144, column: 6, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 144, column: 6)
!4836 = !DILocation(line: 144, column: 10, scope: !4835)
!4837 = !DILocation(line: 144, column: 6, scope: !4820)
!4838 = !DILocation(line: 145, column: 3, scope: !4835)
!4839 = !DILocation(line: 147, column: 19, scope: !4820)
!4840 = !DILocation(line: 147, column: 24, scope: !4820)
!4841 = !DILocation(line: 147, column: 2, scope: !4820)
!4842 = !DILocation(line: 149, column: 24, scope: !4820)
!4843 = !DILocation(line: 149, column: 29, scope: !4820)
!4844 = !DILocation(line: 149, column: 2, scope: !4820)
!4845 = !DILocation(line: 151, column: 18, scope: !4820)
!4846 = !DILocation(line: 151, column: 23, scope: !4820)
!4847 = !DILocation(line: 151, column: 2, scope: !4820)
!4848 = !DILocation(line: 152, column: 2, scope: !4820)
!4849 = !DILocation(line: 153, column: 1, scope: !4820)
!4850 = distinct !DISubprogram(name: "dmi_decode", scope: !3, file: !3, line: 468, type: !3472, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4851 = !DILocalVariable(name: "dm", arg: 1, scope: !4850, file: !3, line: 468, type: !222)
!4852 = !DILocation(line: 468, column: 56, scope: !4850)
!4853 = !DILocalVariable(name: "dummy", arg: 2, scope: !4850, file: !3, line: 468, type: !173)
!4854 = !DILocation(line: 468, column: 66, scope: !4850)
!4855 = !DILocation(line: 470, column: 10, scope: !4850)
!4856 = !DILocation(line: 470, column: 14, scope: !4850)
!4857 = !DILocation(line: 470, column: 2, scope: !4850)
!4858 = !DILocation(line: 472, column: 18, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 470, column: 20)
!4860 = !DILocation(line: 472, column: 3, scope: !4859)
!4861 = !DILocation(line: 473, column: 18, scope: !4859)
!4862 = !DILocation(line: 473, column: 3, scope: !4859)
!4863 = !DILocation(line: 474, column: 18, scope: !4859)
!4864 = !DILocation(line: 474, column: 3, scope: !4859)
!4865 = !DILocation(line: 475, column: 20, scope: !4859)
!4866 = !DILocation(line: 475, column: 3, scope: !4859)
!4867 = !DILocation(line: 476, column: 20, scope: !4859)
!4868 = !DILocation(line: 476, column: 3, scope: !4859)
!4869 = !DILocation(line: 477, column: 3, scope: !4859)
!4870 = !DILocation(line: 479, column: 18, scope: !4859)
!4871 = !DILocation(line: 479, column: 3, scope: !4859)
!4872 = !DILocation(line: 480, column: 18, scope: !4859)
!4873 = !DILocation(line: 480, column: 3, scope: !4859)
!4874 = !DILocation(line: 481, column: 18, scope: !4859)
!4875 = !DILocation(line: 481, column: 3, scope: !4859)
!4876 = !DILocation(line: 482, column: 18, scope: !4859)
!4877 = !DILocation(line: 482, column: 3, scope: !4859)
!4878 = !DILocation(line: 483, column: 17, scope: !4859)
!4879 = !DILocation(line: 483, column: 3, scope: !4859)
!4880 = !DILocation(line: 484, column: 18, scope: !4859)
!4881 = !DILocation(line: 484, column: 3, scope: !4859)
!4882 = !DILocation(line: 485, column: 18, scope: !4859)
!4883 = !DILocation(line: 485, column: 3, scope: !4859)
!4884 = !DILocation(line: 486, column: 3, scope: !4859)
!4885 = !DILocation(line: 488, column: 18, scope: !4859)
!4886 = !DILocation(line: 488, column: 3, scope: !4859)
!4887 = !DILocation(line: 489, column: 18, scope: !4859)
!4888 = !DILocation(line: 489, column: 3, scope: !4859)
!4889 = !DILocation(line: 490, column: 18, scope: !4859)
!4890 = !DILocation(line: 490, column: 3, scope: !4859)
!4891 = !DILocation(line: 491, column: 18, scope: !4859)
!4892 = !DILocation(line: 491, column: 3, scope: !4859)
!4893 = !DILocation(line: 492, column: 18, scope: !4859)
!4894 = !DILocation(line: 492, column: 3, scope: !4859)
!4895 = !DILocation(line: 493, column: 3, scope: !4859)
!4896 = !DILocation(line: 495, column: 18, scope: !4859)
!4897 = !DILocation(line: 495, column: 3, scope: !4859)
!4898 = !DILocation(line: 496, column: 17, scope: !4859)
!4899 = !DILocation(line: 496, column: 3, scope: !4859)
!4900 = !DILocation(line: 497, column: 18, scope: !4859)
!4901 = !DILocation(line: 497, column: 3, scope: !4859)
!4902 = !DILocation(line: 498, column: 18, scope: !4859)
!4903 = !DILocation(line: 498, column: 3, scope: !4859)
!4904 = !DILocation(line: 499, column: 18, scope: !4859)
!4905 = !DILocation(line: 499, column: 3, scope: !4859)
!4906 = !DILocation(line: 500, column: 3, scope: !4859)
!4907 = !DILocation(line: 502, column: 24, scope: !4859)
!4908 = !DILocation(line: 502, column: 3, scope: !4859)
!4909 = !DILocation(line: 503, column: 3, scope: !4859)
!4910 = !DILocation(line: 505, column: 20, scope: !4859)
!4911 = !DILocation(line: 505, column: 3, scope: !4859)
!4912 = !DILocation(line: 506, column: 3, scope: !4859)
!4913 = !DILocation(line: 508, column: 32, scope: !4859)
!4914 = !DILocation(line: 508, column: 3, scope: !4859)
!4915 = !DILocation(line: 509, column: 3, scope: !4859)
!4916 = !DILocation(line: 511, column: 24, scope: !4859)
!4917 = !DILocation(line: 511, column: 3, scope: !4859)
!4918 = !DILocation(line: 512, column: 3, scope: !4859)
!4919 = !DILocation(line: 514, column: 29, scope: !4859)
!4920 = !DILocation(line: 514, column: 3, scope: !4859)
!4921 = !DILocation(line: 515, column: 2, scope: !4859)
!4922 = !DILocation(line: 516, column: 1, scope: !4850)
!4923 = distinct !DISubprogram(name: "dmi_format_ids", scope: !3, file: !3, line: 534, type: !4924, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{null, !211, !337}
!4926 = !DILocalVariable(name: "buf", arg: 1, scope: !4923, file: !3, line: 534, type: !211)
!4927 = !DILocation(line: 534, column: 41, scope: !4923)
!4928 = !DILocalVariable(name: "len", arg: 2, scope: !4923, file: !3, line: 534, type: !337)
!4929 = !DILocation(line: 534, column: 53, scope: !4923)
!4930 = !DILocalVariable(name: "c", scope: !4923, file: !3, line: 536, type: !36)
!4931 = !DILocation(line: 536, column: 6, scope: !4923)
!4932 = !DILocalVariable(name: "board", scope: !4923, file: !3, line: 537, type: !186)
!4933 = !DILocation(line: 537, column: 14, scope: !4923)
!4934 = !DILocation(line: 539, column: 22, scope: !4923)
!4935 = !DILocation(line: 539, column: 28, scope: !4923)
!4936 = !DILocation(line: 539, column: 26, scope: !4923)
!4937 = !DILocation(line: 539, column: 31, scope: !4923)
!4938 = !DILocation(line: 539, column: 37, scope: !4923)
!4939 = !DILocation(line: 539, column: 35, scope: !4923)
!4940 = !DILocation(line: 540, column: 8, scope: !4923)
!4941 = !DILocation(line: 539, column: 7, scope: !4923)
!4942 = !DILocation(line: 539, column: 4, scope: !4923)
!4943 = !DILocation(line: 541, column: 17, scope: !4923)
!4944 = !DILocation(line: 541, column: 23, scope: !4923)
!4945 = !DILocation(line: 541, column: 21, scope: !4923)
!4946 = !DILocation(line: 541, column: 26, scope: !4923)
!4947 = !DILocation(line: 541, column: 32, scope: !4923)
!4948 = !DILocation(line: 541, column: 30, scope: !4923)
!4949 = !DILocation(line: 541, column: 7, scope: !4923)
!4950 = !DILocation(line: 541, column: 4, scope: !4923)
!4951 = !DILocation(line: 542, column: 22, scope: !4923)
!4952 = !DILocation(line: 542, column: 28, scope: !4923)
!4953 = !DILocation(line: 542, column: 26, scope: !4923)
!4954 = !DILocation(line: 542, column: 31, scope: !4923)
!4955 = !DILocation(line: 542, column: 37, scope: !4923)
!4956 = !DILocation(line: 542, column: 35, scope: !4923)
!4957 = !DILocation(line: 543, column: 8, scope: !4923)
!4958 = !DILocation(line: 542, column: 7, scope: !4923)
!4959 = !DILocation(line: 542, column: 4, scope: !4923)
!4960 = !DILocation(line: 545, column: 10, scope: !4923)
!4961 = !DILocation(line: 545, column: 8, scope: !4923)
!4962 = !DILocation(line: 546, column: 6, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 546, column: 6)
!4964 = !DILocation(line: 546, column: 6, scope: !4923)
!4965 = !DILocation(line: 547, column: 18, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 546, column: 13)
!4967 = !DILocation(line: 547, column: 24, scope: !4966)
!4968 = !DILocation(line: 547, column: 22, scope: !4966)
!4969 = !DILocation(line: 547, column: 27, scope: !4966)
!4970 = !DILocation(line: 547, column: 33, scope: !4966)
!4971 = !DILocation(line: 547, column: 31, scope: !4966)
!4972 = !DILocation(line: 547, column: 8, scope: !4966)
!4973 = !DILocation(line: 547, column: 5, scope: !4966)
!4974 = !DILocation(line: 548, column: 23, scope: !4966)
!4975 = !DILocation(line: 548, column: 29, scope: !4966)
!4976 = !DILocation(line: 548, column: 27, scope: !4966)
!4977 = !DILocation(line: 548, column: 32, scope: !4966)
!4978 = !DILocation(line: 548, column: 38, scope: !4966)
!4979 = !DILocation(line: 548, column: 36, scope: !4966)
!4980 = !DILocation(line: 548, column: 41, scope: !4966)
!4981 = !DILocation(line: 548, column: 8, scope: !4966)
!4982 = !DILocation(line: 548, column: 5, scope: !4966)
!4983 = !DILocation(line: 549, column: 2, scope: !4966)
!4984 = !DILocation(line: 550, column: 17, scope: !4923)
!4985 = !DILocation(line: 550, column: 23, scope: !4923)
!4986 = !DILocation(line: 550, column: 21, scope: !4923)
!4987 = !DILocation(line: 550, column: 26, scope: !4923)
!4988 = !DILocation(line: 550, column: 32, scope: !4923)
!4989 = !DILocation(line: 550, column: 30, scope: !4923)
!4990 = !DILocation(line: 550, column: 7, scope: !4923)
!4991 = !DILocation(line: 550, column: 4, scope: !4923)
!4992 = !DILocation(line: 551, column: 22, scope: !4923)
!4993 = !DILocation(line: 551, column: 28, scope: !4923)
!4994 = !DILocation(line: 551, column: 26, scope: !4923)
!4995 = !DILocation(line: 551, column: 31, scope: !4923)
!4996 = !DILocation(line: 551, column: 37, scope: !4923)
!4997 = !DILocation(line: 551, column: 35, scope: !4923)
!4998 = !DILocation(line: 552, column: 8, scope: !4923)
!4999 = !DILocation(line: 551, column: 7, scope: !4923)
!5000 = !DILocation(line: 551, column: 4, scope: !4923)
!5001 = !DILocation(line: 553, column: 17, scope: !4923)
!5002 = !DILocation(line: 553, column: 23, scope: !4923)
!5003 = !DILocation(line: 553, column: 21, scope: !4923)
!5004 = !DILocation(line: 553, column: 26, scope: !4923)
!5005 = !DILocation(line: 553, column: 32, scope: !4923)
!5006 = !DILocation(line: 553, column: 30, scope: !4923)
!5007 = !DILocation(line: 553, column: 7, scope: !4923)
!5008 = !DILocation(line: 553, column: 4, scope: !4923)
!5009 = !DILocation(line: 554, column: 22, scope: !4923)
!5010 = !DILocation(line: 554, column: 28, scope: !4923)
!5011 = !DILocation(line: 554, column: 26, scope: !4923)
!5012 = !DILocation(line: 554, column: 31, scope: !4923)
!5013 = !DILocation(line: 554, column: 37, scope: !4923)
!5014 = !DILocation(line: 554, column: 35, scope: !4923)
!5015 = !DILocation(line: 555, column: 8, scope: !4923)
!5016 = !DILocation(line: 554, column: 7, scope: !4923)
!5017 = !DILocation(line: 554, column: 4, scope: !4923)
!5018 = !DILocation(line: 556, column: 1, scope: !4923)
!5019 = distinct !DISubprogram(name: "__fswab32", scope: !4557, file: !4557, line: 57, type: !5020, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!193, !193}
!5022 = !DILocalVariable(name: "val", arg: 1, scope: !5019, file: !4557, line: 57, type: !193)
!5023 = !DILocation(line: 57, column: 57, scope: !5019)
!5024 = !DILocation(line: 60, column: 23, scope: !5019)
!5025 = !DILocation(line: 60, column: 9, scope: !5019)
!5026 = !DILocation(line: 60, column: 2, scope: !5019)
!5027 = distinct !DISubprogram(name: "__arch_swab32", scope: !5028, file: !5028, line: 8, type: !5020, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5028 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!5029 = !DILocalVariable(name: "val", arg: 1, scope: !5027, file: !5028, line: 8, type: !193)
!5030 = !DILocation(line: 8, column: 61, scope: !5027)
!5031 = !DILocation(line: 10, column: 38, scope: !5027)
!5032 = !DILocation(line: 10, column: 2, scope: !5027)
!5033 = !{i32 713282}
!5034 = !DILocation(line: 11, column: 9, scope: !5027)
!5035 = !DILocation(line: 11, column: 2, scope: !5027)
!5036 = distinct !DISubprogram(name: "dmi_save_ident", scope: !3, file: !3, line: 173, type: !5037, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !222, !36, !36}
!5039 = !DILocalVariable(name: "dm", arg: 1, scope: !5036, file: !3, line: 173, type: !222)
!5040 = !DILocation(line: 173, column: 60, scope: !5036)
!5041 = !DILocalVariable(name: "slot", arg: 2, scope: !5036, file: !3, line: 173, type: !36)
!5042 = !DILocation(line: 173, column: 68, scope: !5036)
!5043 = !DILocalVariable(name: "string", arg: 3, scope: !5036, file: !3, line: 174, type: !36)
!5044 = !DILocation(line: 174, column: 7, scope: !5036)
!5045 = !DILocalVariable(name: "d", scope: !5036, file: !3, line: 176, type: !186)
!5046 = !DILocation(line: 176, column: 14, scope: !5036)
!5047 = !DILocation(line: 176, column: 33, scope: !5036)
!5048 = !DILocation(line: 176, column: 18, scope: !5036)
!5049 = !DILocalVariable(name: "p", scope: !5036, file: !3, line: 177, type: !186)
!5050 = !DILocation(line: 177, column: 14, scope: !5036)
!5051 = !DILocation(line: 179, column: 16, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 179, column: 6)
!5053 = !DILocation(line: 179, column: 6, scope: !5052)
!5054 = !DILocation(line: 179, column: 22, scope: !5052)
!5055 = !DILocation(line: 179, column: 25, scope: !5052)
!5056 = !DILocation(line: 179, column: 29, scope: !5052)
!5057 = !DILocation(line: 179, column: 39, scope: !5052)
!5058 = !DILocation(line: 179, column: 36, scope: !5052)
!5059 = !DILocation(line: 179, column: 6, scope: !5036)
!5060 = !DILocation(line: 180, column: 3, scope: !5052)
!5061 = !DILocation(line: 182, column: 17, scope: !5036)
!5062 = !DILocation(line: 182, column: 21, scope: !5036)
!5063 = !DILocation(line: 182, column: 23, scope: !5036)
!5064 = !DILocation(line: 182, column: 6, scope: !5036)
!5065 = !DILocation(line: 182, column: 4, scope: !5036)
!5066 = !DILocation(line: 183, column: 6, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 183, column: 6)
!5068 = !DILocation(line: 183, column: 8, scope: !5067)
!5069 = !DILocation(line: 183, column: 6, scope: !5036)
!5070 = !DILocation(line: 184, column: 3, scope: !5067)
!5071 = !DILocation(line: 186, column: 20, scope: !5036)
!5072 = !DILocation(line: 186, column: 12, scope: !5036)
!5073 = !DILocation(line: 186, column: 2, scope: !5036)
!5074 = !DILocation(line: 186, column: 18, scope: !5036)
!5075 = !DILocation(line: 187, column: 1, scope: !5036)
!5076 = distinct !DISubprogram(name: "dmi_save_release", scope: !3, file: !3, line: 189, type: !5037, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5077 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 208, column: 6, scope: !5076)
!5079 = !DILocalVariable(name: "dm", arg: 1, scope: !5076, file: !3, line: 189, type: !222)
!5080 = !DILocation(line: 189, column: 62, scope: !5076)
!5081 = !DILocalVariable(name: "slot", arg: 2, scope: !5076, file: !3, line: 189, type: !36)
!5082 = !DILocation(line: 189, column: 70, scope: !5076)
!5083 = !DILocalVariable(name: "index", arg: 3, scope: !5076, file: !3, line: 190, type: !36)
!5084 = !DILocation(line: 190, column: 7, scope: !5076)
!5085 = !DILocalVariable(name: "minor", scope: !5076, file: !3, line: 192, type: !4521)
!5086 = !DILocation(line: 192, column: 12, scope: !5076)
!5087 = !DILocalVariable(name: "major", scope: !5076, file: !3, line: 192, type: !4521)
!5088 = !DILocation(line: 192, column: 20, scope: !5076)
!5089 = !DILocalVariable(name: "s", scope: !5076, file: !3, line: 193, type: !211)
!5090 = !DILocation(line: 193, column: 8, scope: !5076)
!5091 = !DILocation(line: 196, column: 16, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 196, column: 6)
!5093 = !DILocation(line: 196, column: 6, scope: !5092)
!5094 = !DILocation(line: 196, column: 22, scope: !5092)
!5095 = !DILocation(line: 196, column: 25, scope: !5092)
!5096 = !DILocation(line: 196, column: 29, scope: !5092)
!5097 = !DILocation(line: 196, column: 38, scope: !5092)
!5098 = !DILocation(line: 196, column: 36, scope: !5092)
!5099 = !DILocation(line: 196, column: 6, scope: !5076)
!5100 = !DILocation(line: 197, column: 3, scope: !5092)
!5101 = !DILocation(line: 199, column: 17, scope: !5076)
!5102 = !DILocation(line: 199, column: 10, scope: !5076)
!5103 = !DILocation(line: 199, column: 22, scope: !5076)
!5104 = !DILocation(line: 199, column: 20, scope: !5076)
!5105 = !DILocation(line: 199, column: 8, scope: !5076)
!5106 = !DILocation(line: 200, column: 17, scope: !5076)
!5107 = !DILocation(line: 200, column: 10, scope: !5076)
!5108 = !DILocation(line: 200, column: 22, scope: !5076)
!5109 = !DILocation(line: 200, column: 20, scope: !5076)
!5110 = !DILocation(line: 200, column: 28, scope: !5076)
!5111 = !DILocation(line: 200, column: 8, scope: !5076)
!5112 = !DILocation(line: 205, column: 7, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 205, column: 6)
!5114 = !DILocation(line: 205, column: 6, scope: !5113)
!5115 = !DILocation(line: 205, column: 13, scope: !5113)
!5116 = !DILocation(line: 205, column: 21, scope: !5113)
!5117 = !DILocation(line: 205, column: 25, scope: !5113)
!5118 = !DILocation(line: 205, column: 24, scope: !5113)
!5119 = !DILocation(line: 205, column: 31, scope: !5113)
!5120 = !DILocation(line: 205, column: 6, scope: !5076)
!5121 = !DILocation(line: 206, column: 3, scope: !5113)
!5122 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5078)
!5123 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5078)
!5124 = !DILocation(line: 208, column: 4, scope: !5076)
!5125 = !DILocation(line: 209, column: 7, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 209, column: 6)
!5127 = !DILocation(line: 209, column: 6, scope: !5076)
!5128 = !DILocation(line: 210, column: 3, scope: !5126)
!5129 = !DILocation(line: 212, column: 10, scope: !5076)
!5130 = !DILocation(line: 212, column: 23, scope: !5076)
!5131 = !DILocation(line: 212, column: 22, scope: !5076)
!5132 = !DILocation(line: 212, column: 31, scope: !5076)
!5133 = !DILocation(line: 212, column: 30, scope: !5076)
!5134 = !DILocation(line: 212, column: 2, scope: !5076)
!5135 = !DILocation(line: 214, column: 20, scope: !5076)
!5136 = !DILocation(line: 214, column: 12, scope: !5076)
!5137 = !DILocation(line: 214, column: 2, scope: !5076)
!5138 = !DILocation(line: 214, column: 18, scope: !5076)
!5139 = !DILocation(line: 215, column: 1, scope: !5076)
!5140 = distinct !DISubprogram(name: "dmi_save_uuid", scope: !3, file: !3, line: 217, type: !5037, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5141 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5142)
!5142 = distinct !DILocation(line: 238, column: 6, scope: !5140)
!5143 = !DILocalVariable(name: "dm", arg: 1, scope: !5140, file: !3, line: 217, type: !222)
!5144 = !DILocation(line: 217, column: 59, scope: !5140)
!5145 = !DILocalVariable(name: "slot", arg: 2, scope: !5140, file: !3, line: 217, type: !36)
!5146 = !DILocation(line: 217, column: 67, scope: !5140)
!5147 = !DILocalVariable(name: "index", arg: 3, scope: !5140, file: !3, line: 218, type: !36)
!5148 = !DILocation(line: 218, column: 7, scope: !5140)
!5149 = !DILocalVariable(name: "d", scope: !5140, file: !3, line: 220, type: !4521)
!5150 = !DILocation(line: 220, column: 12, scope: !5140)
!5151 = !DILocalVariable(name: "s", scope: !5140, file: !3, line: 221, type: !211)
!5152 = !DILocation(line: 221, column: 8, scope: !5140)
!5153 = !DILocalVariable(name: "is_ff", scope: !5140, file: !3, line: 222, type: !36)
!5154 = !DILocation(line: 222, column: 6, scope: !5140)
!5155 = !DILocalVariable(name: "is_00", scope: !5140, file: !3, line: 222, type: !36)
!5156 = !DILocation(line: 222, column: 17, scope: !5140)
!5157 = !DILocalVariable(name: "i", scope: !5140, file: !3, line: 222, type: !36)
!5158 = !DILocation(line: 222, column: 28, scope: !5140)
!5159 = !DILocation(line: 224, column: 16, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 224, column: 6)
!5161 = !DILocation(line: 224, column: 6, scope: !5160)
!5162 = !DILocation(line: 224, column: 22, scope: !5160)
!5163 = !DILocation(line: 224, column: 25, scope: !5160)
!5164 = !DILocation(line: 224, column: 29, scope: !5160)
!5165 = !DILocation(line: 224, column: 38, scope: !5160)
!5166 = !DILocation(line: 224, column: 44, scope: !5160)
!5167 = !DILocation(line: 224, column: 36, scope: !5160)
!5168 = !DILocation(line: 224, column: 6, scope: !5140)
!5169 = !DILocation(line: 225, column: 3, scope: !5160)
!5170 = !DILocation(line: 227, column: 13, scope: !5140)
!5171 = !DILocation(line: 227, column: 6, scope: !5140)
!5172 = !DILocation(line: 227, column: 18, scope: !5140)
!5173 = !DILocation(line: 227, column: 16, scope: !5140)
!5174 = !DILocation(line: 227, column: 4, scope: !5140)
!5175 = !DILocation(line: 228, column: 9, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 228, column: 2)
!5177 = !DILocation(line: 228, column: 7, scope: !5176)
!5178 = !DILocation(line: 228, column: 14, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 228, column: 2)
!5180 = !DILocation(line: 228, column: 16, scope: !5179)
!5181 = !DILocation(line: 228, column: 21, scope: !5179)
!5182 = !DILocation(line: 228, column: 25, scope: !5179)
!5183 = !DILocation(line: 228, column: 31, scope: !5179)
!5184 = !DILocation(line: 228, column: 34, scope: !5179)
!5185 = !DILocation(line: 0, scope: !5179)
!5186 = !DILocation(line: 228, column: 2, scope: !5176)
!5187 = !DILocation(line: 229, column: 7, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 229, column: 7)
!5189 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 228, column: 47)
!5190 = !DILocation(line: 229, column: 9, scope: !5188)
!5191 = !DILocation(line: 229, column: 12, scope: !5188)
!5192 = !DILocation(line: 229, column: 7, scope: !5189)
!5193 = !DILocation(line: 230, column: 10, scope: !5188)
!5194 = !DILocation(line: 230, column: 4, scope: !5188)
!5195 = !DILocation(line: 231, column: 7, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 231, column: 7)
!5197 = !DILocation(line: 231, column: 9, scope: !5196)
!5198 = !DILocation(line: 231, column: 12, scope: !5196)
!5199 = !DILocation(line: 231, column: 7, scope: !5189)
!5200 = !DILocation(line: 232, column: 10, scope: !5196)
!5201 = !DILocation(line: 232, column: 4, scope: !5196)
!5202 = !DILocation(line: 233, column: 2, scope: !5189)
!5203 = !DILocation(line: 228, column: 43, scope: !5179)
!5204 = !DILocation(line: 228, column: 2, scope: !5179)
!5205 = distinct !{!5205, !5186, !5206}
!5206 = !DILocation(line: 233, column: 2, scope: !5176)
!5207 = !DILocation(line: 235, column: 6, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 235, column: 6)
!5209 = !DILocation(line: 235, column: 12, scope: !5208)
!5210 = !DILocation(line: 235, column: 15, scope: !5208)
!5211 = !DILocation(line: 235, column: 6, scope: !5140)
!5212 = !DILocation(line: 236, column: 3, scope: !5208)
!5213 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5142)
!5214 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5142)
!5215 = !DILocation(line: 238, column: 4, scope: !5140)
!5216 = !DILocation(line: 239, column: 7, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 239, column: 6)
!5218 = !DILocation(line: 239, column: 6, scope: !5140)
!5219 = !DILocation(line: 240, column: 3, scope: !5217)
!5220 = !DILocation(line: 247, column: 6, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 247, column: 6)
!5222 = !DILocation(line: 247, column: 14, scope: !5221)
!5223 = !DILocation(line: 247, column: 6, scope: !5140)
!5224 = !DILocation(line: 248, column: 11, scope: !5221)
!5225 = !DILocation(line: 248, column: 22, scope: !5221)
!5226 = !DILocation(line: 248, column: 3, scope: !5221)
!5227 = !DILocation(line: 250, column: 11, scope: !5221)
!5228 = !DILocation(line: 250, column: 22, scope: !5221)
!5229 = !DILocation(line: 250, column: 3, scope: !5221)
!5230 = !DILocation(line: 252, column: 20, scope: !5140)
!5231 = !DILocation(line: 252, column: 12, scope: !5140)
!5232 = !DILocation(line: 252, column: 2, scope: !5140)
!5233 = !DILocation(line: 252, column: 18, scope: !5140)
!5234 = !DILocation(line: 253, column: 1, scope: !5140)
!5235 = distinct !DISubprogram(name: "dmi_save_type", scope: !3, file: !3, line: 255, type: !5037, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5236 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5237)
!5237 = distinct !DILocation(line: 264, column: 6, scope: !5235)
!5238 = !DILocalVariable(name: "dm", arg: 1, scope: !5235, file: !3, line: 255, type: !222)
!5239 = !DILocation(line: 255, column: 59, scope: !5235)
!5240 = !DILocalVariable(name: "slot", arg: 2, scope: !5235, file: !3, line: 255, type: !36)
!5241 = !DILocation(line: 255, column: 67, scope: !5235)
!5242 = !DILocalVariable(name: "index", arg: 3, scope: !5235, file: !3, line: 256, type: !36)
!5243 = !DILocation(line: 256, column: 7, scope: !5235)
!5244 = !DILocalVariable(name: "d", scope: !5235, file: !3, line: 258, type: !4521)
!5245 = !DILocation(line: 258, column: 12, scope: !5235)
!5246 = !DILocalVariable(name: "s", scope: !5235, file: !3, line: 259, type: !211)
!5247 = !DILocation(line: 259, column: 8, scope: !5235)
!5248 = !DILocation(line: 261, column: 16, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 261, column: 6)
!5250 = !DILocation(line: 261, column: 6, scope: !5249)
!5251 = !DILocation(line: 261, column: 22, scope: !5249)
!5252 = !DILocation(line: 261, column: 25, scope: !5249)
!5253 = !DILocation(line: 261, column: 29, scope: !5249)
!5254 = !DILocation(line: 261, column: 39, scope: !5249)
!5255 = !DILocation(line: 261, column: 36, scope: !5249)
!5256 = !DILocation(line: 261, column: 6, scope: !5235)
!5257 = !DILocation(line: 262, column: 3, scope: !5249)
!5258 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5237)
!5259 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5237)
!5260 = !DILocation(line: 264, column: 4, scope: !5235)
!5261 = !DILocation(line: 265, column: 7, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 265, column: 6)
!5263 = !DILocation(line: 265, column: 6, scope: !5235)
!5264 = !DILocation(line: 266, column: 3, scope: !5262)
!5265 = !DILocation(line: 268, column: 13, scope: !5235)
!5266 = !DILocation(line: 268, column: 6, scope: !5235)
!5267 = !DILocation(line: 268, column: 18, scope: !5235)
!5268 = !DILocation(line: 268, column: 16, scope: !5235)
!5269 = !DILocation(line: 268, column: 4, scope: !5235)
!5270 = !DILocation(line: 269, column: 10, scope: !5235)
!5271 = !DILocation(line: 269, column: 20, scope: !5235)
!5272 = !DILocation(line: 269, column: 19, scope: !5235)
!5273 = !DILocation(line: 269, column: 22, scope: !5235)
!5274 = !DILocation(line: 269, column: 2, scope: !5235)
!5275 = !DILocation(line: 270, column: 20, scope: !5235)
!5276 = !DILocation(line: 270, column: 12, scope: !5235)
!5277 = !DILocation(line: 270, column: 2, scope: !5235)
!5278 = !DILocation(line: 270, column: 18, scope: !5235)
!5279 = !DILocation(line: 271, column: 1, scope: !5235)
!5280 = distinct !DISubprogram(name: "dmi_save_system_slot", scope: !3, file: !3, line: 401, type: !5281, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !222}
!5283 = !DILocalVariable(name: "dm", arg: 1, scope: !5280, file: !3, line: 401, type: !222)
!5284 = !DILocation(line: 401, column: 66, scope: !5280)
!5285 = !DILocalVariable(name: "d", scope: !5280, file: !3, line: 403, type: !4521)
!5286 = !DILocation(line: 403, column: 12, scope: !5280)
!5287 = !DILocation(line: 403, column: 22, scope: !5280)
!5288 = !DILocation(line: 403, column: 16, scope: !5280)
!5289 = !DILocation(line: 406, column: 6, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 406, column: 6)
!5291 = !DILocation(line: 406, column: 10, scope: !5290)
!5292 = !DILocation(line: 406, column: 17, scope: !5290)
!5293 = !DILocation(line: 406, column: 6, scope: !5280)
!5294 = !DILocation(line: 407, column: 3, scope: !5290)
!5295 = !DILocation(line: 408, column: 32, scope: !5280)
!5296 = !DILocation(line: 408, column: 34, scope: !5280)
!5297 = !DILocation(line: 408, column: 23, scope: !5280)
!5298 = !DILocation(line: 408, column: 51, scope: !5280)
!5299 = !DILocation(line: 408, column: 53, scope: !5280)
!5300 = !DILocation(line: 408, column: 42, scope: !5280)
!5301 = !DILocation(line: 408, column: 61, scope: !5280)
!5302 = !DILocation(line: 409, column: 9, scope: !5280)
!5303 = !DILocation(line: 409, column: 36, scope: !5280)
!5304 = !DILocation(line: 409, column: 40, scope: !5280)
!5305 = !DILocation(line: 409, column: 18, scope: !5280)
!5306 = !DILocation(line: 408, column: 2, scope: !5280)
!5307 = !DILocation(line: 411, column: 1, scope: !5280)
!5308 = distinct !DISubprogram(name: "dmi_save_devices", scope: !3, file: !3, line: 292, type: !5281, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5309 = !DILocalVariable(name: "dm", arg: 1, scope: !5308, file: !3, line: 292, type: !222)
!5310 = !DILocation(line: 292, column: 62, scope: !5308)
!5311 = !DILocalVariable(name: "i", scope: !5308, file: !3, line: 294, type: !36)
!5312 = !DILocation(line: 294, column: 6, scope: !5308)
!5313 = !DILocalVariable(name: "count", scope: !5308, file: !3, line: 294, type: !36)
!5314 = !DILocation(line: 294, column: 9, scope: !5308)
!5315 = !DILocation(line: 294, column: 18, scope: !5308)
!5316 = !DILocation(line: 294, column: 22, scope: !5308)
!5317 = !DILocation(line: 294, column: 29, scope: !5308)
!5318 = !DILocation(line: 294, column: 58, scope: !5308)
!5319 = !DILocation(line: 294, column: 17, scope: !5308)
!5320 = !DILocation(line: 296, column: 9, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 296, column: 2)
!5322 = !DILocation(line: 296, column: 7, scope: !5321)
!5323 = !DILocation(line: 296, column: 14, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 296, column: 2)
!5325 = !DILocation(line: 296, column: 18, scope: !5324)
!5326 = !DILocation(line: 296, column: 16, scope: !5324)
!5327 = !DILocation(line: 296, column: 2, scope: !5321)
!5328 = !DILocalVariable(name: "d", scope: !5329, file: !3, line: 297, type: !186)
!5329 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 296, column: 30)
!5330 = !DILocation(line: 297, column: 15, scope: !5329)
!5331 = !DILocation(line: 297, column: 28, scope: !5329)
!5332 = !DILocation(line: 297, column: 31, scope: !5329)
!5333 = !DILocation(line: 297, column: 19, scope: !5329)
!5334 = !DILocation(line: 297, column: 39, scope: !5329)
!5335 = !DILocation(line: 297, column: 41, scope: !5329)
!5336 = !DILocation(line: 297, column: 36, scope: !5329)
!5337 = !DILocation(line: 300, column: 9, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 300, column: 7)
!5339 = !DILocation(line: 300, column: 8, scope: !5338)
!5340 = !DILocation(line: 300, column: 11, scope: !5338)
!5341 = !DILocation(line: 300, column: 19, scope: !5338)
!5342 = !DILocation(line: 300, column: 7, scope: !5329)
!5343 = !DILocation(line: 301, column: 4, scope: !5338)
!5344 = !DILocation(line: 303, column: 24, scope: !5329)
!5345 = !DILocation(line: 303, column: 23, scope: !5329)
!5346 = !DILocation(line: 303, column: 26, scope: !5329)
!5347 = !DILocation(line: 303, column: 52, scope: !5329)
!5348 = !DILocation(line: 303, column: 58, scope: !5329)
!5349 = !DILocation(line: 303, column: 60, scope: !5329)
!5350 = !DILocation(line: 303, column: 56, scope: !5329)
!5351 = !DILocation(line: 303, column: 34, scope: !5329)
!5352 = !DILocation(line: 303, column: 3, scope: !5329)
!5353 = !DILocation(line: 304, column: 2, scope: !5329)
!5354 = !DILocation(line: 296, column: 26, scope: !5324)
!5355 = !DILocation(line: 296, column: 2, scope: !5324)
!5356 = distinct !{!5356, !5327, !5357}
!5357 = !DILocation(line: 304, column: 2, scope: !5321)
!5358 = !DILocation(line: 305, column: 1, scope: !5308)
!5359 = distinct !DISubprogram(name: "dmi_save_oem_strings_devices", scope: !3, file: !3, line: 307, type: !5281, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5360 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5361)
!5361 = distinct !DILocation(line: 322, column: 9, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 316, column: 31)
!5363 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 316, column: 2)
!5364 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 316, column: 2)
!5365 = !DILocalVariable(name: "dm", arg: 1, scope: !5359, file: !3, line: 307, type: !222)
!5366 = !DILocation(line: 307, column: 74, scope: !5359)
!5367 = !DILocalVariable(name: "i", scope: !5359, file: !3, line: 309, type: !36)
!5368 = !DILocation(line: 309, column: 6, scope: !5359)
!5369 = !DILocalVariable(name: "count", scope: !5359, file: !3, line: 309, type: !36)
!5370 = !DILocation(line: 309, column: 9, scope: !5359)
!5371 = !DILocalVariable(name: "dev", scope: !5359, file: !3, line: 310, type: !174)
!5372 = !DILocation(line: 310, column: 21, scope: !5359)
!5373 = !DILocation(line: 312, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 312, column: 6)
!5375 = !DILocation(line: 312, column: 10, scope: !5374)
!5376 = !DILocation(line: 312, column: 17, scope: !5374)
!5377 = !DILocation(line: 312, column: 6, scope: !5359)
!5378 = !DILocation(line: 313, column: 3, scope: !5374)
!5379 = !DILocation(line: 315, column: 18, scope: !5359)
!5380 = !DILocation(line: 315, column: 21, scope: !5359)
!5381 = !DILocation(line: 315, column: 10, scope: !5359)
!5382 = !DILocation(line: 315, column: 8, scope: !5359)
!5383 = !DILocation(line: 316, column: 9, scope: !5364)
!5384 = !DILocation(line: 316, column: 7, scope: !5364)
!5385 = !DILocation(line: 316, column: 14, scope: !5363)
!5386 = !DILocation(line: 316, column: 19, scope: !5363)
!5387 = !DILocation(line: 316, column: 16, scope: !5363)
!5388 = !DILocation(line: 316, column: 2, scope: !5364)
!5389 = !DILocalVariable(name: "devname", scope: !5362, file: !3, line: 317, type: !186)
!5390 = !DILocation(line: 317, column: 15, scope: !5362)
!5391 = !DILocation(line: 317, column: 36, scope: !5362)
!5392 = !DILocation(line: 317, column: 40, scope: !5362)
!5393 = !DILocation(line: 317, column: 25, scope: !5362)
!5394 = !DILocation(line: 319, column: 7, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 319, column: 7)
!5396 = !DILocation(line: 319, column: 15, scope: !5395)
!5397 = !DILocation(line: 319, column: 7, scope: !5362)
!5398 = !DILocation(line: 320, column: 4, scope: !5395)
!5399 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5361)
!5400 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5361)
!5401 = !DILocation(line: 322, column: 9, scope: !5362)
!5402 = !DILocation(line: 322, column: 7, scope: !5362)
!5403 = !DILocation(line: 323, column: 8, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 323, column: 7)
!5405 = !DILocation(line: 323, column: 7, scope: !5362)
!5406 = !DILocation(line: 324, column: 4, scope: !5404)
!5407 = !DILocation(line: 326, column: 3, scope: !5362)
!5408 = !DILocation(line: 326, column: 8, scope: !5362)
!5409 = !DILocation(line: 326, column: 13, scope: !5362)
!5410 = !DILocation(line: 327, column: 15, scope: !5362)
!5411 = !DILocation(line: 327, column: 3, scope: !5362)
!5412 = !DILocation(line: 327, column: 8, scope: !5362)
!5413 = !DILocation(line: 327, column: 13, scope: !5362)
!5414 = !DILocation(line: 328, column: 3, scope: !5362)
!5415 = !DILocation(line: 328, column: 8, scope: !5362)
!5416 = !DILocation(line: 328, column: 20, scope: !5362)
!5417 = !DILocation(line: 330, column: 13, scope: !5362)
!5418 = !DILocation(line: 330, column: 18, scope: !5362)
!5419 = !DILocation(line: 330, column: 3, scope: !5362)
!5420 = !DILocation(line: 331, column: 2, scope: !5362)
!5421 = !DILocation(line: 316, column: 27, scope: !5363)
!5422 = !DILocation(line: 316, column: 2, scope: !5363)
!5423 = distinct !{!5423, !5388, !5424}
!5424 = !DILocation(line: 331, column: 2, scope: !5364)
!5425 = !DILocation(line: 332, column: 1, scope: !5359)
!5426 = distinct !DISubprogram(name: "dmi_save_ipmi_device", scope: !3, file: !3, line: 334, type: !5281, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5427 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5428)
!5428 = distinct !DILocation(line: 345, column: 8, scope: !5426)
!5429 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5430)
!5430 = distinct !DILocation(line: 339, column: 9, scope: !5426)
!5431 = !DILocalVariable(name: "dm", arg: 1, scope: !5426, file: !3, line: 334, type: !222)
!5432 = !DILocation(line: 334, column: 66, scope: !5426)
!5433 = !DILocalVariable(name: "dev", scope: !5426, file: !3, line: 336, type: !174)
!5434 = !DILocation(line: 336, column: 21, scope: !5426)
!5435 = !DILocalVariable(name: "data", scope: !5426, file: !3, line: 337, type: !173)
!5436 = !DILocation(line: 337, column: 8, scope: !5426)
!5437 = !DILocation(line: 339, column: 19, scope: !5426)
!5438 = !DILocation(line: 339, column: 23, scope: !5426)
!5439 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5430)
!5440 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5430)
!5441 = !DILocation(line: 339, column: 7, scope: !5426)
!5442 = !DILocation(line: 340, column: 6, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 340, column: 6)
!5444 = !DILocation(line: 340, column: 11, scope: !5443)
!5445 = !DILocation(line: 340, column: 6, scope: !5426)
!5446 = !DILocation(line: 341, column: 3, scope: !5443)
!5447 = !DILocation(line: 343, column: 9, scope: !5426)
!5448 = !DILocation(line: 343, column: 15, scope: !5426)
!5449 = !DILocation(line: 343, column: 2, scope: !5426)
!5450 = !DILocation(line: 343, column: 19, scope: !5426)
!5451 = !DILocation(line: 343, column: 23, scope: !5426)
!5452 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5428)
!5453 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5428)
!5454 = !DILocation(line: 345, column: 8, scope: !5426)
!5455 = !DILocation(line: 345, column: 6, scope: !5426)
!5456 = !DILocation(line: 346, column: 7, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 346, column: 6)
!5458 = !DILocation(line: 346, column: 6, scope: !5426)
!5459 = !DILocation(line: 347, column: 3, scope: !5457)
!5460 = !DILocation(line: 349, column: 2, scope: !5426)
!5461 = !DILocation(line: 349, column: 7, scope: !5426)
!5462 = !DILocation(line: 349, column: 12, scope: !5426)
!5463 = !DILocation(line: 350, column: 2, scope: !5426)
!5464 = !DILocation(line: 350, column: 7, scope: !5426)
!5465 = !DILocation(line: 350, column: 12, scope: !5426)
!5466 = !DILocation(line: 351, column: 21, scope: !5426)
!5467 = !DILocation(line: 351, column: 2, scope: !5426)
!5468 = !DILocation(line: 351, column: 7, scope: !5426)
!5469 = !DILocation(line: 351, column: 19, scope: !5426)
!5470 = !DILocation(line: 353, column: 17, scope: !5426)
!5471 = !DILocation(line: 353, column: 22, scope: !5426)
!5472 = !DILocation(line: 353, column: 2, scope: !5426)
!5473 = !DILocation(line: 354, column: 1, scope: !5426)
!5474 = distinct !DISubprogram(name: "dmi_save_extended_devices", scope: !3, file: !3, line: 383, type: !5281, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5475 = !DILocalVariable(name: "dm", arg: 1, scope: !5474, file: !3, line: 383, type: !222)
!5476 = !DILocation(line: 383, column: 71, scope: !5474)
!5477 = !DILocalVariable(name: "name", scope: !5474, file: !3, line: 385, type: !186)
!5478 = !DILocation(line: 385, column: 14, scope: !5474)
!5479 = !DILocalVariable(name: "d", scope: !5474, file: !3, line: 386, type: !4521)
!5480 = !DILocation(line: 386, column: 12, scope: !5474)
!5481 = !DILocation(line: 386, column: 22, scope: !5474)
!5482 = !DILocation(line: 386, column: 16, scope: !5474)
!5483 = !DILocation(line: 388, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 388, column: 6)
!5485 = !DILocation(line: 388, column: 10, scope: !5484)
!5486 = !DILocation(line: 388, column: 17, scope: !5484)
!5487 = !DILocation(line: 388, column: 6, scope: !5474)
!5488 = !DILocation(line: 389, column: 3, scope: !5484)
!5489 = !DILocation(line: 392, column: 7, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 392, column: 6)
!5491 = !DILocation(line: 392, column: 14, scope: !5490)
!5492 = !DILocation(line: 392, column: 22, scope: !5490)
!5493 = !DILocation(line: 392, column: 6, scope: !5474)
!5494 = !DILocation(line: 393, column: 3, scope: !5490)
!5495 = !DILocation(line: 395, column: 27, scope: !5474)
!5496 = !DILocation(line: 395, column: 31, scope: !5474)
!5497 = !DILocation(line: 395, column: 9, scope: !5474)
!5498 = !DILocation(line: 395, column: 7, scope: !5474)
!5499 = !DILocation(line: 396, column: 23, scope: !5474)
!5500 = !DILocation(line: 396, column: 40, scope: !5474)
!5501 = !DILocation(line: 396, column: 42, scope: !5474)
!5502 = !DILocation(line: 396, column: 31, scope: !5474)
!5503 = !DILocation(line: 396, column: 50, scope: !5474)
!5504 = !DILocation(line: 396, column: 58, scope: !5474)
!5505 = !DILocation(line: 396, column: 66, scope: !5474)
!5506 = !DILocation(line: 396, column: 2, scope: !5474)
!5507 = !DILocation(line: 398, column: 22, scope: !5474)
!5508 = !DILocation(line: 398, column: 29, scope: !5474)
!5509 = !DILocation(line: 398, column: 37, scope: !5474)
!5510 = !DILocation(line: 398, column: 2, scope: !5474)
!5511 = !DILocation(line: 399, column: 1, scope: !5474)
!5512 = distinct !DISubprogram(name: "dmi_string", scope: !3, file: !3, line: 66, type: !5513, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!186, !222, !203}
!5515 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5516)
!5516 = distinct !DILocation(line: 76, column: 8, scope: !5512)
!5517 = !DILocalVariable(name: "dm", arg: 1, scope: !5512, file: !3, line: 66, type: !222)
!5518 = !DILocation(line: 66, column: 64, scope: !5512)
!5519 = !DILocalVariable(name: "s", arg: 2, scope: !5512, file: !3, line: 66, type: !203)
!5520 = !DILocation(line: 66, column: 71, scope: !5512)
!5521 = !DILocalVariable(name: "bp", scope: !5512, file: !3, line: 68, type: !186)
!5522 = !DILocation(line: 68, column: 14, scope: !5512)
!5523 = !DILocation(line: 68, column: 37, scope: !5512)
!5524 = !DILocation(line: 68, column: 41, scope: !5512)
!5525 = !DILocation(line: 68, column: 19, scope: !5512)
!5526 = !DILocalVariable(name: "str", scope: !5512, file: !3, line: 69, type: !211)
!5527 = !DILocation(line: 69, column: 8, scope: !5512)
!5528 = !DILocalVariable(name: "len", scope: !5512, file: !3, line: 70, type: !337)
!5529 = !DILocation(line: 70, column: 9, scope: !5512)
!5530 = !DILocation(line: 72, column: 6, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 72, column: 6)
!5532 = !DILocation(line: 72, column: 9, scope: !5531)
!5533 = !DILocation(line: 72, column: 6, scope: !5512)
!5534 = !DILocation(line: 73, column: 3, scope: !5531)
!5535 = !DILocation(line: 75, column: 15, scope: !5512)
!5536 = !DILocation(line: 75, column: 8, scope: !5512)
!5537 = !DILocation(line: 75, column: 19, scope: !5512)
!5538 = !DILocation(line: 75, column: 6, scope: !5512)
!5539 = !DILocation(line: 76, column: 18, scope: !5512)
!5540 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5516)
!5541 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5516)
!5542 = !DILocation(line: 76, column: 6, scope: !5512)
!5543 = !DILocation(line: 77, column: 6, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 77, column: 6)
!5545 = !DILocation(line: 77, column: 10, scope: !5544)
!5546 = !DILocation(line: 77, column: 6, scope: !5512)
!5547 = !DILocation(line: 78, column: 10, scope: !5544)
!5548 = !DILocation(line: 78, column: 15, scope: !5544)
!5549 = !DILocation(line: 78, column: 3, scope: !5544)
!5550 = !DILocation(line: 80, column: 9, scope: !5512)
!5551 = !DILocation(line: 80, column: 2, scope: !5512)
!5552 = !DILocation(line: 81, column: 1, scope: !5512)
!5553 = distinct !DISubprogram(name: "dmi_string_nosave", scope: !3, file: !3, line: 46, type: !5513, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5554 = !DILocalVariable(name: "dm", arg: 1, scope: !5553, file: !3, line: 46, type: !222)
!5555 = !DILocation(line: 46, column: 71, scope: !5553)
!5556 = !DILocalVariable(name: "s", arg: 2, scope: !5553, file: !3, line: 46, type: !203)
!5557 = !DILocation(line: 46, column: 78, scope: !5553)
!5558 = !DILocalVariable(name: "bp", scope: !5553, file: !3, line: 48, type: !4521)
!5559 = !DILocation(line: 48, column: 12, scope: !5553)
!5560 = !DILocation(line: 48, column: 25, scope: !5553)
!5561 = !DILocation(line: 48, column: 18, scope: !5553)
!5562 = !DILocation(line: 48, column: 31, scope: !5553)
!5563 = !DILocation(line: 48, column: 35, scope: !5553)
!5564 = !DILocation(line: 48, column: 29, scope: !5553)
!5565 = !DILocalVariable(name: "nsp", scope: !5553, file: !3, line: 49, type: !4521)
!5566 = !DILocation(line: 49, column: 12, scope: !5553)
!5567 = !DILocation(line: 51, column: 6, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 51, column: 6)
!5569 = !DILocation(line: 51, column: 6, scope: !5553)
!5570 = !DILocation(line: 52, column: 3, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 51, column: 9)
!5572 = !DILocation(line: 52, column: 10, scope: !5571)
!5573 = !DILocation(line: 52, column: 14, scope: !5571)
!5574 = !DILocation(line: 52, column: 18, scope: !5571)
!5575 = !DILocation(line: 52, column: 22, scope: !5571)
!5576 = !DILocation(line: 52, column: 21, scope: !5571)
!5577 = !DILocation(line: 0, scope: !5571)
!5578 = !DILocation(line: 53, column: 17, scope: !5571)
!5579 = !DILocation(line: 53, column: 10, scope: !5571)
!5580 = !DILocation(line: 53, column: 21, scope: !5571)
!5581 = !DILocation(line: 53, column: 7, scope: !5571)
!5582 = distinct !{!5582, !5570, !5583}
!5583 = !DILocation(line: 53, column: 23, scope: !5571)
!5584 = !DILocation(line: 56, column: 9, scope: !5571)
!5585 = !DILocation(line: 56, column: 7, scope: !5571)
!5586 = !DILocation(line: 57, column: 3, scope: !5571)
!5587 = !DILocation(line: 57, column: 11, scope: !5571)
!5588 = !DILocation(line: 57, column: 10, scope: !5571)
!5589 = !DILocation(line: 57, column: 15, scope: !5571)
!5590 = !DILocation(line: 58, column: 7, scope: !5571)
!5591 = distinct !{!5591, !5586, !5590}
!5592 = !DILocation(line: 59, column: 8, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 59, column: 7)
!5594 = !DILocation(line: 59, column: 7, scope: !5593)
!5595 = !DILocation(line: 59, column: 12, scope: !5593)
!5596 = !DILocation(line: 59, column: 7, scope: !5571)
!5597 = !DILocation(line: 60, column: 11, scope: !5593)
!5598 = !DILocation(line: 60, column: 4, scope: !5593)
!5599 = !DILocation(line: 61, column: 2, scope: !5571)
!5600 = !DILocation(line: 63, column: 2, scope: !5553)
!5601 = !DILocation(line: 64, column: 1, scope: !5553)
!5602 = distinct !DISubprogram(name: "dmi_save_dev_pciaddr", scope: !3, file: !3, line: 356, type: !5603, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{null, !36, !36, !36, !36, !186, !36}
!5605 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5606)
!5606 = distinct !DILocation(line: 366, column: 8, scope: !5602)
!5607 = !DILocalVariable(name: "instance", arg: 1, scope: !5602, file: !3, line: 356, type: !36)
!5608 = !DILocation(line: 356, column: 45, scope: !5602)
!5609 = !DILocalVariable(name: "segment", arg: 2, scope: !5602, file: !3, line: 356, type: !36)
!5610 = !DILocation(line: 356, column: 59, scope: !5602)
!5611 = !DILocalVariable(name: "bus", arg: 3, scope: !5602, file: !3, line: 356, type: !36)
!5612 = !DILocation(line: 356, column: 72, scope: !5602)
!5613 = !DILocalVariable(name: "devfn", arg: 4, scope: !5602, file: !3, line: 357, type: !36)
!5614 = !DILocation(line: 357, column: 10, scope: !5602)
!5615 = !DILocalVariable(name: "name", arg: 5, scope: !5602, file: !3, line: 357, type: !186)
!5616 = !DILocation(line: 357, column: 29, scope: !5602)
!5617 = !DILocalVariable(name: "type", arg: 6, scope: !5602, file: !3, line: 357, type: !36)
!5618 = !DILocation(line: 357, column: 39, scope: !5602)
!5619 = !DILocalVariable(name: "dev", scope: !5602, file: !3, line: 359, type: !5620)
!5620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5621, size: 64)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_dev_onboard", file: !35, line: 91, size: 448, elements: !5622)
!5622 = !{!5623, !5624, !5625, !5626, !5627}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5621, file: !35, line: 92, baseType: !175, size: 320)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !5621, file: !35, line: 93, baseType: !36, size: 32, offset: 320)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !5621, file: !35, line: 94, baseType: !36, size: 32, offset: 352)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5621, file: !35, line: 95, baseType: !36, size: 32, offset: 384)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !5621, file: !35, line: 96, baseType: !36, size: 32, offset: 416)
!5628 = !DILocation(line: 359, column: 26, scope: !5602)
!5629 = !DILocation(line: 362, column: 6, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 362, column: 6)
!5631 = !DILocation(line: 362, column: 11, scope: !5630)
!5632 = !DILocation(line: 362, column: 36, scope: !5630)
!5633 = !DILocation(line: 363, column: 6, scope: !5630)
!5634 = !DILocation(line: 363, column: 14, scope: !5630)
!5635 = !DILocation(line: 363, column: 24, scope: !5630)
!5636 = !DILocation(line: 363, column: 27, scope: !5630)
!5637 = !DILocation(line: 363, column: 31, scope: !5630)
!5638 = !DILocation(line: 363, column: 39, scope: !5630)
!5639 = !DILocation(line: 363, column: 42, scope: !5630)
!5640 = !DILocation(line: 363, column: 48, scope: !5630)
!5641 = !DILocation(line: 362, column: 6, scope: !5602)
!5642 = !DILocation(line: 364, column: 3, scope: !5630)
!5643 = !DILocation(line: 366, column: 40, scope: !5602)
!5644 = !DILocation(line: 366, column: 33, scope: !5602)
!5645 = !DILocation(line: 366, column: 31, scope: !5602)
!5646 = !DILocation(line: 366, column: 46, scope: !5602)
!5647 = !DILocation(line: 366, column: 18, scope: !5602)
!5648 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5606)
!5649 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5606)
!5650 = !DILocation(line: 366, column: 8, scope: !5602)
!5651 = !DILocation(line: 366, column: 6, scope: !5602)
!5652 = !DILocation(line: 367, column: 7, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 367, column: 6)
!5654 = !DILocation(line: 367, column: 6, scope: !5602)
!5655 = !DILocation(line: 368, column: 3, scope: !5653)
!5656 = !DILocation(line: 370, column: 18, scope: !5602)
!5657 = !DILocation(line: 370, column: 2, scope: !5602)
!5658 = !DILocation(line: 370, column: 7, scope: !5602)
!5659 = !DILocation(line: 370, column: 16, scope: !5602)
!5660 = !DILocation(line: 371, column: 17, scope: !5602)
!5661 = !DILocation(line: 371, column: 2, scope: !5602)
!5662 = !DILocation(line: 371, column: 7, scope: !5602)
!5663 = !DILocation(line: 371, column: 15, scope: !5602)
!5664 = !DILocation(line: 372, column: 13, scope: !5602)
!5665 = !DILocation(line: 372, column: 2, scope: !5602)
!5666 = !DILocation(line: 372, column: 7, scope: !5602)
!5667 = !DILocation(line: 372, column: 11, scope: !5602)
!5668 = !DILocation(line: 373, column: 15, scope: !5602)
!5669 = !DILocation(line: 373, column: 2, scope: !5602)
!5670 = !DILocation(line: 373, column: 7, scope: !5602)
!5671 = !DILocation(line: 373, column: 13, scope: !5602)
!5672 = !DILocation(line: 375, column: 18, scope: !5602)
!5673 = !DILocation(line: 375, column: 9, scope: !5602)
!5674 = !DILocation(line: 375, column: 26, scope: !5602)
!5675 = !DILocation(line: 375, column: 2, scope: !5602)
!5676 = !DILocation(line: 376, column: 18, scope: !5602)
!5677 = !DILocation(line: 376, column: 2, scope: !5602)
!5678 = !DILocation(line: 376, column: 7, scope: !5602)
!5679 = !DILocation(line: 376, column: 11, scope: !5602)
!5680 = !DILocation(line: 376, column: 16, scope: !5602)
!5681 = !DILocation(line: 377, column: 27, scope: !5602)
!5682 = !DILocation(line: 377, column: 18, scope: !5602)
!5683 = !DILocation(line: 377, column: 2, scope: !5602)
!5684 = !DILocation(line: 377, column: 7, scope: !5602)
!5685 = !DILocation(line: 377, column: 11, scope: !5602)
!5686 = !DILocation(line: 377, column: 16, scope: !5602)
!5687 = !DILocation(line: 378, column: 25, scope: !5602)
!5688 = !DILocation(line: 378, column: 2, scope: !5602)
!5689 = !DILocation(line: 378, column: 7, scope: !5602)
!5690 = !DILocation(line: 378, column: 11, scope: !5602)
!5691 = !DILocation(line: 378, column: 23, scope: !5602)
!5692 = !DILocation(line: 380, column: 12, scope: !5602)
!5693 = !DILocation(line: 380, column: 17, scope: !5602)
!5694 = !DILocation(line: 380, column: 21, scope: !5602)
!5695 = !DILocation(line: 380, column: 2, scope: !5602)
!5696 = !DILocation(line: 381, column: 1, scope: !5602)
!5697 = distinct !DISubprogram(name: "list_add", scope: !5698, file: !5698, line: 84, type: !5699, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5698 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5699 = !DISubroutineType(types: !5700)
!5700 = !{null, !182, !182}
!5701 = !DILocalVariable(name: "new", arg: 1, scope: !5697, file: !5698, line: 84, type: !182)
!5702 = !DILocation(line: 84, column: 47, scope: !5697)
!5703 = !DILocalVariable(name: "head", arg: 2, scope: !5697, file: !5698, line: 84, type: !182)
!5704 = !DILocation(line: 84, column: 70, scope: !5697)
!5705 = !DILocation(line: 86, column: 13, scope: !5697)
!5706 = !DILocation(line: 86, column: 18, scope: !5697)
!5707 = !DILocation(line: 86, column: 24, scope: !5697)
!5708 = !DILocation(line: 86, column: 30, scope: !5697)
!5709 = !DILocation(line: 86, column: 2, scope: !5697)
!5710 = !DILocation(line: 87, column: 1, scope: !5697)
!5711 = distinct !DISubprogram(name: "__list_add", scope: !5698, file: !5698, line: 63, type: !5712, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{null, !182, !182, !182}
!5714 = !DILocalVariable(name: "new", arg: 1, scope: !5711, file: !5698, line: 63, type: !182)
!5715 = !DILocation(line: 63, column: 49, scope: !5711)
!5716 = !DILocalVariable(name: "prev", arg: 2, scope: !5711, file: !5698, line: 64, type: !182)
!5717 = !DILocation(line: 64, column: 28, scope: !5711)
!5718 = !DILocalVariable(name: "next", arg: 3, scope: !5711, file: !5698, line: 65, type: !182)
!5719 = !DILocation(line: 65, column: 28, scope: !5711)
!5720 = !DILocation(line: 67, column: 24, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5711, file: !5698, line: 67, column: 6)
!5722 = !DILocation(line: 67, column: 29, scope: !5721)
!5723 = !DILocation(line: 67, column: 35, scope: !5721)
!5724 = !DILocation(line: 67, column: 7, scope: !5721)
!5725 = !DILocation(line: 67, column: 6, scope: !5711)
!5726 = !DILocation(line: 68, column: 3, scope: !5721)
!5727 = !DILocation(line: 70, column: 15, scope: !5711)
!5728 = !DILocation(line: 70, column: 2, scope: !5711)
!5729 = !DILocation(line: 70, column: 8, scope: !5711)
!5730 = !DILocation(line: 70, column: 13, scope: !5711)
!5731 = !DILocation(line: 71, column: 14, scope: !5711)
!5732 = !DILocation(line: 71, column: 2, scope: !5711)
!5733 = !DILocation(line: 71, column: 7, scope: !5711)
!5734 = !DILocation(line: 71, column: 12, scope: !5711)
!5735 = !DILocation(line: 72, column: 14, scope: !5711)
!5736 = !DILocation(line: 72, column: 2, scope: !5711)
!5737 = !DILocation(line: 72, column: 7, scope: !5711)
!5738 = !DILocation(line: 72, column: 12, scope: !5711)
!5739 = !DILocation(line: 73, column: 2, scope: !5711)
!5740 = !DILocation(line: 73, column: 2, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5711, file: !5698, line: 73, column: 2)
!5742 = !DILocation(line: 73, column: 2, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5741, file: !5698, line: 73, column: 2)
!5744 = !DILocation(line: 73, column: 2, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5741, file: !5698, line: 73, column: 2)
!5746 = !DILocation(line: 74, column: 1, scope: !5711)
!5747 = distinct !DISubprogram(name: "__list_add_valid", scope: !5698, file: !5698, line: 45, type: !5748, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!498, !182, !182, !182}
!5750 = !DILocalVariable(name: "new", arg: 1, scope: !5747, file: !5698, line: 45, type: !182)
!5751 = !DILocation(line: 45, column: 55, scope: !5747)
!5752 = !DILocalVariable(name: "prev", arg: 2, scope: !5747, file: !5698, line: 46, type: !182)
!5753 = !DILocation(line: 46, column: 23, scope: !5747)
!5754 = !DILocalVariable(name: "next", arg: 3, scope: !5747, file: !5698, line: 47, type: !182)
!5755 = !DILocation(line: 47, column: 23, scope: !5747)
!5756 = !DILocation(line: 49, column: 2, scope: !5747)
!5757 = distinct !DISubprogram(name: "dmi_save_one_device", scope: !3, file: !3, line: 273, type: !5758, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{null, !36, !186}
!5760 = !DILocation(line: 11, column: 56, scope: !3711, inlinedAt: !5761)
!5761 = distinct !DILocation(line: 281, column: 8, scope: !5757)
!5762 = !DILocalVariable(name: "type", arg: 1, scope: !5757, file: !3, line: 273, type: !36)
!5763 = !DILocation(line: 273, column: 44, scope: !5757)
!5764 = !DILocalVariable(name: "name", arg: 2, scope: !5757, file: !3, line: 273, type: !186)
!5765 = !DILocation(line: 273, column: 62, scope: !5757)
!5766 = !DILocalVariable(name: "dev", scope: !5757, file: !3, line: 275, type: !174)
!5767 = !DILocation(line: 275, column: 21, scope: !5757)
!5768 = !DILocation(line: 278, column: 22, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 278, column: 6)
!5770 = !DILocation(line: 278, column: 28, scope: !5769)
!5771 = !DILocation(line: 278, column: 6, scope: !5769)
!5772 = !DILocation(line: 278, column: 6, scope: !5757)
!5773 = !DILocation(line: 279, column: 3, scope: !5769)
!5774 = !DILocation(line: 281, column: 40, scope: !5757)
!5775 = !DILocation(line: 281, column: 33, scope: !5757)
!5776 = !DILocation(line: 281, column: 31, scope: !5757)
!5777 = !DILocation(line: 281, column: 46, scope: !5757)
!5778 = !DILocation(line: 281, column: 18, scope: !5757)
!5779 = !DILocation(line: 13, column: 20, scope: !3711, inlinedAt: !5761)
!5780 = !DILocation(line: 13, column: 9, scope: !3711, inlinedAt: !5761)
!5781 = !DILocation(line: 281, column: 8, scope: !5757)
!5782 = !DILocation(line: 281, column: 6, scope: !5757)
!5783 = !DILocation(line: 282, column: 7, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 282, column: 6)
!5785 = !DILocation(line: 282, column: 6, scope: !5757)
!5786 = !DILocation(line: 283, column: 3, scope: !5784)
!5787 = !DILocation(line: 285, column: 14, scope: !5757)
!5788 = !DILocation(line: 285, column: 2, scope: !5757)
!5789 = !DILocation(line: 285, column: 7, scope: !5757)
!5790 = !DILocation(line: 285, column: 12, scope: !5757)
!5791 = !DILocation(line: 286, column: 18, scope: !5757)
!5792 = !DILocation(line: 286, column: 22, scope: !5757)
!5793 = !DILocation(line: 286, column: 9, scope: !5757)
!5794 = !DILocation(line: 286, column: 28, scope: !5757)
!5795 = !DILocation(line: 286, column: 2, scope: !5757)
!5796 = !DILocation(line: 287, column: 23, scope: !5757)
!5797 = !DILocation(line: 287, column: 27, scope: !5757)
!5798 = !DILocation(line: 287, column: 14, scope: !5757)
!5799 = !DILocation(line: 287, column: 2, scope: !5757)
!5800 = !DILocation(line: 287, column: 7, scope: !5757)
!5801 = !DILocation(line: 287, column: 12, scope: !5757)
!5802 = !DILocation(line: 288, column: 2, scope: !5757)
!5803 = !DILocation(line: 288, column: 7, scope: !5757)
!5804 = !DILocation(line: 288, column: 19, scope: !5757)
!5805 = !DILocation(line: 289, column: 12, scope: !5757)
!5806 = !DILocation(line: 289, column: 17, scope: !5757)
!5807 = !DILocation(line: 289, column: 2, scope: !5757)
!5808 = !DILocation(line: 290, column: 1, scope: !5757)
!5809 = distinct !DISubprogram(name: "list_add_tail", scope: !5698, file: !5698, line: 98, type: !5699, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5810 = !DILocalVariable(name: "new", arg: 1, scope: !5809, file: !5698, line: 98, type: !182)
!5811 = !DILocation(line: 98, column: 52, scope: !5809)
!5812 = !DILocalVariable(name: "head", arg: 2, scope: !5809, file: !5698, line: 98, type: !182)
!5813 = !DILocation(line: 98, column: 75, scope: !5809)
!5814 = !DILocation(line: 100, column: 13, scope: !5809)
!5815 = !DILocation(line: 100, column: 18, scope: !5809)
!5816 = !DILocation(line: 100, column: 24, scope: !5809)
!5817 = !DILocation(line: 100, column: 30, scope: !5809)
!5818 = !DILocation(line: 100, column: 2, scope: !5809)
!5819 = !DILocation(line: 101, column: 1, scope: !5809)
!5820 = distinct !DISubprogram(name: "print_filtered", scope: !3, file: !3, line: 518, type: !5821, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5821 = !DISubroutineType(types: !5822)
!5822 = !{!36, !211, !337, !186}
!5823 = !DILocalVariable(name: "buf", arg: 1, scope: !5820, file: !3, line: 518, type: !211)
!5824 = !DILocation(line: 518, column: 40, scope: !5820)
!5825 = !DILocalVariable(name: "len", arg: 2, scope: !5820, file: !3, line: 518, type: !337)
!5826 = !DILocation(line: 518, column: 52, scope: !5820)
!5827 = !DILocalVariable(name: "info", arg: 3, scope: !5820, file: !3, line: 518, type: !186)
!5828 = !DILocation(line: 518, column: 69, scope: !5820)
!5829 = !DILocalVariable(name: "c", scope: !5820, file: !3, line: 520, type: !36)
!5830 = !DILocation(line: 520, column: 6, scope: !5820)
!5831 = !DILocalVariable(name: "p", scope: !5820, file: !3, line: 521, type: !186)
!5832 = !DILocation(line: 521, column: 14, scope: !5820)
!5833 = !DILocation(line: 523, column: 7, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 523, column: 6)
!5835 = !DILocation(line: 523, column: 6, scope: !5820)
!5836 = !DILocation(line: 524, column: 10, scope: !5834)
!5837 = !DILocation(line: 524, column: 3, scope: !5834)
!5838 = !DILocation(line: 526, column: 11, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 526, column: 2)
!5840 = !DILocation(line: 526, column: 9, scope: !5839)
!5841 = !DILocation(line: 526, column: 7, scope: !5839)
!5842 = !DILocation(line: 526, column: 18, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 526, column: 2)
!5844 = !DILocation(line: 526, column: 17, scope: !5843)
!5845 = !DILocation(line: 526, column: 2, scope: !5839)
!5846 = !DILocation(line: 527, column: 7, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 527, column: 7)
!5848 = !DILocation(line: 527, column: 7, scope: !5843)
!5849 = !DILocation(line: 528, column: 19, scope: !5847)
!5850 = !DILocation(line: 528, column: 25, scope: !5847)
!5851 = !DILocation(line: 528, column: 23, scope: !5847)
!5852 = !DILocation(line: 528, column: 28, scope: !5847)
!5853 = !DILocation(line: 528, column: 34, scope: !5847)
!5854 = !DILocation(line: 528, column: 32, scope: !5847)
!5855 = !DILocation(line: 528, column: 44, scope: !5847)
!5856 = !DILocation(line: 528, column: 43, scope: !5847)
!5857 = !DILocation(line: 528, column: 9, scope: !5847)
!5858 = !DILocation(line: 528, column: 6, scope: !5847)
!5859 = !DILocation(line: 528, column: 4, scope: !5847)
!5860 = !DILocation(line: 530, column: 19, scope: !5847)
!5861 = !DILocation(line: 530, column: 25, scope: !5847)
!5862 = !DILocation(line: 530, column: 23, scope: !5847)
!5863 = !DILocation(line: 530, column: 28, scope: !5847)
!5864 = !DILocation(line: 530, column: 34, scope: !5847)
!5865 = !DILocation(line: 530, column: 32, scope: !5847)
!5866 = !DILocation(line: 530, column: 49, scope: !5847)
!5867 = !DILocation(line: 530, column: 48, scope: !5847)
!5868 = !DILocation(line: 530, column: 51, scope: !5847)
!5869 = !DILocation(line: 530, column: 9, scope: !5847)
!5870 = !DILocation(line: 530, column: 6, scope: !5847)
!5871 = !DILocation(line: 526, column: 22, scope: !5843)
!5872 = !DILocation(line: 526, column: 2, scope: !5843)
!5873 = distinct !{!5873, !5845, !5874}
!5874 = !DILocation(line: 530, column: 57, scope: !5839)
!5875 = !DILocation(line: 531, column: 9, scope: !5820)
!5876 = !DILocation(line: 531, column: 2, scope: !5820)
!5877 = !DILocation(line: 532, column: 1, scope: !5820)
!5878 = distinct !DISubprogram(name: "__fswab16", scope: !4557, file: !4557, line: 48, type: !5879, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{!209, !209}
!5881 = !DILocalVariable(name: "val", arg: 1, scope: !5878, file: !4557, line: 48, type: !209)
!5882 = !DILocation(line: 48, column: 57, scope: !5878)
!5883 = !DILocation(line: 53, column: 9, scope: !5878)
!5884 = !DILocation(line: 53, column: 2, scope: !5878)
!5885 = distinct !DISubprogram(name: "count_mem_devices", scope: !3, file: !3, line: 413, type: !3472, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !235)
!5886 = !DILocalVariable(name: "dm", arg: 1, scope: !5885, file: !3, line: 413, type: !222)
!5887 = !DILocation(line: 413, column: 63, scope: !5885)
!5888 = !DILocalVariable(name: "v", arg: 2, scope: !5885, file: !3, line: 413, type: !173)
!5889 = !DILocation(line: 413, column: 73, scope: !5885)
!5890 = !DILocation(line: 415, column: 6, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 415, column: 6)
!5892 = !DILocation(line: 415, column: 10, scope: !5891)
!5893 = !DILocation(line: 415, column: 15, scope: !5891)
!5894 = !DILocation(line: 415, column: 6, scope: !5885)
!5895 = !DILocation(line: 416, column: 3, scope: !5891)
!5896 = !DILocation(line: 417, column: 15, scope: !5885)
!5897 = !DILocation(line: 418, column: 1, scope: !5885)
!5898 = !DILocation(line: 64, column: 59, scope: !4637, inlinedAt: !5899)
!5899 = distinct !DILocation(line: 10, column: 9, scope: !4644, inlinedAt: !5900)
!5900 = distinct !DILocation(line: 438, column: 9, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 438, column: 9)
!5902 = !DILocation(line: 8, column: 59, scope: !4644, inlinedAt: !5900)
!5903 = !DILocation(line: 56, column: 59, scope: !4542, inlinedAt: !5904)
!5904 = distinct !DILocation(line: 15, column: 9, scope: !4549, inlinedAt: !5905)
!5905 = distinct !DILocation(line: 448, column: 16, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 448, column: 16)
!5907 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 445, column: 11)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 443, column: 11)
!5909 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 441, column: 11)
!5910 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 439, column: 6)
!5911 = !DILocation(line: 13, column: 59, scope: !4549, inlinedAt: !5905)
!5912 = !DILocation(line: 64, column: 59, scope: !4637, inlinedAt: !5913)
!5913 = distinct !DILocation(line: 10, column: 9, scope: !4644, inlinedAt: !5914)
!5914 = distinct !DILocation(line: 433, column: 26, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 433, column: 26)
!5916 = !DILocation(line: 8, column: 59, scope: !4644, inlinedAt: !5914)
!5917 = !DILocalVariable(name: "dm", arg: 1, scope: !3471, file: !3, line: 420, type: !222)
!5918 = !DILocation(line: 420, column: 62, scope: !3471)
!5919 = !DILocalVariable(name: "v", arg: 2, scope: !3471, file: !3, line: 420, type: !173)
!5920 = !DILocation(line: 420, column: 72, scope: !3471)
!5921 = !DILocalVariable(name: "d", scope: !3471, file: !3, line: 422, type: !186)
!5922 = !DILocation(line: 422, column: 14, scope: !3471)
!5923 = !DILocation(line: 422, column: 32, scope: !3471)
!5924 = !DILocation(line: 422, column: 18, scope: !3471)
!5925 = !DILocalVariable(name: "bytes", scope: !3471, file: !3, line: 424, type: !219)
!5926 = !DILocation(line: 424, column: 6, scope: !3471)
!5927 = !DILocalVariable(name: "size", scope: !3471, file: !3, line: 425, type: !208)
!5928 = !DILocation(line: 425, column: 6, scope: !3471)
!5929 = !DILocation(line: 427, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 427, column: 6)
!5931 = !DILocation(line: 427, column: 10, scope: !5930)
!5932 = !DILocation(line: 427, column: 15, scope: !5930)
!5933 = !DILocation(line: 427, column: 39, scope: !5930)
!5934 = !DILocation(line: 427, column: 42, scope: !5930)
!5935 = !DILocation(line: 427, column: 46, scope: !5930)
!5936 = !DILocation(line: 427, column: 53, scope: !5930)
!5937 = !DILocation(line: 427, column: 6, scope: !3471)
!5938 = !DILocation(line: 428, column: 3, scope: !5930)
!5939 = !DILocation(line: 429, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 429, column: 6)
!5941 = !DILocation(line: 429, column: 12, scope: !5940)
!5942 = !DILocation(line: 429, column: 9, scope: !5940)
!5943 = !DILocation(line: 429, column: 6, scope: !3471)
!5944 = !DILocation(line: 430, column: 3, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 429, column: 27)
!5946 = !DILocation(line: 431, column: 3, scope: !5945)
!5947 = !DILocation(line: 433, column: 26, scope: !5915)
!5948 = !DILocation(line: 10, column: 32, scope: !4644, inlinedAt: !5914)
!5949 = !DILocation(line: 10, column: 22, scope: !4644, inlinedAt: !5914)
!5950 = !DILocation(line: 66, column: 25, scope: !4637, inlinedAt: !5913)
!5951 = !DILocation(line: 66, column: 24, scope: !4637, inlinedAt: !5913)
!5952 = !DILocation(line: 433, column: 26, scope: !3471)
!5953 = !DILocation(line: 433, column: 2, scope: !3471)
!5954 = !DILocation(line: 433, column: 13, scope: !3471)
!5955 = !DILocation(line: 433, column: 17, scope: !3471)
!5956 = !DILocation(line: 433, column: 24, scope: !3471)
!5957 = !DILocation(line: 434, column: 37, scope: !3471)
!5958 = !DILocation(line: 434, column: 41, scope: !3471)
!5959 = !DILocation(line: 434, column: 26, scope: !3471)
!5960 = !DILocation(line: 434, column: 2, scope: !3471)
!5961 = !DILocation(line: 434, column: 13, scope: !3471)
!5962 = !DILocation(line: 434, column: 17, scope: !3471)
!5963 = !DILocation(line: 434, column: 24, scope: !3471)
!5964 = !DILocation(line: 435, column: 35, scope: !3471)
!5965 = !DILocation(line: 435, column: 39, scope: !3471)
!5966 = !DILocation(line: 435, column: 24, scope: !3471)
!5967 = !DILocation(line: 435, column: 2, scope: !3471)
!5968 = !DILocation(line: 435, column: 13, scope: !3471)
!5969 = !DILocation(line: 435, column: 17, scope: !3471)
!5970 = !DILocation(line: 435, column: 22, scope: !3471)
!5971 = !DILocation(line: 436, column: 24, scope: !3471)
!5972 = !DILocation(line: 436, column: 2, scope: !3471)
!5973 = !DILocation(line: 436, column: 13, scope: !3471)
!5974 = !DILocation(line: 436, column: 17, scope: !3471)
!5975 = !DILocation(line: 436, column: 22, scope: !3471)
!5976 = !DILocation(line: 438, column: 9, scope: !5901)
!5977 = !DILocation(line: 10, column: 32, scope: !4644, inlinedAt: !5900)
!5978 = !DILocation(line: 10, column: 22, scope: !4644, inlinedAt: !5900)
!5979 = !DILocation(line: 66, column: 25, scope: !4637, inlinedAt: !5899)
!5980 = !DILocation(line: 66, column: 24, scope: !4637, inlinedAt: !5899)
!5981 = !DILocation(line: 438, column: 9, scope: !3471)
!5982 = !DILocation(line: 438, column: 7, scope: !3471)
!5983 = !DILocation(line: 439, column: 6, scope: !5910)
!5984 = !DILocation(line: 439, column: 11, scope: !5910)
!5985 = !DILocation(line: 439, column: 6, scope: !3471)
!5986 = !DILocation(line: 440, column: 9, scope: !5910)
!5987 = !DILocation(line: 440, column: 3, scope: !5910)
!5988 = !DILocation(line: 441, column: 11, scope: !5909)
!5989 = !DILocation(line: 441, column: 16, scope: !5909)
!5990 = !DILocation(line: 441, column: 11, scope: !5910)
!5991 = !DILocation(line: 442, column: 9, scope: !5909)
!5992 = !DILocation(line: 442, column: 3, scope: !5909)
!5993 = !DILocation(line: 443, column: 11, scope: !5908)
!5994 = !DILocation(line: 443, column: 16, scope: !5908)
!5995 = !DILocation(line: 443, column: 11, scope: !5909)
!5996 = !DILocation(line: 444, column: 17, scope: !5908)
!5997 = !DILocation(line: 444, column: 22, scope: !5908)
!5998 = !DILocation(line: 444, column: 11, scope: !5908)
!5999 = !DILocation(line: 444, column: 32, scope: !5908)
!6000 = !DILocation(line: 444, column: 9, scope: !5908)
!6001 = !DILocation(line: 444, column: 3, scope: !5908)
!6002 = !DILocation(line: 445, column: 11, scope: !5907)
!6003 = !DILocation(line: 445, column: 16, scope: !5907)
!6004 = !DILocation(line: 445, column: 26, scope: !5907)
!6005 = !DILocation(line: 445, column: 29, scope: !5907)
!6006 = !DILocation(line: 445, column: 33, scope: !5907)
!6007 = !DILocation(line: 445, column: 40, scope: !5907)
!6008 = !DILocation(line: 445, column: 11, scope: !5908)
!6009 = !DILocation(line: 446, column: 16, scope: !5907)
!6010 = !DILocation(line: 446, column: 11, scope: !5907)
!6011 = !DILocation(line: 446, column: 21, scope: !5907)
!6012 = !DILocation(line: 446, column: 9, scope: !5907)
!6013 = !DILocation(line: 446, column: 3, scope: !5907)
!6014 = !DILocation(line: 448, column: 16, scope: !5906)
!6015 = !DILocation(line: 15, column: 32, scope: !4549, inlinedAt: !5905)
!6016 = !DILocation(line: 15, column: 22, scope: !4549, inlinedAt: !5905)
!6017 = !DILocation(line: 58, column: 25, scope: !4542, inlinedAt: !5904)
!6018 = !DILocation(line: 58, column: 24, scope: !4542, inlinedAt: !5904)
!6019 = !DILocation(line: 448, column: 16, scope: !5907)
!6020 = !DILocation(line: 448, column: 11, scope: !5907)
!6021 = !DILocation(line: 448, column: 47, scope: !5907)
!6022 = !DILocation(line: 448, column: 9, scope: !5907)
!6023 = !DILocation(line: 450, column: 24, scope: !3471)
!6024 = !DILocation(line: 450, column: 2, scope: !3471)
!6025 = !DILocation(line: 450, column: 13, scope: !3471)
!6026 = !DILocation(line: 450, column: 17, scope: !3471)
!6027 = !DILocation(line: 450, column: 22, scope: !3471)
!6028 = !DILocation(line: 451, column: 4, scope: !3471)
!6029 = !DILocation(line: 452, column: 1, scope: !3471)
