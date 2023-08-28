; ModuleID = '../bcout/drivers/ptp/ptp_clock.llvm.bc'
source_filename = "drivers/ptp/ptp_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_ptp_init4:\09\09\09"
module asm ".long\09ptp_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.posix_clock_operations = type { %struct.module*, i32 (%struct.posix_clock*, %struct.__kernel_timex*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i64 (%struct.posix_clock*, i32, i64)*, i32 (%struct.posix_clock*, i32)*, i32 (%struct.posix_clock*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.posix_clock*)*, i64 (%struct.posix_clock*, i32, i8*, i64)* }
%struct.module = type opaque
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, %struct.device*, %struct.rw_semaphore, i8 }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.89, %struct.list_head, %struct.list_head, %union.anon.90 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.page = type { i64, %union.anon.2, %union.anon.79, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.79 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.80, i32 }
%union.anon.80 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.72, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, i32, [10 x %struct.atomic_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.24, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.25, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.26, %union.anon.30, %struct.key_restriction* }
%union.anon.24 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.25 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.26 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.27, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.27 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.30 = type { %union.key_payload }
%union.key_payload = type { [4 x i8*] }
%struct.key_restriction = type { i32 (%struct.key*, %struct.key_type*, %union.key_payload*, %struct.key*)*, %struct.key*, %struct.key_type* }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.refcount_struct, %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.35, %union.anon.36, i32 }
%struct.request_queue = type opaque
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type { %struct.pmu*, %struct.raw_spinlock, %struct.mutex, %struct.list_head, %struct.perf_event_groups, %struct.perf_event_groups, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, %struct.refcount_struct, %struct.task_struct*, i64, i64, %struct.perf_event_context*, i64, i64, i32, i8*, %struct.callback_head }
%struct.pmu = type { %struct.list_head, %struct.module*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, i8*, i32, i32, i32*, %struct.perf_cpu_context*, %struct.atomic_t, i32, i32, i32, void (%struct.pmu*)*, void (%struct.pmu*)*, i32 (%struct.perf_event*)*, void (%struct.perf_event*, %struct.mm_struct*)*, void (%struct.perf_event*, %struct.mm_struct*)*, i32 (%struct.perf_event*, i32)*, void (%struct.perf_event*, i32)*, void (%struct.perf_event*, i32)*, void (%struct.perf_event*, i32)*, void (%struct.perf_event*)*, void (%struct.pmu*, i32)*, i32 (%struct.pmu*)*, void (%struct.pmu*)*, i32 (%struct.perf_event*)*, void (%struct.perf_event_context*, i1)*, %struct.kmem_cache*, void (%struct.perf_event_context*, %struct.perf_event_context*)*, i8* (%struct.perf_event*, i8**, i32, i1)*, void (i8*)*, i64 (%struct.perf_event*, %struct.perf_output_handle*, i64)*, i32 (%struct.list_head*)*, void (%struct.perf_event*)*, i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)*, i32 (%struct.perf_event*, i64)* }
%struct.perf_cpu_context = type { %struct.perf_event_context, %struct.perf_event_context*, i32, i32, %struct.raw_spinlock, %struct.hrtimer, i64, i32, i32, i32, i32, %struct.perf_event**, [2 x %struct.perf_event*] }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, %struct.perf_event*, %struct.pmu*, i8*, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, %struct.perf_event_context*, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, %struct.perf_event*, i32, i32, %struct.list_head, %struct.task_struct*, %struct.mutex, %struct.atomic_t, %struct.perf_buffer*, %struct.list_head, i64, i32, %struct.wait_queue_head, %struct.fasync_struct*, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, %struct.perf_addr_filter_range*, i64, %struct.perf_event*, void (%struct.perf_event*)*, %struct.callback_head, %struct.pid_namespace*, i64, i64 ()*, void (%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*)*, i8*, %struct.list_head }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.49, i64, i64, i64, %union.anon.50, i32, %union.anon.51, %union.anon.52, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32 }
%union.anon.49 = type { i64 }
%union.anon.50 = type { i32 }
%union.anon.51 = type { i64 }
%union.anon.52 = type { i64 }
%struct.hw_perf_event = type { %union.anon.53, %struct.task_struct*, i8*, i64, i32, %struct.local64_t, i64, %union.anon.60, i64, i64, i64, i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { i64, %struct.local64_t }
%struct.perf_buffer = type opaque
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.irq_work = type { %union.anon.63, void (%struct.irq_work*)* }
%union.anon.63 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.64, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.64 = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.perf_addr_filter_range = type { i64, i64 }
%struct.perf_sample_data = type { i64, %struct.perf_raw_record*, %struct.perf_branch_stack*, i64, i64, i64, %union.perf_mem_data_src, i64, i64, %struct.anon.68, i64, i64, i64, %struct.anon.69, %struct.perf_callchain_entry*, i64, %struct.perf_regs, %struct.perf_regs, i64, i64, i64, [8 x i8] }
%struct.perf_raw_record = type { %struct.perf_raw_frag, i32 }
%struct.perf_raw_frag = type <{ %union.anon.66, i64 (i8*, i8*, i64, i64)*, i8*, i32 }>
%union.anon.66 = type { %struct.perf_raw_frag* }
%struct.perf_branch_stack = type { i64, i64, [0 x %struct.perf_branch_entry] }
%struct.perf_branch_entry = type { i64, i64, i64 }
%union.perf_mem_data_src = type { i64 }
%struct.anon.68 = type { i32, i32 }
%struct.anon.69 = type { i32, i32 }
%struct.perf_callchain_entry = type { i64, [0 x i64] }
%struct.perf_regs = type { i64, %struct.pt_regs* }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.perf_output_handle = type { %struct.perf_event*, %struct.perf_buffer*, i64, i64, i64, %union.anon.70, i32 }
%union.anon.70 = type { i8* }
%struct.perf_event_groups = type { %struct.rb_root, i64 }
%struct.rseq = type { i32, i32, %union.anon.71, i32, [12 x i8] }
%union.anon.71 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.72 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.73, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.76 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i64, i64 }
%union.anon.76 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.atomic_t, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, %struct.list_head, %struct.key*, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [10 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [48 x i8] }
%struct.anon.23 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.32, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.89 = type { %struct.list_head }
%union.anon.90 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.86, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.82 = type { %struct.callback_head }
%union.anon.83 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.86 = type { %struct.pipe_inode_info* }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.48, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.48 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.84 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.84 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
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
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, %struct.ptp_clock_info*, i32, i32, %struct.pps_device*, i64, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, %struct.device_attribute*, %struct.attribute**, %struct.attribute_group, [2 x %struct.attribute_group*], %struct.kthread_worker*, %struct.kthread_delayed_work }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, i8*, %struct.cdev, %struct.device*, %struct.fasync_struct*, %struct.spinlock }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, void (%struct.pps_device*, i32, i8*)*, %struct.module*, %struct.device* }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.ptp_clock_info = type { %struct.module*, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.ptp_pin_desc*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, i32, i32, i32)*, i64 (%struct.ptp_clock_info*)* }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.ptp_clock_request = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.92, %struct.ptp_clock_time, i32, i32, %union.anon.93 }
%union.anon.92 = type { %struct.ptp_clock_time }
%union.anon.93 = type { %struct.ptp_clock_time }
%struct.ptp_clock_event = type { i32, i32, %union.anon.94 }
%union.anon.94 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i8 }

@ptp_devt = internal global i32 0, align 4, !dbg !0
@ptp_clocks_map = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !4723
@ptp_clock_ops = internal global %struct.posix_clock_operations { %struct.module* null, i32 (%struct.posix_clock*, %struct.__kernel_timex*)* @ptp_clock_adjtime, i32 (%struct.posix_clock*, %struct.timespec64*)* @ptp_clock_gettime, i32 (%struct.posix_clock*, %struct.timespec64*)* @ptp_clock_getres, i32 (%struct.posix_clock*, %struct.timespec64*)* @ptp_clock_settime, i64 (%struct.posix_clock*, i32, i64)* @ptp_ioctl, i32 (%struct.posix_clock*, i32)* @ptp_open, i32 (%struct.posix_clock*, %struct.file*, %struct.poll_table_struct*)* @ptp_poll, i32 (%struct.posix_clock*)* null, i64 (%struct.posix_clock*, i32, i8*, i64)* @ptp_read }, align 8, !dbg !4728
@ptp_clock_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4687
@.str = private unnamed_addr constant [16 x i8] c"&ptp->tsevq_mux\00", align 1
@ptp_clock_register.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4692
@.str.2 = private unnamed_addr constant [17 x i8] c"&ptp->pincfg_mux\00", align 1
@ptp_clock_register.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4694
@.str.4 = private unnamed_addr constant [14 x i8] c"&ptp->tsev_wq\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ptp%d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\013failed to create ptp aux_worker %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\013failed to register pps source\0A\00", align 1
@ptp_class = internal global %struct.class* null, align 8, !dbg !4721
@.str.8 = private unnamed_addr constant [32 x i8] c"\013failed to create posix clock\0A\00", align 1
@__UNIQUE_ID___addressable_ptp_init250 = internal global i8* bitcast (i32 ()* @ptp_init to i8*), section ".discard.addressable", align 8, !dbg !4696
@__exitcall_ptp_exit = internal global void ()* @ptp_exit, section ".exitcall.exit", align 8, !dbg !4698
@__UNIQUE_ID_author251 = internal constant [54 x i8] c"ptp.author=Richard Cochran <richardcochran@gmail.com>\00", section ".modinfo", align 1, !dbg !4703
@__UNIQUE_ID_description252 = internal constant [35 x i8] c"ptp.description=PTP clocks support\00", section ".modinfo", align 1, !dbg !4708
@__UNIQUE_ID_file253 = internal constant [25 x i8] c"ptp.file=drivers/ptp/ptp\00", section ".modinfo", align 1, !dbg !4713
@__UNIQUE_ID_license254 = internal constant [16 x i8] c"ptp.license=GPL\00", section ".modinfo", align 1, !dbg !4718
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@ptp_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4730
@.str.10 = private unnamed_addr constant [4 x i8] c"ptp\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\013ptp: failed to allocate class\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\013ptp: failed to allocate device region\0A\00", align 1
@ptp_groups = external dso_local global [0 x %struct.attribute_group*], align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"\016PTP clock support registered\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @ptp_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_ptp_init250 to i8*), i8* bitcast (void ()** @__exitcall_ptp_exit to i8*), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_author251, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_description252, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_file253, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__UNIQUE_ID_license254, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @scaled_ppm_to_ppb(i64 %ppm) #0 !dbg !4741 {
entry:
  %ppm.addr = alloca i64, align 8
  %ppb = alloca i64, align 8
  store i64 %ppm, i64* %ppm.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ppm.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.declare(metadata i64* %ppb, metadata !4746, metadata !DIExpression()), !dbg !4747
  %0 = load i64, i64* %ppm.addr, align 8, !dbg !4748
  %add = add i64 1, %0, !dbg !4749
  store i64 %add, i64* %ppb, align 8, !dbg !4747
  %1 = load i64, i64* %ppb, align 8, !dbg !4750
  %mul = mul i64 %1, 125, !dbg !4750
  store i64 %mul, i64* %ppb, align 8, !dbg !4750
  %2 = load i64, i64* %ppb, align 8, !dbg !4751
  %shr = ashr i64 %2, 13, !dbg !4751
  store i64 %shr, i64* %ppb, align 8, !dbg !4751
  %3 = load i64, i64* %ppb, align 8, !dbg !4752
  %conv = trunc i64 %3 to i32, !dbg !4753
  ret i32 %conv, !dbg !4754
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info* %info, %struct.device* %parent) #0 !dbg !4689 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4755, metadata !DIExpression()), !dbg !4761
  %retval = alloca %struct.ptp_clock*, align 8
  %info.addr = alloca %struct.ptp_clock_info*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %err = alloca i32, align 4
  %index = alloca i32, align 4
  %major = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  %pps47 = alloca %struct.pps_source_info, align 8
  store %struct.ptp_clock_info* %info, %struct.ptp_clock_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %info.addr, metadata !4764, metadata !DIExpression()), !dbg !4765
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !4768, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4770, metadata !DIExpression()), !dbg !4771
  store i32 0, i32* %err, align 4, !dbg !4771
  call void @llvm.dbg.declare(metadata i32* %index, metadata !4772, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.declare(metadata i32* %major, metadata !4774, metadata !DIExpression()), !dbg !4775
  %0 = load i32, i32* @ptp_devt, align 4, !dbg !4776
  %shr = lshr i32 %0, 20, !dbg !4776
  store i32 %shr, i32* %major, align 4, !dbg !4775
  %1 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info.addr, align 8, !dbg !4777
  %n_alarm = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %1, i32 0, i32 3, !dbg !4779
  %2 = load i32, i32* %n_alarm, align 4, !dbg !4779
  %cmp = icmp sgt i32 %2, 4, !dbg !4780
  br i1 %cmp, label %if.then, label %if.end, !dbg !4781

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #11, !dbg !4782
  %3 = bitcast i8* %call to %struct.ptp_clock*, !dbg !4782
  store %struct.ptp_clock* %3, %struct.ptp_clock** %retval, align 8, !dbg !4783
  br label %return, !dbg !4783

if.end:                                           ; preds = %entry
  store i32 -12, i32* %err, align 4, !dbg !4784
  %call1 = call i8* @kzalloc(i64 5296, i32 3264) #11, !dbg !4785
  %4 = bitcast i8* %call1 to %struct.ptp_clock*, !dbg !4785
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !4786
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4787
  %cmp2 = icmp eq %struct.ptp_clock* %5, null, !dbg !4789
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4790

if.then3:                                         ; preds = %if.end
  br label %no_memory, !dbg !4791

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @ida_alloc_range(%struct.ida* @ptp_clocks_map, i32 0, i32 1048575, i32 3264) #11, !dbg !4792
  store i32 %call5, i32* %index, align 4, !dbg !4793
  %6 = load i32, i32* %index, align 4, !dbg !4794
  %cmp6 = icmp slt i32 %6, 0, !dbg !4796
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4797

if.then7:                                         ; preds = %if.end4
  %7 = load i32, i32* %index, align 4, !dbg !4798
  store i32 %7, i32* %err, align 4, !dbg !4800
  br label %no_slot, !dbg !4801

if.end8:                                          ; preds = %if.end4
  %8 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4802
  %clock = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %8, i32 0, i32 0, !dbg !4803
  %ops = getelementptr inbounds %struct.posix_clock, %struct.posix_clock* %clock, i32 0, i32 0, !dbg !4804
  %9 = bitcast %struct.posix_clock_operations* %ops to i8*, !dbg !4805
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.posix_clock_operations* @ptp_clock_ops to i8*), i64 80, i1 false), !dbg !4805
  %10 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info.addr, align 8, !dbg !4806
  %11 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4807
  %info9 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %11, i32 0, i32 2, !dbg !4808
  store %struct.ptp_clock_info* %10, %struct.ptp_clock_info** %info9, align 8, !dbg !4809
  %12 = load i32, i32* %major, align 4, !dbg !4810
  %shl = shl i32 %12, 20, !dbg !4810
  %13 = load i32, i32* %index, align 4, !dbg !4810
  %or = or i32 %shl, %13, !dbg !4810
  %14 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4811
  %devid = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %14, i32 0, i32 3, !dbg !4812
  store i32 %or, i32* %devid, align 8, !dbg !4813
  %15 = load i32, i32* %index, align 4, !dbg !4814
  %16 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4815
  %index10 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %16, i32 0, i32 4, !dbg !4816
  store i32 %15, i32* %index10, align 4, !dbg !4817
  br label %do.body, !dbg !4818

do.body:                                          ; preds = %if.end8
  %17 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4819
  %tsevq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %17, i32 0, i32 7, !dbg !4819
  %lock = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %tsevq, i32 0, i32 3, !dbg !4819
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4820
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !4821
  %rlock.i = bitcast %union.anon.1* %19 to %struct.raw_spinlock*, !dbg !4821
  %20 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4819
  %tsevq12 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %20, i32 0, i32 7, !dbg !4819
  %lock13 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %tsevq12, i32 0, i32 3, !dbg !4819
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4819
  %rlock = bitcast %union.anon.1* %21 to %struct.raw_spinlock*, !dbg !4819
  %22 = bitcast %struct.spinlock* %lock13 to i8*, !dbg !4819
  %23 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 1 %23, i64 0, i1 false), !dbg !4819
  br label %do.end, !dbg !4819

do.end:                                           ; preds = %do.body
  br label %do.body14, !dbg !4822

do.body14:                                        ; preds = %do.end
  %24 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4823
  %tsevq_mux = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %24, i32 0, i32 8, !dbg !4823
  call void @__mutex_init(%struct.mutex* %tsevq_mux, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @ptp_clock_register.__key) #11, !dbg !4823
  br label %do.end15, !dbg !4823

do.end15:                                         ; preds = %do.body14
  br label %do.body16, !dbg !4825

do.body16:                                        ; preds = %do.end15
  %25 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4826
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %25, i32 0, i32 9, !dbg !4826
  call void @__mutex_init(%struct.mutex* %pincfg_mux, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @ptp_clock_register.__key.1) #11, !dbg !4826
  br label %do.end17, !dbg !4826

do.end17:                                         ; preds = %do.body16
  br label %do.body18, !dbg !4828

do.body18:                                        ; preds = %do.end17
  %26 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4829
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %26, i32 0, i32 10, !dbg !4829
  call void @__init_waitqueue_head(%struct.wait_queue_head* %tsev_wq, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @ptp_clock_register.__key.3) #11, !dbg !4829
  br label %do.end19, !dbg !4829

do.end19:                                         ; preds = %do.body18
  %27 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4831
  %info20 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %27, i32 0, i32 2, !dbg !4833
  %28 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info20, align 8, !dbg !4833
  %do_aux_work = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %28, i32 0, i32 19, !dbg !4834
  %29 = load i64 (%struct.ptp_clock_info*)*, i64 (%struct.ptp_clock_info*)** %do_aux_work, align 8, !dbg !4834
  %tobool = icmp ne i64 (%struct.ptp_clock_info*)* %29, null, !dbg !4831
  br i1 %tobool, label %if.then21, label %if.end40, !dbg !4835

if.then21:                                        ; preds = %do.end19
  br label %do.body22, !dbg !4836

do.body22:                                        ; preds = %if.then21
  br label %do.body23, !dbg !4838

do.body23:                                        ; preds = %do.body22
  %30 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4840
  %aux_work = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %30, i32 0, i32 17, !dbg !4840
  %work = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %aux_work, i32 0, i32 0, !dbg !4840
  %31 = bitcast %struct.kthread_work* %work to i8*, !dbg !4840
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 40, i1 false), !dbg !4840
  %32 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4840
  %aux_work24 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %32, i32 0, i32 17, !dbg !4840
  %work25 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %aux_work24, i32 0, i32 0, !dbg !4840
  %node = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work25, i32 0, i32 0, !dbg !4840
  call void @INIT_LIST_HEAD(%struct.list_head* %node) #11, !dbg !4840
  %33 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4840
  %aux_work26 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %33, i32 0, i32 17, !dbg !4840
  %work27 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %aux_work26, i32 0, i32 0, !dbg !4840
  %func = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work27, i32 0, i32 1, !dbg !4840
  store void (%struct.kthread_work*)* @ptp_aux_kworker, void (%struct.kthread_work*)** %func, align 8, !dbg !4840
  br label %do.end28, !dbg !4840

do.end28:                                         ; preds = %do.body23
  %34 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4838
  %aux_work29 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %34, i32 0, i32 17, !dbg !4838
  %timer = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %aux_work29, i32 0, i32 1, !dbg !4838
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @kthread_delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #11, !dbg !4838
  br label %do.end30, !dbg !4838

do.end30:                                         ; preds = %do.end28
  %35 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4842
  %index31 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %35, i32 0, i32 4, !dbg !4843
  %36 = load i32, i32* %index31, align 4, !dbg !4843
  %call32 = call %struct.kthread_worker* (i32, i8*, ...) @kthread_create_worker(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %36) #11, !dbg !4844
  %37 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4845
  %kworker = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %37, i32 0, i32 16, !dbg !4846
  store %struct.kthread_worker* %call32, %struct.kthread_worker** %kworker, align 8, !dbg !4847
  %38 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4848
  %kworker33 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %38, i32 0, i32 16, !dbg !4850
  %39 = load %struct.kthread_worker*, %struct.kthread_worker** %kworker33, align 8, !dbg !4850
  %40 = bitcast %struct.kthread_worker* %39 to i8*, !dbg !4848
  %call34 = call zeroext i1 @IS_ERR(i8* %40) #11, !dbg !4851
  br i1 %call34, label %if.then35, label %if.end39, !dbg !4852

if.then35:                                        ; preds = %do.end30
  %41 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4853
  %kworker36 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %41, i32 0, i32 16, !dbg !4855
  %42 = load %struct.kthread_worker*, %struct.kthread_worker** %kworker36, align 8, !dbg !4855
  %43 = bitcast %struct.kthread_worker* %42 to i8*, !dbg !4853
  %call37 = call i64 @PTR_ERR(i8* %43) #11, !dbg !4856
  %conv = trunc i64 %call37 to i32, !dbg !4856
  store i32 %conv, i32* %err, align 4, !dbg !4857
  %44 = load i32, i32* %err, align 4, !dbg !4858
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %44) #12, !dbg !4858
  br label %kworker_err, !dbg !4859

if.end39:                                         ; preds = %do.end30
  br label %if.end40, !dbg !4860

if.end40:                                         ; preds = %if.end39, %do.end19
  %45 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4861
  %call41 = call i32 @ptp_populate_pin_groups(%struct.ptp_clock* %45) #11, !dbg !4862
  store i32 %call41, i32* %err, align 4, !dbg !4863
  %46 = load i32, i32* %err, align 4, !dbg !4864
  %tobool42 = icmp ne i32 %46, 0, !dbg !4864
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !4866

if.then43:                                        ; preds = %if.end40
  br label %no_pin_groups, !dbg !4867

if.end44:                                         ; preds = %if.end40
  %47 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info.addr, align 8, !dbg !4868
  %pps = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %47, i32 0, i32 7, !dbg !4870
  %48 = load i32, i32* %pps, align 4, !dbg !4870
  %tobool45 = icmp ne i32 %48, 0, !dbg !4868
  br i1 %tobool45, label %if.then46, label %if.end59, !dbg !4871

if.then46:                                        ; preds = %if.end44
  call void @llvm.dbg.declare(metadata %struct.pps_source_info* %pps47, metadata !4872, metadata !DIExpression()), !dbg !4874
  %49 = bitcast %struct.pps_source_info* %pps47 to i8*, !dbg !4875
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 96, i1 false), !dbg !4875
  %name = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %pps47, i32 0, i32 0, !dbg !4876
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !4877
  %50 = load i32, i32* %index, align 4, !dbg !4878
  %call48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %50) #11, !dbg !4879
  %mode = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %pps47, i32 0, i32 2, !dbg !4880
  store i32 4369, i32* %mode, align 8, !dbg !4881
  %51 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info.addr, align 8, !dbg !4882
  %owner = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %51, i32 0, i32 0, !dbg !4883
  %52 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4883
  %owner49 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %pps47, i32 0, i32 4, !dbg !4884
  store %struct.module* %52, %struct.module** %owner49, align 8, !dbg !4885
  %call50 = call %struct.pps_device* @pps_register_source(%struct.pps_source_info* %pps47, i32 17) #11, !dbg !4886
  %53 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4887
  %pps_source = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %53, i32 0, i32 5, !dbg !4888
  store %struct.pps_device* %call50, %struct.pps_device** %pps_source, align 8, !dbg !4889
  %54 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4890
  %pps_source51 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %54, i32 0, i32 5, !dbg !4892
  %55 = load %struct.pps_device*, %struct.pps_device** %pps_source51, align 8, !dbg !4892
  %56 = bitcast %struct.pps_device* %55 to i8*, !dbg !4890
  %call52 = call zeroext i1 @IS_ERR(i8* %56) #11, !dbg !4893
  br i1 %call52, label %if.then53, label %if.end58, !dbg !4894

if.then53:                                        ; preds = %if.then46
  %57 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4895
  %pps_source54 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %57, i32 0, i32 5, !dbg !4897
  %58 = load %struct.pps_device*, %struct.pps_device** %pps_source54, align 8, !dbg !4897
  %59 = bitcast %struct.pps_device* %58 to i8*, !dbg !4895
  %call55 = call i64 @PTR_ERR(i8* %59) #11, !dbg !4898
  %conv56 = trunc i64 %call55 to i32, !dbg !4898
  store i32 %conv56, i32* %err, align 4, !dbg !4899
  %call57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !4900
  br label %no_pps, !dbg !4901

if.end58:                                         ; preds = %if.then46
  br label %if.end59, !dbg !4902

if.end59:                                         ; preds = %if.end58, %if.end44
  %60 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4903
  %dev = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %60, i32 0, i32 1, !dbg !4904
  call void @device_initialize(%struct.device* %dev) #11, !dbg !4905
  %61 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4906
  %devid60 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %61, i32 0, i32 3, !dbg !4907
  %62 = load i32, i32* %devid60, align 8, !dbg !4907
  %63 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4908
  %dev61 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %63, i32 0, i32 1, !dbg !4909
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev61, i32 0, i32 25, !dbg !4910
  store i32 %62, i32* %devt, align 8, !dbg !4911
  %64 = load %struct.class*, %struct.class** @ptp_class, align 8, !dbg !4912
  %65 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4913
  %dev62 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %65, i32 0, i32 1, !dbg !4914
  %class = getelementptr inbounds %struct.device, %struct.device* %dev62, i32 0, i32 29, !dbg !4915
  store %struct.class* %64, %struct.class** %class, align 8, !dbg !4916
  %66 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4917
  %67 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4918
  %dev63 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %67, i32 0, i32 1, !dbg !4919
  %parent64 = getelementptr inbounds %struct.device, %struct.device* %dev63, i32 0, i32 1, !dbg !4920
  store %struct.device* %66, %struct.device** %parent64, align 8, !dbg !4921
  %68 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4922
  %pin_attr_groups = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %68, i32 0, i32 15, !dbg !4923
  %arraydecay65 = getelementptr inbounds [2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* %pin_attr_groups, i64 0, i64 0, !dbg !4922
  %69 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4924
  %dev66 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %69, i32 0, i32 1, !dbg !4925
  %groups = getelementptr inbounds %struct.device, %struct.device* %dev66, i32 0, i32 30, !dbg !4926
  store %struct.attribute_group** %arraydecay65, %struct.attribute_group*** %groups, align 8, !dbg !4927
  %70 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4928
  %dev67 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %70, i32 0, i32 1, !dbg !4929
  %release = getelementptr inbounds %struct.device, %struct.device* %dev67, i32 0, i32 31, !dbg !4930
  store void (%struct.device*)* @ptp_clock_release, void (%struct.device*)** %release, align 8, !dbg !4931
  %71 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4932
  %dev68 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %71, i32 0, i32 1, !dbg !4933
  %72 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4934
  %73 = bitcast %struct.ptp_clock* %72 to i8*, !dbg !4934
  call void @dev_set_drvdata(%struct.device* %dev68, i8* %73) #11, !dbg !4935
  %74 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4936
  %dev69 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %74, i32 0, i32 1, !dbg !4937
  %75 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4938
  %index70 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %75, i32 0, i32 4, !dbg !4939
  %76 = load i32, i32* %index70, align 4, !dbg !4939
  %call71 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %76) #11, !dbg !4940
  %77 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4941
  %clock72 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %77, i32 0, i32 0, !dbg !4942
  %78 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4943
  %dev73 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %78, i32 0, i32 1, !dbg !4944
  %call74 = call i32 @posix_clock_register(%struct.posix_clock* %clock72, %struct.device* %dev73) #11, !dbg !4945
  store i32 %call74, i32* %err, align 4, !dbg !4946
  %79 = load i32, i32* %err, align 4, !dbg !4947
  %tobool75 = icmp ne i32 %79, 0, !dbg !4947
  br i1 %tobool75, label %if.then76, label %if.end78, !dbg !4949

if.then76:                                        ; preds = %if.end59
  %call77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !4950
  br label %no_clock, !dbg !4952

if.end78:                                         ; preds = %if.end59
  %80 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4953
  store %struct.ptp_clock* %80, %struct.ptp_clock** %retval, align 8, !dbg !4954
  br label %return, !dbg !4954

no_clock:                                         ; preds = %if.then76
  call void @llvm.dbg.label(metadata !4955), !dbg !4956
  %81 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4957
  %pps_source79 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %81, i32 0, i32 5, !dbg !4959
  %82 = load %struct.pps_device*, %struct.pps_device** %pps_source79, align 8, !dbg !4959
  %tobool80 = icmp ne %struct.pps_device* %82, null, !dbg !4957
  br i1 %tobool80, label %if.then81, label %if.end83, !dbg !4960

if.then81:                                        ; preds = %no_clock
  %83 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4961
  %pps_source82 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %83, i32 0, i32 5, !dbg !4962
  %84 = load %struct.pps_device*, %struct.pps_device** %pps_source82, align 8, !dbg !4962
  call void @pps_unregister_source(%struct.pps_device* %84) #11, !dbg !4963
  br label %if.end83, !dbg !4963

if.end83:                                         ; preds = %if.then81, %no_clock
  br label %no_pps, !dbg !4959

no_pps:                                           ; preds = %if.end83, %if.then53
  call void @llvm.dbg.label(metadata !4964), !dbg !4965
  %85 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4966
  call void @ptp_cleanup_pin_groups(%struct.ptp_clock* %85) #11, !dbg !4967
  br label %no_pin_groups, !dbg !4967

no_pin_groups:                                    ; preds = %no_pps, %if.then43
  call void @llvm.dbg.label(metadata !4968), !dbg !4969
  %86 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4970
  %kworker84 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %86, i32 0, i32 16, !dbg !4972
  %87 = load %struct.kthread_worker*, %struct.kthread_worker** %kworker84, align 8, !dbg !4972
  %tobool85 = icmp ne %struct.kthread_worker* %87, null, !dbg !4970
  br i1 %tobool85, label %if.then86, label %if.end88, !dbg !4973

if.then86:                                        ; preds = %no_pin_groups
  %88 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4974
  %kworker87 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %88, i32 0, i32 16, !dbg !4975
  %89 = load %struct.kthread_worker*, %struct.kthread_worker** %kworker87, align 8, !dbg !4975
  call void @kthread_destroy_worker(%struct.kthread_worker* %89) #11, !dbg !4976
  br label %if.end88, !dbg !4976

if.end88:                                         ; preds = %if.then86, %no_pin_groups
  br label %kworker_err, !dbg !4972

kworker_err:                                      ; preds = %if.end88, %if.then35
  call void @llvm.dbg.label(metadata !4977), !dbg !4978
  %90 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4979
  %tsevq_mux89 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %90, i32 0, i32 8, !dbg !4980
  call void @mutex_destroy(%struct.mutex* %tsevq_mux89) #11, !dbg !4981
  %91 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4982
  %pincfg_mux90 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %91, i32 0, i32 9, !dbg !4983
  call void @mutex_destroy(%struct.mutex* %pincfg_mux90) #11, !dbg !4984
  %92 = load i32, i32* %index, align 4, !dbg !4985
  call void @ida_free(%struct.ida* @ptp_clocks_map, i32 %92) #11, !dbg !4985
  br label %no_slot, !dbg !4985

no_slot:                                          ; preds = %kworker_err, %if.then7
  call void @llvm.dbg.label(metadata !4986), !dbg !4987
  %93 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4988
  %94 = bitcast %struct.ptp_clock* %93 to i8*, !dbg !4988
  call void @kfree(i8* %94) #11, !dbg !4989
  br label %no_memory, !dbg !4989

no_memory:                                        ; preds = %no_slot, %if.then3
  call void @llvm.dbg.label(metadata !4990), !dbg !4991
  %95 = load i32, i32* %err, align 4, !dbg !4992
  %conv91 = sext i32 %95 to i64, !dbg !4992
  %call92 = call i8* @ERR_PTR(i64 %conv91) #11, !dbg !4993
  %96 = bitcast i8* %call92 to %struct.ptp_clock*, !dbg !4993
  store %struct.ptp_clock* %96, %struct.ptp_clock** %retval, align 8, !dbg !4994
  br label %return, !dbg !4994

return:                                           ; preds = %no_memory, %if.end78, %if.then
  %97 = load %struct.ptp_clock*, %struct.ptp_clock** %retval, align 8, !dbg !4995
  ret %struct.ptp_clock* %97, !dbg !4995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4996 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load i64, i64* %error.addr, align 8, !dbg !5002
  %1 = inttoptr i64 %0 to i8*, !dbg !5003
  ret i8* %1, !dbg !5004
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5005 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5008, metadata !DIExpression()), !dbg !5012
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5018, metadata !DIExpression()), !dbg !5019
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5020, metadata !DIExpression()), !dbg !5021
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5022, metadata !DIExpression()), !dbg !5023
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5024, metadata !DIExpression()), !dbg !5028
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5030, metadata !DIExpression()), !dbg !5034
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5036, metadata !DIExpression()), !dbg !5040
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5045, metadata !DIExpression()), !dbg !5046
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5047, metadata !DIExpression()), !dbg !5048
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5049, metadata !DIExpression()), !dbg !5050
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5051, metadata !DIExpression()), !dbg !5052
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5053, metadata !DIExpression()), !dbg !5054
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5055, metadata !DIExpression()), !dbg !5056
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5057, metadata !DIExpression()), !dbg !5058
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5059, metadata !DIExpression()), !dbg !5060
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5061, metadata !DIExpression()), !dbg !5062
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  %0 = load i64, i64* %size.addr, align 8, !dbg !5065
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5066
  %or = or i32 %1, 256, !dbg !5067
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5068
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5069
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5070

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5071
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5072
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5073

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5074
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5075
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5076
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5077
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5054
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5078
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5079
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5080
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5081
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5082
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5083
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !5084
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5084
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5084
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5084
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5084
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5085
  br label %kmalloc.exit, !dbg !5085

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5086
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5087
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5087
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5089

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5090
  br label %kmalloc_index.exit.i, !dbg !5090

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5091
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5093
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5094

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5095
  br label %kmalloc_index.exit.i, !dbg !5095

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5096
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5098
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5099

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5100
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5101
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5102

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5103
  br label %kmalloc_index.exit.i, !dbg !5103

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5104
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5106
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5107

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5108
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5109
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5110

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5111
  br label %kmalloc_index.exit.i, !dbg !5111

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5112
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5114
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5115

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5116
  br label %kmalloc_index.exit.i, !dbg !5116

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5117
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5119
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5120

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5121
  br label %kmalloc_index.exit.i, !dbg !5121

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5122
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5124
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5125

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5126
  br label %kmalloc_index.exit.i, !dbg !5126

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5127
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5129
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5130

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5131
  br label %kmalloc_index.exit.i, !dbg !5131

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5132
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5134
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5135

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5136
  br label %kmalloc_index.exit.i, !dbg !5136

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5137
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5139
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5140

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5141
  br label %kmalloc_index.exit.i, !dbg !5141

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5142
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5144
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5145

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5146
  br label %kmalloc_index.exit.i, !dbg !5146

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5147
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5149
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5150

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5151
  br label %kmalloc_index.exit.i, !dbg !5151

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5152
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5154
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5155

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5156
  br label %kmalloc_index.exit.i, !dbg !5156

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5157
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5159
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5160

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5161
  br label %kmalloc_index.exit.i, !dbg !5161

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5162
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5164
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5165

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5166
  br label %kmalloc_index.exit.i, !dbg !5166

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5167
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5169
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5170

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5171
  br label %kmalloc_index.exit.i, !dbg !5171

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5172
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5174
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5175

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5176
  br label %kmalloc_index.exit.i, !dbg !5176

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5177
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5179
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5180

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5181
  br label %kmalloc_index.exit.i, !dbg !5181

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5182
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5184
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5185

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5186
  br label %kmalloc_index.exit.i, !dbg !5186

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5187
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5189
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5190

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5191
  br label %kmalloc_index.exit.i, !dbg !5191

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5192
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5194
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5195

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5196
  br label %kmalloc_index.exit.i, !dbg !5196

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5197
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5199
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5200

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5201
  br label %kmalloc_index.exit.i, !dbg !5201

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5202
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5204
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5205

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5206
  br label %kmalloc_index.exit.i, !dbg !5206

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5207
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5209
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5210

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5211
  br label %kmalloc_index.exit.i, !dbg !5211

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5212
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5214
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5215

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5216
  br label %kmalloc_index.exit.i, !dbg !5216

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5217
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5219
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5220

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5221
  br label %kmalloc_index.exit.i, !dbg !5221

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5222
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5224
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5225

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5226
  br label %kmalloc_index.exit.i, !dbg !5226

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5227
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5229
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5230

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5231
  br label %kmalloc_index.exit.i, !dbg !5231

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5232, !srcloc !5235
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 202) #10, !dbg !5236, !srcloc !5239
  unreachable, !dbg !5240

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5241
  store i32 %45, i32* %index.i, align 4, !dbg !5242
  %46 = load i32, i32* %index.i, align 4, !dbg !5243
  %tobool.i = icmp ne i32 %46, 0, !dbg !5243
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5245

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5246
  br label %kmalloc.exit, !dbg !5246

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5247
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5248
  %and.i.i = and i32 %48, 17, !dbg !5248
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5248
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5248
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5248
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5248
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5250

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5251
  br label %kmalloc_type.exit.i, !dbg !5251

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5252
  %and2.i.i = and i32 %49, 1, !dbg !5253
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5252
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5252
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5252
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5254
  br label %kmalloc_type.exit.i, !dbg !5254

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5255
  %idxprom.i = zext i32 %51 to i64, !dbg !5256
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5256
  %52 = load i32, i32* %index.i, align 4, !dbg !5257
  %idxprom6.i = zext i32 %52 to i64, !dbg !5256
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5256
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5256
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5258
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5259
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5260
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5261
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !5262
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5262
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5262
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5262
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5262
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5023
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5263
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5264
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5265
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5266
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !5267
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5268
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5269
  store i8* %62, i8** %retval.i, align 8, !dbg !5270
  br label %kmalloc.exit, !dbg !5270

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5271
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5272
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !5273
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5273
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5273
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5273
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5273
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5274
  br label %kmalloc.exit, !dbg !5274

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5275
  ret i8* %65, !dbg !5276
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5277 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  br label %do.body, !dbg !5283

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5284

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5286

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5284

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5288
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5288
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5288
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5288
  br label %do.end3, !dbg !5288

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5284

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5290
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5291
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5292
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5293
  ret void, !dbg !5294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ptp_aux_kworker(%struct.kthread_work* %work) #0 !dbg !5295 {
entry:
  %work.addr = alloca %struct.kthread_work*, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_clock*, align 8
  %info = alloca %struct.ptp_clock_info*, align 8
  %delay = alloca i64, align 8
  store %struct.kthread_work* %work, %struct.kthread_work** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kthread_work** %work.addr, metadata !5296, metadata !DIExpression()), !dbg !5297
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !5298, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5300, metadata !DIExpression()), !dbg !5302
  %0 = load %struct.kthread_work*, %struct.kthread_work** %work.addr, align 8, !dbg !5302
  %1 = bitcast %struct.kthread_work* %0 to i8*, !dbg !5302
  store i8* %1, i8** %__mptr, align 8, !dbg !5302
  br label %do.body, !dbg !5302

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5303

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5302
  %add.ptr = getelementptr i8, i8* %2, i64 -5216, !dbg !5302
  %3 = bitcast i8* %add.ptr to %struct.ptp_clock*, !dbg !5302
  store %struct.ptp_clock* %3, %struct.ptp_clock** %tmp, align 8, !dbg !5303
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %tmp, align 8, !dbg !5302
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !5299
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %info, metadata !5305, metadata !DIExpression()), !dbg !5306
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5307
  %info1 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 2, !dbg !5308
  %6 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info1, align 8, !dbg !5308
  store %struct.ptp_clock_info* %6, %struct.ptp_clock_info** %info, align 8, !dbg !5306
  call void @llvm.dbg.declare(metadata i64* %delay, metadata !5309, metadata !DIExpression()), !dbg !5310
  %7 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !5311
  %do_aux_work = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %7, i32 0, i32 19, !dbg !5312
  %8 = load i64 (%struct.ptp_clock_info*)*, i64 (%struct.ptp_clock_info*)** %do_aux_work, align 8, !dbg !5312
  %9 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !5313
  %call = call i64 %8(%struct.ptp_clock_info* %9) #11, !dbg !5311
  store i64 %call, i64* %delay, align 8, !dbg !5314
  %10 = load i64, i64* %delay, align 8, !dbg !5315
  %cmp = icmp sge i64 %10, 0, !dbg !5317
  br i1 %cmp, label %if.then, label %if.end, !dbg !5318

if.then:                                          ; preds = %do.end
  %11 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5319
  %kworker = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %11, i32 0, i32 16, !dbg !5320
  %12 = load %struct.kthread_worker*, %struct.kthread_worker** %kworker, align 8, !dbg !5320
  %13 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5321
  %aux_work = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %13, i32 0, i32 17, !dbg !5322
  %14 = load i64, i64* %delay, align 8, !dbg !5323
  %call2 = call zeroext i1 @kthread_queue_delayed_work(%struct.kthread_worker* %12, %struct.kthread_delayed_work* %aux_work, i64 %14) #11, !dbg !5324
  br label %if.end, !dbg !5324

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !5325
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @kthread_delayed_work_timer_fn(%struct.timer_list*) #2

; Function Attrs: noredzone
declare dso_local %struct.kthread_worker* @kthread_create_worker(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5326 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5331
  %1 = ptrtoint i8* %0 to i64, !dbg !5331
  %2 = inttoptr i64 %1 to i8*, !dbg !5331
  %3 = ptrtoint i8* %2 to i64, !dbg !5331
  %cmp = icmp uge i64 %3, -4095, !dbg !5331
  %lnot = xor i1 %cmp, true, !dbg !5331
  %lnot1 = xor i1 %lnot, true, !dbg !5331
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5331
  %conv = sext i32 %lnot.ext to i64, !dbg !5331
  %tobool = icmp ne i64 %conv, 0, !dbg !5331
  ret i1 %tobool, !dbg !5332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5333 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5338
  %1 = ptrtoint i8* %0 to i64, !dbg !5339
  ret i64 %1, !dbg !5340
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @ptp_populate_pin_groups(%struct.ptp_clock*) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %struct.pps_device* @pps_register_source(%struct.pps_source_info*, i32) #2

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ptp_clock_release(%struct.device* %dev) #0 !dbg !5341 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_clock*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5342, metadata !DIExpression()), !dbg !5343
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !5344, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5346, metadata !DIExpression()), !dbg !5348
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5348
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5348
  store i8* %1, i8** %__mptr, align 8, !dbg !5348
  br label %do.body, !dbg !5348

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5349

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5348
  %add.ptr = getelementptr i8, i8* %2, i64 -232, !dbg !5348
  %3 = bitcast i8* %add.ptr to %struct.ptp_clock*, !dbg !5348
  store %struct.ptp_clock* %3, %struct.ptp_clock** %tmp, align 8, !dbg !5349
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %tmp, align 8, !dbg !5348
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !5345
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5351
  call void @ptp_cleanup_pin_groups(%struct.ptp_clock* %5) #11, !dbg !5352
  %6 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5353
  %tsevq_mux = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %6, i32 0, i32 8, !dbg !5354
  call void @mutex_destroy(%struct.mutex* %tsevq_mux) #11, !dbg !5355
  %7 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5356
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %7, i32 0, i32 9, !dbg !5357
  call void @mutex_destroy(%struct.mutex* %pincfg_mux) #11, !dbg !5358
  %8 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5359
  %index = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %8, i32 0, i32 4, !dbg !5359
  %9 = load i32, i32* %index, align 4, !dbg !5359
  call void @ida_free(%struct.ida* @ptp_clocks_map, i32 %9) #11, !dbg !5359
  %10 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5360
  %11 = bitcast %struct.ptp_clock* %10 to i8*, !dbg !5360
  call void @kfree(i8* %11) #11, !dbg !5361
  ret void, !dbg !5362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5363 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5370
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5371
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5372
  store i8* %0, i8** %driver_data, align 8, !dbg !5373
  ret void, !dbg !5374
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @posix_clock_register(%struct.posix_clock*, %struct.device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @pps_unregister_source(%struct.pps_device*) #2

; Function Attrs: noredzone
declare dso_local void @ptp_cleanup_pin_groups(%struct.ptp_clock*) #2

; Function Attrs: noredzone
declare dso_local void @kthread_destroy_worker(%struct.kthread_worker*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mutex_destroy(%struct.mutex* %lock) #0 !dbg !5375 {
entry:
  %lock.addr = alloca %struct.mutex*, align 8
  store %struct.mutex* %lock, %struct.mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  ret void, !dbg !5381
}

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_clock_unregister(%struct.ptp_clock* %ptp) #0 !dbg !5382 {
entry:
  %ptp.addr = alloca %struct.ptp_clock*, align 8
  store %struct.ptp_clock* %ptp, %struct.ptp_clock** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  %0 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5387
  %defunct = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %0, i32 0, i32 11, !dbg !5388
  store i32 1, i32* %defunct, align 8, !dbg !5389
  %1 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5390
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %1, i32 0, i32 10, !dbg !5390
  call void @__wake_up(%struct.wait_queue_head* %tsev_wq, i32 1, i32 1, i8* null) #11, !dbg !5390
  %2 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5391
  %kworker = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %2, i32 0, i32 16, !dbg !5393
  %3 = load %struct.kthread_worker*, %struct.kthread_worker** %kworker, align 8, !dbg !5393
  %tobool = icmp ne %struct.kthread_worker* %3, null, !dbg !5391
  br i1 %tobool, label %if.then, label %if.end, !dbg !5394

if.then:                                          ; preds = %entry
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5395
  %aux_work = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %4, i32 0, i32 17, !dbg !5397
  %call = call zeroext i1 @kthread_cancel_delayed_work_sync(%struct.kthread_delayed_work* %aux_work) #11, !dbg !5398
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5399
  %kworker1 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 16, !dbg !5400
  %6 = load %struct.kthread_worker*, %struct.kthread_worker** %kworker1, align 8, !dbg !5400
  call void @kthread_destroy_worker(%struct.kthread_worker* %6) #11, !dbg !5401
  br label %if.end, !dbg !5402

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5403
  %pps_source = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %7, i32 0, i32 5, !dbg !5405
  %8 = load %struct.pps_device*, %struct.pps_device** %pps_source, align 8, !dbg !5405
  %tobool2 = icmp ne %struct.pps_device* %8, null, !dbg !5403
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5406

if.then3:                                         ; preds = %if.end
  %9 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5407
  %pps_source4 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %9, i32 0, i32 5, !dbg !5408
  %10 = load %struct.pps_device*, %struct.pps_device** %pps_source4, align 8, !dbg !5408
  call void @pps_unregister_source(%struct.pps_device* %10) #11, !dbg !5409
  br label %if.end5, !dbg !5409

if.end5:                                          ; preds = %if.then3, %if.end
  %11 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5410
  %clock = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %11, i32 0, i32 0, !dbg !5411
  call void @posix_clock_unregister(%struct.posix_clock* %clock) #11, !dbg !5412
  ret i32 0, !dbg !5413
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_cancel_delayed_work_sync(%struct.kthread_delayed_work*) #2

; Function Attrs: noredzone
declare dso_local void @posix_clock_unregister(%struct.posix_clock*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ptp_clock_event(%struct.ptp_clock* %ptp, %struct.ptp_clock_event* %event) #0 !dbg !5414 {
entry:
  %ptp.addr = alloca %struct.ptp_clock*, align 8
  %event.addr = alloca %struct.ptp_clock_event*, align 8
  %evt = alloca %struct.pps_event_time, align 8
  store %struct.ptp_clock* %ptp, %struct.ptp_clock** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  store %struct.ptp_clock_event* %event, %struct.ptp_clock_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_event** %event.addr, metadata !5432, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.declare(metadata %struct.pps_event_time* %evt, metadata !5434, metadata !DIExpression()), !dbg !5435
  %0 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %event.addr, align 8, !dbg !5436
  %type = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %0, i32 0, i32 0, !dbg !5437
  %1 = load i32, i32* %type, align 8, !dbg !5437
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !5438

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5439

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5441
  %tsevq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %2, i32 0, i32 7, !dbg !5442
  %3 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %event.addr, align 8, !dbg !5443
  call void @enqueue_external_timestamp(%struct.timestamp_event_queue* %tsevq, %struct.ptp_clock_event* %3) #11, !dbg !5444
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5445
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %4, i32 0, i32 10, !dbg !5445
  call void @__wake_up(%struct.wait_queue_head* %tsev_wq, i32 1, i32 1, i8* null) #11, !dbg !5445
  br label %sw.epilog, !dbg !5446

sw.bb2:                                           ; preds = %entry
  call void @pps_get_ts(%struct.pps_event_time* %evt) #11, !dbg !5447
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5448
  %pps_source = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 5, !dbg !5449
  %6 = load %struct.pps_device*, %struct.pps_device** %pps_source, align 8, !dbg !5449
  call void @pps_event(%struct.pps_device* %6, %struct.pps_event_time* %evt, i32 1, i8* null) #11, !dbg !5450
  br label %sw.epilog, !dbg !5451

sw.bb3:                                           ; preds = %entry
  %7 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5452
  %pps_source4 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %7, i32 0, i32 5, !dbg !5453
  %8 = load %struct.pps_device*, %struct.pps_device** %pps_source4, align 8, !dbg !5453
  %9 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %event.addr, align 8, !dbg !5454
  %10 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %9, i32 0, i32 2, !dbg !5455
  %pps_times = bitcast %union.anon.94* %10 to %struct.pps_event_time*, !dbg !5455
  call void @pps_event(%struct.pps_device* %8, %struct.pps_event_time* %pps_times, i32 1, i8* null) #11, !dbg !5456
  br label %sw.epilog, !dbg !5457

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !5458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @enqueue_external_timestamp(%struct.timestamp_event_queue* %queue, %struct.ptp_clock_event* %src) #0 !dbg !5459 {
entry:
  %lock.addr.i29 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i29, metadata !5463, metadata !DIExpression()), !dbg !5467
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5469, metadata !DIExpression()), !dbg !5470
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4755, metadata !DIExpression()), !dbg !5471
  %queue.addr = alloca %struct.timestamp_event_queue*, align 8
  %src.addr = alloca %struct.ptp_clock_event*, align 8
  %dst = alloca %struct.ptp_extts_event*, align 8
  %flags = alloca i64, align 8
  %seconds = alloca i64, align 8
  %remainder = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.timestamp_event_queue* %queue, %struct.timestamp_event_queue** %queue.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timestamp_event_queue** %queue.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store %struct.ptp_clock_event* %src, %struct.ptp_clock_event** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_event** %src.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.declare(metadata %struct.ptp_extts_event** %dst, metadata !5482, metadata !DIExpression()), !dbg !5484
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5485, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.declare(metadata i64* %seconds, metadata !5487, metadata !DIExpression()), !dbg !5488
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !5489, metadata !DIExpression()), !dbg !5490
  %0 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %src.addr, align 8, !dbg !5491
  %1 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %0, i32 0, i32 2, !dbg !5492
  %timestamp = bitcast %union.anon.94* %1 to i64*, !dbg !5492
  %2 = load i64, i64* %timestamp, align 8, !dbg !5492
  %call = call i64 @div_u64_rem(i64 %2, i32 1000000000, i32* %remainder) #11, !dbg !5493
  store i64 %call, i64* %seconds, align 8, !dbg !5494
  br label %do.body, !dbg !5495

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5496

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5497, metadata !DIExpression()), !dbg !5499
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5500, metadata !DIExpression()), !dbg !5499
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5499
  %conv = zext i1 %cmp to i32, !dbg !5499
  store i32 1, i32* %tmp, align 4, !dbg !5499
  %3 = load i32, i32* %tmp, align 4, !dbg !5499
  br label %do.body2, !dbg !5501

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5502

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5503

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5505, metadata !DIExpression()), !dbg !5508
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5509, metadata !DIExpression()), !dbg !5508
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5508
  %conv8 = zext i1 %cmp7 to i32, !dbg !5508
  store i32 1, i32* %tmp9, align 4, !dbg !5508
  %4 = load i32, i32* %tmp9, align 4, !dbg !5508
  %call10 = call i64 @arch_local_irq_save() #11, !dbg !5510
  store i64 %call10, i64* %flags, align 8, !dbg !5510
  br label %do.end, !dbg !5510

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !5503

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5502

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5511, !srcloc !5512
  br label %do.body13, !dbg !5511

do.body13:                                        ; preds = %do.body12
  %5 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5513
  %lock = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %5, i32 0, i32 3, !dbg !5513
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5514
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5515
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !5515
  br label %do.end15, !dbg !5513

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5511

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5502

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5501

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5496

do.end19:                                         ; preds = %do.end18
  %8 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5516
  %buf = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %8, i32 0, i32 0, !dbg !5517
  %9 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5518
  %tail = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %9, i32 0, i32 2, !dbg !5519
  %10 = load i32, i32* %tail, align 4, !dbg !5519
  %idxprom = sext i32 %10 to i64, !dbg !5516
  %arrayidx = getelementptr [128 x %struct.ptp_extts_event], [128 x %struct.ptp_extts_event]* %buf, i64 0, i64 %idxprom, !dbg !5516
  store %struct.ptp_extts_event* %arrayidx, %struct.ptp_extts_event** %dst, align 8, !dbg !5520
  %11 = load %struct.ptp_clock_event*, %struct.ptp_clock_event** %src.addr, align 8, !dbg !5521
  %index = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %11, i32 0, i32 1, !dbg !5522
  %12 = load i32, i32* %index, align 4, !dbg !5522
  %13 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %dst, align 8, !dbg !5523
  %index20 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %13, i32 0, i32 1, !dbg !5524
  store i32 %12, i32* %index20, align 8, !dbg !5525
  %14 = load i64, i64* %seconds, align 8, !dbg !5526
  %15 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %dst, align 8, !dbg !5527
  %t = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %15, i32 0, i32 0, !dbg !5528
  %sec = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %t, i32 0, i32 0, !dbg !5529
  store i64 %14, i64* %sec, align 8, !dbg !5530
  %16 = load i32, i32* %remainder, align 4, !dbg !5531
  %17 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %dst, align 8, !dbg !5532
  %t21 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %17, i32 0, i32 0, !dbg !5533
  %nsec = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %t21, i32 0, i32 1, !dbg !5534
  store i32 %16, i32* %nsec, align 8, !dbg !5535
  %18 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5536
  %call22 = call i32 @queue_free(%struct.timestamp_event_queue* %18) #11, !dbg !5538
  %tobool = icmp ne i32 %call22, 0, !dbg !5538
  br i1 %tobool, label %if.end, label %if.then, !dbg !5539

if.then:                                          ; preds = %do.end19
  %19 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5540
  %head = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %19, i32 0, i32 1, !dbg !5541
  %20 = load i32, i32* %head, align 8, !dbg !5541
  %add = add i32 %20, 1, !dbg !5542
  %rem = srem i32 %add, 128, !dbg !5543
  %21 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5544
  %head23 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %21, i32 0, i32 1, !dbg !5545
  store i32 %rem, i32* %head23, align 8, !dbg !5546
  br label %if.end, !dbg !5544

if.end:                                           ; preds = %if.then, %do.end19
  %22 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5547
  %tail24 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %22, i32 0, i32 2, !dbg !5548
  %23 = load i32, i32* %tail24, align 4, !dbg !5548
  %add25 = add i32 %23, 1, !dbg !5549
  %rem26 = srem i32 %add25, 128, !dbg !5550
  %24 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5551
  %tail27 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %24, i32 0, i32 2, !dbg !5552
  store i32 %rem26, i32* %tail27, align 4, !dbg !5553
  %25 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue.addr, align 8, !dbg !5554
  %lock28 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %25, i32 0, i32 3, !dbg !5555
  %26 = load i64, i64* %flags, align 8, !dbg !5556
  store %struct.spinlock* %lock28, %struct.spinlock** %lock.addr.i29, align 8
  store i64 %26, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !558, metadata !5557, metadata !DIExpression()) #10, !dbg !5560
  call void @llvm.dbg.declare(metadata !558, metadata !5561, metadata !DIExpression()) #10, !dbg !5560
  store i32 1, i32* %tmp.i, align 4, !dbg !5560
  %27 = load i32, i32* %tmp.i, align 4, !dbg !5560
  call void @llvm.dbg.declare(metadata !558, metadata !5562, metadata !DIExpression()) #10, !dbg !5567
  call void @llvm.dbg.declare(metadata !558, metadata !5568, metadata !DIExpression()) #10, !dbg !5567
  store i32 1, i32* %tmp8.i, align 4, !dbg !5567
  %28 = load i32, i32* %tmp8.i, align 4, !dbg !5567
  %29 = load i64, i64* %flags.addr.i, align 8, !dbg !5569
  call void @arch_local_irq_restore(i64 %29) #14, !dbg !5569
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5570, !srcloc !5572
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i29, align 8, !dbg !5573
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !5573
  %rlock.i30 = bitcast %union.anon.1* %31 to %struct.raw_spinlock*, !dbg !5573
  ret void, !dbg !5575
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pps_get_ts(%struct.pps_event_time* %ts) #0 !dbg !5576 {
entry:
  %ts.addr = alloca %struct.pps_event_time*, align 8
  %snap = alloca %struct.system_time_snapshot, align 8
  %tmp = alloca %struct.timespec64, align 8
  store %struct.pps_event_time* %ts, %struct.pps_event_time** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pps_event_time** %ts.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  call void @llvm.dbg.declare(metadata %struct.system_time_snapshot* %snap, metadata !5582, metadata !DIExpression()), !dbg !5590
  call void @ktime_get_snapshot(%struct.system_time_snapshot* %snap) #11, !dbg !5591
  %0 = load %struct.pps_event_time*, %struct.pps_event_time** %ts.addr, align 8, !dbg !5592
  %ts_real = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %0, i32 0, i32 0, !dbg !5593
  %real = getelementptr inbounds %struct.system_time_snapshot, %struct.system_time_snapshot* %snap, i32 0, i32 1, !dbg !5594
  %1 = load i64, i64* %real, align 8, !dbg !5594
  %call = call { i64, i64 } @ns_to_timespec64(i64 %1) #11, !dbg !5594
  %2 = bitcast %struct.timespec64* %tmp to { i64, i64 }*, !dbg !5594
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0, !dbg !5594
  %4 = extractvalue { i64, i64 } %call, 0, !dbg !5594
  store i64 %4, i64* %3, align 8, !dbg !5594
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1, !dbg !5594
  %6 = extractvalue { i64, i64 } %call, 1, !dbg !5594
  store i64 %6, i64* %5, align 8, !dbg !5594
  %7 = bitcast %struct.timespec64* %ts_real to i8*, !dbg !5594
  %8 = bitcast %struct.timespec64* %tmp to i8*, !dbg !5594
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false), !dbg !5594
  ret void, !dbg !5595
}

; Function Attrs: noredzone
declare dso_local void @pps_event(%struct.pps_device*, %struct.pps_event_time*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_clock_index(%struct.ptp_clock* %ptp) #0 !dbg !5596 {
entry:
  %ptp.addr = alloca %struct.ptp_clock*, align 8
  store %struct.ptp_clock* %ptp, %struct.ptp_clock** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  %0 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5599
  %index = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %0, i32 0, i32 4, !dbg !5600
  %1 = load i32, i32* %index, align 4, !dbg !5600
  ret i32 %1, !dbg !5601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_find_pin(%struct.ptp_clock* %ptp, i32 %func, i32 %chan) #0 !dbg !5602 {
entry:
  %ptp.addr = alloca %struct.ptp_clock*, align 8
  %func.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %pin = alloca %struct.ptp_pin_desc*, align 8
  %i = alloca i32, align 4
  store %struct.ptp_clock* %ptp, %struct.ptp_clock** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  store i32 %func, i32* %func.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %func.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5609, metadata !DIExpression()), !dbg !5610
  call void @llvm.dbg.declare(metadata %struct.ptp_pin_desc** %pin, metadata !5611, metadata !DIExpression()), !dbg !5612
  store %struct.ptp_pin_desc* null, %struct.ptp_pin_desc** %pin, align 8, !dbg !5612
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5613, metadata !DIExpression()), !dbg !5614
  store i32 0, i32* %i, align 4, !dbg !5615
  br label %for.cond, !dbg !5617

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5618
  %1 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5620
  %info = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %1, i32 0, i32 2, !dbg !5621
  %2 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !5621
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %2, i32 0, i32 6, !dbg !5622
  %3 = load i32, i32* %n_pins, align 8, !dbg !5622
  %cmp = icmp slt i32 %0, %3, !dbg !5623
  br i1 %cmp, label %for.body, label %for.end, !dbg !5624

for.body:                                         ; preds = %for.cond
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5625
  %info1 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %4, i32 0, i32 2, !dbg !5628
  %5 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info1, align 8, !dbg !5628
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %5, i32 0, i32 8, !dbg !5629
  %6 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin_config, align 8, !dbg !5629
  %7 = load i32, i32* %i, align 4, !dbg !5630
  %idxprom = sext i32 %7 to i64, !dbg !5625
  %arrayidx = getelementptr %struct.ptp_pin_desc, %struct.ptp_pin_desc* %6, i64 %idxprom, !dbg !5625
  %func2 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %arrayidx, i32 0, i32 2, !dbg !5631
  %8 = load i32, i32* %func2, align 4, !dbg !5631
  %9 = load i32, i32* %func.addr, align 4, !dbg !5632
  %cmp3 = icmp eq i32 %8, %9, !dbg !5633
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !5634

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5635
  %info4 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %10, i32 0, i32 2, !dbg !5636
  %11 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info4, align 8, !dbg !5636
  %pin_config5 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %11, i32 0, i32 8, !dbg !5637
  %12 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin_config5, align 8, !dbg !5637
  %13 = load i32, i32* %i, align 4, !dbg !5638
  %idxprom6 = sext i32 %13 to i64, !dbg !5635
  %arrayidx7 = getelementptr %struct.ptp_pin_desc, %struct.ptp_pin_desc* %12, i64 %idxprom6, !dbg !5635
  %chan8 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %arrayidx7, i32 0, i32 3, !dbg !5639
  %14 = load i32, i32* %chan8, align 4, !dbg !5639
  %15 = load i32, i32* %chan.addr, align 4, !dbg !5640
  %cmp9 = icmp eq i32 %14, %15, !dbg !5641
  br i1 %cmp9, label %if.then, label %if.end, !dbg !5642

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5643
  %info10 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %16, i32 0, i32 2, !dbg !5645
  %17 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info10, align 8, !dbg !5645
  %pin_config11 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %17, i32 0, i32 8, !dbg !5646
  %18 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin_config11, align 8, !dbg !5646
  %19 = load i32, i32* %i, align 4, !dbg !5647
  %idxprom12 = sext i32 %19 to i64, !dbg !5643
  %arrayidx13 = getelementptr %struct.ptp_pin_desc, %struct.ptp_pin_desc* %18, i64 %idxprom12, !dbg !5643
  store %struct.ptp_pin_desc* %arrayidx13, %struct.ptp_pin_desc** %pin, align 8, !dbg !5648
  br label %for.end, !dbg !5649

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5650

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !dbg !5651
  %inc = add i32 %20, 1, !dbg !5651
  store i32 %inc, i32* %i, align 4, !dbg !5651
  br label %for.cond, !dbg !5652, !llvm.loop !5653

for.end:                                          ; preds = %if.then, %for.cond
  %21 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin, align 8, !dbg !5655
  %tobool = icmp ne %struct.ptp_pin_desc* %21, null, !dbg !5655
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5655

cond.true:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4, !dbg !5656
  br label %cond.end, !dbg !5655

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !5655

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ -1, %cond.false ], !dbg !5655
  ret i32 %cond, !dbg !5657
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_find_pin_unlocked(%struct.ptp_clock* %ptp, i32 %func, i32 %chan) #0 !dbg !5658 {
entry:
  %ptp.addr = alloca %struct.ptp_clock*, align 8
  %func.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.ptp_clock* %ptp, %struct.ptp_clock** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  store i32 %func, i32* %func.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %func.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5663, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5665, metadata !DIExpression()), !dbg !5666
  %0 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5667
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %0, i32 0, i32 9, !dbg !5668
  call void @mutex_lock(%struct.mutex* %pincfg_mux) #11, !dbg !5669
  %1 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5670
  %2 = load i32, i32* %func.addr, align 4, !dbg !5671
  %3 = load i32, i32* %chan.addr, align 4, !dbg !5672
  %call = call i32 @ptp_find_pin(%struct.ptp_clock* %1, i32 %2, i32 %3) #11, !dbg !5673
  store i32 %call, i32* %result, align 4, !dbg !5674
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5675
  %pincfg_mux1 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %4, i32 0, i32 9, !dbg !5676
  call void @mutex_unlock(%struct.mutex* %pincfg_mux1) #11, !dbg !5677
  %5 = load i32, i32* %result, align 4, !dbg !5678
  ret i32 %5, !dbg !5679
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_schedule_worker(%struct.ptp_clock* %ptp, i64 %delay) #0 !dbg !5680 {
entry:
  %ptp.addr = alloca %struct.ptp_clock*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.ptp_clock* %ptp, %struct.ptp_clock** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp.addr, metadata !5683, metadata !DIExpression()), !dbg !5684
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  %0 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5687
  %kworker = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %0, i32 0, i32 16, !dbg !5688
  %1 = load %struct.kthread_worker*, %struct.kthread_worker** %kworker, align 8, !dbg !5688
  %2 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5689
  %aux_work = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %2, i32 0, i32 17, !dbg !5690
  %3 = load i64, i64* %delay.addr, align 8, !dbg !5691
  %call = call zeroext i1 @kthread_mod_delayed_work(%struct.kthread_worker* %1, %struct.kthread_delayed_work* %aux_work, i64 %3) #11, !dbg !5692
  %conv = zext i1 %call to i32, !dbg !5692
  ret i32 %conv, !dbg !5693
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_mod_delayed_work(%struct.kthread_worker*, %struct.kthread_delayed_work*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ptp_cancel_worker_sync(%struct.ptp_clock* %ptp) #0 !dbg !5694 {
entry:
  %ptp.addr = alloca %struct.ptp_clock*, align 8
  store %struct.ptp_clock* %ptp, %struct.ptp_clock** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  %0 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !5699
  %aux_work = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %0, i32 0, i32 17, !dbg !5700
  %call = call zeroext i1 @kthread_cancel_delayed_work_sync(%struct.kthread_delayed_work* %aux_work) #11, !dbg !5701
  ret void, !dbg !5702
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ptp_exit() #5 section ".exit.text" !dbg !5703 {
entry:
  %0 = load %struct.class*, %struct.class** @ptp_class, align 8, !dbg !5704
  call void @class_destroy(%struct.class* %0) #11, !dbg !5705
  %1 = load i32, i32* @ptp_devt, align 4, !dbg !5706
  call void @unregister_chrdev_region(i32 %1, i32 1048576) #11, !dbg !5707
  call void @ida_destroy(%struct.ida* @ptp_clocks_map) #11, !dbg !5708
  ret void, !dbg !5709
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #2

; Function Attrs: noredzone
declare dso_local void @unregister_chrdev_region(i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @ida_destroy(%struct.ida*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_init() #5 section ".init.text" !dbg !4732 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5710, metadata !DIExpression()), !dbg !5711
  %call = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.lock_class_key* @ptp_init.__key) #11, !dbg !5712
  store %struct.class* %call, %struct.class** %tmp, align 8, !dbg !5712
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !5712
  store %struct.class* %0, %struct.class** @ptp_class, align 8, !dbg !5714
  %1 = load %struct.class*, %struct.class** @ptp_class, align 8, !dbg !5715
  %2 = bitcast %struct.class* %1 to i8*, !dbg !5715
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #11, !dbg !5717
  br i1 %call1, label %if.then, label %if.end, !dbg !5718

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !5719
  %3 = load %struct.class*, %struct.class** @ptp_class, align 8, !dbg !5721
  %4 = bitcast %struct.class* %3 to i8*, !dbg !5721
  %call3 = call i64 @PTR_ERR(i8* %4) #11, !dbg !5722
  %conv = trunc i64 %call3 to i32, !dbg !5722
  store i32 %conv, i32* %retval, align 4, !dbg !5723
  br label %return, !dbg !5723

if.end:                                           ; preds = %entry
  %call4 = call i32 @alloc_chrdev_region(i32* @ptp_devt, i32 0, i32 1048576, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !5724
  store i32 %call4, i32* %err, align 4, !dbg !5725
  %5 = load i32, i32* %err, align 4, !dbg !5726
  %cmp = icmp slt i32 %5, 0, !dbg !5728
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !5729

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !5730
  br label %no_region, !dbg !5732

if.end8:                                          ; preds = %if.end
  %6 = load %struct.class*, %struct.class** @ptp_class, align 8, !dbg !5733
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %6, i32 0, i32 3, !dbg !5734
  store %struct.attribute_group** getelementptr inbounds ([0 x %struct.attribute_group*], [0 x %struct.attribute_group*]* @ptp_groups, i64 0, i64 0), %struct.attribute_group*** %dev_groups, align 8, !dbg !5735
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !5736
  store i32 0, i32* %retval, align 4, !dbg !5737
  br label %return, !dbg !5737

no_region:                                        ; preds = %if.then6
  call void @llvm.dbg.label(metadata !5738), !dbg !5739
  %7 = load %struct.class*, %struct.class** @ptp_class, align 8, !dbg !5740
  call void @class_destroy(%struct.class* %7) #11, !dbg !5741
  %8 = load i32, i32* %err, align 4, !dbg !5742
  store i32 %8, i32* %retval, align 4, !dbg !5743
  br label %return, !dbg !5743

return:                                           ; preds = %no_region, %if.end8, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5744
  ret i32 %9, !dbg !5744
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5745 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5749, metadata !DIExpression()), !dbg !5754
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5756, metadata !DIExpression()), !dbg !5757
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5758, metadata !DIExpression()), !dbg !5759
  %0 = load i64, i64* %size.addr, align 8, !dbg !5760
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5762
  br i1 %1, label %if.then, label %if.end447, !dbg !5763

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5764
  %tobool = icmp ne i64 %2, 0, !dbg !5764
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5767

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5768
  br label %return, !dbg !5768

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5769
  %cmp = icmp ult i64 %3, 4096, !dbg !5771
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5772

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5773
  br label %return, !dbg !5773

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub = sub i64 %4, 1, !dbg !5774
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5774
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5774

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub4 = sub i64 %6, 1, !dbg !5774
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5774
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5774

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub6 = sub i64 %8, 1, !dbg !5774
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5774
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5774

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5774

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub9 = sub i64 %9, 1, !dbg !5774
  %and = and i64 %sub9, -9223372036854775808, !dbg !5774
  %tobool10 = icmp ne i64 %and, 0, !dbg !5774
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5774

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5774

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub13 = sub i64 %10, 1, !dbg !5774
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5774
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5774
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5774

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5774

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub18 = sub i64 %11, 1, !dbg !5774
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5774
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5774
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5774

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5774

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub23 = sub i64 %12, 1, !dbg !5774
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5774
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5774
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5774

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5774

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub28 = sub i64 %13, 1, !dbg !5774
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5774
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5774
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5774

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5774

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub33 = sub i64 %14, 1, !dbg !5774
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5774
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5774
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5774

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5774

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub38 = sub i64 %15, 1, !dbg !5774
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5774
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5774
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5774

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5774

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub43 = sub i64 %16, 1, !dbg !5774
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5774
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5774
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5774

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5774

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub48 = sub i64 %17, 1, !dbg !5774
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5774
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5774
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5774

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5774

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub53 = sub i64 %18, 1, !dbg !5774
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5774
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5774
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5774

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5774

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub58 = sub i64 %19, 1, !dbg !5774
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5774
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5774
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5774

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5774

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub63 = sub i64 %20, 1, !dbg !5774
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5774
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5774
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5774

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5774

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub68 = sub i64 %21, 1, !dbg !5774
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5774
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5774
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5774

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5774

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub73 = sub i64 %22, 1, !dbg !5774
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5774
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5774
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5774

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5774

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub78 = sub i64 %23, 1, !dbg !5774
  %and79 = and i64 %sub78, 562949953421312, !dbg !5774
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5774
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5774

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5774

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub83 = sub i64 %24, 1, !dbg !5774
  %and84 = and i64 %sub83, 281474976710656, !dbg !5774
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5774
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5774

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5774

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub88 = sub i64 %25, 1, !dbg !5774
  %and89 = and i64 %sub88, 140737488355328, !dbg !5774
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5774
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5774

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5774

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub93 = sub i64 %26, 1, !dbg !5774
  %and94 = and i64 %sub93, 70368744177664, !dbg !5774
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5774
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5774

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5774

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub98 = sub i64 %27, 1, !dbg !5774
  %and99 = and i64 %sub98, 35184372088832, !dbg !5774
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5774
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5774

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5774

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub103 = sub i64 %28, 1, !dbg !5774
  %and104 = and i64 %sub103, 17592186044416, !dbg !5774
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5774
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5774

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5774

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub108 = sub i64 %29, 1, !dbg !5774
  %and109 = and i64 %sub108, 8796093022208, !dbg !5774
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5774
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5774

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5774

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub113 = sub i64 %30, 1, !dbg !5774
  %and114 = and i64 %sub113, 4398046511104, !dbg !5774
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5774
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5774

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5774

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub118 = sub i64 %31, 1, !dbg !5774
  %and119 = and i64 %sub118, 2199023255552, !dbg !5774
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5774
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5774

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5774

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub123 = sub i64 %32, 1, !dbg !5774
  %and124 = and i64 %sub123, 1099511627776, !dbg !5774
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5774
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5774

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5774

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub128 = sub i64 %33, 1, !dbg !5774
  %and129 = and i64 %sub128, 549755813888, !dbg !5774
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5774
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5774

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5774

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub133 = sub i64 %34, 1, !dbg !5774
  %and134 = and i64 %sub133, 274877906944, !dbg !5774
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5774
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5774

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5774

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub138 = sub i64 %35, 1, !dbg !5774
  %and139 = and i64 %sub138, 137438953472, !dbg !5774
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5774
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5774

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5774

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub143 = sub i64 %36, 1, !dbg !5774
  %and144 = and i64 %sub143, 68719476736, !dbg !5774
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5774
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5774

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5774

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub148 = sub i64 %37, 1, !dbg !5774
  %and149 = and i64 %sub148, 34359738368, !dbg !5774
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5774
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5774

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5774

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub153 = sub i64 %38, 1, !dbg !5774
  %and154 = and i64 %sub153, 17179869184, !dbg !5774
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5774
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5774

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5774

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub158 = sub i64 %39, 1, !dbg !5774
  %and159 = and i64 %sub158, 8589934592, !dbg !5774
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5774
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5774

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5774

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub163 = sub i64 %40, 1, !dbg !5774
  %and164 = and i64 %sub163, 4294967296, !dbg !5774
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5774
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5774

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5774

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub168 = sub i64 %41, 1, !dbg !5774
  %and169 = and i64 %sub168, 2147483648, !dbg !5774
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5774
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5774

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5774

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub173 = sub i64 %42, 1, !dbg !5774
  %and174 = and i64 %sub173, 1073741824, !dbg !5774
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5774
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5774

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5774

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub178 = sub i64 %43, 1, !dbg !5774
  %and179 = and i64 %sub178, 536870912, !dbg !5774
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5774
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5774

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5774

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub183 = sub i64 %44, 1, !dbg !5774
  %and184 = and i64 %sub183, 268435456, !dbg !5774
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5774
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5774

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5774

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub188 = sub i64 %45, 1, !dbg !5774
  %and189 = and i64 %sub188, 134217728, !dbg !5774
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5774
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5774

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5774

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub193 = sub i64 %46, 1, !dbg !5774
  %and194 = and i64 %sub193, 67108864, !dbg !5774
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5774
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5774

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5774

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub198 = sub i64 %47, 1, !dbg !5774
  %and199 = and i64 %sub198, 33554432, !dbg !5774
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5774
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5774

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5774

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub203 = sub i64 %48, 1, !dbg !5774
  %and204 = and i64 %sub203, 16777216, !dbg !5774
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5774
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5774

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5774

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub208 = sub i64 %49, 1, !dbg !5774
  %and209 = and i64 %sub208, 8388608, !dbg !5774
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5774
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5774

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5774

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub213 = sub i64 %50, 1, !dbg !5774
  %and214 = and i64 %sub213, 4194304, !dbg !5774
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5774
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5774

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5774

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub218 = sub i64 %51, 1, !dbg !5774
  %and219 = and i64 %sub218, 2097152, !dbg !5774
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5774
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5774

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5774

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub223 = sub i64 %52, 1, !dbg !5774
  %and224 = and i64 %sub223, 1048576, !dbg !5774
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5774
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5774

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5774

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub228 = sub i64 %53, 1, !dbg !5774
  %and229 = and i64 %sub228, 524288, !dbg !5774
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5774
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5774

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5774

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub233 = sub i64 %54, 1, !dbg !5774
  %and234 = and i64 %sub233, 262144, !dbg !5774
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5774
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5774

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5774

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub238 = sub i64 %55, 1, !dbg !5774
  %and239 = and i64 %sub238, 131072, !dbg !5774
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5774
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5774

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5774

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub243 = sub i64 %56, 1, !dbg !5774
  %and244 = and i64 %sub243, 65536, !dbg !5774
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5774
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5774

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5774

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub248 = sub i64 %57, 1, !dbg !5774
  %and249 = and i64 %sub248, 32768, !dbg !5774
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5774
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5774

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5774

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub253 = sub i64 %58, 1, !dbg !5774
  %and254 = and i64 %sub253, 16384, !dbg !5774
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5774
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5774

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5774

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub258 = sub i64 %59, 1, !dbg !5774
  %and259 = and i64 %sub258, 8192, !dbg !5774
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5774
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5774

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5774

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub263 = sub i64 %60, 1, !dbg !5774
  %and264 = and i64 %sub263, 4096, !dbg !5774
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5774
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5774

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5774

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub268 = sub i64 %61, 1, !dbg !5774
  %and269 = and i64 %sub268, 2048, !dbg !5774
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5774
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5774

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5774

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub273 = sub i64 %62, 1, !dbg !5774
  %and274 = and i64 %sub273, 1024, !dbg !5774
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5774
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5774

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5774

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub278 = sub i64 %63, 1, !dbg !5774
  %and279 = and i64 %sub278, 512, !dbg !5774
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5774
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5774

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5774

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub283 = sub i64 %64, 1, !dbg !5774
  %and284 = and i64 %sub283, 256, !dbg !5774
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5774
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5774

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5774

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub288 = sub i64 %65, 1, !dbg !5774
  %and289 = and i64 %sub288, 128, !dbg !5774
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5774
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5774

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5774

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub293 = sub i64 %66, 1, !dbg !5774
  %and294 = and i64 %sub293, 64, !dbg !5774
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5774
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5774

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5774

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub298 = sub i64 %67, 1, !dbg !5774
  %and299 = and i64 %sub298, 32, !dbg !5774
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5774
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5774

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5774

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub303 = sub i64 %68, 1, !dbg !5774
  %and304 = and i64 %sub303, 16, !dbg !5774
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5774
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5774

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5774

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub308 = sub i64 %69, 1, !dbg !5774
  %and309 = and i64 %sub308, 8, !dbg !5774
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5774
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5774

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5774

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub313 = sub i64 %70, 1, !dbg !5774
  %and314 = and i64 %sub313, 4, !dbg !5774
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5774
  %71 = zext i1 %tobool315 to i64, !dbg !5774
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5774
  br label %cond.end, !dbg !5774

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5774
  br label %cond.end317, !dbg !5774

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5774
  br label %cond.end319, !dbg !5774

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5774
  br label %cond.end321, !dbg !5774

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5774
  br label %cond.end323, !dbg !5774

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5774
  br label %cond.end325, !dbg !5774

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5774
  br label %cond.end327, !dbg !5774

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5774
  br label %cond.end329, !dbg !5774

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5774
  br label %cond.end331, !dbg !5774

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5774
  br label %cond.end333, !dbg !5774

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5774
  br label %cond.end335, !dbg !5774

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5774
  br label %cond.end337, !dbg !5774

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5774
  br label %cond.end339, !dbg !5774

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5774
  br label %cond.end341, !dbg !5774

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5774
  br label %cond.end343, !dbg !5774

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5774
  br label %cond.end345, !dbg !5774

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5774
  br label %cond.end347, !dbg !5774

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5774
  br label %cond.end349, !dbg !5774

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5774
  br label %cond.end351, !dbg !5774

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5774
  br label %cond.end353, !dbg !5774

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5774
  br label %cond.end355, !dbg !5774

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5774
  br label %cond.end357, !dbg !5774

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5774
  br label %cond.end359, !dbg !5774

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5774
  br label %cond.end361, !dbg !5774

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5774
  br label %cond.end363, !dbg !5774

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5774
  br label %cond.end365, !dbg !5774

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5774
  br label %cond.end367, !dbg !5774

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5774
  br label %cond.end369, !dbg !5774

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5774
  br label %cond.end371, !dbg !5774

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5774
  br label %cond.end373, !dbg !5774

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5774
  br label %cond.end375, !dbg !5774

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5774
  br label %cond.end377, !dbg !5774

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5774
  br label %cond.end379, !dbg !5774

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5774
  br label %cond.end381, !dbg !5774

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5774
  br label %cond.end383, !dbg !5774

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5774
  br label %cond.end385, !dbg !5774

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5774
  br label %cond.end387, !dbg !5774

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5774
  br label %cond.end389, !dbg !5774

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5774
  br label %cond.end391, !dbg !5774

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5774
  br label %cond.end393, !dbg !5774

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5774
  br label %cond.end395, !dbg !5774

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5774
  br label %cond.end397, !dbg !5774

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5774
  br label %cond.end399, !dbg !5774

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5774
  br label %cond.end401, !dbg !5774

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5774
  br label %cond.end403, !dbg !5774

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5774
  br label %cond.end405, !dbg !5774

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5774
  br label %cond.end407, !dbg !5774

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5774
  br label %cond.end409, !dbg !5774

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5774
  br label %cond.end411, !dbg !5774

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5774
  br label %cond.end413, !dbg !5774

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5774
  br label %cond.end415, !dbg !5774

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5774
  br label %cond.end417, !dbg !5774

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5774
  br label %cond.end419, !dbg !5774

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5774
  br label %cond.end421, !dbg !5774

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5774
  br label %cond.end423, !dbg !5774

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5774
  br label %cond.end425, !dbg !5774

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5774
  br label %cond.end427, !dbg !5774

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5774
  br label %cond.end429, !dbg !5774

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5774
  br label %cond.end431, !dbg !5774

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5774
  br label %cond.end433, !dbg !5774

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5774
  br label %cond.end435, !dbg !5774

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5774
  br label %cond.end437, !dbg !5774

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5774
  br label %cond.end440, !dbg !5774

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5774

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5774
  br label %cond.end444, !dbg !5774

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5774
  %sub443 = sub i64 %72, 1, !dbg !5774
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5774
  br label %cond.end444, !dbg !5774

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5774
  %sub446 = sub i32 %cond445, 12, !dbg !5775
  %add = add i32 %sub446, 1, !dbg !5776
  store i32 %add, i32* %retval, align 4, !dbg !5777
  br label %return, !dbg !5777

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5778
  %dec = add i64 %73, -1, !dbg !5778
  store i64 %dec, i64* %size.addr, align 8, !dbg !5778
  %74 = load i64, i64* %size.addr, align 8, !dbg !5779
  %shr = lshr i64 %74, 12, !dbg !5779
  store i64 %shr, i64* %size.addr, align 8, !dbg !5779
  %75 = load i64, i64* %size.addr, align 8, !dbg !5780
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5757
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5781
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5782
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !5781, !srcloc !5783
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5781
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5784
  %add.i = add i32 %79, 1, !dbg !5785
  store i32 %add.i, i32* %retval, align 4, !dbg !5786
  br label %return, !dbg !5786

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5787
  ret i32 %80, !dbg !5787
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5788 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5749, metadata !DIExpression()), !dbg !5792
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5756, metadata !DIExpression()), !dbg !5794
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  %0 = load i64, i64* %n.addr, align 8, !dbg !5797
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5794
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5798
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5799
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !5798, !srcloc !5783
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5798
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5800
  %add.i = add i32 %4, 1, !dbg !5801
  %sub = sub i32 %add.i, 1, !dbg !5802
  ret i32 %sub, !dbg !5803
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5804 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5810, metadata !DIExpression()), !dbg !5811
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5816
  ret i8* %0, !dbg !5817
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_clock_adjtime(%struct.posix_clock* %pc, %struct.__kernel_timex* %tx) #0 !dbg !5818 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.posix_clock*, align 8
  %tx.addr = alloca %struct.__kernel_timex*, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_clock*, align 8
  %ops = alloca %struct.ptp_clock_info*, align 8
  %err = alloca i32, align 4
  %ts = alloca %struct.timespec64, align 8
  %kt = alloca i64, align 8
  %delta = alloca i64, align 8
  %ppb = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.posix_clock* %pc, %struct.posix_clock** %pc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.posix_clock** %pc.addr, metadata !5819, metadata !DIExpression()), !dbg !5820
  store %struct.__kernel_timex* %tx, %struct.__kernel_timex** %tx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__kernel_timex** %tx.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !5823, metadata !DIExpression()), !dbg !5824
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5825, metadata !DIExpression()), !dbg !5827
  %0 = load %struct.posix_clock*, %struct.posix_clock** %pc.addr, align 8, !dbg !5827
  %1 = bitcast %struct.posix_clock* %0 to i8*, !dbg !5827
  store i8* %1, i8** %__mptr, align 8, !dbg !5827
  br label %do.body, !dbg !5827

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5828

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5827
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5827
  %3 = bitcast i8* %add.ptr to %struct.ptp_clock*, !dbg !5827
  store %struct.ptp_clock* %3, %struct.ptp_clock** %tmp, align 8, !dbg !5828
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %tmp, align 8, !dbg !5827
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !5824
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ops, metadata !5830, metadata !DIExpression()), !dbg !5831
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5832, metadata !DIExpression()), !dbg !5833
  store i32 -95, i32* %err, align 4, !dbg !5833
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5834
  %info = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 2, !dbg !5835
  %6 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !5835
  store %struct.ptp_clock_info* %6, %struct.ptp_clock_info** %ops, align 8, !dbg !5836
  %7 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5837
  %modes = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %7, i32 0, i32 0, !dbg !5839
  %8 = load i32, i32* %modes, align 8, !dbg !5839
  %and = and i32 %8, 256, !dbg !5840
  %tobool = icmp ne i32 %and, 0, !dbg !5840
  br i1 %tobool, label %if.then, label %if.else, !dbg !5841

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata %struct.timespec64* %ts, metadata !5842, metadata !DIExpression()), !dbg !5844
  call void @llvm.dbg.declare(metadata i64* %kt, metadata !5845, metadata !DIExpression()), !dbg !5846
  call void @llvm.dbg.declare(metadata i64* %delta, metadata !5847, metadata !DIExpression()), !dbg !5848
  %9 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5849
  %time = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %9, i32 0, i32 11, !dbg !5850
  %tv_sec = getelementptr inbounds %struct.__kernel_timex_timeval, %struct.__kernel_timex_timeval* %time, i32 0, i32 0, !dbg !5851
  %10 = load i64, i64* %tv_sec, align 8, !dbg !5851
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !5852
  store i64 %10, i64* %tv_sec1, align 8, !dbg !5853
  %11 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5854
  %time2 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %11, i32 0, i32 11, !dbg !5855
  %tv_usec = getelementptr inbounds %struct.__kernel_timex_timeval, %struct.__kernel_timex_timeval* %time2, i32 0, i32 1, !dbg !5856
  %12 = load i64, i64* %tv_usec, align 8, !dbg !5856
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !5857
  store i64 %12, i64* %tv_nsec, align 8, !dbg !5858
  %13 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5859
  %modes3 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %13, i32 0, i32 0, !dbg !5861
  %14 = load i32, i32* %modes3, align 8, !dbg !5861
  %and4 = and i32 %14, 8192, !dbg !5862
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5862
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !5863

if.then6:                                         ; preds = %if.then
  %tv_nsec7 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !5864
  %15 = load i64, i64* %tv_nsec7, align 8, !dbg !5865
  %mul = mul i64 %15, 1000, !dbg !5865
  store i64 %mul, i64* %tv_nsec7, align 8, !dbg !5865
  br label %if.end, !dbg !5866

if.end:                                           ; preds = %if.then6, %if.then
  %tv_nsec8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !5867
  %16 = load i64, i64* %tv_nsec8, align 8, !dbg !5867
  %cmp = icmp uge i64 %16, 1000000000, !dbg !5869
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !5870

if.then9:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5871
  br label %return, !dbg !5871

if.end10:                                         ; preds = %if.end
  %17 = bitcast %struct.timespec64* %ts to { i64, i64 }*, !dbg !5872
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0, !dbg !5872
  %19 = load i64, i64* %18, align 8, !dbg !5872
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1, !dbg !5872
  %21 = load i64, i64* %20, align 8, !dbg !5872
  %call = call i64 @timespec64_to_ktime(i64 %19, i64 %21) #11, !dbg !5872
  store i64 %call, i64* %kt, align 8, !dbg !5873
  %22 = load i64, i64* %kt, align 8, !dbg !5874
  %call11 = call i64 @ktime_to_ns(i64 %22) #11, !dbg !5875
  store i64 %call11, i64* %delta, align 8, !dbg !5876
  %23 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5877
  %adjtime = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %23, i32 0, i32 12, !dbg !5878
  %24 = load i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, i64)** %adjtime, align 8, !dbg !5878
  %25 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5879
  %26 = load i64, i64* %delta, align 8, !dbg !5880
  %call12 = call i32 %24(%struct.ptp_clock_info* %25, i64 %26) #11, !dbg !5877
  store i32 %call12, i32* %err, align 4, !dbg !5881
  br label %if.end61, !dbg !5882

if.else:                                          ; preds = %do.end
  %27 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5883
  %modes13 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %27, i32 0, i32 0, !dbg !5885
  %28 = load i32, i32* %modes13, align 8, !dbg !5885
  %and14 = and i32 %28, 2, !dbg !5886
  %tobool15 = icmp ne i32 %and14, 0, !dbg !5886
  br i1 %tobool15, label %if.then16, label %if.else32, !dbg !5887

if.then16:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i32* %ppb, metadata !5888, metadata !DIExpression()), !dbg !5890
  %29 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5891
  %freq = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %29, i32 0, i32 3, !dbg !5892
  %30 = load i64, i64* %freq, align 8, !dbg !5892
  %call17 = call i32 @scaled_ppm_to_ppb(i64 %30) #11, !dbg !5893
  store i32 %call17, i32* %ppb, align 4, !dbg !5890
  %31 = load i32, i32* %ppb, align 4, !dbg !5894
  %32 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5896
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %32, i32 0, i32 2, !dbg !5897
  %33 = load i32, i32* %max_adj, align 8, !dbg !5897
  %cmp18 = icmp sgt i32 %31, %33, !dbg !5898
  br i1 %cmp18, label %if.then21, label %lor.lhs.false, !dbg !5899

lor.lhs.false:                                    ; preds = %if.then16
  %34 = load i32, i32* %ppb, align 4, !dbg !5900
  %35 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5901
  %max_adj19 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %35, i32 0, i32 2, !dbg !5902
  %36 = load i32, i32* %max_adj19, align 8, !dbg !5902
  %sub = sub i32 0, %36, !dbg !5903
  %cmp20 = icmp slt i32 %34, %sub, !dbg !5904
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !5905

if.then21:                                        ; preds = %lor.lhs.false, %if.then16
  store i32 -34, i32* %retval, align 4, !dbg !5906
  br label %return, !dbg !5906

if.end22:                                         ; preds = %lor.lhs.false
  %37 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5907
  %adjfine = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %37, i32 0, i32 9, !dbg !5909
  %38 = load i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, i64)** %adjfine, align 8, !dbg !5909
  %tobool23 = icmp ne i32 (%struct.ptp_clock_info*, i64)* %38, null, !dbg !5907
  br i1 %tobool23, label %if.then24, label %if.else28, !dbg !5910

if.then24:                                        ; preds = %if.end22
  %39 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5911
  %adjfine25 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %39, i32 0, i32 9, !dbg !5912
  %40 = load i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, i64)** %adjfine25, align 8, !dbg !5912
  %41 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5913
  %42 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5914
  %freq26 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %42, i32 0, i32 3, !dbg !5915
  %43 = load i64, i64* %freq26, align 8, !dbg !5915
  %call27 = call i32 %40(%struct.ptp_clock_info* %41, i64 %43) #11, !dbg !5911
  store i32 %call27, i32* %err, align 4, !dbg !5916
  br label %if.end30, !dbg !5917

if.else28:                                        ; preds = %if.end22
  %44 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5918
  %adjfreq = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %44, i32 0, i32 10, !dbg !5919
  %45 = load i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)** %adjfreq, align 8, !dbg !5919
  %46 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5920
  %47 = load i32, i32* %ppb, align 4, !dbg !5921
  %call29 = call i32 %45(%struct.ptp_clock_info* %46, i32 %47) #11, !dbg !5918
  store i32 %call29, i32* %err, align 4, !dbg !5922
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then24
  %48 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5923
  %freq31 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %48, i32 0, i32 3, !dbg !5924
  %49 = load i64, i64* %freq31, align 8, !dbg !5924
  %50 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5925
  %dialed_frequency = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %50, i32 0, i32 6, !dbg !5926
  store i64 %49, i64* %dialed_frequency, align 8, !dbg !5927
  br label %if.end60, !dbg !5928

if.else32:                                        ; preds = %if.else
  %51 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5929
  %modes33 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %51, i32 0, i32 0, !dbg !5931
  %52 = load i32, i32* %modes33, align 8, !dbg !5931
  %and34 = and i32 %52, 1, !dbg !5932
  %tobool35 = icmp ne i32 %and34, 0, !dbg !5932
  br i1 %tobool35, label %if.then36, label %if.else51, !dbg !5933

if.then36:                                        ; preds = %if.else32
  %53 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5934
  %adjphase = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %53, i32 0, i32 11, !dbg !5937
  %54 = load i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)** %adjphase, align 8, !dbg !5937
  %tobool37 = icmp ne i32 (%struct.ptp_clock_info*, i32)* %54, null, !dbg !5934
  br i1 %tobool37, label %if.then38, label %if.end50, !dbg !5938

if.then38:                                        ; preds = %if.then36
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !5939, metadata !DIExpression()), !dbg !5941
  %55 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5942
  %offset39 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %55, i32 0, i32 2, !dbg !5943
  %56 = load i64, i64* %offset39, align 8, !dbg !5943
  %conv = trunc i64 %56 to i32, !dbg !5942
  store i32 %conv, i32* %offset, align 4, !dbg !5941
  %57 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5944
  %modes40 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %57, i32 0, i32 0, !dbg !5946
  %58 = load i32, i32* %modes40, align 8, !dbg !5946
  %and41 = and i32 %58, 8192, !dbg !5947
  %tobool42 = icmp ne i32 %and41, 0, !dbg !5947
  br i1 %tobool42, label %if.end47, label %if.then43, !dbg !5948

if.then43:                                        ; preds = %if.then38
  %59 = load i32, i32* %offset, align 4, !dbg !5949
  %conv44 = sext i32 %59 to i64, !dbg !5949
  %mul45 = mul i64 %conv44, 1000, !dbg !5949
  %conv46 = trunc i64 %mul45 to i32, !dbg !5949
  store i32 %conv46, i32* %offset, align 4, !dbg !5949
  br label %if.end47, !dbg !5950

if.end47:                                         ; preds = %if.then43, %if.then38
  %60 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5951
  %adjphase48 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %60, i32 0, i32 11, !dbg !5952
  %61 = load i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)** %adjphase48, align 8, !dbg !5952
  %62 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5953
  %63 = load i32, i32* %offset, align 4, !dbg !5954
  %call49 = call i32 %61(%struct.ptp_clock_info* %62, i32 %63) #11, !dbg !5951
  store i32 %call49, i32* %err, align 4, !dbg !5955
  br label %if.end50, !dbg !5956

if.end50:                                         ; preds = %if.end47, %if.then36
  br label %if.end59, !dbg !5957

if.else51:                                        ; preds = %if.else32
  %64 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5958
  %modes52 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %64, i32 0, i32 0, !dbg !5960
  %65 = load i32, i32* %modes52, align 8, !dbg !5960
  %cmp53 = icmp eq i32 %65, 0, !dbg !5961
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !5962

if.then55:                                        ; preds = %if.else51
  %66 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5963
  %dialed_frequency56 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %66, i32 0, i32 6, !dbg !5965
  %67 = load i64, i64* %dialed_frequency56, align 8, !dbg !5965
  %68 = load %struct.__kernel_timex*, %struct.__kernel_timex** %tx.addr, align 8, !dbg !5966
  %freq57 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %68, i32 0, i32 3, !dbg !5967
  store i64 %67, i64* %freq57, align 8, !dbg !5968
  store i32 0, i32* %err, align 4, !dbg !5969
  br label %if.end58, !dbg !5970

if.end58:                                         ; preds = %if.then55, %if.else51
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end50
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end30
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end10
  %69 = load i32, i32* %err, align 4, !dbg !5971
  store i32 %69, i32* %retval, align 4, !dbg !5972
  br label %return, !dbg !5972

return:                                           ; preds = %if.end61, %if.then21, %if.then9
  %70 = load i32, i32* %retval, align 4, !dbg !5973
  ret i32 %70, !dbg !5973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_clock_gettime(%struct.posix_clock* %pc, %struct.timespec64* %tp) #0 !dbg !5974 {
entry:
  %pc.addr = alloca %struct.posix_clock*, align 8
  %tp.addr = alloca %struct.timespec64*, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_clock*, align 8
  %err = alloca i32, align 4
  store %struct.posix_clock* %pc, %struct.posix_clock** %pc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.posix_clock** %pc.addr, metadata !5975, metadata !DIExpression()), !dbg !5976
  store %struct.timespec64* %tp, %struct.timespec64** %tp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %tp.addr, metadata !5977, metadata !DIExpression()), !dbg !5978
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !5979, metadata !DIExpression()), !dbg !5980
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5981, metadata !DIExpression()), !dbg !5983
  %0 = load %struct.posix_clock*, %struct.posix_clock** %pc.addr, align 8, !dbg !5983
  %1 = bitcast %struct.posix_clock* %0 to i8*, !dbg !5983
  store i8* %1, i8** %__mptr, align 8, !dbg !5983
  br label %do.body, !dbg !5983

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5984

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5983
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5983
  %3 = bitcast i8* %add.ptr to %struct.ptp_clock*, !dbg !5983
  store %struct.ptp_clock* %3, %struct.ptp_clock** %tmp, align 8, !dbg !5984
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %tmp, align 8, !dbg !5983
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !5980
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5986, metadata !DIExpression()), !dbg !5987
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5988
  %info = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 2, !dbg !5990
  %6 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !5990
  %gettimex64 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %6, i32 0, i32 14, !dbg !5991
  %7 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)** %gettimex64, align 8, !dbg !5991
  %tobool = icmp ne i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)* %7, null, !dbg !5988
  br i1 %tobool, label %if.then, label %if.else, !dbg !5992

if.then:                                          ; preds = %do.end
  %8 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5993
  %info1 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %8, i32 0, i32 2, !dbg !5994
  %9 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info1, align 8, !dbg !5994
  %gettimex642 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %9, i32 0, i32 14, !dbg !5995
  %10 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)** %gettimex642, align 8, !dbg !5995
  %11 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5996
  %info3 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %11, i32 0, i32 2, !dbg !5997
  %12 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info3, align 8, !dbg !5997
  %13 = load %struct.timespec64*, %struct.timespec64** %tp.addr, align 8, !dbg !5998
  %call = call i32 %10(%struct.ptp_clock_info* %12, %struct.timespec64* %13, %struct.ptp_system_timestamp* null) #11, !dbg !5993
  store i32 %call, i32* %err, align 4, !dbg !5999
  br label %if.end, !dbg !6000

if.else:                                          ; preds = %do.end
  %14 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !6001
  %info4 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %14, i32 0, i32 2, !dbg !6002
  %15 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info4, align 8, !dbg !6002
  %gettime64 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %15, i32 0, i32 13, !dbg !6003
  %16 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)** %gettime64, align 8, !dbg !6003
  %17 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !6004
  %info5 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %17, i32 0, i32 2, !dbg !6005
  %18 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info5, align 8, !dbg !6005
  %19 = load %struct.timespec64*, %struct.timespec64** %tp.addr, align 8, !dbg !6006
  %call6 = call i32 %16(%struct.ptp_clock_info* %18, %struct.timespec64* %19) #11, !dbg !6001
  store i32 %call6, i32* %err, align 4, !dbg !6007
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %err, align 4, !dbg !6008
  ret i32 %20, !dbg !6009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_clock_getres(%struct.posix_clock* %pc, %struct.timespec64* %tp) #0 !dbg !6010 {
entry:
  %pc.addr = alloca %struct.posix_clock*, align 8
  %tp.addr = alloca %struct.timespec64*, align 8
  store %struct.posix_clock* %pc, %struct.posix_clock** %pc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.posix_clock** %pc.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  store %struct.timespec64* %tp, %struct.timespec64** %tp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %tp.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load %struct.timespec64*, %struct.timespec64** %tp.addr, align 8, !dbg !6015
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %0, i32 0, i32 0, !dbg !6016
  store i64 0, i64* %tv_sec, align 8, !dbg !6017
  %1 = load %struct.timespec64*, %struct.timespec64** %tp.addr, align 8, !dbg !6018
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %1, i32 0, i32 1, !dbg !6019
  store i64 1, i64* %tv_nsec, align 8, !dbg !6020
  ret i32 0, !dbg !6021
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_clock_settime(%struct.posix_clock* %pc, %struct.timespec64* %tp) #0 !dbg !6022 {
entry:
  %pc.addr = alloca %struct.posix_clock*, align 8
  %tp.addr = alloca %struct.timespec64*, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_clock*, align 8
  store %struct.posix_clock* %pc, %struct.posix_clock** %pc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.posix_clock** %pc.addr, metadata !6023, metadata !DIExpression()), !dbg !6024
  store %struct.timespec64* %tp, %struct.timespec64** %tp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %tp.addr, metadata !6025, metadata !DIExpression()), !dbg !6026
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !6027, metadata !DIExpression()), !dbg !6028
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6029, metadata !DIExpression()), !dbg !6031
  %0 = load %struct.posix_clock*, %struct.posix_clock** %pc.addr, align 8, !dbg !6031
  %1 = bitcast %struct.posix_clock* %0 to i8*, !dbg !6031
  store i8* %1, i8** %__mptr, align 8, !dbg !6031
  br label %do.body, !dbg !6031

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6032

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6031
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6031
  %3 = bitcast i8* %add.ptr to %struct.ptp_clock*, !dbg !6031
  store %struct.ptp_clock* %3, %struct.ptp_clock** %tmp, align 8, !dbg !6032
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %tmp, align 8, !dbg !6031
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !6028
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !6034
  %info = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 2, !dbg !6035
  %6 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !6035
  %settime64 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %6, i32 0, i32 16, !dbg !6036
  %7 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)** %settime64, align 8, !dbg !6036
  %8 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !6037
  %info1 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %8, i32 0, i32 2, !dbg !6038
  %9 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info1, align 8, !dbg !6038
  %10 = load %struct.timespec64*, %struct.timespec64** %tp.addr, align 8, !dbg !6039
  %call = call i32 %7(%struct.ptp_clock_info* %9, %struct.timespec64* %10) #11, !dbg !6034
  ret i32 %call, !dbg !6040
}

; Function Attrs: noredzone
declare dso_local i64 @ptp_ioctl(%struct.posix_clock*, i32, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @ptp_open(%struct.posix_clock*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @ptp_poll(%struct.posix_clock*, %struct.file*, %struct.poll_table_struct*) #2

; Function Attrs: noredzone
declare dso_local i64 @ptp_read(%struct.posix_clock*, i32, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @timespec64_to_ktime(i64 %ts.coerce0, i64 %ts.coerce1) #0 !dbg !6041 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %ts to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %ts.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %ts.coerce1, i64* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64* %ts, metadata !6044, metadata !DIExpression()), !dbg !6045
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !6046
  %3 = load i64, i64* %tv_sec, align 8, !dbg !6046
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !6047
  %4 = load i64, i64* %tv_nsec, align 8, !dbg !6047
  %call = call i64 @ktime_set(i64 %3, i64 %4) #11, !dbg !6048
  ret i64 %call, !dbg !6049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_ns(i64 %kt) #0 !dbg !6050 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  %0 = load i64, i64* %kt.addr, align 8, !dbg !6056
  ret i64 %0, !dbg !6057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_set(i64 %secs, i64 %nsecs) #0 !dbg !6058 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, i64* %secs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %secs.addr, metadata !6062, metadata !DIExpression()), !dbg !6063
  store i64 %nsecs, i64* %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nsecs.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  %0 = load i64, i64* %secs.addr, align 8, !dbg !6066
  %cmp = icmp sge i64 %0, 9223372036, !dbg !6066
  %lnot = xor i1 %cmp, true, !dbg !6066
  %lnot1 = xor i1 %lnot, true, !dbg !6066
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6066
  %conv = sext i32 %lnot.ext to i64, !dbg !6066
  %tobool = icmp ne i64 %conv, 0, !dbg !6066
  br i1 %tobool, label %if.then, label %if.end, !dbg !6068

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8, !dbg !6069
  br label %return, !dbg !6069

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %secs.addr, align 8, !dbg !6070
  %mul = mul i64 %1, 1000000000, !dbg !6071
  %2 = load i64, i64* %nsecs.addr, align 8, !dbg !6072
  %add = add i64 %mul, %2, !dbg !6073
  store i64 %add, i64* %retval, align 8, !dbg !6074
  br label %return, !dbg !6074

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !6075
  ret i64 %3, !dbg !6075
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_queue_delayed_work(%struct.kthread_worker*, %struct.kthread_delayed_work*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #0 !dbg !6076 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6080, metadata !DIExpression()), !dbg !6081
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6082, metadata !DIExpression()), !dbg !6083
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6086
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6087
  %conv = zext i32 %1 to i64, !dbg !6087
  %rem = urem i64 %0, %conv, !dbg !6088
  %conv1 = trunc i64 %rem to i32, !dbg !6086
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !6089
  store i32 %conv1, i32* %2, align 4, !dbg !6090
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !6091
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !6092
  %conv2 = zext i32 %4 to i64, !dbg !6092
  %div = udiv i64 %3, %conv2, !dbg !6093
  ret i64 %div, !dbg !6094
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !6095 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6099, metadata !DIExpression()), !dbg !6100
  %call = call i64 @arch_local_save_flags() #11, !dbg !6101
  store i64 %call, i64* %f, align 8, !dbg !6102
  call void @arch_local_irq_disable() #11, !dbg !6103
  %0 = load i64, i64* %f, align 8, !dbg !6104
  ret i64 %0, !dbg !6105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @queue_free(%struct.timestamp_event_queue* %q) #0 !dbg !6106 {
entry:
  %q.addr = alloca %struct.timestamp_event_queue*, align 8
  store %struct.timestamp_event_queue* %q, %struct.timestamp_event_queue** %q.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timestamp_event_queue** %q.addr, metadata !6109, metadata !DIExpression()), !dbg !6110
  %0 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %q.addr, align 8, !dbg !6111
  %call = call i32 @queue_cnt(%struct.timestamp_event_queue* %0) #11, !dbg !6112
  %sub = sub i32 128, %call, !dbg !6113
  %sub1 = sub i32 %sub, 1, !dbg !6114
  ret i32 %sub1, !dbg !6115
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6116 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6117, metadata !DIExpression()), !dbg !6119
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6120, metadata !DIExpression()), !dbg !6119
  %0 = load i64, i64* %__edi, align 8, !dbg !6119
  store i64 %0, i64* %__edi, align 8, !dbg !6119
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6121, metadata !DIExpression()), !dbg !6119
  %1 = load i64, i64* %__esi, align 8, !dbg !6119
  store i64 %1, i64* %__esi, align 8, !dbg !6119
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6122, metadata !DIExpression()), !dbg !6119
  %2 = load i64, i64* %__edx, align 8, !dbg !6119
  store i64 %2, i64* %__edx, align 8, !dbg !6119
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6123, metadata !DIExpression()), !dbg !6119
  %3 = load i64, i64* %__ecx, align 8, !dbg !6119
  store i64 %3, i64* %__ecx, align 8, !dbg !6119
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6124, metadata !DIExpression()), !dbg !6119
  %4 = load i64, i64* %__eax, align 8, !dbg !6119
  store i64 %4, i64* %__eax, align 8, !dbg !6119
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6119
  %6 = call i64 @llvm.read_register.i64(metadata !4735), !dbg !6125
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #10, !dbg !6125, !srcloc !6128
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6125
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6125
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6125
  call void @llvm.write_register.i64(metadata !4735, i64 %asmresult1), !dbg !6125
  %8 = load i64, i64* %__eax, align 8, !dbg !6125
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6129, metadata !DIExpression()), !dbg !6131
  store i64 -1, i64* %__mask, align 8, !dbg !6131
  %9 = load i64, i64* %__mask, align 8, !dbg !6131
  store i64 %9, i64* %tmp, align 8, !dbg !6131
  %10 = load i64, i64* %tmp, align 8, !dbg !6131
  %and = and i64 %8, %10, !dbg !6125
  store i64 %and, i64* %__ret, align 8, !dbg !6125
  %11 = load i64, i64* %__ret, align 8, !dbg !6119
  store i64 %11, i64* %tmp2, align 8, !dbg !6132
  %12 = load i64, i64* %tmp2, align 8, !dbg !6119
  ret i64 %12, !dbg !6133
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6134 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6135, metadata !DIExpression()), !dbg !6137
  %0 = load i64, i64* %__edi, align 8, !dbg !6137
  store i64 %0, i64* %__edi, align 8, !dbg !6137
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6138, metadata !DIExpression()), !dbg !6137
  %1 = load i64, i64* %__esi, align 8, !dbg !6137
  store i64 %1, i64* %__esi, align 8, !dbg !6137
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6139, metadata !DIExpression()), !dbg !6137
  %2 = load i64, i64* %__edx, align 8, !dbg !6137
  store i64 %2, i64* %__edx, align 8, !dbg !6137
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6140, metadata !DIExpression()), !dbg !6137
  %3 = load i64, i64* %__ecx, align 8, !dbg !6137
  store i64 %3, i64* %__ecx, align 8, !dbg !6137
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6141, metadata !DIExpression()), !dbg !6137
  %4 = load i64, i64* %__eax, align 8, !dbg !6137
  store i64 %4, i64* %__eax, align 8, !dbg !6137
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6137
  %6 = call i64 @llvm.read_register.i64(metadata !4735), !dbg !6137
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #10, !dbg !6137, !srcloc !6142
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6137
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6137
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6137
  call void @llvm.write_register.i64(metadata !4735, i64 %asmresult1), !dbg !6137
  ret void, !dbg !6143
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @queue_cnt(%struct.timestamp_event_queue* %q) #0 !dbg !6144 {
entry:
  %q.addr = alloca %struct.timestamp_event_queue*, align 8
  %cnt = alloca i32, align 4
  store %struct.timestamp_event_queue* %q, %struct.timestamp_event_queue** %q.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timestamp_event_queue** %q.addr, metadata !6145, metadata !DIExpression()), !dbg !6146
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !6147, metadata !DIExpression()), !dbg !6148
  %0 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %q.addr, align 8, !dbg !6149
  %tail = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %0, i32 0, i32 2, !dbg !6150
  %1 = load i32, i32* %tail, align 4, !dbg !6150
  %2 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %q.addr, align 8, !dbg !6151
  %head = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %2, i32 0, i32 1, !dbg !6152
  %3 = load i32, i32* %head, align 8, !dbg !6152
  %sub = sub i32 %1, %3, !dbg !6153
  store i32 %sub, i32* %cnt, align 4, !dbg !6148
  %4 = load i32, i32* %cnt, align 4, !dbg !6154
  %cmp = icmp slt i32 %4, 0, !dbg !6155
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6154

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %cnt, align 4, !dbg !6156
  %add = add i32 128, %5, !dbg !6157
  br label %cond.end, !dbg !6154

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %cnt, align 4, !dbg !6158
  br label %cond.end, !dbg !6154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %6, %cond.false ], !dbg !6154
  ret i32 %cond, !dbg !6159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6160 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6163, metadata !DIExpression()), !dbg !6164
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6165, metadata !DIExpression()), !dbg !6167
  %0 = load i64, i64* %__edi, align 8, !dbg !6167
  store i64 %0, i64* %__edi, align 8, !dbg !6167
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6168, metadata !DIExpression()), !dbg !6167
  %1 = load i64, i64* %__esi, align 8, !dbg !6167
  store i64 %1, i64* %__esi, align 8, !dbg !6167
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6169, metadata !DIExpression()), !dbg !6167
  %2 = load i64, i64* %__edx, align 8, !dbg !6167
  store i64 %2, i64* %__edx, align 8, !dbg !6167
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6170, metadata !DIExpression()), !dbg !6167
  %3 = load i64, i64* %__ecx, align 8, !dbg !6167
  store i64 %3, i64* %__ecx, align 8, !dbg !6167
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6171, metadata !DIExpression()), !dbg !6167
  %4 = load i64, i64* %__eax, align 8, !dbg !6167
  store i64 %4, i64* %__eax, align 8, !dbg !6167
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6167
  %6 = call i64 @llvm.read_register.i64(metadata !4735), !dbg !6167
  %7 = load i64, i64* %f.addr, align 8, !dbg !6167
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #10, !dbg !6167, !srcloc !6172
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6167
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6167
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6167
  call void @llvm.write_register.i64(metadata !4735, i64 %asmresult1), !dbg !6167
  ret void, !dbg !6173
}

; Function Attrs: noredzone
declare dso_local void @ktime_get_snapshot(%struct.system_time_snapshot*) #2

; Function Attrs: noredzone
declare dso_local { i64, i64 } @ns_to_timespec64(i64) #2

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4735}
!llvm.module.flags = !{!4736, !4737, !4738, !4739}
!llvm.ident = !{!4740}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ptp_devt", scope: !2, file: !3, line: 29, type: !422, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !166, globals: !4686, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ptp/ptp_clock.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !36, !42, !49, !57, !63, !73, !80, !86, !95, !103, !153, !159}
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !31, line: 26, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !37, line: 44, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !43, line: 343, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!48 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !50, line: 524, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !50, line: 502, baseType: !7, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !64, line: 566, baseType: !65, size: 32, elements: !66)
!64 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/lizy2001/genbc/linux")
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{!67, !68, !69, !70, !71, !72}
!67 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!68 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!69 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!70 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!71 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!72 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !74, line: 59, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!79 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !81, line: 54, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !87, line: 296, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92, !93, !94}
!89 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!93 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!94 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !96, line: 9, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!99 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!100 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!101 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!102 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !105, file: !104, line: 17, baseType: !7, size: 32, elements: !149)
!104 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_request", file: !104, line: 16, size: 512, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !104, line: 21, baseType: !103, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !104, line: 22, baseType: !109, size: 448, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !104, line: 22, size: 448, elements: !110)
!110 = !{!111, !121}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extts", scope: !109, file: !104, line: 23, baseType: !112, size: 128)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_request", file: !113, line: 101, size: 128, elements: !114)
!113 = !DIFile(filename: "./include/uapi/linux/ptp_clock.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !112, file: !113, line: 102, baseType: !7, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !113, line: 103, baseType: !7, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !112, file: !113, line: 104, baseType: !118, size: 64, offset: 64)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 2)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "perout", scope: !109, file: !104, line: 24, baseType: !122, size: 448)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_perout_request", file: !113, line: 107, size: 448, elements: !123)
!123 = !{!124, !138, !139, !140, !141}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !113, line: 108, baseType: !125, size: 128)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !113, line: 108, size: 128, elements: !126)
!126 = !{!127, !137}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !125, file: !113, line: 113, baseType: !128, size: 128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_time", file: !113, line: 81, size: 128, elements: !129)
!129 = !{!130, !134, !136}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !128, file: !113, line: 82, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !132, line: 30, baseType: !133)
!132 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !128, file: !113, line: 83, baseType: !135, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !132, line: 27, baseType: !7)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !128, file: !113, line: 84, baseType: !135, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !125, file: !113, line: 120, baseType: !128, size: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !122, file: !113, line: 122, baseType: !128, size: 128, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !122, file: !113, line: 123, baseType: !7, size: 32, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !113, line: 124, baseType: !7, size: 32, offset: 288)
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !113, line: 125, baseType: !142, size: 128, offset: 320)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !113, line: 125, size: 128, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !142, file: !113, line: 131, baseType: !128, size: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !142, file: !113, line: 133, baseType: !146, size: 128)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 4)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "PTP_CLK_REQ_EXTTS", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "PTP_CLK_REQ_PEROUT", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "PTP_CLK_REQ_PPS", value: 2, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ptp_pin_function", file: !113, line: 167, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "PTP_PF_NONE", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "PTP_PF_EXTTS", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "PTP_PF_PEROUT", value: 2, isUnsigned: true)
!158 = !DIEnumerator(name: "PTP_PF_PHYSYNC", value: 3, isUnsigned: true)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !160, line: 305, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!163 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!166 = !{!167, !7, !170, !172, !173, !246, !647, !324, !4684, !234, !185}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !168, line: 20, baseType: !169)
!168 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !132, line: 26, baseType: !65)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !171, line: 148, baseType: !7)
!171 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock", file: !175, line: 29, size: 42368, elements: !176)
!175 = !DIFile(filename: "drivers/ptp/ptp_private.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !4496, !4497, !4574, !4575, !4576, !4619, !4620, !4636, !4637, !4638, !4639, !4640, !4653, !4654, !4655, !4657, !4679}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !174, file: !175, line: 30, baseType: !178, size: 1856)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock", file: !179, line: 85, size: 1856, elements: !180)
!179 = !DIFile(filename: "./include/linux/posix-clock.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !4492, !4493, !4494, !4495}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !178, file: !179, line: 86, baseType: !182, size: 640)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock_operations", file: !179, line: 38, size: 640, elements: !183)
!183 = !{!184, !188, !223, !235, !236, !242, !247, !252, !4483, !4487}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !182, file: !179, line: 39, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !187, line: 76, flags: DIFlagFwdDecl)
!187 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "clock_adjtime", scope: !182, file: !179, line: 41, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!65, !192, !193}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex", file: !195, line: 102, size: 1664, elements: !196)
!195 = !DIFile(filename: "./include/uapi/linux/timex.h", directory: "/home/lizy2001/genbc/linux")
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !194, file: !195, line: 103, baseType: !7, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !194, file: !195, line: 105, baseType: !133, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !194, file: !195, line: 106, baseType: !133, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "maxerror", scope: !194, file: !195, line: 107, baseType: !133, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "esterror", scope: !194, file: !195, line: 108, baseType: !133, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !194, file: !195, line: 109, baseType: !65, size: 32, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !194, file: !195, line: 111, baseType: !133, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !194, file: !195, line: 112, baseType: !133, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tolerance", scope: !194, file: !195, line: 113, baseType: !133, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !194, file: !195, line: 116, baseType: !207, size: 128, offset: 576)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex_timeval", file: !195, line: 97, size: 128, elements: !208)
!208 = !{!209, !212}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !207, file: !195, line: 98, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !211, line: 93, baseType: !133)
!211 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !207, file: !195, line: 99, baseType: !133, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !194, file: !195, line: 117, baseType: !133, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ppsfreq", scope: !194, file: !195, line: 119, baseType: !133, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !194, file: !195, line: 120, baseType: !133, size: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !194, file: !195, line: 121, baseType: !65, size: 32, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "stabil", scope: !194, file: !195, line: 123, baseType: !133, size: 64, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "jitcnt", scope: !194, file: !195, line: 124, baseType: !133, size: 64, offset: 1024)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "calcnt", scope: !194, file: !195, line: 125, baseType: !133, size: 64, offset: 1088)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "errcnt", scope: !194, file: !195, line: 126, baseType: !133, size: 64, offset: 1152)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "stbcnt", scope: !194, file: !195, line: 127, baseType: !133, size: 64, offset: 1216)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tai", scope: !194, file: !195, line: 129, baseType: !65, size: 32, offset: 1280)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "clock_gettime", scope: !182, file: !179, line: 43, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!65, !192, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !229, line: 13, size: 128, elements: !230)
!229 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !228, file: !229, line: 14, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !229, line: 8, baseType: !131)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !228, file: !229, line: 15, baseType: !234, size: 64, offset: 64)
!234 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "clock_getres", scope: !182, file: !179, line: 45, baseType: !224, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "clock_settime", scope: !182, file: !179, line: 47, baseType: !237, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!65, !192, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !182, file: !179, line: 53, baseType: !243, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!234, !192, !7, !246}
!246 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !182, file: !179, line: 56, baseType: !248, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!65, !192, !251}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !171, line: 150, baseType: !7)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !182, file: !179, line: 58, baseType: !253, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !192, !258, !4481}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !257, line: 52, baseType: !7)
!257 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !87, line: 916, size: 1856, align: 32, elements: !260)
!260 = !{!261, !279, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4464, !4465, !4474, !4475, !4476, !4477, !4478, !4479, !4480}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !259, file: !87, line: 920, baseType: !262, size: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !87, line: 917, size: 128, elements: !263)
!263 = !{!264, !270}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !262, file: !87, line: 918, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !266, line: 58, size: 64, elements: !267)
!266 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !266, line: 59, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !262, file: !87, line: 919, baseType: !271, size: 128, align: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !171, line: 216, size: 128, align: 64, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !171, line: 217, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !271, file: !171, line: 218, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !274}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !259, file: !87, line: 921, baseType: !280, size: 128, offset: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !281, line: 8, size: 128, elements: !282)
!281 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !280, file: !281, line: 9, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !286, line: 18, flags: DIFlagFwdDecl)
!286 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !280, file: !281, line: 10, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !286, line: 89, size: 1536, elements: !290)
!290 = !{!291, !292, !302, !310, !311, !331, !4415, !4417, !4429, !4430, !4431, !4432, !4433, !4438, !4439, !4440}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !289, file: !286, line: 91, baseType: !7, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !289, file: !286, line: 92, baseType: !293, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !294, line: 277, baseType: !295)
!294 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !294, line: 277, size: 32, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !295, file: !294, line: 277, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !294, line: 70, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !294, line: 65, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !299, file: !294, line: 66, baseType: !7, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !289, file: !286, line: 93, baseType: !303, size: 128, offset: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !304, line: 38, size: 128, elements: !305)
!304 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !304, line: 39, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !303, file: !304, line: 39, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !289, file: !286, line: 94, baseType: !288, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !289, file: !286, line: 95, baseType: !312, size: 128, offset: 256)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !286, line: 47, size: 128, elements: !313)
!313 = !{!314, !327}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !286, line: 48, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !286, line: 48, size: 64, elements: !316)
!316 = !{!317, !323}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !286, line: 49, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !286, line: 49, size: 64, elements: !319)
!319 = !{!320, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !318, file: !286, line: 50, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !168, line: 21, baseType: !135)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !318, file: !286, line: 50, baseType: !321, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !315, file: !286, line: 52, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !168, line: 23, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !132, line: 31, baseType: !326)
!326 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !286, line: 54, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !289, file: !286, line: 96, baseType: !332, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !87, line: 610, size: 4224, elements: !334)
!334 = !{!335, !338, !339, !347, !354, !355, !504, !4139, !4140, !4141, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4383, !4391, !4392, !4393, !4411, !4412, !4413, !4414}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !333, file: !87, line: 611, baseType: !336, size: 16)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !171, line: 19, baseType: !337)
!337 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !333, file: !87, line: 612, baseType: !337, size: 16, offset: 16)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !333, file: !87, line: 613, baseType: !340, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !341, line: 23, baseType: !342)
!341 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 21, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !342, file: !341, line: 22, baseType: !345, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !171, line: 32, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !211, line: 49, baseType: !7)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !333, file: !87, line: 614, baseType: !348, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !341, line: 28, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 26, size: 32, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !349, file: !341, line: 27, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !171, line: 33, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !211, line: 50, baseType: !7)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !333, file: !87, line: 615, baseType: !7, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !333, file: !87, line: 622, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !87, line: 1864, size: 1536, align: 512, elements: !359)
!359 = !{!360, !364, !380, !384, !390, !395, !401, !405, !409, !413, !417, !418, !424, !428, !446, !475, !485, !491, !495, !499, !500}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !358, file: !87, line: 1865, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!288, !332, !288, !7}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !358, file: !87, line: 1866, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !288, !332, !371}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !373, line: 10, size: 128, elements: !374)
!373 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!374 = !{!375, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !372, file: !373, line: 11, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !172}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !372, file: !373, line: 12, baseType: !172, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !358, file: !87, line: 1867, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!65, !332, !65}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !358, file: !87, line: 1868, baseType: !385, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !332, !65}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !87, line: 581, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !358, file: !87, line: 1870, baseType: !391, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!65, !288, !394, !65}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !358, file: !87, line: 1872, baseType: !396, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!65, !332, !288, !336, !399}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !171, line: 30, baseType: !400)
!400 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !358, file: !87, line: 1873, baseType: !402, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!65, !288, !332, !288}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !358, file: !87, line: 1874, baseType: !406, size: 64, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!65, !332, !288}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !358, file: !87, line: 1875, baseType: !410, size: 64, offset: 512)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!65, !332, !288, !368}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !358, file: !87, line: 1876, baseType: !414, size: 64, offset: 576)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!65, !332, !288, !336}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !358, file: !87, line: 1877, baseType: !406, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !358, file: !87, line: 1878, baseType: !419, size: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!65, !332, !288, !336, !422}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !171, line: 16, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !171, line: 13, baseType: !321)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !358, file: !87, line: 1879, baseType: !425, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!65, !332, !288, !332, !288, !7}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !358, file: !87, line: 1881, baseType: !429, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!65, !288, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !87, line: 219, size: 640, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !442, !443, !444, !445}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !433, file: !87, line: 220, baseType: !7, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !433, file: !87, line: 221, baseType: !336, size: 16, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !433, file: !87, line: 222, baseType: !340, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !433, file: !87, line: 223, baseType: !348, size: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !433, file: !87, line: 224, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !171, line: 46, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !211, line: 88, baseType: !133)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !433, file: !87, line: 225, baseType: !228, size: 128, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !433, file: !87, line: 226, baseType: !228, size: 128, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !433, file: !87, line: 227, baseType: !228, size: 128, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !433, file: !87, line: 234, baseType: !258, size: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !358, file: !87, line: 1882, baseType: !447, size: 64, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!65, !450, !452, !321, !7}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !454, line: 22, size: 1152, elements: !455)
!454 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456, !457, !458, !459, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !453, file: !454, line: 23, baseType: !321, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !453, file: !454, line: 24, baseType: !336, size: 16, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !453, file: !454, line: 25, baseType: !7, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !453, file: !454, line: 26, baseType: !460, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !171, line: 104, baseType: !321)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !453, file: !454, line: 27, baseType: !324, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !453, file: !454, line: 28, baseType: !324, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !453, file: !454, line: 37, baseType: !324, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !453, file: !454, line: 38, baseType: !422, size: 32, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !453, file: !454, line: 39, baseType: !422, size: 32, offset: 352)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !453, file: !454, line: 40, baseType: !340, size: 32, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !453, file: !454, line: 41, baseType: !348, size: 32, offset: 416)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !453, file: !454, line: 42, baseType: !440, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !453, file: !454, line: 43, baseType: !228, size: 128, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !453, file: !454, line: 44, baseType: !228, size: 128, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !453, file: !454, line: 45, baseType: !228, size: 128, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !453, file: !454, line: 46, baseType: !228, size: 128, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !453, file: !454, line: 47, baseType: !324, size: 64, offset: 1024)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !453, file: !454, line: 48, baseType: !324, size: 64, offset: 1088)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !358, file: !87, line: 1883, baseType: !476, size: 64, offset: 960)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !288, !394, !482}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !171, line: 60, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !211, line: 73, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !211, line: 15, baseType: !234)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 55, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !211, line: 72, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !211, line: 16, baseType: !246)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !358, file: !87, line: 1884, baseType: !486, size: 64, offset: 1024)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!65, !332, !489, !324, !324}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !87, line: 50, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !358, file: !87, line: 1886, baseType: !492, size: 64, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!65, !332, !227, !65}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !358, file: !87, line: 1887, baseType: !496, size: 64, offset: 1152)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!65, !332, !288, !258, !7, !336}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !358, file: !87, line: 1890, baseType: !414, size: 64, offset: 1216)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !358, file: !87, line: 1891, baseType: !501, size: 64, offset: 1280)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!65, !332, !388, !65}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !333, file: !87, line: 623, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !87, line: 1416, size: 9472, elements: !507)
!507 = !{!508, !514, !515, !516, !517, !518, !568, !3747, !3829, !3912, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3928, !3932, !3933, !3936, !3937, !3940, !3941, !3942, !3983, !4010, !4011, !4012, !4013, !4014, !4015, !4018, !4020, !4027, !4028, !4029, !4030, !4031, !4090, !4091, !4106, !4107, !4108, !4109, !4110, !4113, !4114, !4115, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !506, file: !87, line: 1417, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !171, line: 178, size: 128, elements: !510)
!510 = !{!511, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !171, line: 179, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !509, file: !171, line: 179, baseType: !512, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !506, file: !87, line: 1418, baseType: !422, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !506, file: !87, line: 1419, baseType: !330, size: 8, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !506, file: !87, line: 1420, baseType: !246, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !506, file: !87, line: 1421, baseType: !440, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !506, file: !87, line: 1422, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !87, line: 2228, size: 576, elements: !521)
!521 = !{!522, !523, !524, !531, !535, !539, !543, !544, !545, !555, !559, !560, !561, !565, !566, !567}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !520, file: !87, line: 2229, baseType: !368, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !520, file: !87, line: 2230, baseType: !65, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !520, file: !87, line: 2238, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!65, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !530, line: 28, flags: DIFlagFwdDecl)
!530 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !520, file: !87, line: 2239, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !87, line: 70, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !520, file: !87, line: 2240, baseType: !536, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!288, !519, !65, !368, !172}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !520, file: !87, line: 2242, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !505}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !520, file: !87, line: 2243, baseType: !185, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !87, line: 2244, baseType: !519, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !520, file: !87, line: 2245, baseType: !546, size: 64, offset: 512)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !171, line: 182, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !546, file: !171, line: 183, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !171, line: 186, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !171, line: 187, baseType: !549, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !550, file: !171, line: 187, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !520, file: !87, line: 2247, baseType: !556, offset: 576)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !557, line: 187, elements: !558)
!557 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!558 = !{}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !520, file: !87, line: 2248, baseType: !556, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !520, file: !87, line: 2249, baseType: !556, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !520, file: !87, line: 2250, baseType: !562, offset: 576)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 3)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !520, file: !87, line: 2252, baseType: !556, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !520, file: !87, line: 2253, baseType: !556, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !520, file: !87, line: 2254, baseType: !556, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !506, file: !87, line: 1423, baseType: !569, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !87, line: 1935, size: 1472, elements: !572)
!572 = !{!573, !577, !581, !582, !586, !592, !596, !597, !598, !602, !606, !607, !608, !609, !615, !620, !621, !691, !692, !693, !694, !3731, !3746}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !571, file: !87, line: 1936, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!332, !505}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !571, file: !87, line: 1937, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !332}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !571, file: !87, line: 1938, baseType: !578, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !571, file: !87, line: 1940, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !332, !65}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !571, file: !87, line: 1941, baseType: !587, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!65, !332, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !87, line: 289, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !571, file: !87, line: 1942, baseType: !593, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!65, !332}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !571, file: !87, line: 1943, baseType: !578, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !571, file: !87, line: 1944, baseType: !540, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !571, file: !87, line: 1945, baseType: !599, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!65, !505, !65}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !571, file: !87, line: 1946, baseType: !603, size: 64, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!65, !505}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !571, file: !87, line: 1947, baseType: !603, size: 64, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !571, file: !87, line: 1948, baseType: !603, size: 64, offset: 704)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !571, file: !87, line: 1949, baseType: !603, size: 64, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !571, file: !87, line: 1950, baseType: !610, size: 64, offset: 832)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!65, !288, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !87, line: 57, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !571, file: !87, line: 1951, baseType: !616, size: 64, offset: 896)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!65, !505, !619, !394}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !571, file: !87, line: 1952, baseType: !540, size: 64, offset: 960)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !571, file: !87, line: 1954, baseType: !622, size: 64, offset: 1024)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!65, !625, !288}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !627, line: 16, size: 896, elements: !628)
!627 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !664, !686, !687, !690}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !626, file: !627, line: 17, baseType: !394, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !626, file: !627, line: 18, baseType: !482, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !626, file: !627, line: 19, baseType: !482, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !626, file: !627, line: 20, baseType: !482, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !626, file: !627, line: 21, baseType: !482, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !626, file: !627, line: 22, baseType: !440, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !626, file: !627, line: 23, baseType: !440, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !626, file: !627, line: 24, baseType: !637, size: 192, offset: 448)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !638, line: 53, size: 192, elements: !639)
!638 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!639 = !{!640, !648, !663}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !637, file: !638, line: 54, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !642, line: 13, baseType: !643)
!642 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !171, line: 175, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 173, size: 64, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !644, file: !171, line: 174, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !168, line: 22, baseType: !131)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !637, file: !638, line: 55, baseType: !649, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !650, line: 83, baseType: !651)
!650 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !650, line: 71, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !650, line: 72, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !650, line: 72, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !654, file: !650, line: 73, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !650, line: 20, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !657, file: !650, line: 21, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !661, line: 25, baseType: !662)
!661 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !661, line: 25, elements: !558)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !637, file: !638, line: 59, baseType: !509, size: 128, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !626, file: !627, line: 25, baseType: !665, size: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !627, line: 31, size: 256, elements: !668)
!668 = !{!669, !674, !678, !682}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !667, file: !627, line: 32, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!172, !625, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !667, file: !627, line: 33, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !625, !172}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !627, line: 34, baseType: !679, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!172, !625, !172, !673}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !667, file: !627, line: 35, baseType: !683, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!65, !625, !172}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !626, file: !627, line: 26, baseType: !65, size: 32, offset: 704)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !626, file: !627, line: 27, baseType: !688, size: 64, offset: 768)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !626, file: !627, line: 28, baseType: !172, size: 64, offset: 832)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !571, file: !87, line: 1955, baseType: !622, size: 64, offset: 1088)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !571, file: !87, line: 1956, baseType: !622, size: 64, offset: 1152)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !571, file: !87, line: 1957, baseType: !622, size: 64, offset: 1216)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !571, file: !87, line: 1963, baseType: !695, size: 64, offset: 1280)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!65, !505, !698, !170}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !700, line: 68, size: 512, align: 128, elements: !701)
!700 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!701 = !{!702, !703, !3723, !3730}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !700, line: 69, baseType: !246, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !700, line: 77, baseType: !704, size: 320, offset: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !700, line: 77, size: 320, elements: !705)
!705 = !{!706, !886, !891, !919, !927, !933, !3654, !3722}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !700, line: 78, baseType: !707, size: 320)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !700, line: 78, size: 320, elements: !708)
!708 = !{!709, !710, !884, !885}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !707, file: !700, line: 84, baseType: !509, size: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !707, file: !700, line: 86, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !87, line: 451, size: 1216, align: 64, elements: !713)
!713 = !{!714, !715, !722, !723, !728, !743, !752, !753, !754, !755, !877, !878, !881, !882, !883}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !712, file: !87, line: 452, baseType: !332, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !712, file: !87, line: 453, baseType: !716, size: 128, offset: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !717, line: 292, size: 128, elements: !718)
!717 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !716, file: !717, line: 293, baseType: !649)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !716, file: !717, line: 295, baseType: !170, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !716, file: !717, line: 296, baseType: !172, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !712, file: !87, line: 454, baseType: !170, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !712, file: !87, line: 455, baseType: !724, size: 32, offset: 224)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !171, line: 168, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 166, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !725, file: !171, line: 167, baseType: !65, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !712, file: !87, line: 460, baseType: !729, size: 128, offset: 256)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !730, line: 125, size: 128, elements: !731)
!730 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !742}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !729, file: !730, line: 126, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !730, line: 31, size: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !733, file: !730, line: 32, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !730, line: 24, size: 192, align: 64, elements: !738)
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !737, file: !730, line: 25, baseType: !246, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !737, file: !730, line: 26, baseType: !736, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !737, file: !730, line: 27, baseType: !736, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !729, file: !730, line: 127, baseType: !736, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !712, file: !87, line: 461, baseType: !744, size: 256, offset: 384)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !745, line: 35, size: 256, elements: !746)
!745 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!746 = !{!747, !748, !749, !751}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !745, line: 36, baseType: !641, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !744, file: !745, line: 42, baseType: !641, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !744, file: !745, line: 46, baseType: !750, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !650, line: 29, baseType: !657)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !744, file: !745, line: 47, baseType: !509, size: 128, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !712, file: !87, line: 462, baseType: !246, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !712, file: !87, line: 463, baseType: !246, size: 64, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !712, file: !87, line: 464, baseType: !246, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !712, file: !87, line: 465, baseType: !756, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !87, line: 367, size: 1408, elements: !759)
!759 = !{!760, !764, !768, !772, !776, !780, !786, !792, !796, !801, !805, !809, !813, !841, !845, !851, !852, !853, !857, !862, !866, !873}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !758, file: !87, line: 368, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!65, !698, !590}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !758, file: !87, line: 369, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!65, !258, !698}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !758, file: !87, line: 372, baseType: !769, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!65, !711, !590}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !758, file: !87, line: 375, baseType: !773, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!65, !698}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !758, file: !87, line: 381, baseType: !777, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!65, !258, !711, !512, !7}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !758, file: !87, line: 383, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !87, line: 290, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !758, file: !87, line: 385, baseType: !787, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!65, !258, !711, !440, !7, !7, !790, !791}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !758, file: !87, line: 388, baseType: !793, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!65, !258, !711, !440, !7, !7, !698, !172}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !758, file: !87, line: 393, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!800, !711, !800}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !171, line: 125, baseType: !324)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !758, file: !87, line: 394, baseType: !802, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !698, !7, !7}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !758, file: !87, line: 395, baseType: !806, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!65, !698, !170}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !758, file: !87, line: 396, baseType: !810, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !698}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !758, file: !87, line: 397, baseType: !814, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!479, !817, !839}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !87, line: 320, size: 384, elements: !819)
!819 = !{!820, !821, !822, !826, !827, !828, !831, !832}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !818, file: !87, line: 321, baseType: !258, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !818, file: !87, line: 326, baseType: !440, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !818, file: !87, line: 327, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !817, !234, !234}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !818, file: !87, line: 328, baseType: !172, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !818, file: !87, line: 329, baseType: !65, size: 32, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !818, file: !87, line: 330, baseType: !829, size: 16, offset: 288)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !168, line: 19, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !132, line: 24, baseType: !337)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !818, file: !87, line: 331, baseType: !829, size: 16, offset: 304)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !87, line: 332, baseType: !833, size: 64, offset: 320)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !87, line: 332, size: 64, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !833, file: !87, line: 333, baseType: !7, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !833, file: !87, line: 334, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !87, line: 334, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !87, line: 64, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !758, file: !87, line: 402, baseType: !842, size: 64, offset: 832)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!65, !711, !698, !698, !5}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !758, file: !87, line: 404, baseType: !846, size: 64, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!399, !698, !849}
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !850, line: 305, baseType: !7)
!850 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!851 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !758, file: !87, line: 405, baseType: !810, size: 64, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !758, file: !87, line: 406, baseType: !773, size: 64, offset: 1024)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !758, file: !87, line: 407, baseType: !854, size: 64, offset: 1088)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!65, !698, !246, !246}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !758, file: !87, line: 409, baseType: !858, size: 64, offset: 1152)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !698, !861, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !758, file: !87, line: 410, baseType: !863, size: 64, offset: 1216)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!65, !711, !698}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !758, file: !87, line: 413, baseType: !867, size: 64, offset: 1280)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!65, !870, !258, !872}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !87, line: 61, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !758, file: !87, line: 415, baseType: !874, size: 64, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !258}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !87, line: 466, baseType: !246, size: 64, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !712, file: !87, line: 467, baseType: !879, size: 32, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !880, line: 8, baseType: !321)
!880 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !712, file: !87, line: 468, baseType: !649, offset: 992)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !712, file: !87, line: 469, baseType: !509, size: 128, offset: 1024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !712, file: !87, line: 470, baseType: !172, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !707, file: !700, line: 87, baseType: !246, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !707, file: !700, line: 94, baseType: !246, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !700, line: 96, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !700, line: 96, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !887, file: !700, line: 101, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !171, line: 143, baseType: !324)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !700, line: 103, baseType: !892, size: 320)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !700, line: 103, size: 320, elements: !893)
!893 = !{!894, !904, !907, !908}
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !700, line: 104, baseType: !895, size: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !700, line: 104, size: 128, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !895, file: !700, line: 105, baseType: !509, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !700, line: 106, baseType: !899, size: 128)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !700, line: 106, size: 128, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !899, file: !700, line: 107, baseType: !698, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !899, file: !700, line: 109, baseType: !65, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !899, file: !700, line: 110, baseType: !65, size: 32, offset: 96)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !892, file: !700, line: 117, baseType: !905, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !700, line: 117, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !892, file: !700, line: 119, baseType: !172, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !700, line: 120, baseType: !909, size: 64, offset: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !700, line: 120, size: 64, elements: !910)
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !909, file: !700, line: 121, baseType: !172, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !909, file: !700, line: 122, baseType: !246, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !700, line: 123, baseType: !914, size: 32)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !700, line: 123, size: 32, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !914, file: !700, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !914, file: !700, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !914, file: !700, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !700, line: 130, baseType: !920, size: 192)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !700, line: 130, size: 192, elements: !921)
!921 = !{!922, !923, !924, !925, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !920, file: !700, line: 131, baseType: !246, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !920, file: !700, line: 134, baseType: !330, size: 8, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !920, file: !700, line: 135, baseType: !330, size: 8, offset: 72)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !920, file: !700, line: 136, baseType: !724, size: 32, offset: 96)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !920, file: !700, line: 137, baseType: !7, size: 32, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !700, line: 139, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !700, line: 139, size: 256, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !928, file: !700, line: 140, baseType: !246, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !928, file: !700, line: 141, baseType: !724, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !928, file: !700, line: 143, baseType: !509, size: 128, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !700, line: 145, baseType: !934, size: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !700, line: 145, size: 256, elements: !935)
!935 = !{!936, !937, !940, !941, !3653}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !934, file: !700, line: 146, baseType: !246, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !934, file: !700, line: 147, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !939, line: 509, baseType: !698)
!939 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !934, file: !700, line: 148, baseType: !246, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !700, line: 149, baseType: !942, size: 64, offset: 192)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !700, line: 149, size: 64, elements: !943)
!943 = !{!944, !3652}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !942, file: !700, line: 150, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !700, line: 388, size: 7296, elements: !947)
!947 = !{!948, !3650}
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !700, line: 389, baseType: !949, size: 7296)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !700, line: 389, size: 7296, elements: !950)
!950 = !{!951, !1069, !1070, !1071, !1075, !1076, !1077, !1078, !1079, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1120, !1126, !1129, !1169, !1170, !3634, !3635, !3638, !3639, !3640, !3643, !3644, !3645, !3648, !3649}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !949, file: !700, line: 390, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !700, line: 305, size: 1472, elements: !954)
!954 = !{!955, !956, !957, !958, !959, !960, !961, !962, !969, !970, !975, !976, !979, !1063, !1064, !1065, !1066, !1067}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !953, file: !700, line: 308, baseType: !246, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !953, file: !700, line: 309, baseType: !246, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !953, file: !700, line: 313, baseType: !952, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !953, file: !700, line: 313, baseType: !952, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !953, file: !700, line: 315, baseType: !737, size: 192, align: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !953, file: !700, line: 323, baseType: !246, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !953, file: !700, line: 327, baseType: !945, size: 64, offset: 512)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !953, file: !700, line: 333, baseType: !963, size: 64, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !939, line: 284, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !939, line: 284, size: 64, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !964, file: !939, line: 284, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !968, line: 19, baseType: !246)
!968 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !953, file: !700, line: 334, baseType: !246, size: 64, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !953, file: !700, line: 343, baseType: !971, size: 256, offset: 704)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !700, line: 340, size: 256, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !971, file: !700, line: 341, baseType: !737, size: 192, align: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !971, file: !700, line: 342, baseType: !246, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !953, file: !700, line: 351, baseType: !509, size: 128, offset: 960)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !953, file: !700, line: 353, baseType: !977, size: 64, offset: 1088)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !700, line: 353, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !953, file: !700, line: 356, baseType: !980, size: 64, offset: 1152)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !983)
!983 = !{!984, !988, !989, !993, !997, !1037, !1041, !1045, !1049, !1050, !1051, !1055, !1059}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !982, file: !14, line: 558, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !952}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !982, file: !14, line: 559, baseType: !985, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !982, file: !14, line: 560, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!65, !952, !246}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !982, file: !14, line: 561, baseType: !994, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!65, !952}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !982, file: !14, line: 562, baseType: !998, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !700, line: 682, baseType: !7)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1017, !1024, !1030, !1031, !1032, !1034, !1036}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1003, file: !14, line: 509, baseType: !952, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1003, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1003, file: !14, line: 511, baseType: !170, size: 32, offset: 96)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1003, file: !14, line: 512, baseType: !246, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1003, file: !14, line: 513, baseType: !246, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1003, file: !14, line: 514, baseType: !1011, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !939, line: 385, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !939, line: 385, size: 64, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1013, file: !939, line: 385, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !968, line: 15, baseType: !246)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1003, file: !14, line: 516, baseType: !1018, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !939, line: 359, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !939, line: 359, size: 64, elements: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1020, file: !939, line: 359, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !968, line: 16, baseType: !246)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1003, file: !14, line: 519, baseType: !1025, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !968, line: 21, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !968, line: 21, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1026, file: !968, line: 21, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !968, line: 14, baseType: !246)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1003, file: !14, line: 521, baseType: !698, size: 64, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1003, file: !14, line: 522, baseType: !698, size: 64, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1003, file: !14, line: 528, baseType: !1033, size: 64, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1003, file: !14, line: 532, baseType: !1035, size: 64, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1003, file: !14, line: 536, baseType: !938, size: 64, offset: 704)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !982, file: !14, line: 563, baseType: !1038, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!1001, !1002, !13}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !982, file: !14, line: 565, baseType: !1042, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !1002, !246, !246}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !982, file: !14, line: 567, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!246, !952}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !982, file: !14, line: 571, baseType: !998, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !982, file: !14, line: 574, baseType: !998, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !982, file: !14, line: 579, baseType: !1052, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!65, !952, !246, !172, !65, !65}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !982, file: !14, line: 585, baseType: !1056, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!368, !952}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !982, file: !14, line: 615, baseType: !1060, size: 64, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!698, !952, !246}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !953, file: !700, line: 359, baseType: !246, size: 64, offset: 1216)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !953, file: !700, line: 361, baseType: !258, size: 64, offset: 1280)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !953, file: !700, line: 362, baseType: !172, size: 64, offset: 1344)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !953, file: !700, line: 365, baseType: !641, size: 64, offset: 1408)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !953, file: !700, line: 373, baseType: !1068, offset: 1472)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !700, line: 296, elements: !558)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !949, file: !700, line: 391, baseType: !733, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !949, file: !700, line: 392, baseType: !324, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !949, file: !700, line: 394, baseType: !1072, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!246, !258, !246, !246, !246, !246}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !949, file: !700, line: 398, baseType: !246, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !949, file: !700, line: 399, baseType: !246, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !949, file: !700, line: 405, baseType: !246, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !949, file: !700, line: 406, baseType: !246, size: 64, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !949, file: !700, line: 407, baseType: !1080, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !939, line: 286, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !939, line: 286, size: 64, elements: !1083)
!1083 = !{!1084}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1082, file: !939, line: 286, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !968, line: 18, baseType: !246)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !949, file: !700, line: 416, baseType: !724, size: 32, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !949, file: !700, line: 428, baseType: !724, size: 32, offset: 608)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !949, file: !700, line: 437, baseType: !724, size: 32, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !949, file: !700, line: 447, baseType: !724, size: 32, offset: 672)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !949, file: !700, line: 450, baseType: !641, size: 64, offset: 704)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !949, file: !700, line: 452, baseType: !65, size: 32, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !949, file: !700, line: 454, baseType: !649, offset: 800)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !949, file: !700, line: 457, baseType: !744, size: 256, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !949, file: !700, line: 459, baseType: !509, size: 128, offset: 1088)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !949, file: !700, line: 466, baseType: !246, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !949, file: !700, line: 467, baseType: !246, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !949, file: !700, line: 469, baseType: !246, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !949, file: !700, line: 470, baseType: !246, size: 64, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !949, file: !700, line: 471, baseType: !643, size: 64, offset: 1472)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !949, file: !700, line: 472, baseType: !246, size: 64, offset: 1536)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !949, file: !700, line: 473, baseType: !246, size: 64, offset: 1600)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !949, file: !700, line: 474, baseType: !246, size: 64, offset: 1664)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !949, file: !700, line: 475, baseType: !246, size: 64, offset: 1728)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !949, file: !700, line: 477, baseType: !649, offset: 1792)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !949, file: !700, line: 478, baseType: !246, size: 64, offset: 1792)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !949, file: !700, line: 478, baseType: !246, size: 64, offset: 1856)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !949, file: !700, line: 478, baseType: !246, size: 64, offset: 1920)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !949, file: !700, line: 478, baseType: !246, size: 64, offset: 1984)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !949, file: !700, line: 479, baseType: !246, size: 64, offset: 2048)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !949, file: !700, line: 479, baseType: !246, size: 64, offset: 2112)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !949, file: !700, line: 479, baseType: !246, size: 64, offset: 2176)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !949, file: !700, line: 480, baseType: !246, size: 64, offset: 2240)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !949, file: !700, line: 480, baseType: !246, size: 64, offset: 2304)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !949, file: !700, line: 480, baseType: !246, size: 64, offset: 2368)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !949, file: !700, line: 480, baseType: !246, size: 64, offset: 2432)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !949, file: !700, line: 482, baseType: !1117, size: 2816, offset: 2496)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 2816, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 44)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !949, file: !700, line: 488, baseType: !1121, size: 256, offset: 5312)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1122, line: 60, size: 256, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1121, file: !1122, line: 61, baseType: !1125, size: 256)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 256, elements: !147)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !949, file: !700, line: 490, baseType: !1127, size: 64, offset: 5568)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !700, line: 490, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !949, file: !700, line: 493, baseType: !1130, size: 896, offset: 5632)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1131, line: 53, baseType: !1132)
!1131 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1131, line: 13, size: 896, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1140, !1141, !1142, !1143, !1163, !1164, !1165}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1132, file: !1131, line: 18, baseType: !324, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1132, file: !1131, line: 28, baseType: !643, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1132, file: !1131, line: 31, baseType: !744, size: 256, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1132, file: !1131, line: 32, baseType: !1138, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1131, line: 32, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1132, file: !1131, line: 37, baseType: !337, size: 16, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1132, file: !1131, line: 40, baseType: !637, size: 192, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1132, file: !1131, line: 41, baseType: !172, size: 64, offset: 704)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1132, file: !1131, line: 42, baseType: !1144, size: 64, offset: 768)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1147, line: 13, size: 896, elements: !1148)
!1147 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1146, file: !1147, line: 14, baseType: !172, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1146, file: !1147, line: 15, baseType: !246, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1146, file: !1147, line: 17, baseType: !246, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1146, file: !1147, line: 17, baseType: !246, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1146, file: !1147, line: 19, baseType: !234, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1146, file: !1147, line: 21, baseType: !234, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1146, file: !1147, line: 22, baseType: !234, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1146, file: !1147, line: 23, baseType: !234, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1146, file: !1147, line: 24, baseType: !234, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1146, file: !1147, line: 25, baseType: !234, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1146, file: !1147, line: 26, baseType: !234, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1146, file: !1147, line: 27, baseType: !234, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1146, file: !1147, line: 28, baseType: !234, size: 64, offset: 768)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1146, file: !1147, line: 29, baseType: !234, size: 64, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1132, file: !1131, line: 44, baseType: !724, size: 32, offset: 832)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1132, file: !1131, line: 50, baseType: !829, size: 16, offset: 864)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1132, file: !1131, line: 51, baseType: !1166, size: 16, offset: 880)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !168, line: 18, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !132, line: 23, baseType: !1168)
!1168 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !700, line: 495, baseType: !246, size: 64, offset: 6528)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !949, file: !700, line: 497, baseType: !1171, size: 64, offset: 6592)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !700, line: 381, size: 384, elements: !1173)
!1173 = !{!1174, !1175, !3633}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1172, file: !700, line: 382, baseType: !724, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1172, file: !700, line: 383, baseType: !1176, size: 128, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !700, line: 376, size: 128, elements: !1177)
!1177 = !{!1178, !3631}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1176, file: !700, line: 377, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1181, line: 640, size: 48640, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1189, !1191, !1192, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209, !1227, !1238, !1323, !1324, !1325, !1336, !1337, !1339, !1340, !1341, !1342, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1423, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1757, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1791, !1796, !1870, !1871, !1872, !1873, !1877, !1880, !1883, !1886, !1889, !1925, !2026, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2074, !2075, !2076, !2077, !2078, !2083, !2084, !2085, !2088, !2089, !2092, !2095, !2098, !2101, !2133, !2136, !2137, !2216, !2217, !2220, !2221, !2224, !2225, !2226, !3426, !3427, !3428, !3441, !3442, !3443, !3453, !3458, !3461, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1180, file: !1181, line: 646, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1185, line: 56, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !1185, line: 57, baseType: !246, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1184, file: !1185, line: 58, baseType: !321, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1180, file: !1181, line: 649, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !234)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1180, file: !1181, line: 657, baseType: !172, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1180, file: !1181, line: 658, baseType: !1193, size: 32, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1194, line: 113, baseType: !1195)
!1194 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1194, line: 111, size: 32, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1195, file: !1194, line: 112, baseType: !724, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 660, baseType: !7, size: 32, offset: 288)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1180, file: !1181, line: 661, baseType: !7, size: 32, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1180, file: !1181, line: 684, baseType: !65, size: 32, offset: 352)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1180, file: !1181, line: 686, baseType: !65, size: 32, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1180, file: !1181, line: 687, baseType: !65, size: 32, offset: 416)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1180, file: !1181, line: 688, baseType: !65, size: 32, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1180, file: !1181, line: 689, baseType: !7, size: 32, offset: 480)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1180, file: !1181, line: 691, baseType: !1206, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1181, line: 691, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1180, file: !1181, line: 692, baseType: !1210, size: 832, offset: 576)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1181, line: 451, size: 832, elements: !1211)
!1211 = !{!1212, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1210, file: !1181, line: 453, baseType: !1213, size: 128)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1181, line: 325, size: 128, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1213, file: !1181, line: 326, baseType: !246, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1213, file: !1181, line: 327, baseType: !321, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1210, file: !1181, line: 454, baseType: !737, size: 192, align: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1210, file: !1181, line: 455, baseType: !509, size: 128, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1210, file: !1181, line: 456, baseType: !7, size: 32, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1210, file: !1181, line: 458, baseType: !324, size: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1210, file: !1181, line: 459, baseType: !324, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1210, file: !1181, line: 460, baseType: !324, size: 64, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1210, file: !1181, line: 461, baseType: !324, size: 64, offset: 704)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1210, file: !1181, line: 463, baseType: !324, size: 64, offset: 768)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1210, file: !1181, line: 465, baseType: !1226, offset: 832)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1181, line: 415, elements: !558)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1180, file: !1181, line: 693, baseType: !1228, size: 384, offset: 1408)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1181, line: 489, size: 384, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1228, file: !1181, line: 490, baseType: !509, size: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1228, file: !1181, line: 491, baseType: !246, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1228, file: !1181, line: 492, baseType: !246, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1228, file: !1181, line: 493, baseType: !7, size: 32, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1228, file: !1181, line: 494, baseType: !337, size: 16, offset: 288)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1228, file: !1181, line: 495, baseType: !337, size: 16, offset: 304)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1228, file: !1181, line: 497, baseType: !1237, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1180, file: !1181, line: 697, baseType: !1239, size: 1792, offset: 1792)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1181, line: 507, size: 1792, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1320, !1321}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1239, file: !1181, line: 508, baseType: !737, size: 192, align: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1239, file: !1181, line: 515, baseType: !324, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1239, file: !1181, line: 516, baseType: !324, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1239, file: !1181, line: 517, baseType: !324, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1239, file: !1181, line: 518, baseType: !324, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1239, file: !1181, line: 519, baseType: !324, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1239, file: !1181, line: 526, baseType: !647, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1239, file: !1181, line: 527, baseType: !324, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !1181, line: 528, baseType: !7, size: 32, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1239, file: !1181, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1239, file: !1181, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1239, file: !1181, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1239, file: !1181, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1239, file: !1181, line: 563, baseType: !1255, size: 512, offset: 704)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1256)
!1256 = !{!1257, !1265, !1266, !1271, !1314, !1317, !1318, !1319}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1255, file: !20, line: 119, baseType: !1258, size: 256)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1259, line: 9, size: 256, elements: !1260)
!1259 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1258, file: !1259, line: 10, baseType: !737, size: 192, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1258, file: !1259, line: 11, baseType: !1263, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1264, line: 29, baseType: !647)
!1264 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1255, file: !20, line: 120, baseType: !1263, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1255, file: !20, line: 121, baseType: !1267, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!19, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1255, file: !20, line: 122, baseType: !1272, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1274)
!1274 = !{!1275, !1295, !1296, !1299, !1304, !1305, !1309, !1313}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1273, file: !20, line: 160, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1277, file: !20, line: 215, baseType: !750)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1277, file: !20, line: 216, baseType: !7, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1277, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1277, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1277, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1277, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1277, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1277, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1277, file: !20, line: 233, baseType: !1263, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1277, file: !20, line: 234, baseType: !1270, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1277, file: !20, line: 235, baseType: !1263, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1277, file: !20, line: 236, baseType: !1270, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1277, file: !20, line: 237, baseType: !1292, size: 4096, offset: 512)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1273, size: 4096, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 8)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1273, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1273, file: !20, line: 162, baseType: !1297, size: 32, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !171, line: 27, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !211, line: 96, baseType: !65)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1273, file: !20, line: 163, baseType: !1300, size: 32, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !294, line: 276, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !294, line: 276, size: 32, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1301, file: !294, line: 276, baseType: !298, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1273, file: !20, line: 164, baseType: !1270, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1273, file: !20, line: 165, baseType: !1306, size: 128, offset: 256)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1259, line: 14, size: 128, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1306, file: !1259, line: 15, baseType: !729, size: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1273, file: !20, line: 166, baseType: !1310, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!1263}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1273, file: !20, line: 167, baseType: !1263, size: 64, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1255, file: !20, line: 123, baseType: !1315, size: 8, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !168, line: 17, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !132, line: 21, baseType: !330)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1255, file: !20, line: 124, baseType: !1315, size: 8, offset: 456)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1255, file: !20, line: 125, baseType: !1315, size: 8, offset: 464)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1255, file: !20, line: 126, baseType: !1315, size: 8, offset: 472)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1239, file: !1181, line: 572, baseType: !1255, size: 512, offset: 1216)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1239, file: !1181, line: 580, baseType: !1322, size: 64, offset: 1728)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1180, file: !1181, line: 721, baseType: !7, size: 32, offset: 3584)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1180, file: !1181, line: 722, baseType: !65, size: 32, offset: 3616)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1180, file: !1181, line: 723, baseType: !1326, size: 64, offset: 3648)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1329, line: 17, baseType: !1330)
!1329 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1329, line: 17, size: 64, elements: !1331)
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1330, file: !1329, line: 17, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 64, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 1)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1180, file: !1181, line: 724, baseType: !1328, size: 64, offset: 3712)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1180, file: !1181, line: 749, baseType: !1338, offset: 3776)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1181, line: 290, elements: !558)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1180, file: !1181, line: 751, baseType: !509, size: 128, offset: 3776)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1180, file: !1181, line: 757, baseType: !945, size: 64, offset: 3904)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1180, file: !1181, line: 758, baseType: !945, size: 64, offset: 3968)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1180, file: !1181, line: 761, baseType: !1343, size: 320, offset: 4032)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1122, line: 34, size: 320, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1343, file: !1122, line: 35, baseType: !324, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1343, file: !1122, line: 36, baseType: !1347, size: 256, offset: 64)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 256, elements: !147)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1180, file: !1181, line: 766, baseType: !65, size: 32, offset: 4352)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1180, file: !1181, line: 767, baseType: !65, size: 32, offset: 4384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1180, file: !1181, line: 768, baseType: !65, size: 32, offset: 4416)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1180, file: !1181, line: 770, baseType: !65, size: 32, offset: 4448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1180, file: !1181, line: 772, baseType: !246, size: 64, offset: 4480)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1180, file: !1181, line: 775, baseType: !7, size: 32, offset: 4544)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1180, file: !1181, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1180, file: !1181, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1180, file: !1181, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1180, file: !1181, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1180, file: !1181, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1180, file: !1181, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1180, file: !1181, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1180, file: !1181, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1180, file: !1181, line: 831, baseType: !246, size: 64, offset: 4672)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1180, file: !1181, line: 833, baseType: !1364, size: 384, offset: 4736)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1365)
!1365 = !{!1366, !1371}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1364, file: !25, line: 26, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!234, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !25, line: 27, baseType: !1372, size: 320, offset: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !25, line: 27, size: 320, elements: !1373)
!1373 = !{!1374, !1384, !1408}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1372, file: !25, line: 36, baseType: !1375, size: 320)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1372, file: !25, line: 29, size: 320, elements: !1376)
!1376 = !{!1377, !1379, !1380, !1381, !1382, !1383}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1375, file: !25, line: 30, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1375, file: !25, line: 31, baseType: !321, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !25, line: 32, baseType: !321, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1375, file: !25, line: 33, baseType: !321, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1375, file: !25, line: 34, baseType: !324, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1375, file: !25, line: 35, baseType: !1378, size: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1372, file: !25, line: 46, baseType: !1385, size: 192)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1372, file: !25, line: 38, size: 192, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1407}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1385, file: !25, line: 39, baseType: !1297, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1385, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !25, line: 41, baseType: !1390, size: 64, offset: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !25, line: 41, size: 64, elements: !1391)
!1391 = !{!1392, !1399}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1390, file: !25, line: 42, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1395, line: 7, size: 128, elements: !1396)
!1395 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1394, file: !1395, line: 8, baseType: !210, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1394, file: !1395, line: 9, baseType: !133, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1390, file: !25, line: 43, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1402, line: 7, size: 64, elements: !1403)
!1402 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1403 = !{!1404, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1401, file: !1402, line: 8, baseType: !1405, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1402, line: 5, baseType: !167)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1401, file: !1402, line: 9, baseType: !167, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1385, file: !25, line: 45, baseType: !324, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1372, file: !25, line: 54, baseType: !1409, size: 256)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1372, file: !25, line: 48, size: 256, elements: !1410)
!1410 = !{!1411, !1419, !1420, !1421, !1422}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1409, file: !25, line: 49, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1414, line: 36, size: 64, elements: !1415)
!1414 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1415 = !{!1416, !1417, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1413, file: !1414, line: 37, baseType: !65, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1413, file: !1414, line: 38, baseType: !1168, size: 16, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1413, file: !1414, line: 39, baseType: !1168, size: 16, offset: 48)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1409, file: !25, line: 50, baseType: !65, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1409, file: !25, line: 51, baseType: !65, size: 32, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1409, file: !25, line: 52, baseType: !246, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1409, file: !25, line: 53, baseType: !246, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1180, file: !1181, line: 835, baseType: !1424, size: 32, offset: 5120)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !171, line: 22, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !211, line: 28, baseType: !65)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1180, file: !1181, line: 836, baseType: !1424, size: 32, offset: 5152)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1180, file: !1181, line: 840, baseType: !246, size: 64, offset: 5184)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1180, file: !1181, line: 849, baseType: !1179, size: 64, offset: 5248)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1180, file: !1181, line: 852, baseType: !1179, size: 64, offset: 5312)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1180, file: !1181, line: 857, baseType: !509, size: 128, offset: 5376)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1180, file: !1181, line: 858, baseType: !509, size: 128, offset: 5504)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1180, file: !1181, line: 859, baseType: !1179, size: 64, offset: 5632)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1180, file: !1181, line: 867, baseType: !509, size: 128, offset: 5696)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1180, file: !1181, line: 868, baseType: !509, size: 128, offset: 5824)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1180, file: !1181, line: 871, baseType: !1436, size: 64, offset: 5952)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !96, line: 59, size: 768, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1444, !1445, !1452, !1453}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1437, file: !96, line: 61, baseType: !1193, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1437, file: !96, line: 62, baseType: !7, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1437, file: !96, line: 63, baseType: !649, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1437, file: !96, line: 65, baseType: !1443, size: 256, offset: 64)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 256, elements: !147)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1437, file: !96, line: 66, baseType: !546, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1437, file: !96, line: 68, baseType: !1446, size: 128, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1447, line: 40, baseType: !1448)
!1447 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1447, line: 36, size: 128, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1448, file: !1447, line: 37, baseType: !649)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1448, file: !1447, line: 38, baseType: !509, size: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1437, file: !96, line: 69, baseType: !271, size: 128, align: 64, offset: 512)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1437, file: !96, line: 70, baseType: !1454, size: 128, offset: 640)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1455, size: 128, elements: !1334)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !96, line: 54, size: 128, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1455, file: !96, line: 55, baseType: !65, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1455, file: !96, line: 56, baseType: !1459, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1461, line: 20, size: 1088, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !{!1463, !1468, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1754, !1755, !1756}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1460, file: !1461, line: 21, baseType: !1464, size: 32)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1465, line: 19, size: 32, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1464, file: !1465, line: 20, baseType: !1193, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1460, file: !1461, line: 22, baseType: !1469, size: 192, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1470, line: 19, size: 192, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1469, file: !1470, line: 20, baseType: !716, size: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1469, file: !1470, line: 21, baseType: !7, size: 32, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1469, file: !1470, line: 22, baseType: !7, size: 32, offset: 160)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1460, file: !1461, line: 23, baseType: !271, size: 128, align: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1460, file: !1461, line: 24, baseType: !7, size: 32, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1460, file: !1461, line: 25, baseType: !1179, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1460, file: !1461, line: 26, baseType: !905, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1460, file: !1461, line: 27, baseType: !7, size: 32, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1460, file: !1461, line: 28, baseType: !1459, size: 64, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1460, file: !1461, line: 32, baseType: !1482, size: 64, offset: 704)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1484, line: 56, size: 4160, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1485 = !{!1486, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1525, !1526, !1527, !1634, !1635, !1647, !1739, !1740, !1752}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1483, file: !1484, line: 57, baseType: !1487, size: 576)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1484, line: 23, size: 576, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1487, file: !1484, line: 24, baseType: !321, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1484, line: 25, baseType: !1491, size: 512, offset: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1484, line: 25, size: 512, elements: !1492)
!1492 = !{!1493, !1502}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1491, file: !1484, line: 26, baseType: !1494, size: 480)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1495, size: 480, elements: !1500)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1484, line: 17, size: 96, elements: !1496)
!1496 = !{!1497, !1498, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1495, file: !1484, line: 18, baseType: !321, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1495, file: !1484, line: 19, baseType: !321, size: 32, offset: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1495, file: !1484, line: 20, baseType: !321, size: 32, offset: 64)
!1500 = !{!1501}
!1501 = !DISubrange(count: 5)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !1484, line: 27, baseType: !1503, size: 128)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !1484, line: 27, size: 128, elements: !1504)
!1504 = !{!1505, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1503, file: !1484, line: 28, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1503, file: !1484, line: 29, baseType: !1506, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1483, file: !1484, line: 58, baseType: !1487, size: 576, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1483, file: !1484, line: 59, baseType: !1487, size: 576, offset: 1152)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1483, file: !1484, line: 60, baseType: !724, size: 32, offset: 1728)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1483, file: !1484, line: 61, baseType: !1482, size: 64, offset: 1792)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1483, file: !1484, line: 62, baseType: !65, size: 32, offset: 1856)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1483, file: !1484, line: 63, baseType: !340, size: 32, offset: 1888)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1483, file: !1484, line: 64, baseType: !348, size: 32, offset: 1920)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1483, file: !1484, line: 65, baseType: !1516, size: 192, offset: 1984)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1517, line: 7, size: 192, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1518 = !{!1519, !1520, !1524}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1516, file: !1517, line: 8, baseType: !641, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1516, file: !1517, line: 9, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1517, line: 5, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1516, file: !1517, line: 10, baseType: !7, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1483, file: !1484, line: 66, baseType: !246, size: 64, offset: 2176)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1483, file: !1484, line: 74, baseType: !509, size: 128, offset: 2240)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1483, file: !1484, line: 75, baseType: !1528, size: 64, offset: 2368)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1530, line: 189, size: 1664, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1533, !1536, !1541, !1542, !1545, !1546, !1551, !1552, !1553, !1554, !1556, !1557, !1558, !1559, !1560, !1598, !1619}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1529, file: !1530, line: 190, baseType: !1193, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1529, file: !1530, line: 191, baseType: !1534, size: 32, offset: 32)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1530, line: 28, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !171, line: 98, baseType: !167)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1530, line: 192, baseType: !1537, size: 192, offset: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !1530, line: 192, size: 192, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1537, file: !1530, line: 193, baseType: !509, size: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1537, file: !1530, line: 194, baseType: !737, size: 192, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1529, file: !1530, line: 199, baseType: !744, size: 256, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1529, file: !1530, line: 200, baseType: !1543, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1530, line: 200, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1529, file: !1530, line: 201, baseType: !172, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1530, line: 202, baseType: !1547, size: 64, offset: 640)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !1530, line: 202, size: 64, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1547, file: !1530, line: 203, baseType: !232, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1547, file: !1530, line: 204, baseType: !232, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1529, file: !1530, line: 206, baseType: !232, size: 64, offset: 704)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1529, file: !1530, line: 207, baseType: !340, size: 32, offset: 768)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1529, file: !1530, line: 208, baseType: !348, size: 32, offset: 800)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1529, file: !1530, line: 209, baseType: !1555, size: 32, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1530, line: 31, baseType: !460)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1529, file: !1530, line: 210, baseType: !337, size: 16, offset: 864)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1529, file: !1530, line: 211, baseType: !337, size: 16, offset: 880)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1529, file: !1530, line: 215, baseType: !1168, size: 16, offset: 896)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !1530, line: 222, baseType: !246, size: 64, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1530, line: 239, baseType: !1561, size: 320, offset: 1024)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !1530, line: 239, size: 320, elements: !1562)
!1562 = !{!1563, !1590}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1561, file: !1530, line: 240, baseType: !1564, size: 320)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1530, line: 108, size: 320, elements: !1565)
!1565 = !{!1566, !1567, !1579, !1582, !1589}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1564, file: !1530, line: 110, baseType: !246, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1530, line: 111, baseType: !1568, size: 64, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1564, file: !1530, line: 111, size: 64, elements: !1569)
!1569 = !{!1570, !1578}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !1530, line: 112, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !1530, line: 112, size: 64, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1571, file: !1530, line: 114, baseType: !829, size: 16)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1571, file: !1530, line: 115, baseType: !1575, size: 48, offset: 16)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 48, elements: !1576)
!1576 = !{!1577}
!1577 = !DISubrange(count: 6)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1568, file: !1530, line: 121, baseType: !246, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1564, file: !1530, line: 123, baseType: !1580, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1530, line: 96, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1564, file: !1530, line: 124, baseType: !1583, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1530, line: 102, size: 192, elements: !1585)
!1585 = !{!1586, !1587, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1584, file: !1530, line: 103, baseType: !271, size: 128, align: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1584, file: !1530, line: 104, baseType: !1193, size: 32, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1584, file: !1530, line: 105, baseType: !399, size: 8, offset: 160)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1564, file: !1530, line: 125, baseType: !368, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1530, line: 241, baseType: !1591, size: 320)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1561, file: !1530, line: 241, size: 320, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1591, file: !1530, line: 242, baseType: !246, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1591, file: !1530, line: 243, baseType: !246, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1591, file: !1530, line: 244, baseType: !1580, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1591, file: !1530, line: 245, baseType: !1583, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1591, file: !1530, line: 246, baseType: !394, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1530, line: 254, baseType: !1599, size: 256, offset: 1344)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !1530, line: 254, size: 256, elements: !1600)
!1600 = !{!1601, !1607}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1599, file: !1530, line: 255, baseType: !1602, size: 256)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1530, line: 128, size: 256, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1602, file: !1530, line: 129, baseType: !172, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1602, file: !1530, line: 130, baseType: !1606, size: 256)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !147)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1530, line: 256, baseType: !1608, size: 256)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1599, file: !1530, line: 256, size: 256, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1608, file: !1530, line: 258, baseType: !509, size: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1608, file: !1530, line: 259, baseType: !1612, size: 128, offset: 128)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1613, line: 22, size: 128, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1614 = !{!1615, !1618}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1612, file: !1613, line: 23, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1613, line: 23, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1612, file: !1613, line: 24, baseType: !246, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1529, file: !1530, line: 274, baseType: !1620, size: 64, offset: 1600)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1530, line: 170, size: 192, elements: !1622)
!1622 = !{!1623, !1632, !1633}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1621, file: !1530, line: 171, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1530, line: 165, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!65, !1528, !1628, !1630, !1528}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1602)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1621, file: !1530, line: 172, baseType: !1528, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1621, file: !1530, line: 173, baseType: !1580, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1483, file: !1484, line: 76, baseType: !744, size: 256, offset: 2432)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1483, file: !1484, line: 83, baseType: !1636, size: 256, offset: 2688)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1637, line: 102, size: 256, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1638 = !{!1639, !1640, !1641}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1636, file: !1637, line: 103, baseType: !641, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1636, file: !1637, line: 104, baseType: !509, size: 128, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1636, file: !1637, line: 105, baseType: !1642, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1637, line: 21, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1483, file: !1484, line: 85, baseType: !1648, size: 768, offset: 2944)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !1649, line: 156, size: 768, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !{!1651, !1656}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1648, file: !1649, line: 157, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!65, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1648, file: !1649, line: 158, baseType: !1657, size: 704, offset: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !1649, line: 150, size: 704, elements: !1658)
!1658 = !{!1659, !1738}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1657, file: !1649, line: 152, baseType: !1660, size: 640)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !1649, line: 131, size: 640, elements: !1661)
!1661 = !{!1662, !1695, !1707, !1708, !1728, !1729, !1731, !1737}
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1649, line: 132, baseType: !1663, size: 192)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1660, file: !1649, line: 132, size: 192, elements: !1664)
!1664 = !{!1665, !1694}
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !1649, line: 133, baseType: !1666, size: 192)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !1649, line: 133, size: 192, elements: !1667)
!1667 = !{!1668, !1691, !1692, !1693}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1666, file: !1649, line: 134, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !1649, line: 112, size: 512, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1683, !1689, !1690}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !1670, file: !1649, line: 113, baseType: !368, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1670, file: !1649, line: 114, baseType: !172, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1670, file: !1649, line: 115, baseType: !65, size: 32, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1670, file: !1649, line: 116, baseType: !336, size: 16, offset: 160)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1670, file: !1649, line: 117, baseType: !1669, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !1670, file: !1649, line: 118, baseType: !1678, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !1649, line: 47, baseType: !1680)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!65, !1669, !65, !172, !1682, !673}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1670, file: !1649, line: 119, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !1649, line: 94, size: 192, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1685, file: !1649, line: 95, baseType: !724, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1685, file: !1649, line: 96, baseType: !1446, size: 128, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !1670, file: !1649, line: 120, baseType: !172, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !1670, file: !1649, line: 121, baseType: !172, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1666, file: !1649, line: 135, baseType: !65, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1666, file: !1649, line: 136, baseType: !65, size: 32, offset: 96)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1666, file: !1649, line: 137, baseType: !65, size: 32, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1663, file: !1649, line: 139, baseType: !271, size: 128, align: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1660, file: !1649, line: 141, baseType: !1696, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1698, line: 26, size: 192, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1697, file: !1698, line: 27, baseType: !7, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1697, file: !1698, line: 28, baseType: !1702, size: 128, offset: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1703, line: 43, size: 128, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1702, file: !1703, line: 44, baseType: !750)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1702, file: !1703, line: 45, baseType: !509, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1660, file: !1649, line: 142, baseType: !1669, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1660, file: !1649, line: 143, baseType: !1709, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !1649, line: 161, size: 960, elements: !1711)
!1711 = !{!1712, !1713, !1717, !1724}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1710, file: !1649, line: 162, baseType: !1648, size: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1710, file: !1649, line: 163, baseType: !1714, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1655, !1709}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1710, file: !1649, line: 164, baseType: !1718, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1721, !1669, !1722, !1723}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1710, file: !1649, line: 167, baseType: !1725, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!65, !1721, !1669}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1660, file: !1649, line: 144, baseType: !1655, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1660, file: !1649, line: 145, baseType: !1730, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1660, file: !1649, line: 146, baseType: !1732, size: 64, offset: 512)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !1649, line: 124, size: 256, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1733, file: !1649, line: 125, baseType: !737, size: 192, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1733, file: !1649, line: 126, baseType: !1721, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1660, file: !1649, line: 147, baseType: !546, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1657, file: !1649, line: 153, baseType: !733, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1483, file: !1484, line: 86, baseType: !1721, size: 64, offset: 3712)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1483, file: !1484, line: 88, baseType: !1741, size: 64, offset: 3776)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1484, line: 92, size: 576, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747, !1748}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1742, file: !1484, line: 93, baseType: !550, size: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1742, file: !1484, line: 94, baseType: !1482, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1742, file: !1484, line: 95, baseType: !340, size: 32, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1742, file: !1484, line: 96, baseType: !65, size: 32, offset: 224)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1742, file: !1484, line: 97, baseType: !1749, size: 320, offset: 256)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 320, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 10)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1483, file: !1484, line: 89, baseType: !1753, size: 320, offset: 3840)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 320, elements: !1750)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1460, file: !1461, line: 33, baseType: !1741, size: 64, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1460, file: !1461, line: 34, baseType: !65, size: 32, offset: 832)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1460, file: !1461, line: 35, baseType: !1516, size: 192, offset: 896)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1180, file: !1181, line: 872, baseType: !1758, size: 512, offset: 6016)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 512, elements: !147)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1180, file: !1181, line: 873, baseType: !509, size: 128, offset: 6528)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1180, file: !1181, line: 874, baseType: !509, size: 128, offset: 6656)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1180, file: !1181, line: 876, baseType: !1696, size: 64, offset: 6784)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1180, file: !1181, line: 879, baseType: !619, size: 64, offset: 6848)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1180, file: !1181, line: 882, baseType: !619, size: 64, offset: 6912)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1180, file: !1181, line: 884, baseType: !324, size: 64, offset: 6976)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1180, file: !1181, line: 885, baseType: !324, size: 64, offset: 7040)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1180, file: !1181, line: 890, baseType: !324, size: 64, offset: 7104)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1180, file: !1181, line: 891, baseType: !1768, size: 128, offset: 7168)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1181, line: 242, size: 128, elements: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1768, file: !1181, line: 244, baseType: !324, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1768, file: !1181, line: 245, baseType: !324, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !1181, line: 246, baseType: !750, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1180, file: !1181, line: 900, baseType: !246, size: 64, offset: 7296)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1180, file: !1181, line: 901, baseType: !246, size: 64, offset: 7360)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1180, file: !1181, line: 904, baseType: !324, size: 64, offset: 7424)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1180, file: !1181, line: 907, baseType: !324, size: 64, offset: 7488)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1180, file: !1181, line: 910, baseType: !246, size: 64, offset: 7552)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1180, file: !1181, line: 911, baseType: !246, size: 64, offset: 7616)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1180, file: !1181, line: 914, baseType: !1780, size: 640, offset: 7680)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1781, line: 123, size: 640, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1789, !1790}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1780, file: !1781, line: 124, baseType: !1784, size: 576)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1785, size: 576, elements: !563)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1781, line: 108, size: 192, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1785, file: !1781, line: 109, baseType: !324, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1785, file: !1781, line: 110, baseType: !1306, size: 128, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1780, file: !1781, line: 125, baseType: !7, size: 32, offset: 576)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1780, file: !1781, line: 126, baseType: !7, size: 32, offset: 608)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1180, file: !1181, line: 917, baseType: !1792, size: 192, offset: 8320)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1781, line: 134, size: 192, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1792, file: !1781, line: 135, baseType: !271, size: 128, align: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1792, file: !1781, line: 136, baseType: !7, size: 32, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1180, file: !1181, line: 923, baseType: !1797, size: 64, offset: 8512)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1800, line: 111, size: 1280, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1854, !1855, !1865}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1799, file: !1800, line: 112, baseType: !724, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1799, file: !1800, line: 120, baseType: !340, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1799, file: !1800, line: 121, baseType: !348, size: 32, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1799, file: !1800, line: 122, baseType: !340, size: 32, offset: 96)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1799, file: !1800, line: 123, baseType: !348, size: 32, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1799, file: !1800, line: 124, baseType: !340, size: 32, offset: 160)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1799, file: !1800, line: 125, baseType: !348, size: 32, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1799, file: !1800, line: 126, baseType: !340, size: 32, offset: 224)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1799, file: !1800, line: 127, baseType: !348, size: 32, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1799, file: !1800, line: 128, baseType: !7, size: 32, offset: 288)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1799, file: !1800, line: 129, baseType: !1813, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1814, line: 26, baseType: !1815)
!1814 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1814, line: 24, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1815, file: !1814, line: 25, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !119)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1799, file: !1800, line: 130, baseType: !1813, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1799, file: !1800, line: 131, baseType: !1813, size: 64, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1799, file: !1800, line: 132, baseType: !1813, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1799, file: !1800, line: 133, baseType: !1813, size: 64, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1799, file: !1800, line: 135, baseType: !330, size: 8, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1799, file: !1800, line: 137, baseType: !1528, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1799, file: !1800, line: 138, baseType: !1528, size: 64, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1799, file: !1800, line: 139, baseType: !1528, size: 64, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1799, file: !1800, line: 140, baseType: !1528, size: 64, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1799, file: !1800, line: 145, baseType: !1829, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1831, line: 13, size: 896, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1830, file: !1831, line: 14, baseType: !1193, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1830, file: !1831, line: 15, baseType: !724, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1830, file: !1831, line: 16, baseType: !724, size: 32, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1830, file: !1831, line: 21, baseType: !641, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1830, file: !1831, line: 27, baseType: !246, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1830, file: !1831, line: 28, baseType: !246, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1830, file: !1831, line: 29, baseType: !641, size: 64, offset: 320)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1830, file: !1831, line: 32, baseType: !550, size: 128, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1830, file: !1831, line: 33, baseType: !340, size: 32, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1830, file: !1831, line: 37, baseType: !641, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1830, file: !1831, line: 44, baseType: !1844, size: 256, offset: 640)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1845, line: 15, size: 256, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1844, file: !1845, line: 16, baseType: !750)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1844, file: !1845, line: 18, baseType: !65, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1844, file: !1845, line: 19, baseType: !65, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1844, file: !1845, line: 20, baseType: !65, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1844, file: !1845, line: 21, baseType: !65, size: 32, offset: 96)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1844, file: !1845, line: 22, baseType: !246, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1844, file: !1845, line: 23, baseType: !246, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1799, file: !1800, line: 146, baseType: !1482, size: 64, offset: 1024)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1799, file: !1800, line: 147, baseType: !1856, size: 64, offset: 1088)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1800, line: 25, size: 64, elements: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1857, file: !1800, line: 26, baseType: !724, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1857, file: !1800, line: 27, baseType: !65, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1857, file: !1800, line: 28, baseType: !1862, offset: 64)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, elements: !1863)
!1863 = !{!1864}
!1864 = !DISubrange(count: 0)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 149, baseType: !1866, size: 128, offset: 1152)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 149, size: 128, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1866, file: !1800, line: 150, baseType: !65, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1866, file: !1800, line: 151, baseType: !271, size: 128, align: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1180, file: !1181, line: 926, baseType: !1797, size: 64, offset: 8576)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1180, file: !1181, line: 929, baseType: !1797, size: 64, offset: 8640)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1180, file: !1181, line: 933, baseType: !1528, size: 64, offset: 8704)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1180, file: !1181, line: 943, baseType: !1874, size: 128, offset: 8768)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !1875)
!1875 = !{!1876}
!1876 = !DISubrange(count: 16)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1180, file: !1181, line: 945, baseType: !1878, size: 64, offset: 8896)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1181, line: 49, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1180, file: !1181, line: 956, baseType: !1881, size: 64, offset: 8960)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1181, line: 45, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1180, file: !1181, line: 959, baseType: !1884, size: 64, offset: 9024)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1181, line: 959, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1180, file: !1181, line: 962, baseType: !1887, size: 64, offset: 9088)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1181, line: 66, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1180, file: !1181, line: 966, baseType: !1890, size: 64, offset: 9152)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1892, line: 31, size: 576, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1895, !1898, !1901, !1904, !1905, !1908, !1911, !1912}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1891, file: !1892, line: 32, baseType: !724, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1891, file: !1892, line: 33, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1892, line: 9, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1891, file: !1892, line: 34, baseType: !1899, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1892, line: 10, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1891, file: !1892, line: 35, baseType: !1902, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1892, line: 8, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1891, file: !1892, line: 36, baseType: !1459, size: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1891, file: !1892, line: 37, baseType: !1906, size: 64, offset: 320)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1530, line: 34, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1891, file: !1892, line: 38, baseType: !1909, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1892, line: 38, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1891, file: !1892, line: 39, baseType: !1909, size: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1891, file: !1892, line: 40, baseType: !1913, size: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1915, line: 856, size: 448, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!1916 = !{!1917, !1918, !1919, !1920, !1921}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1914, file: !1915, line: 857, baseType: !1193, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1914, file: !1915, line: 858, baseType: !1516, size: 192, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1914, file: !1915, line: 859, baseType: !1482, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1914, file: !1915, line: 860, baseType: !1741, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1914, file: !1915, line: 861, baseType: !1922, size: 64, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1924, line: 16, flags: DIFlagFwdDecl)
!1924 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1180, file: !1181, line: 969, baseType: !1926, size: 64, offset: 9216)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1928, line: 82, size: 7296, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1935, !1936, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1965, !1974, !1975, !1977, !1978, !1979, !1982, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2012, !2013, !2020, !2021, !2022, !2023, !2024, !2025}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1927, file: !1928, line: 83, baseType: !1193, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1927, file: !1928, line: 84, baseType: !724, size: 32, offset: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1927, file: !1928, line: 85, baseType: !65, size: 32, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1927, file: !1928, line: 86, baseType: !509, size: 128, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1927, file: !1928, line: 88, baseType: !1446, size: 128, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1927, file: !1928, line: 91, baseType: !1179, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1927, file: !1928, line: 94, baseType: !1937, size: 192, offset: 448)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1938, line: 30, size: 192, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1937, file: !1938, line: 31, baseType: !509, size: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1937, file: !1938, line: 32, baseType: !1942, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1943, line: 25, baseType: !1944)
!1943 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1943, line: 23, size: 64, elements: !1945)
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1944, file: !1943, line: 24, baseType: !1333, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1927, file: !1928, line: 97, baseType: !546, size: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1927, file: !1928, line: 100, baseType: !65, size: 32, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1927, file: !1928, line: 106, baseType: !65, size: 32, offset: 736)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1927, file: !1928, line: 107, baseType: !1179, size: 64, offset: 768)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1927, file: !1928, line: 110, baseType: !65, size: 32, offset: 832)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1927, file: !1928, line: 111, baseType: !7, size: 32, offset: 864)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1927, file: !1928, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1927, file: !1928, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1927, file: !1928, line: 128, baseType: !65, size: 32, offset: 928)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1927, file: !1928, line: 129, baseType: !509, size: 128, offset: 960)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1927, file: !1928, line: 132, baseType: !1255, size: 512, offset: 1088)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1927, file: !1928, line: 133, baseType: !1263, size: 64, offset: 1600)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1927, file: !1928, line: 140, baseType: !1960, size: 256, offset: 1664)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1961, size: 256, elements: !119)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1928, line: 38, size: 128, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1961, file: !1928, line: 39, baseType: !324, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1961, file: !1928, line: 40, baseType: !324, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1927, file: !1928, line: 146, baseType: !1966, size: 192, offset: 1920)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1928, line: 66, size: 192, elements: !1967)
!1967 = !{!1968}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1966, file: !1928, line: 67, baseType: !1969, size: 192)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1928, line: 47, size: 192, elements: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1969, file: !1928, line: 48, baseType: !643, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1969, file: !1928, line: 49, baseType: !643, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1969, file: !1928, line: 50, baseType: !643, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1927, file: !1928, line: 150, baseType: !1780, size: 640, offset: 2112)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1927, file: !1928, line: 153, baseType: !1976, size: 256, offset: 2752)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1436, size: 256, elements: !147)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1927, file: !1928, line: 159, baseType: !1436, size: 64, offset: 3008)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1927, file: !1928, line: 162, baseType: !65, size: 32, offset: 3072)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1927, file: !1928, line: 164, baseType: !1980, size: 64, offset: 3136)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1928, line: 164, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1927, file: !1928, line: 175, baseType: !1983, size: 32, offset: 3200)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !294, line: 805, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 798, size: 32, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1984, file: !294, line: 803, baseType: !293, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1984, file: !294, line: 804, baseType: !649, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1927, file: !1928, line: 176, baseType: !324, size: 64, offset: 3264)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1927, file: !1928, line: 176, baseType: !324, size: 64, offset: 3328)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1927, file: !1928, line: 176, baseType: !324, size: 64, offset: 3392)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1927, file: !1928, line: 176, baseType: !324, size: 64, offset: 3456)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1927, file: !1928, line: 177, baseType: !324, size: 64, offset: 3520)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1927, file: !1928, line: 178, baseType: !324, size: 64, offset: 3584)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1927, file: !1928, line: 179, baseType: !1768, size: 128, offset: 3648)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1927, file: !1928, line: 180, baseType: !246, size: 64, offset: 3776)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1927, file: !1928, line: 180, baseType: !246, size: 64, offset: 3840)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1927, file: !1928, line: 180, baseType: !246, size: 64, offset: 3904)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1927, file: !1928, line: 180, baseType: !246, size: 64, offset: 3968)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1927, file: !1928, line: 181, baseType: !246, size: 64, offset: 4032)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1927, file: !1928, line: 181, baseType: !246, size: 64, offset: 4096)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1927, file: !1928, line: 181, baseType: !246, size: 64, offset: 4160)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1927, file: !1928, line: 181, baseType: !246, size: 64, offset: 4224)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1927, file: !1928, line: 182, baseType: !246, size: 64, offset: 4288)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1927, file: !1928, line: 182, baseType: !246, size: 64, offset: 4352)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1927, file: !1928, line: 182, baseType: !246, size: 64, offset: 4416)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1927, file: !1928, line: 182, baseType: !246, size: 64, offset: 4480)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1927, file: !1928, line: 183, baseType: !246, size: 64, offset: 4544)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1927, file: !1928, line: 183, baseType: !246, size: 64, offset: 4608)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1927, file: !1928, line: 184, baseType: !2010, offset: 4672)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2011, line: 12, elements: !558)
!2011 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1927, file: !1928, line: 192, baseType: !326, size: 64, offset: 4672)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1927, file: !1928, line: 203, baseType: !2014, size: 2048, offset: 4736)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2015, size: 2048, elements: !1875)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2016, line: 43, size: 128, elements: !2017)
!2016 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2015, file: !2016, line: 44, baseType: !484, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2015, file: !2016, line: 45, baseType: !484, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1927, file: !1928, line: 220, baseType: !399, size: 8, offset: 6784)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1927, file: !1928, line: 221, baseType: !1168, size: 16, offset: 6800)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1927, file: !1928, line: 222, baseType: !1168, size: 16, offset: 6816)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1927, file: !1928, line: 224, baseType: !945, size: 64, offset: 6848)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1927, file: !1928, line: 227, baseType: !637, size: 192, offset: 6912)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1927, file: !1928, line: 233, baseType: !637, size: 192, offset: 7104)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1180, file: !1181, line: 970, baseType: !2027, size: 64, offset: 9280)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1928, line: 20, size: 16576, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2028, file: !1928, line: 21, baseType: !649)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2028, file: !1928, line: 22, baseType: !1193, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2028, file: !1928, line: 23, baseType: !1446, size: 128, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2028, file: !1928, line: 24, baseType: !2034, size: 16384, offset: 192)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2035, size: 16384, elements: !2055)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1938, line: 49, size: 256, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2035, file: !1938, line: 50, baseType: !2038, size: 256)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1938, line: 35, size: 256, elements: !2039)
!2039 = !{!2040, !2047, !2048, !2054}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2038, file: !1938, line: 37, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2042, line: 19, baseType: !2043)
!2042 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2042, line: 18, baseType: !2045)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !65}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2038, file: !1938, line: 38, baseType: !246, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2038, file: !1938, line: 44, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2042, line: 22, baseType: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2042, line: 21, baseType: !2052)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2038, file: !1938, line: 46, baseType: !1942, size: 64, offset: 192)
!2055 = !{!2056}
!2056 = !DISubrange(count: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1180, file: !1181, line: 971, baseType: !1942, size: 64, offset: 9344)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1180, file: !1181, line: 972, baseType: !1942, size: 64, offset: 9408)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1180, file: !1181, line: 974, baseType: !1942, size: 64, offset: 9472)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1180, file: !1181, line: 975, baseType: !1937, size: 192, offset: 9536)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1180, file: !1181, line: 976, baseType: !246, size: 64, offset: 9728)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1180, file: !1181, line: 977, baseType: !482, size: 64, offset: 9792)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1180, file: !1181, line: 978, baseType: !7, size: 32, offset: 9856)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1180, file: !1181, line: 980, baseType: !274, size: 64, offset: 9920)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1180, file: !1181, line: 989, baseType: !2066, size: 128, offset: 9984)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2067, line: 35, size: 128, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2066, file: !2067, line: 36, baseType: !65, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2066, file: !2067, line: 37, baseType: !724, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2066, file: !2067, line: 38, baseType: !2072, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2067, line: 23, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1180, file: !1181, line: 992, baseType: !324, size: 64, offset: 10112)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1180, file: !1181, line: 993, baseType: !324, size: 64, offset: 10176)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1180, file: !1181, line: 996, baseType: !649, offset: 10240)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1180, file: !1181, line: 999, baseType: !750, offset: 10240)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1180, file: !1181, line: 1001, baseType: !2079, size: 64, offset: 10240)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1181, line: 636, size: 64, elements: !2080)
!2080 = !{!2081}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2079, file: !1181, line: 637, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1180, file: !1181, line: 1005, baseType: !729, size: 128, offset: 10304)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1180, file: !1181, line: 1007, baseType: !1179, size: 64, offset: 10432)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1180, file: !1181, line: 1009, baseType: !2086, size: 64, offset: 10496)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1181, line: 1009, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1180, file: !1181, line: 1043, baseType: !172, size: 64, offset: 10560)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1180, file: !1181, line: 1046, baseType: !2090, size: 64, offset: 10624)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1181, line: 41, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1180, file: !1181, line: 1050, baseType: !2093, size: 64, offset: 10688)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1181, line: 42, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1180, file: !1181, line: 1054, baseType: !2096, size: 64, offset: 10752)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1181, line: 55, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1180, file: !1181, line: 1056, baseType: !2099, size: 64, offset: 10816)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1181, line: 40, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1180, file: !1181, line: 1058, baseType: !2102, size: 64, offset: 10880)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2104, line: 99, size: 704, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112, !2131, !2132}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2103, file: !2104, line: 100, baseType: !641, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2103, file: !2104, line: 101, baseType: !724, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2103, file: !2104, line: 102, baseType: !724, size: 32, offset: 96)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2103, file: !2104, line: 105, baseType: !649, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2103, file: !2104, line: 107, baseType: !337, size: 16, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2103, file: !2104, line: 109, baseType: !716, size: 128, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2103, file: !2104, line: 110, baseType: !2113, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2104, line: 73, size: 448, elements: !2115)
!2115 = !{!2116, !2119, !2120, !2125, !2130}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2114, file: !2104, line: 74, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2104, line: 74, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2114, file: !2104, line: 75, baseType: !2102, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !2104, line: 83, baseType: !2121, size: 128, offset: 128)
!2121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !2104, line: 83, size: 128, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2121, file: !2104, line: 84, baseType: !509, size: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2121, file: !2104, line: 85, baseType: !905, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !2104, line: 87, baseType: !2126, size: 128, offset: 256)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !2104, line: 87, size: 128, elements: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2126, file: !2104, line: 88, baseType: !550, size: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2126, file: !2104, line: 89, baseType: !271, size: 128, align: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2114, file: !2104, line: 92, baseType: !7, size: 32, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2103, file: !2104, line: 111, baseType: !546, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2103, file: !2104, line: 113, baseType: !1636, size: 256, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1180, file: !1181, line: 1061, baseType: !2134, size: 64, offset: 10944)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1181, line: 43, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1180, file: !1181, line: 1064, baseType: !246, size: 64, offset: 11008)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1180, file: !1181, line: 1065, baseType: !2138, size: 64, offset: 11072)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1938, line: 14, baseType: !2140)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1938, line: 12, size: 384, elements: !2141)
!2141 = !{!2142}
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !1938, line: 13, baseType: !2143, size: 384)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !1938, line: 13, size: 384, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2143, file: !1938, line: 13, baseType: !65, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2143, file: !1938, line: 13, baseType: !65, size: 32, offset: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2143, file: !1938, line: 13, baseType: !65, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2143, file: !1938, line: 13, baseType: !2149, size: 256, offset: 128)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2150, line: 32, size: 256, elements: !2151)
!2150 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2151 = !{!2152, !2157, !2170, !2176, !2185, !2205, !2210}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2149, file: !2150, line: 37, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2150, line: 34, size: 64, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2153, file: !2150, line: 35, baseType: !1425, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2153, file: !2150, line: 36, baseType: !346, size: 32, offset: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2149, file: !2150, line: 45, baseType: !2158, size: 192)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2150, line: 40, size: 192, elements: !2159)
!2159 = !{!2160, !2162, !2163, !2169}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2158, file: !2150, line: 41, baseType: !2161, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !211, line: 95, baseType: !65)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2158, file: !2150, line: 42, baseType: !65, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2158, file: !2150, line: 43, baseType: !2164, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2150, line: 11, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2150, line: 8, size: 64, elements: !2166)
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2165, file: !2150, line: 9, baseType: !65, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2165, file: !2150, line: 10, baseType: !172, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2158, file: !2150, line: 44, baseType: !65, size: 32, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2149, file: !2150, line: 52, baseType: !2171, size: 128)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2150, line: 48, size: 128, elements: !2172)
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2171, file: !2150, line: 49, baseType: !1425, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2171, file: !2150, line: 50, baseType: !346, size: 32, offset: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2171, file: !2150, line: 51, baseType: !2164, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2149, file: !2150, line: 61, baseType: !2177, size: 256)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2150, line: 55, size: 256, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2184}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2177, file: !2150, line: 56, baseType: !1425, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2177, file: !2150, line: 57, baseType: !346, size: 32, offset: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2177, file: !2150, line: 58, baseType: !65, size: 32, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2177, file: !2150, line: 59, baseType: !2183, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !211, line: 94, baseType: !481)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2177, file: !2150, line: 60, baseType: !2183, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2149, file: !2150, line: 95, baseType: !2186, size: 256)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2150, line: 64, size: 256, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2186, file: !2150, line: 65, baseType: !172, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2186, file: !2150, line: 77, baseType: !2190, size: 192, offset: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2186, file: !2150, line: 77, size: 192, elements: !2191)
!2191 = !{!2192, !2193, !2200}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2190, file: !2150, line: 82, baseType: !1168, size: 16)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2190, file: !2150, line: 88, baseType: !2194, size: 192)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !2150, line: 84, size: 192, elements: !2195)
!2195 = !{!2196, !2198, !2199}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2194, file: !2150, line: 85, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 64, elements: !1293)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2194, file: !2150, line: 86, baseType: !172, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2194, file: !2150, line: 87, baseType: !172, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2190, file: !2150, line: 93, baseType: !2201, size: 96)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !2150, line: 90, size: 96, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2201, file: !2150, line: 91, baseType: !2197, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2201, file: !2150, line: 92, baseType: !135, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2149, file: !2150, line: 101, baseType: !2206, size: 128)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2150, line: 98, size: 128, elements: !2207)
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2206, file: !2150, line: 99, baseType: !234, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2206, file: !2150, line: 100, baseType: !65, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2149, file: !2150, line: 108, baseType: !2211, size: 128)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2150, line: 104, size: 128, elements: !2212)
!2212 = !{!2213, !2214, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2211, file: !2150, line: 105, baseType: !172, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2211, file: !2150, line: 106, baseType: !65, size: 32, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2211, file: !2150, line: 107, baseType: !7, size: 32, offset: 96)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1180, file: !1181, line: 1067, baseType: !2010, offset: 11136)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1180, file: !1181, line: 1099, baseType: !2218, size: 64, offset: 11136)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1181, line: 56, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1180, file: !1181, line: 1103, baseType: !509, size: 128, offset: 11200)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1180, file: !1181, line: 1104, baseType: !2222, size: 64, offset: 11328)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1181, line: 46, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1180, file: !1181, line: 1105, baseType: !637, size: 192, offset: 11392)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1180, file: !1181, line: 1106, baseType: !7, size: 32, offset: 11584)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1180, file: !1181, line: 1109, baseType: !2227, size: 128, offset: 11648)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2228, size: 128, elements: !119)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !64, line: 793, size: 1920, elements: !2230)
!2230 = !{!2231, !3397, !3398, !3399, !3400, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2229, file: !64, line: 794, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !64, line: 278, size: 2368, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !3315, !3316, !3317, !3318, !3319, !3323, !3324, !3328, !3332, !3333, !3337, !3341, !3342, !3343, !3344, !3348, !3352, !3353, !3354, !3358, !3359, !3363, !3367, !3368, !3386, !3390, !3391, !3392, !3393}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2233, file: !64, line: 279, baseType: !509, size: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2233, file: !64, line: 281, baseType: !185, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2233, file: !64, line: 282, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !43, line: 461, size: 5568, elements: !2240)
!2240 = !{!2241, !2527, !2528, !2531, !2532, !2583, !2656, !2657, !2658, !2659, !2660, !2669, !2774, !2787, !2790, !2791, !2795, !2797, !2798, !2799, !2803, !2809, !2810, !2813, !2817, !2820, !2821, !2822, !2823, !2824, !2856, !2857, !2858, !2861, !2864, !2865, !2866, !2867}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2239, file: !43, line: 462, baseType: !2242, size: 512)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2243, line: 64, size: 512, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2244 = !{!2245, !2246, !2247, !2249, !2289, !2389, !2521, !2522, !2523, !2524, !2525, !2526}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2242, file: !2243, line: 65, baseType: !368, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2242, file: !2243, line: 66, baseType: !509, size: 128, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2242, file: !2243, line: 67, baseType: !2248, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2242, file: !2243, line: 68, baseType: !2250, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2243, line: 192, size: 704, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2251, file: !2243, line: 193, baseType: !509, size: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2251, file: !2243, line: 194, baseType: !649, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2251, file: !2243, line: 195, baseType: !2242, size: 512, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2251, file: !2243, line: 196, baseType: !2257, size: 64, offset: 640)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2243, line: 156, size: 192, elements: !2260)
!2260 = !{!2261, !2266, !2271}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2259, file: !2243, line: 157, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2263)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!65, !2250, !2248}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2259, file: !2243, line: 158, baseType: !2267, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2268)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!368, !2250, !2248}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2259, file: !2243, line: 159, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!65, !2250, !2248, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2243, line: 148, size: 20736, elements: !2278)
!2278 = !{!2279, !2281, !2283, !2284, !2288}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2277, file: !2243, line: 149, baseType: !2280, size: 192)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 192, elements: !563)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2277, file: !2243, line: 150, baseType: !2282, size: 4096, offset: 192)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 4096, elements: !2055)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2277, file: !2243, line: 151, baseType: !65, size: 32, offset: 4288)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2277, file: !2243, line: 152, baseType: !2285, size: 16384, offset: 4320)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 16384, elements: !2286)
!2286 = !{!2287}
!2287 = !DISubrange(count: 2048)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2277, file: !2243, line: 153, baseType: !65, size: 32, offset: 20704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2242, file: !2243, line: 69, baseType: !2290, size: 64, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2243, line: 138, size: 448, elements: !2292)
!2292 = !{!2293, !2297, !2316, !2318, !2351, !2381, !2385}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2291, file: !2243, line: 139, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !2248}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2291, file: !2243, line: 140, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2301, line: 230, size: 128, elements: !2302)
!2301 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2302 = !{!2303, !2312}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2300, file: !2301, line: 231, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!479, !2248, !2307, !394}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2301, line: 30, size: 128, elements: !2309)
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2308, file: !2301, line: 31, baseType: !368, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2308, file: !2301, line: 32, baseType: !336, size: 16, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2300, file: !2301, line: 232, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!479, !2248, !2307, !368, !482}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2291, file: !2243, line: 141, baseType: !2317, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2291, file: !2243, line: 142, baseType: !2319, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2301, line: 84, size: 320, elements: !2323)
!2323 = !{!2324, !2325, !2329, !2348, !2349}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2322, file: !2301, line: 85, baseType: !368, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2322, file: !2301, line: 86, baseType: !2326, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!336, !2248, !2307, !65}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2322, file: !2301, line: 88, baseType: !2330, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!336, !2248, !2333, !65}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2301, line: 168, size: 448, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339, !2343, !2344}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2334, file: !2301, line: 169, baseType: !2308, size: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2334, file: !2301, line: 170, baseType: !482, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2334, file: !2301, line: 171, baseType: !172, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2334, file: !2301, line: 172, baseType: !2340, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!479, !258, !2248, !2333, !394, !440, !482}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2334, file: !2301, line: 174, baseType: !2340, size: 64, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2334, file: !2301, line: 176, baseType: !2345, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!65, !258, !2248, !2333, !952}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2322, file: !2301, line: 90, baseType: !2317, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2322, file: !2301, line: 91, baseType: !2350, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2291, file: !2243, line: 143, baseType: !2352, size: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2355, !2248}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !31, line: 39, size: 384, elements: !2358)
!2358 = !{!2359, !2360, !2364, !2368, !2376, !2380}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2357, file: !31, line: 40, baseType: !30, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2357, file: !31, line: 41, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!399}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2357, file: !31, line: 42, baseType: !2365, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!172}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2357, file: !31, line: 43, baseType: !2369, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!2372, !2374}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !31, line: 19, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2357, file: !31, line: 44, baseType: !2377, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!2372}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2357, file: !31, line: 45, baseType: !376, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2291, file: !2243, line: 144, baseType: !2382, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!2372, !2248}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2291, file: !2243, line: 145, baseType: !2386, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2248, !1722, !1723}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2242, file: !2243, line: 70, baseType: !2390, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !530, line: 123, size: 1024, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2514, !2515, !2516, !2517, !2518}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2391, file: !530, line: 124, baseType: !724, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2391, file: !530, line: 125, baseType: !724, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2391, file: !530, line: 135, baseType: !2390, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2391, file: !530, line: 136, baseType: !368, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2391, file: !530, line: 138, baseType: !737, size: 192, align: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2391, file: !530, line: 140, baseType: !2372, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2391, file: !530, line: 141, baseType: !7, size: 32, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !530, line: 142, baseType: !2401, size: 256, offset: 512)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2391, file: !530, line: 142, size: 256, elements: !2402)
!2402 = !{!2403, !2443, !2447}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2401, file: !530, line: 143, baseType: !2404, size: 192)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !530, line: 91, size: 192, elements: !2405)
!2405 = !{!2406, !2407, !2408}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2404, file: !530, line: 92, baseType: !246, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2404, file: !530, line: 94, baseType: !733, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2404, file: !530, line: 100, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !530, line: 180, size: 704, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2441, !2442}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2410, file: !530, line: 182, baseType: !2390, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2410, file: !530, line: 183, baseType: !7, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2410, file: !530, line: 186, baseType: !1469, size: 192, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2410, file: !530, line: 187, baseType: !321, size: 32, offset: 320)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2410, file: !530, line: 188, baseType: !321, size: 32, offset: 352)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2410, file: !530, line: 189, baseType: !2418, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !530, line: 168, size: 320, elements: !2420)
!2420 = !{!2421, !2425, !2429, !2433, !2437}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2419, file: !530, line: 169, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!65, !625, !2409}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2419, file: !530, line: 171, baseType: !2426, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!65, !2390, !368, !336}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2419, file: !530, line: 173, baseType: !2430, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!65, !2390}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2419, file: !530, line: 174, baseType: !2434, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!65, !2390, !2390, !368}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2419, file: !530, line: 176, baseType: !2438, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!65, !625, !2390, !2409}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2410, file: !530, line: 192, baseType: !509, size: 128, offset: 448)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2410, file: !530, line: 194, baseType: !1446, size: 128, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2401, file: !530, line: 144, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !530, line: 103, size: 64, elements: !2445)
!2445 = !{!2446}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2444, file: !530, line: 104, baseType: !2390, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2401, file: !530, line: 145, baseType: !2448, size: 256)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !530, line: 107, size: 256, elements: !2449)
!2449 = !{!2450, !2509, !2512, !2513}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2448, file: !530, line: 108, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !530, line: 217, size: 768, elements: !2454)
!2454 = !{!2455, !2475, !2479, !2480, !2481, !2482, !2483, !2487, !2488, !2489, !2490, !2505}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2453, file: !530, line: 222, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!65, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !530, line: 197, size: 1088, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2460, file: !530, line: 199, baseType: !2390, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2460, file: !530, line: 200, baseType: !258, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2460, file: !530, line: 201, baseType: !625, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2460, file: !530, line: 202, baseType: !172, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2460, file: !530, line: 205, baseType: !637, size: 192, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2460, file: !530, line: 206, baseType: !637, size: 192, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2460, file: !530, line: 207, baseType: !65, size: 32, offset: 640)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2460, file: !530, line: 208, baseType: !509, size: 128, offset: 704)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2460, file: !530, line: 209, baseType: !394, size: 64, offset: 832)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2460, file: !530, line: 211, baseType: !482, size: 64, offset: 896)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2460, file: !530, line: 212, baseType: !399, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2460, file: !530, line: 213, baseType: !399, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2460, file: !530, line: 214, baseType: !980, size: 64, offset: 1024)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2453, file: !530, line: 223, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !2459}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2453, file: !530, line: 236, baseType: !683, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2453, file: !530, line: 238, baseType: !670, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2453, file: !530, line: 239, baseType: !679, size: 64, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2453, file: !530, line: 240, baseType: !675, size: 64, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2453, file: !530, line: 242, baseType: !2484, size: 64, offset: 384)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!479, !2459, !394, !482, !440}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2453, file: !530, line: 252, baseType: !482, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2453, file: !530, line: 259, baseType: !399, size: 8, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2453, file: !530, line: 260, baseType: !2484, size: 64, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2453, file: !530, line: 263, baseType: !2491, size: 64, offset: 640)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!256, !2459, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2496, line: 43, size: 128, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2497 = !{!2498, !2504}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2495, file: !2496, line: 44, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2496, line: 37, baseType: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !258, !2503, !2494}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2495, file: !2496, line: 45, baseType: !256, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2453, file: !530, line: 266, baseType: !2506, size: 64, offset: 704)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!65, !2459, !952}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2448, file: !530, line: 109, baseType: !2510, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !530, line: 31, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2448, file: !530, line: 110, baseType: !440, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2448, file: !530, line: 111, baseType: !2390, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2391, file: !530, line: 148, baseType: !172, size: 64, offset: 768)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2391, file: !530, line: 154, baseType: !324, size: 64, offset: 832)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2391, file: !530, line: 156, baseType: !337, size: 16, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2391, file: !530, line: 157, baseType: !336, size: 16, offset: 912)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2391, file: !530, line: 158, baseType: !2519, size: 64, offset: 960)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !530, line: 32, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2242, file: !2243, line: 71, baseType: !1464, size: 32, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2242, file: !2243, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2242, file: !2243, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2242, file: !2243, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2242, file: !2243, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2242, file: !2243, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2239, file: !43, line: 463, baseType: !2238, size: 64, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2239, file: !43, line: 465, baseType: !2529, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !43, line: 36, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2239, file: !43, line: 467, baseType: !368, size: 64, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2239, file: !43, line: 468, baseType: !2533, size: 64, offset: 704)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2535)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !43, line: 87, size: 384, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2543, !2548, !2552}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2535, file: !43, line: 88, baseType: !368, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2535, file: !43, line: 89, baseType: !2319, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2535, file: !43, line: 90, baseType: !2540, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!65, !2238, !2276}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2535, file: !43, line: 91, baseType: !2544, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!394, !2238, !2547, !1722, !1723}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2535, file: !43, line: 93, baseType: !2549, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2238}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2535, file: !43, line: 95, baseType: !2553, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !50, line: 278, size: 1472, elements: !2556)
!2556 = !{!2557, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2555, file: !50, line: 279, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!65, !2238}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2555, file: !50, line: 280, baseType: !2549, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2555, file: !50, line: 281, baseType: !2558, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2555, file: !50, line: 282, baseType: !2558, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2555, file: !50, line: 283, baseType: !2558, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2555, file: !50, line: 284, baseType: !2558, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2555, file: !50, line: 285, baseType: !2558, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2555, file: !50, line: 286, baseType: !2558, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2555, file: !50, line: 287, baseType: !2558, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2555, file: !50, line: 288, baseType: !2558, size: 64, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2555, file: !50, line: 289, baseType: !2558, size: 64, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2555, file: !50, line: 290, baseType: !2558, size: 64, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2555, file: !50, line: 291, baseType: !2558, size: 64, offset: 768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2555, file: !50, line: 292, baseType: !2558, size: 64, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2555, file: !50, line: 293, baseType: !2558, size: 64, offset: 896)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2555, file: !50, line: 294, baseType: !2558, size: 64, offset: 960)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2555, file: !50, line: 295, baseType: !2558, size: 64, offset: 1024)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2555, file: !50, line: 296, baseType: !2558, size: 64, offset: 1088)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2555, file: !50, line: 297, baseType: !2558, size: 64, offset: 1152)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2555, file: !50, line: 298, baseType: !2558, size: 64, offset: 1216)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2555, file: !50, line: 299, baseType: !2558, size: 64, offset: 1280)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2555, file: !50, line: 300, baseType: !2558, size: 64, offset: 1344)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2555, file: !50, line: 301, baseType: !2558, size: 64, offset: 1408)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2239, file: !43, line: 470, baseType: !2584, size: 64, offset: 768)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2586, line: 82, size: 1408, elements: !2587)
!2586 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2651, !2654, !2655}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2585, file: !2586, line: 83, baseType: !368, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2585, file: !2586, line: 84, baseType: !368, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2585, file: !2586, line: 85, baseType: !2238, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2585, file: !2586, line: 86, baseType: !2319, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2585, file: !2586, line: 87, baseType: !2319, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2585, file: !2586, line: 88, baseType: !2319, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2585, file: !2586, line: 90, baseType: !2595, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!65, !2238, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !37, line: 95, size: 1152, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2611, !2615, !2616, !2617, !2618, !2619, !2627, !2628, !2629, !2630, !2631, !2632}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2599, file: !37, line: 96, baseType: !368, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2599, file: !37, line: 97, baseType: !2584, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2599, file: !37, line: 99, baseType: !185, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2599, file: !37, line: 100, baseType: !368, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2599, file: !37, line: 102, baseType: !399, size: 8, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2599, file: !37, line: 103, baseType: !36, size: 32, offset: 288)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2599, file: !37, line: 105, baseType: !2608, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2610)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !37, line: 105, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2599, file: !37, line: 106, baseType: !2612, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !37, line: 106, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2599, file: !37, line: 108, baseType: !2558, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2599, file: !37, line: 109, baseType: !2549, size: 64, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2599, file: !37, line: 110, baseType: !2558, size: 64, offset: 576)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2599, file: !37, line: 111, baseType: !2549, size: 64, offset: 640)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2599, file: !37, line: 112, baseType: !2620, size: 64, offset: 704)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!65, !2238, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !50, line: 52, baseType: !2624)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !50, line: 50, size: 32, elements: !2625)
!2625 = !{!2626}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2624, file: !50, line: 51, baseType: !65, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2599, file: !37, line: 113, baseType: !2558, size: 64, offset: 768)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2599, file: !37, line: 114, baseType: !2319, size: 64, offset: 832)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2599, file: !37, line: 115, baseType: !2319, size: 64, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2599, file: !37, line: 117, baseType: !2553, size: 64, offset: 960)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2599, file: !37, line: 118, baseType: !2549, size: 64, offset: 1024)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2599, file: !37, line: 120, baseType: !2633, size: 64, offset: 1088)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !37, line: 120, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2585, file: !2586, line: 91, baseType: !2540, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2585, file: !2586, line: 92, baseType: !2558, size: 64, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2585, file: !2586, line: 93, baseType: !2549, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2585, file: !2586, line: 94, baseType: !2558, size: 64, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2585, file: !2586, line: 95, baseType: !2549, size: 64, offset: 704)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2585, file: !2586, line: 97, baseType: !2558, size: 64, offset: 768)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2585, file: !2586, line: 98, baseType: !2558, size: 64, offset: 832)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2585, file: !2586, line: 100, baseType: !2620, size: 64, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2585, file: !2586, line: 101, baseType: !2558, size: 64, offset: 960)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2585, file: !2586, line: 103, baseType: !2558, size: 64, offset: 1024)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2585, file: !2586, line: 105, baseType: !2558, size: 64, offset: 1088)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2585, file: !2586, line: 107, baseType: !2553, size: 64, offset: 1152)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2585, file: !2586, line: 109, baseType: !2648, size: 64, offset: 1216)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2650)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2586, line: 109, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2585, file: !2586, line: 111, baseType: !2652, size: 64, offset: 1280)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2586, line: 111, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2585, file: !2586, line: 112, baseType: !556, offset: 1344)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2585, file: !2586, line: 114, baseType: !399, size: 8, offset: 1344)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2239, file: !43, line: 471, baseType: !2598, size: 64, offset: 832)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2239, file: !43, line: 473, baseType: !172, size: 64, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2239, file: !43, line: 475, baseType: !172, size: 64, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2239, file: !43, line: 480, baseType: !637, size: 192, offset: 1024)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2239, file: !43, line: 484, baseType: !2661, size: 576, offset: 1216)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !43, line: 361, size: 576, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2661, file: !43, line: 362, baseType: !509, size: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2661, file: !43, line: 363, baseType: !509, size: 128, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2661, file: !43, line: 364, baseType: !509, size: 128, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2661, file: !43, line: 365, baseType: !509, size: 128, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2661, file: !43, line: 366, baseType: !399, size: 8, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2661, file: !43, line: 367, baseType: !42, size: 32, offset: 544)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2239, file: !43, line: 485, baseType: !2670, size: 2304, offset: 1792)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !50, line: 565, size: 2304, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2767, !2771}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2670, file: !50, line: 566, baseType: !2623, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2670, file: !50, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2670, file: !50, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2670, file: !50, line: 569, baseType: !399, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2670, file: !50, line: 570, baseType: !399, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2670, file: !50, line: 571, baseType: !399, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2670, file: !50, line: 572, baseType: !399, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2670, file: !50, line: 573, baseType: !399, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2670, file: !50, line: 574, baseType: !399, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2670, file: !50, line: 575, baseType: !399, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2670, file: !50, line: 576, baseType: !399, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2670, file: !50, line: 577, baseType: !321, size: 32, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2670, file: !50, line: 578, baseType: !649, offset: 96)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2670, file: !50, line: 580, baseType: !509, size: 128, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2670, file: !50, line: 581, baseType: !1697, size: 192, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2670, file: !50, line: 582, baseType: !2688, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2690, line: 43, size: 1472, elements: !2691)
!2690 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2699, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2689, file: !2690, line: 44, baseType: !368, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2689, file: !2690, line: 45, baseType: !65, size: 32, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2689, file: !2690, line: 46, baseType: !509, size: 128, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2689, file: !2690, line: 47, baseType: !649, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2689, file: !2690, line: 48, baseType: !2697, size: 64, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !50, line: 533, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2689, file: !2690, line: 49, baseType: !2700, size: 320, offset: 320)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2701, line: 11, size: 320, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2702 = !{!2703, !2704, !2705, !2710}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2700, file: !2701, line: 16, baseType: !550, size: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2700, file: !2701, line: 17, baseType: !246, size: 64, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2700, file: !2701, line: 18, baseType: !2706, size: 64, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2700, file: !2701, line: 19, baseType: !321, size: 32, offset: 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2689, file: !2690, line: 50, baseType: !246, size: 64, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2689, file: !2690, line: 51, baseType: !1263, size: 64, offset: 704)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2689, file: !2690, line: 52, baseType: !1263, size: 64, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2689, file: !2690, line: 53, baseType: !1263, size: 64, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2689, file: !2690, line: 54, baseType: !1263, size: 64, offset: 896)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2689, file: !2690, line: 55, baseType: !1263, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2689, file: !2690, line: 56, baseType: !246, size: 64, offset: 1024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2689, file: !2690, line: 57, baseType: !246, size: 64, offset: 1088)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2689, file: !2690, line: 58, baseType: !246, size: 64, offset: 1152)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2689, file: !2690, line: 59, baseType: !246, size: 64, offset: 1216)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2689, file: !2690, line: 60, baseType: !246, size: 64, offset: 1280)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2689, file: !2690, line: 61, baseType: !2238, size: 64, offset: 1344)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2689, file: !2690, line: 62, baseType: !399, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2689, file: !2690, line: 63, baseType: !399, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2670, file: !50, line: 583, baseType: !399, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2670, file: !50, line: 584, baseType: !399, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2670, file: !50, line: 585, baseType: !399, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2670, file: !50, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2670, file: !50, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2670, file: !50, line: 592, baseType: !1255, size: 512, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2670, file: !50, line: 593, baseType: !324, size: 64, offset: 1088)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2670, file: !50, line: 594, baseType: !1636, size: 256, offset: 1152)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2670, file: !50, line: 595, baseType: !1446, size: 128, offset: 1408)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2670, file: !50, line: 596, baseType: !2697, size: 64, offset: 1536)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2670, file: !50, line: 597, baseType: !724, size: 32, offset: 1600)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2670, file: !50, line: 598, baseType: !724, size: 32, offset: 1632)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2670, file: !50, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2670, file: !50, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2670, file: !50, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2670, file: !50, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2670, file: !50, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2670, file: !50, line: 604, baseType: !399, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2670, file: !50, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2670, file: !50, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2670, file: !50, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2670, file: !50, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2670, file: !50, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2670, file: !50, line: 610, baseType: !7, size: 32, offset: 1696)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2670, file: !50, line: 611, baseType: !49, size: 32, offset: 1728)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2670, file: !50, line: 612, baseType: !57, size: 32, offset: 1760)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2670, file: !50, line: 613, baseType: !65, size: 32, offset: 1792)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2670, file: !50, line: 614, baseType: !65, size: 32, offset: 1824)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2670, file: !50, line: 615, baseType: !324, size: 64, offset: 1856)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2670, file: !50, line: 616, baseType: !324, size: 64, offset: 1920)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2670, file: !50, line: 617, baseType: !324, size: 64, offset: 1984)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2670, file: !50, line: 618, baseType: !324, size: 64, offset: 2048)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2670, file: !50, line: 620, baseType: !2758, size: 64, offset: 2112)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !50, line: 536, size: 256, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2759, file: !50, line: 537, baseType: !649)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2759, file: !50, line: 538, baseType: !7, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2759, file: !50, line: 540, baseType: !509, size: 128, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2759, file: !50, line: 543, baseType: !2765, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !50, line: 534, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2670, file: !50, line: 621, baseType: !2768, size: 64, offset: 2176)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{null, !2238, !167}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2670, file: !50, line: 622, baseType: !2772, size: 64, offset: 2240)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !50, line: 622, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2239, file: !43, line: 486, baseType: !2775, size: 64, offset: 4096)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !50, line: 642, size: 1792, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2784, !2785, !2786}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2776, file: !50, line: 643, baseType: !2555, size: 1472)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2776, file: !50, line: 644, baseType: !2558, size: 64, offset: 1472)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2776, file: !50, line: 645, baseType: !2781, size: 64, offset: 1536)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !2238, !399}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2776, file: !50, line: 646, baseType: !2558, size: 64, offset: 1600)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2776, file: !50, line: 647, baseType: !2549, size: 64, offset: 1664)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2776, file: !50, line: 648, baseType: !2549, size: 64, offset: 1728)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2239, file: !43, line: 493, baseType: !2788, size: 64, offset: 4160)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !43, line: 493, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2239, file: !43, line: 499, baseType: !509, size: 128, offset: 4224)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2239, file: !43, line: 502, baseType: !2792, size: 64, offset: 4352)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2794)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !43, line: 502, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2239, file: !43, line: 504, baseType: !2796, size: 64, offset: 4416)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2239, file: !43, line: 505, baseType: !324, size: 64, offset: 4480)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2239, file: !43, line: 510, baseType: !324, size: 64, offset: 4544)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2239, file: !43, line: 511, baseType: !2800, size: 64, offset: 4608)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2802)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !43, line: 511, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2239, file: !43, line: 513, baseType: !2804, size: 64, offset: 4672)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !43, line: 288, size: 128, elements: !2806)
!2806 = !{!2807, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2805, file: !43, line: 293, baseType: !7, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2805, file: !43, line: 294, baseType: !246, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2239, file: !43, line: 515, baseType: !509, size: 128, offset: 4736)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2239, file: !43, line: 526, baseType: !2811, offset: 4864)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2812, line: 5, elements: !558)
!2812 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2239, file: !43, line: 528, baseType: !2814, size: 64, offset: 4864)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2816, line: 14, flags: DIFlagFwdDecl)
!2816 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2239, file: !43, line: 529, baseType: !2818, size: 64, offset: 4928)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2586, line: 22, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2239, file: !43, line: 534, baseType: !422, size: 32, offset: 4992)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2239, file: !43, line: 535, baseType: !321, size: 32, offset: 5024)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2239, file: !43, line: 537, baseType: !649, offset: 5056)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2239, file: !43, line: 538, baseType: !509, size: 128, offset: 5056)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2239, file: !43, line: 540, baseType: !2825, size: 64, offset: 5184)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2827, line: 54, size: 960, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2839, !2843, !2844, !2845, !2846, !2850, !2854, !2855}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2826, file: !2827, line: 55, baseType: !368, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2826, file: !2827, line: 56, baseType: !185, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2826, file: !2827, line: 58, baseType: !2319, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2826, file: !2827, line: 59, baseType: !2319, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2826, file: !2827, line: 60, baseType: !2248, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2826, file: !2827, line: 62, baseType: !2540, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2826, file: !2827, line: 63, baseType: !2836, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!394, !2238, !2547}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2826, file: !2827, line: 65, baseType: !2840, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2825}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2826, file: !2827, line: 66, baseType: !2549, size: 64, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2826, file: !2827, line: 68, baseType: !2558, size: 64, offset: 576)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2826, file: !2827, line: 70, baseType: !2355, size: 64, offset: 640)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2826, file: !2827, line: 71, baseType: !2847, size: 64, offset: 704)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!2372, !2238}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2826, file: !2827, line: 73, baseType: !2851, size: 64, offset: 768)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !2238, !1722, !1723}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2826, file: !2827, line: 75, baseType: !2553, size: 64, offset: 832)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2826, file: !2827, line: 77, baseType: !2652, size: 64, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2239, file: !43, line: 541, baseType: !2319, size: 64, offset: 5248)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2239, file: !43, line: 543, baseType: !2549, size: 64, offset: 5312)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2239, file: !43, line: 544, baseType: !2859, size: 64, offset: 5376)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !43, line: 45, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2239, file: !43, line: 545, baseType: !2862, size: 64, offset: 5440)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !43, line: 47, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2239, file: !43, line: 547, baseType: !399, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2239, file: !43, line: 548, baseType: !399, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2239, file: !43, line: 549, baseType: !399, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2239, file: !43, line: 550, baseType: !399, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2233, file: !64, line: 283, baseType: !2319, size: 64, offset: 256)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2233, file: !64, line: 284, baseType: !2319, size: 64, offset: 320)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2233, file: !64, line: 285, baseType: !368, size: 64, offset: 384)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2233, file: !64, line: 286, baseType: !65, size: 32, offset: 448)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2233, file: !64, line: 291, baseType: !65, size: 32, offset: 480)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2233, file: !64, line: 293, baseType: !619, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_cpu_context", scope: !2233, file: !64, line: 294, baseType: !2875, size: 64, offset: 576)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_context", file: !64, line: 859, size: 2944, elements: !2877)
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !3313}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2876, file: !64, line: 860, baseType: !2229, size: 1920)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx", scope: !2876, file: !64, line: 861, baseType: !2228, size: 64, offset: 1920)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !2876, file: !64, line: 862, baseType: !65, size: 32, offset: 1984)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !2876, file: !64, line: 863, baseType: !65, size: 32, offset: 2016)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !2876, file: !64, line: 865, baseType: !750, offset: 2048)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !2876, file: !64, line: 866, baseType: !1255, size: 512, offset: 2048)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !2876, file: !64, line: 867, baseType: !1263, size: 64, offset: 2560)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !2876, file: !64, line: 868, baseType: !7, size: 32, offset: 2624)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !2876, file: !64, line: 875, baseType: !65, size: 32, offset: 2656)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2876, file: !64, line: 877, baseType: !65, size: 32, offset: 2688)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "heap_size", scope: !2876, file: !64, line: 882, baseType: !65, size: 32, offset: 2720)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !2876, file: !64, line: 883, baseType: !2890, size: 64, offset: 2752)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !64, line: 625, size: 7424, elements: !2893)
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2921, !2922, !2923, !2924, !2925, !2926, !3004, !3005, !3006, !3007, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3104, !3105, !3106, !3107, !3108, !3125, !3126, !3127, !3128, !3157, !3158, !3164, !3170, !3171, !3172, !3176, !3177, !3178, !3179, !3183, !3311, !3312}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2892, file: !64, line: 632, baseType: !509, size: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2892, file: !64, line: 638, baseType: !509, size: 128, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2892, file: !64, line: 639, baseType: !509, size: 128, offset: 256)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2892, file: !64, line: 643, baseType: !737, size: 192, align: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2892, file: !64, line: 644, baseType: !324, size: 64, offset: 576)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2892, file: !64, line: 650, baseType: !509, size: 128, offset: 640)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2892, file: !64, line: 652, baseType: !550, size: 128, offset: 768)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2892, file: !64, line: 653, baseType: !509, size: 128, offset: 896)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2892, file: !64, line: 654, baseType: !65, size: 32, offset: 1024)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2892, file: !64, line: 657, baseType: !65, size: 32, offset: 1056)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2892, file: !64, line: 659, baseType: !65, size: 32, offset: 1088)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2892, file: !64, line: 661, baseType: !2891, size: 64, offset: 1152)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2892, file: !64, line: 662, baseType: !2232, size: 64, offset: 1216)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2892, file: !64, line: 663, baseType: !172, size: 64, offset: 1280)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2892, file: !64, line: 665, baseType: !63, size: 32, offset: 1344)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2892, file: !64, line: 666, baseType: !7, size: 32, offset: 1376)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2892, file: !64, line: 667, baseType: !2911, size: 64, offset: 1408)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !2912, line: 26, baseType: !2913)
!2912 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/lizy2001/genbc/linux")
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2912, line: 24, size: 64, elements: !2914)
!2914 = !{!2915}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2913, file: !2912, line: 25, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !2917, line: 12, baseType: !2918)
!2917 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/lizy2001/genbc/linux")
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2917, line: 10, size: 64, elements: !2919)
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2918, file: !2917, line: 11, baseType: !641, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2892, file: !64, line: 668, baseType: !643, size: 64, offset: 1472)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2892, file: !64, line: 676, baseType: !324, size: 64, offset: 1536)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2892, file: !64, line: 677, baseType: !324, size: 64, offset: 1600)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2892, file: !64, line: 678, baseType: !324, size: 64, offset: 1664)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "shadow_ctx_time", scope: !2892, file: !64, line: 688, baseType: !324, size: 64, offset: 1728)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2892, file: !64, line: 690, baseType: !2927, size: 960, offset: 1792)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !2928, line: 317, size: 960, elements: !2929)
!2928 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/lizy2001/genbc/linux")
!2929 = !{!2930, !2931, !2932, !2933, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2979, !2980, !2987, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2927, file: !2928, line: 322, baseType: !135, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2927, file: !2928, line: 327, baseType: !135, size: 32, offset: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2927, file: !2928, line: 332, baseType: !325, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, scope: !2927, file: !2928, line: 334, baseType: !2934, size: 64, offset: 128)
!2934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2927, file: !2928, line: 334, size: 64, elements: !2935)
!2935 = !{!2936, !2937}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !2934, file: !2928, line: 335, baseType: !325, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !2934, file: !2928, line: 336, baseType: !325, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !2927, file: !2928, line: 339, baseType: !325, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !2927, file: !2928, line: 340, baseType: !325, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !2927, file: !2928, line: 342, baseType: !325, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !2927, file: !2928, line: 343, baseType: !325, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !2927, file: !2928, line: 344, baseType: !325, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !2927, file: !2928, line: 345, baseType: !325, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !2927, file: !2928, line: 346, baseType: !325, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !2927, file: !2928, line: 347, baseType: !325, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !2927, file: !2928, line: 348, baseType: !325, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !2927, file: !2928, line: 349, baseType: !325, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2927, file: !2928, line: 350, baseType: !325, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2927, file: !2928, line: 351, baseType: !325, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2927, file: !2928, line: 352, baseType: !325, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !2927, file: !2928, line: 353, baseType: !325, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !2927, file: !2928, line: 354, baseType: !325, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2927, file: !2928, line: 355, baseType: !325, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !2927, file: !2928, line: 356, baseType: !325, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !2927, file: !2928, line: 367, baseType: !325, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !2927, file: !2928, line: 368, baseType: !325, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !2927, file: !2928, line: 369, baseType: !325, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !2927, file: !2928, line: 371, baseType: !325, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !2927, file: !2928, line: 372, baseType: !325, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !2927, file: !2928, line: 374, baseType: !325, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !2927, file: !2928, line: 375, baseType: !325, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !2927, file: !2928, line: 376, baseType: !325, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !2927, file: !2928, line: 377, baseType: !325, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !2927, file: !2928, line: 378, baseType: !325, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !2927, file: !2928, line: 379, baseType: !325, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !2927, file: !2928, line: 380, baseType: !325, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !2927, file: !2928, line: 381, baseType: !325, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !2927, file: !2928, line: 382, baseType: !325, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !2927, file: !2928, line: 383, baseType: !325, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !2927, file: !2928, line: 384, baseType: !325, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2927, file: !2928, line: 385, baseType: !325, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !2927, file: !2928, line: 386, baseType: !325, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !2927, file: !2928, line: 387, baseType: !325, size: 30, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, scope: !2927, file: !2928, line: 389, baseType: !2975, size: 32, offset: 384)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2927, file: !2928, line: 389, size: 32, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !2975, file: !2928, line: 390, baseType: !135, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !2975, file: !2928, line: 391, baseType: !135, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !2927, file: !2928, line: 394, baseType: !135, size: 32, offset: 416)
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !2927, file: !2928, line: 395, baseType: !2981, size: 64, offset: 448)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2927, file: !2928, line: 395, size: 64, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !2981, file: !2928, line: 396, baseType: !325, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !2981, file: !2928, line: 397, baseType: !325, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !2981, file: !2928, line: 398, baseType: !325, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !2981, file: !2928, line: 399, baseType: !325, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, scope: !2927, file: !2928, line: 401, baseType: !2988, size: 64, offset: 512)
!2988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2927, file: !2928, line: 401, size: 64, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2993}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !2988, file: !2928, line: 402, baseType: !325, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !2988, file: !2928, line: 403, baseType: !325, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !2988, file: !2928, line: 404, baseType: !325, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !2988, file: !2928, line: 405, baseType: !325, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !2927, file: !2928, line: 407, baseType: !325, size: 64, offset: 576)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !2927, file: !2928, line: 413, baseType: !325, size: 64, offset: 640)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !2927, file: !2928, line: 418, baseType: !135, size: 32, offset: 704)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2927, file: !2928, line: 420, baseType: !169, size: 32, offset: 736)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !2927, file: !2928, line: 429, baseType: !325, size: 64, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !2927, file: !2928, line: 434, baseType: !135, size: 32, offset: 832)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !2927, file: !2928, line: 435, baseType: !830, size: 16, offset: 864)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !2927, file: !2928, line: 436, baseType: !830, size: 16, offset: 880)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !2927, file: !2928, line: 437, baseType: !135, size: 32, offset: 896)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !2927, file: !2928, line: 438, baseType: !135, size: 32, offset: 928)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2892, file: !64, line: 691, baseType: !829, size: 16, offset: 2752)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2892, file: !64, line: 692, baseType: !829, size: 16, offset: 2768)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2892, file: !64, line: 693, baseType: !829, size: 16, offset: 2784)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2892, file: !64, line: 694, baseType: !3008, size: 1536, offset: 2816)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !64, line: 134, size: 1536, elements: !3009)
!3009 = !{!3010, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3084, !3085, !3086, !3087}
!3010 = !DIDerivedType(tag: DW_TAG_member, scope: !3008, file: !64, line: 136, baseType: !3011, size: 768)
!3011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3008, file: !64, line: 136, size: 768, elements: !3012)
!3012 = !{!3013, !3032, !3036, !3040, !3045, !3057}
!3013 = !DIDerivedType(tag: DW_TAG_member, scope: !3011, file: !64, line: 137, baseType: !3014, size: 768)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !64, line: 137, size: 768, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3031}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3014, file: !64, line: 138, baseType: !324, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3014, file: !64, line: 139, baseType: !324, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3014, file: !64, line: 140, baseType: !246, size: 64, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3014, file: !64, line: 141, baseType: !246, size: 64, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3014, file: !64, line: 142, baseType: !65, size: 32, offset: 256)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3014, file: !64, line: 143, baseType: !65, size: 32, offset: 288)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3014, file: !64, line: 144, baseType: !65, size: 32, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3014, file: !64, line: 145, baseType: !65, size: 32, offset: 352)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3014, file: !64, line: 147, baseType: !3025, size: 192, offset: 384)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !64, line: 124, size: 192, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3025, file: !64, line: 125, baseType: !324, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3025, file: !64, line: 126, baseType: !7, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3025, file: !64, line: 127, baseType: !65, size: 32, offset: 96)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3025, file: !64, line: 128, baseType: !65, size: 32, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3014, file: !64, line: 148, baseType: !3025, size: 192, offset: 576)
!3032 = !DIDerivedType(tag: DW_TAG_member, scope: !3011, file: !64, line: 150, baseType: !3033, size: 512)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !64, line: 150, size: 512, elements: !3034)
!3034 = !{!3035}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3033, file: !64, line: 151, baseType: !1255, size: 512)
!3036 = !DIDerivedType(tag: DW_TAG_member, scope: !3011, file: !64, line: 153, baseType: !3037, size: 128)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !64, line: 153, size: 128, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3037, file: !64, line: 155, baseType: !509, size: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3011, file: !64, line: 157, baseType: !3041, size: 128)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !64, line: 157, size: 128, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3041, file: !64, line: 158, baseType: !324, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3041, file: !64, line: 159, baseType: !324, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, scope: !3011, file: !64, line: 162, baseType: !3046, size: 320)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !64, line: 162, size: 320, elements: !3047)
!3047 = !{!3048, !3056}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3046, file: !64, line: 168, baseType: !3049, size: 192)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3050, line: 14, size: 192, elements: !3051)
!3050 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/lizy2001/genbc/linux")
!3051 = !{!3052, !3053, !3054, !3055}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3049, file: !3050, line: 15, baseType: !246, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3049, file: !3050, line: 16, baseType: !246, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3049, file: !3050, line: 17, baseType: !1315, size: 8, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3049, file: !3050, line: 18, baseType: !1315, size: 8, offset: 136)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3046, file: !64, line: 169, baseType: !509, size: 128, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_member, scope: !3011, file: !64, line: 172, baseType: !3058, size: 192)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !64, line: 172, size: 192, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063, !3064}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3058, file: !64, line: 173, baseType: !1315, size: 8)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3058, file: !64, line: 174, baseType: !1315, size: 8, offset: 8)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3058, file: !64, line: 175, baseType: !829, size: 16, offset: 16)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3058, file: !64, line: 176, baseType: !324, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3058, file: !64, line: 177, baseType: !324, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3008, file: !64, line: 184, baseType: !1179, size: 64, offset: 768)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3008, file: !64, line: 190, baseType: !172, size: 64, offset: 832)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3008, file: !64, line: 193, baseType: !246, size: 64, offset: 896)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3008, file: !64, line: 202, baseType: !65, size: 32, offset: 960)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3008, file: !64, line: 208, baseType: !2911, size: 64, offset: 1024)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3008, file: !64, line: 213, baseType: !324, size: 64, offset: 1088)
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3008, file: !64, line: 215, baseType: !3072, size: 128, offset: 1152)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3008, file: !64, line: 215, size: 128, elements: !3073)
!3073 = !{!3074, !3079}
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !3072, file: !64, line: 216, baseType: !3075, size: 128)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !64, line: 216, size: 128, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3075, file: !64, line: 220, baseType: !324, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3075, file: !64, line: 228, baseType: !2911, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !3072, file: !64, line: 230, baseType: !3080, size: 128)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !64, line: 230, size: 128, elements: !3081)
!3081 = !{!3082, !3083}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3080, file: !64, line: 231, baseType: !324, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3080, file: !64, line: 232, baseType: !324, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3008, file: !64, line: 240, baseType: !324, size: 64, offset: 1280)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3008, file: !64, line: 241, baseType: !324, size: 64, offset: 1344)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3008, file: !64, line: 247, baseType: !324, size: 64, offset: 1408)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3008, file: !64, line: 248, baseType: !324, size: 64, offset: 1472)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2892, file: !64, line: 696, baseType: !2228, size: 64, offset: 4352)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2892, file: !64, line: 697, baseType: !641, size: 64, offset: 4416)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2892, file: !64, line: 703, baseType: !643, size: 64, offset: 4480)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2892, file: !64, line: 704, baseType: !643, size: 64, offset: 4544)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2892, file: !64, line: 709, baseType: !637, size: 192, offset: 4608)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2892, file: !64, line: 710, baseType: !509, size: 128, offset: 4800)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2892, file: !64, line: 711, baseType: !2891, size: 64, offset: 4928)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2892, file: !64, line: 713, baseType: !65, size: 32, offset: 4992)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2892, file: !64, line: 714, baseType: !65, size: 32, offset: 5024)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2892, file: !64, line: 716, baseType: !509, size: 128, offset: 5056)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2892, file: !64, line: 717, baseType: !1179, size: 64, offset: 5184)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2892, file: !64, line: 720, baseType: !637, size: 192, offset: 5248)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2892, file: !64, line: 721, baseType: !724, size: 32, offset: 5440)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2892, file: !64, line: 723, baseType: !3102, size: 64, offset: 5504)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !64, line: 611, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2892, file: !64, line: 724, baseType: !509, size: 128, offset: 5568)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2892, file: !64, line: 725, baseType: !246, size: 64, offset: 5696)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2892, file: !64, line: 726, baseType: !65, size: 32, offset: 5760)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2892, file: !64, line: 729, baseType: !1446, size: 128, offset: 5824)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2892, file: !64, line: 730, baseType: !3109, size: 64, offset: 5952)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !87, line: 1314, size: 320, elements: !3111)
!3111 = !{!3112, !3120, !3121, !3122, !3123, !3124}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3110, file: !87, line: 1315, baseType: !3113)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3114, line: 20, baseType: !3115)
!3114 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3114, line: 11, elements: !3116)
!3116 = !{!3117}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3115, file: !3114, line: 12, baseType: !3118)
!3118 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !661, line: 33, baseType: !3119)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !661, line: 31, elements: !558)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3110, file: !87, line: 1316, baseType: !65, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3110, file: !87, line: 1317, baseType: !65, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3110, file: !87, line: 1318, baseType: !3109, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3110, file: !87, line: 1319, baseType: !258, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3110, file: !87, line: 1320, baseType: !271, size: 128, align: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2892, file: !64, line: 733, baseType: !65, size: 32, offset: 6016)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2892, file: !64, line: 734, baseType: !65, size: 32, offset: 6048)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2892, file: !64, line: 735, baseType: !65, size: 32, offset: 6080)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2892, file: !64, line: 736, baseType: !3129, size: 192, offset: 6144)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3130, line: 16, size: 192, elements: !3131)
!3130 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/lizy2001/genbc/linux")
!3131 = !{!3132, !3152}
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !3130, line: 17, baseType: !3133, size: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !3130, line: 17, size: 128, elements: !3134)
!3134 = !{!3135, !3147}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3133, file: !3130, line: 18, baseType: !3136, size: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3137, line: 58, size: 128, elements: !3138)
!3137 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!3138 = !{!3139, !3140, !3145, !3146}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3136, file: !3137, line: 59, baseType: !265, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3136, file: !3137, line: 60, baseType: !3141, size: 32, offset: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3136, file: !3137, line: 60, size: 32, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3141, file: !3137, line: 61, baseType: !7, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3141, file: !3137, line: 62, baseType: !724, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3136, file: !3137, line: 65, baseType: !829, size: 16, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3136, file: !3137, line: 65, baseType: !829, size: 16, offset: 112)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !3130, line: 19, baseType: !3148, size: 128)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3133, file: !3130, line: 19, size: 128, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "llnode", scope: !3148, file: !3130, line: 20, baseType: !265, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3148, file: !3130, line: 21, baseType: !724, size: 32, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3129, file: !3130, line: 24, baseType: !3153, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2892, file: !64, line: 738, baseType: !724, size: 32, offset: 6336)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2892, file: !64, line: 741, baseType: !3159, size: 192, offset: 6400)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !64, line: 552, size: 192, elements: !3160)
!3160 = !{!3161, !3162, !3163}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3159, file: !64, line: 553, baseType: !509, size: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3159, file: !64, line: 554, baseType: !750, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3159, file: !64, line: 555, baseType: !7, size: 32, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2892, file: !64, line: 743, baseType: !3165, size: 64, offset: 6592)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !64, line: 558, size: 128, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3166, file: !64, line: 559, baseType: !246, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3166, file: !64, line: 560, baseType: !246, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2892, file: !64, line: 744, baseType: !246, size: 64, offset: 6656)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2892, file: !64, line: 747, baseType: !2891, size: 64, offset: 6720)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2892, file: !64, line: 749, baseType: !3173, size: 64, offset: 6784)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !2891}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2892, file: !64, line: 750, baseType: !271, size: 128, align: 64, offset: 6848)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2892, file: !64, line: 752, baseType: !1459, size: 64, offset: 6976)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2892, file: !64, line: 753, baseType: !324, size: 64, offset: 7040)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2892, file: !64, line: 755, baseType: !3180, size: 64, offset: 7104)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!324}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2892, file: !64, line: 756, baseType: !3184, size: 64, offset: 7168)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !64, line: 578, baseType: !3185)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{null, !2891, !3188, !3282}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !64, line: 992, size: 1536, align: 512, elements: !3190)
!3190 = !{!3191, !3192, !3213, !3234, !3235, !3236, !3237, !3253, !3254, !3255, !3260, !3261, !3262, !3263, !3268, !3275, !3276, !3307, !3308, !3309, !3310}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3189, file: !64, line: 997, baseType: !324, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3189, file: !64, line: 998, baseType: !3193, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !64, line: 88, size: 256, elements: !3195)
!3195 = !{!3196, !3212}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3194, file: !64, line: 89, baseType: !3197, size: 224)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !64, line: 78, size: 224, elements: !3198)
!3198 = !{!3199, !3205, !3210, !3211}
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !64, line: 79, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3197, file: !64, line: 79, size: 64, elements: !3201)
!3201 = !{!3202, !3204}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3200, file: !64, line: 80, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3200, file: !64, line: 81, baseType: !246, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3197, file: !64, line: 83, baseType: !3206, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !64, line: 75, baseType: !3207)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!246, !172, !2372, !246, !246}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3197, file: !64, line: 84, baseType: !172, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3197, file: !64, line: 85, baseType: !321, size: 32, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3194, file: !64, line: 90, baseType: !321, size: 32, offset: 224)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3189, file: !64, line: 999, baseType: !3214, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !64, line: 113, size: 128, elements: !3216)
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3215, file: !64, line: 114, baseType: !325, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3215, file: !64, line: 115, baseType: !325, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3215, file: !64, line: 116, baseType: !3220, offset: 128)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3221, elements: !3232)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !2928, line: 1235, size: 192, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3221, file: !2928, line: 1236, baseType: !325, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3221, file: !2928, line: 1237, baseType: !325, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3221, file: !2928, line: 1238, baseType: !325, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3221, file: !2928, line: 1239, baseType: !325, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3221, file: !2928, line: 1240, baseType: !325, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3221, file: !2928, line: 1241, baseType: !325, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3221, file: !2928, line: 1242, baseType: !325, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3221, file: !2928, line: 1243, baseType: !325, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3221, file: !2928, line: 1244, baseType: !325, size: 40, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3232 = !{!3233}
!3233 = !DISubrange(count: -1)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3189, file: !64, line: 1000, baseType: !324, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3189, file: !64, line: 1001, baseType: !324, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3189, file: !64, line: 1002, baseType: !324, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3189, file: !64, line: 1003, baseType: !3238, size: 64, offset: 384)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !2928, line: 1115, size: 64, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3238, file: !2928, line: 1116, baseType: !325, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3238, file: !2928, line: 1117, baseType: !3242, size: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !2928, line: 1117, size: 64, elements: !3243)
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3242, file: !2928, line: 1118, baseType: !325, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3242, file: !2928, line: 1119, baseType: !325, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3242, file: !2928, line: 1120, baseType: !325, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3242, file: !2928, line: 1121, baseType: !325, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3242, file: !2928, line: 1122, baseType: !325, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3242, file: !2928, line: 1123, baseType: !325, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3242, file: !2928, line: 1124, baseType: !325, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3242, file: !2928, line: 1125, baseType: !325, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3242, file: !2928, line: 1126, baseType: !325, size: 24, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3189, file: !64, line: 1009, baseType: !324, size: 64, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3189, file: !64, line: 1010, baseType: !324, size: 64, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3189, file: !64, line: 1014, baseType: !3256, size: 64, offset: 576)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3189, file: !64, line: 1011, size: 64, elements: !3257)
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3256, file: !64, line: 1012, baseType: !321, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3256, file: !64, line: 1013, baseType: !321, size: 32, offset: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3189, file: !64, line: 1015, baseType: !324, size: 64, offset: 640)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3189, file: !64, line: 1016, baseType: !324, size: 64, offset: 704)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3189, file: !64, line: 1017, baseType: !324, size: 64, offset: 768)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3189, file: !64, line: 1021, baseType: !3264, size: 64, offset: 832)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3189, file: !64, line: 1018, size: 64, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3264, file: !64, line: 1019, baseType: !321, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3264, file: !64, line: 1020, baseType: !321, size: 32, offset: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3189, file: !64, line: 1022, baseType: !3269, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !64, line: 62, size: 64, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3270, file: !64, line: 63, baseType: !325, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3270, file: !64, line: 64, baseType: !3274, offset: 64)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, elements: !3232)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3189, file: !64, line: 1023, baseType: !324, size: 64, offset: 960)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3189, file: !64, line: 1025, baseType: !3277, size: 128, offset: 1024)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3278, line: 7, size: 128, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/lizy2001/genbc/linux")
!3279 = !{!3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3277, file: !3278, line: 8, baseType: !325, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3277, file: !3278, line: 9, baseType: !3282, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3284, line: 56, size: 1344, elements: !3285)
!3284 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3283, file: !3284, line: 61, baseType: !246, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3283, file: !3284, line: 62, baseType: !246, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3283, file: !3284, line: 63, baseType: !246, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3283, file: !3284, line: 64, baseType: !246, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3283, file: !3284, line: 65, baseType: !246, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3283, file: !3284, line: 66, baseType: !246, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3283, file: !3284, line: 68, baseType: !246, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3283, file: !3284, line: 69, baseType: !246, size: 64, offset: 448)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3283, file: !3284, line: 70, baseType: !246, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3283, file: !3284, line: 71, baseType: !246, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3283, file: !3284, line: 72, baseType: !246, size: 64, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3283, file: !3284, line: 73, baseType: !246, size: 64, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3283, file: !3284, line: 74, baseType: !246, size: 64, offset: 768)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3283, file: !3284, line: 75, baseType: !246, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3283, file: !3284, line: 76, baseType: !246, size: 64, offset: 896)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3283, file: !3284, line: 81, baseType: !246, size: 64, offset: 960)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3283, file: !3284, line: 83, baseType: !246, size: 64, offset: 1024)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3283, file: !3284, line: 84, baseType: !246, size: 64, offset: 1088)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3283, file: !3284, line: 85, baseType: !246, size: 64, offset: 1152)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3283, file: !3284, line: 86, baseType: !246, size: 64, offset: 1216)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3283, file: !3284, line: 87, baseType: !246, size: 64, offset: 1280)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3189, file: !64, line: 1026, baseType: !3277, size: 128, offset: 1152)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3189, file: !64, line: 1027, baseType: !324, size: 64, offset: 1280)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3189, file: !64, line: 1029, baseType: !324, size: 64, offset: 1344)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3189, file: !64, line: 1030, baseType: !324, size: 64, offset: 1408)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2892, file: !64, line: 757, baseType: !172, size: 64, offset: 7232)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2892, file: !64, line: 778, baseType: !509, size: 128, offset: 7296)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "heap_default", scope: !2876, file: !64, line: 884, baseType: !3314, size: 128, offset: 2816)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2891, size: 128, elements: !119)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2233, file: !64, line: 295, baseType: !724, size: 32, offset: 640)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2233, file: !64, line: 296, baseType: !65, size: 32, offset: 672)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2233, file: !64, line: 297, baseType: !65, size: 32, offset: 704)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2233, file: !64, line: 300, baseType: !7, size: 32, offset: 736)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2233, file: !64, line: 306, baseType: !3320, size: 64, offset: 768)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !2232}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2233, file: !64, line: 307, baseType: !3320, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2233, file: !64, line: 325, baseType: !3325, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!65, !2891}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2233, file: !64, line: 331, baseType: !3329, size: 64, offset: 960)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !2891, !945}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2233, file: !64, line: 332, baseType: !3329, size: 64, offset: 1024)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2233, file: !64, line: 360, baseType: !3334, size: 64, offset: 1088)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!65, !2891, !65}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2233, file: !64, line: 361, baseType: !3338, size: 64, offset: 1152)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !2891, !65}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2233, file: !64, line: 381, baseType: !3338, size: 64, offset: 1216)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2233, file: !64, line: 382, baseType: !3338, size: 64, offset: 1280)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2233, file: !64, line: 390, baseType: !3173, size: 64, offset: 1344)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2233, file: !64, line: 402, baseType: !3345, size: 64, offset: 1408)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !2232, !7}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2233, file: !64, line: 411, baseType: !3349, size: 64, offset: 1472)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!65, !2232}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2233, file: !64, line: 418, baseType: !3320, size: 64, offset: 1536)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2233, file: !64, line: 424, baseType: !3325, size: 64, offset: 1600)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2233, file: !64, line: 429, baseType: !3355, size: 64, offset: 1664)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !2228, !399}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2233, file: !64, line: 435, baseType: !905, size: 64, offset: 1728)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2233, file: !64, line: 443, baseType: !3360, size: 64, offset: 1792)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !2228, !2228}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2233, file: !64, line: 450, baseType: !3364, size: 64, offset: 1856)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!172, !2891, !791, !65, !399}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2233, file: !64, line: 457, baseType: !376, size: 64, offset: 1920)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2233, file: !64, line: 468, baseType: !3369, size: 64, offset: 1984)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!234, !2891, !3372, !246}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !64, line: 887, size: 448, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3385}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3373, file: !64, line: 888, baseType: !2891, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3373, file: !64, line: 889, baseType: !3102, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3373, file: !64, line: 890, baseType: !246, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3373, file: !64, line: 891, baseType: !246, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3373, file: !64, line: 892, baseType: !324, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3373, file: !64, line: 893, baseType: !3381, size: 64, offset: 320)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3373, file: !64, line: 893, size: 64, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3381, file: !64, line: 894, baseType: !172, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3381, file: !64, line: 895, baseType: !246, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3373, file: !64, line: 897, baseType: !65, size: 32, offset: 384)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2233, file: !64, line: 480, baseType: !3387, size: 64, offset: 2048)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!65, !512}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2233, file: !64, line: 494, baseType: !3173, size: 64, offset: 2112)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2233, file: !64, line: 504, baseType: !3325, size: 64, offset: 2176)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "filter_match", scope: !2233, file: !64, line: 510, baseType: !3325, size: 64, offset: 2240)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2233, file: !64, line: 515, baseType: !3394, size: 64, offset: 2304)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!65, !2891, !324}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2229, file: !64, line: 799, baseType: !750, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2229, file: !64, line: 805, baseType: !637, size: 192, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "active_ctx_list", scope: !2229, file: !64, line: 807, baseType: !509, size: 128, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2229, file: !64, line: 808, baseType: !3401, size: 128, offset: 384)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !64, line: 783, size: 128, elements: !3402)
!3402 = !{!3403, !3404}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3401, file: !64, line: 784, baseType: !733, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3401, file: !64, line: 785, baseType: !324, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2229, file: !64, line: 809, baseType: !3401, size: 128, offset: 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2229, file: !64, line: 810, baseType: !509, size: 128, offset: 640)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !2229, file: !64, line: 812, baseType: !509, size: 128, offset: 768)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !2229, file: !64, line: 813, baseType: !509, size: 128, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2229, file: !64, line: 815, baseType: !65, size: 32, offset: 1024)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !2229, file: !64, line: 816, baseType: !65, size: 32, offset: 1056)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2229, file: !64, line: 817, baseType: !65, size: 32, offset: 1088)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2229, file: !64, line: 818, baseType: !65, size: 32, offset: 1120)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2229, file: !64, line: 819, baseType: !65, size: 32, offset: 1152)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2229, file: !64, line: 820, baseType: !65, size: 32, offset: 1184)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !2229, file: !64, line: 825, baseType: !65, size: 32, offset: 1216)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2229, file: !64, line: 826, baseType: !1193, size: 32, offset: 1248)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2229, file: !64, line: 827, baseType: !1179, size: 64, offset: 1280)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2229, file: !64, line: 832, baseType: !324, size: 64, offset: 1344)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2229, file: !64, line: 833, baseType: !324, size: 64, offset: 1408)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2229, file: !64, line: 839, baseType: !2228, size: 64, offset: 1472)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2229, file: !64, line: 840, baseType: !324, size: 64, offset: 1536)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2229, file: !64, line: 841, baseType: !324, size: 64, offset: 1600)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2229, file: !64, line: 842, baseType: !65, size: 32, offset: 1664)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !2229, file: !64, line: 846, baseType: !172, size: 64, offset: 1728)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2229, file: !64, line: 847, baseType: !271, size: 128, align: 64, offset: 1792)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1180, file: !1181, line: 1110, baseType: !637, size: 192, offset: 11776)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1180, file: !1181, line: 1111, baseType: !509, size: 128, offset: 11968)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1180, file: !1181, line: 1173, baseType: !3429, size: 64, offset: 12096)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3431, line: 62, size: 256, align: 256, elements: !3432)
!3431 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3432 = !{!3433, !3434, !3435, !3440}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3430, file: !3431, line: 75, baseType: !135, size: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3430, file: !3431, line: 90, baseType: !135, size: 32, offset: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3430, file: !3431, line: 124, baseType: !3436, size: 64, offset: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3430, file: !3431, line: 109, size: 64, elements: !3437)
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3436, file: !3431, line: 110, baseType: !325, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3436, file: !3431, line: 112, baseType: !325, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3430, file: !3431, line: 144, baseType: !135, size: 32, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1180, file: !1181, line: 1174, baseType: !321, size: 32, offset: 12160)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1180, file: !1181, line: 1179, baseType: !246, size: 64, offset: 12224)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1180, file: !1181, line: 1182, baseType: !3444, size: 128, offset: 12288)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1122, line: 76, size: 128, elements: !3445)
!3445 = !{!3446, !3451, !3452}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3444, file: !1122, line: 85, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3448, line: 7, size: 64, elements: !3449)
!3448 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3449 = !{!3450}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3447, file: !3448, line: 12, baseType: !1330, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3444, file: !1122, line: 88, baseType: !399, size: 8, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3444, file: !1122, line: 95, baseType: !399, size: 8, offset: 72)
!3453 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1181, line: 1184, baseType: !3454, size: 128, offset: 12416)
!3454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 1184, size: 128, elements: !3455)
!3455 = !{!3456, !3457}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3454, file: !1181, line: 1185, baseType: !1193, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3454, file: !1181, line: 1186, baseType: !271, size: 128, align: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1180, file: !1181, line: 1190, baseType: !3459, size: 64, offset: 12544)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1181, line: 53, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1180, file: !1181, line: 1192, baseType: !3462, size: 128, offset: 12608)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1122, line: 64, size: 128, elements: !3463)
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3462, file: !1122, line: 65, baseType: !698, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3462, file: !1122, line: 67, baseType: !135, size: 32, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3462, file: !1122, line: 68, baseType: !135, size: 32, offset: 96)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1180, file: !1181, line: 1206, baseType: !65, size: 32, offset: 12736)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1180, file: !1181, line: 1207, baseType: !65, size: 32, offset: 12768)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1180, file: !1181, line: 1209, baseType: !246, size: 64, offset: 12800)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1180, file: !1181, line: 1219, baseType: !324, size: 64, offset: 12864)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1180, file: !1181, line: 1220, baseType: !324, size: 64, offset: 12928)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1180, file: !1181, line: 1317, baseType: !65, size: 32, offset: 12992)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1180, file: !1181, line: 1319, baseType: !1179, size: 64, offset: 13056)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1180, file: !1181, line: 1322, baseType: !3475, size: 64, offset: 13120)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1181, line: 1322, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1180, file: !1181, line: 1326, baseType: !1193, size: 32, offset: 13184)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1180, file: !1181, line: 1342, baseType: !172, size: 64, offset: 13248)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1180, file: !1181, line: 1343, baseType: !325, size: 64, offset: 13312)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1180, file: !1181, line: 1344, baseType: !324, size: 64, offset: 13376)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1180, file: !1181, line: 1345, baseType: !325, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1180, file: !1181, line: 1346, baseType: !325, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1180, file: !1181, line: 1347, baseType: !325, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1180, file: !1181, line: 1348, baseType: !271, size: 128, align: 64, offset: 13504)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1180, file: !1181, line: 1358, baseType: !3486, size: 34816, offset: 13824)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3487, line: 485, size: 34816, elements: !3488)
!3487 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3488 = !{!3489, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3516, !3517, !3518, !3519, !3520, !3521, !3524, !3525, !3526}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3486, file: !3487, line: 487, baseType: !3490, size: 192)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3491, size: 192, elements: !563)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3492, line: 16, size: 64, elements: !3493)
!3492 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3491, file: !3492, line: 17, baseType: !829, size: 16)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3491, file: !3492, line: 18, baseType: !829, size: 16, offset: 16)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3491, file: !3492, line: 19, baseType: !829, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3491, file: !3492, line: 19, baseType: !829, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3491, file: !3492, line: 19, baseType: !829, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3491, file: !3492, line: 19, baseType: !829, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3491, file: !3492, line: 19, baseType: !829, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3491, file: !3492, line: 20, baseType: !829, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3491, file: !3492, line: 20, baseType: !829, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3491, file: !3492, line: 20, baseType: !829, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3491, file: !3492, line: 20, baseType: !829, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3491, file: !3492, line: 20, baseType: !829, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3491, file: !3492, line: 20, baseType: !829, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3486, file: !3487, line: 491, baseType: !246, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3486, file: !3487, line: 495, baseType: !337, size: 16, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3486, file: !3487, line: 496, baseType: !337, size: 16, offset: 272)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3486, file: !3487, line: 497, baseType: !337, size: 16, offset: 288)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3486, file: !3487, line: 498, baseType: !337, size: 16, offset: 304)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3486, file: !3487, line: 502, baseType: !246, size: 64, offset: 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3486, file: !3487, line: 503, baseType: !246, size: 64, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3486, file: !3487, line: 514, baseType: !3515, size: 256, offset: 448)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2891, size: 256, elements: !147)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3486, file: !3487, line: 516, baseType: !246, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3486, file: !3487, line: 518, baseType: !246, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3486, file: !3487, line: 520, baseType: !246, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3486, file: !3487, line: 521, baseType: !246, size: 64, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3486, file: !3487, line: 522, baseType: !246, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3486, file: !3487, line: 528, baseType: !3522, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3487, line: 10, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3486, file: !3487, line: 535, baseType: !246, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3486, file: !3487, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3486, file: !3487, line: 540, baseType: !3527, size: 33280, offset: 1536)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3528, line: 317, size: 33280, elements: !3529)
!3528 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3529 = !{!3530, !3531, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3527, file: !3528, line: 330, baseType: !7, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3527, file: !3528, line: 337, baseType: !246, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3527, file: !3528, line: 348, baseType: !3533, size: 32768, offset: 512)
!3533 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3528, line: 304, size: 32768, elements: !3534)
!3534 = !{!3535, !3550, !3589, !3614, !3627}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3533, file: !3528, line: 305, baseType: !3536, size: 896)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3528, line: 12, size: 896, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3549}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3536, file: !3528, line: 13, baseType: !321, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3536, file: !3528, line: 14, baseType: !321, size: 32, offset: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3536, file: !3528, line: 15, baseType: !321, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3536, file: !3528, line: 16, baseType: !321, size: 32, offset: 96)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3536, file: !3528, line: 17, baseType: !321, size: 32, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3536, file: !3528, line: 18, baseType: !321, size: 32, offset: 160)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3536, file: !3528, line: 19, baseType: !321, size: 32, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3536, file: !3528, line: 22, baseType: !3546, size: 640, offset: 224)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 640, elements: !3547)
!3547 = !{!3548}
!3548 = !DISubrange(count: 20)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3536, file: !3528, line: 25, baseType: !321, size: 32, offset: 864)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3533, file: !3528, line: 306, baseType: !3551, size: 4096, align: 128)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3528, line: 34, size: 4096, align: 128, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3572, !3573, !3574, !3578, !3580, !3584}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3551, file: !3528, line: 35, baseType: !829, size: 16)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3551, file: !3528, line: 36, baseType: !829, size: 16, offset: 16)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3551, file: !3528, line: 37, baseType: !829, size: 16, offset: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3551, file: !3528, line: 38, baseType: !829, size: 16, offset: 48)
!3557 = !DIDerivedType(tag: DW_TAG_member, scope: !3551, file: !3528, line: 39, baseType: !3558, size: 128, offset: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3551, file: !3528, line: 39, size: 128, elements: !3559)
!3559 = !{!3560, !3565}
!3560 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !3528, line: 40, baseType: !3561, size: 128)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3528, line: 40, size: 128, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3561, file: !3528, line: 41, baseType: !324, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3561, file: !3528, line: 42, baseType: !324, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !3528, line: 44, baseType: !3566, size: 128)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !3528, line: 44, size: 128, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3566, file: !3528, line: 45, baseType: !321, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3566, file: !3528, line: 46, baseType: !321, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3566, file: !3528, line: 47, baseType: !321, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3566, file: !3528, line: 48, baseType: !321, size: 32, offset: 96)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3551, file: !3528, line: 51, baseType: !321, size: 32, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3551, file: !3528, line: 52, baseType: !321, size: 32, offset: 224)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3551, file: !3528, line: 55, baseType: !3575, size: 1024, offset: 256)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 1024, elements: !3576)
!3576 = !{!3577}
!3577 = !DISubrange(count: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3551, file: !3528, line: 58, baseType: !3579, size: 2048, offset: 1280)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 2048, elements: !2055)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3551, file: !3528, line: 60, baseType: !3581, size: 384, offset: 3328)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 384, elements: !3582)
!3582 = !{!3583}
!3583 = !DISubrange(count: 12)
!3584 = !DIDerivedType(tag: DW_TAG_member, scope: !3551, file: !3528, line: 62, baseType: !3585, size: 384, offset: 3712)
!3585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3551, file: !3528, line: 62, size: 384, elements: !3586)
!3586 = !{!3587, !3588}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3585, file: !3528, line: 63, baseType: !3581, size: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3585, file: !3528, line: 64, baseType: !3581, size: 384)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3533, file: !3528, line: 307, baseType: !3590, size: 1088)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3528, line: 79, size: 1088, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3613}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3590, file: !3528, line: 80, baseType: !321, size: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3590, file: !3528, line: 81, baseType: !321, size: 32, offset: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3590, file: !3528, line: 82, baseType: !321, size: 32, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3590, file: !3528, line: 83, baseType: !321, size: 32, offset: 96)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3590, file: !3528, line: 84, baseType: !321, size: 32, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3590, file: !3528, line: 85, baseType: !321, size: 32, offset: 160)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3590, file: !3528, line: 86, baseType: !321, size: 32, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3590, file: !3528, line: 88, baseType: !3546, size: 640, offset: 224)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3590, file: !3528, line: 89, baseType: !1315, size: 8, offset: 864)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3590, file: !3528, line: 90, baseType: !1315, size: 8, offset: 872)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3590, file: !3528, line: 91, baseType: !1315, size: 8, offset: 880)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3590, file: !3528, line: 92, baseType: !1315, size: 8, offset: 888)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3590, file: !3528, line: 93, baseType: !1315, size: 8, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3590, file: !3528, line: 94, baseType: !1315, size: 8, offset: 904)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3590, file: !3528, line: 95, baseType: !3607, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3609, line: 11, size: 128, elements: !3610)
!3609 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3608, file: !3609, line: 12, baseType: !234, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3608, file: !3609, line: 13, baseType: !3282, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3590, file: !3528, line: 96, baseType: !321, size: 32, offset: 1024)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3533, file: !3528, line: 308, baseType: !3615, size: 4608, align: 512)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3528, line: 289, size: 4608, align: 512, elements: !3616)
!3616 = !{!3617, !3618, !3625}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3615, file: !3528, line: 290, baseType: !3551, size: 4096, align: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3615, file: !3528, line: 291, baseType: !3619, size: 512, offset: 4096)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3528, line: 268, size: 512, elements: !3620)
!3620 = !{!3621, !3622, !3623}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3619, file: !3528, line: 269, baseType: !324, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3619, file: !3528, line: 270, baseType: !324, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3619, file: !3528, line: 271, baseType: !3624, size: 384, offset: 128)
!3624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 384, elements: !1576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3615, file: !3528, line: 292, baseType: !3626, offset: 4608)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, elements: !1863)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3533, file: !3528, line: 309, baseType: !3628, size: 32768)
!3628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 32768, elements: !3629)
!3629 = !{!3630}
!3630 = !DISubrange(count: 4096)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1176, file: !700, line: 378, baseType: !3632, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1172, file: !700, line: 384, baseType: !1697, size: 192, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !949, file: !700, line: 500, baseType: !649, offset: 6656)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !949, file: !700, line: 501, baseType: !3636, size: 64, offset: 6656)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !700, line: 387, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !949, file: !700, line: 516, baseType: !1482, size: 64, offset: 6720)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !949, file: !700, line: 519, baseType: !258, size: 64, offset: 6784)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !949, file: !700, line: 521, baseType: !3641, size: 64, offset: 6848)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !700, line: 521, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !949, file: !700, line: 545, baseType: !724, size: 32, offset: 6912)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !949, file: !700, line: 548, baseType: !399, size: 8, offset: 6944)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !949, file: !700, line: 550, baseType: !3646, offset: 6952)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3647, line: 142, elements: !558)
!3647 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !949, file: !700, line: 554, baseType: !1636, size: 256, offset: 6976)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !949, file: !700, line: 557, baseType: !321, size: 32, offset: 7232)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !946, file: !700, line: 565, baseType: !3651, offset: 7296)
!3651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, elements: !3232)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !942, file: !700, line: 151, baseType: !724, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !934, file: !700, line: 156, baseType: !649, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !700, line: 159, baseType: !3655, size: 128)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !700, line: 159, size: 128, elements: !3656)
!3656 = !{!3657, !3721}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3655, file: !700, line: 161, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !74, line: 110, size: 1152, elements: !3660)
!3660 = !{!3661, !3671, !3692, !3693, !3694, !3695, !3696, !3708, !3709, !3710}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3659, file: !74, line: 111, baseType: !3662, size: 384)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !74, line: 19, size: 384, elements: !3663)
!3663 = !{!3664, !3666, !3667, !3668, !3669, !3670}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3662, file: !74, line: 20, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3662, file: !74, line: 21, baseType: !3665, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3662, file: !74, line: 22, baseType: !3665, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3662, file: !74, line: 23, baseType: !246, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3662, file: !74, line: 24, baseType: !246, size: 64, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3662, file: !74, line: 25, baseType: !246, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3659, file: !74, line: 112, baseType: !3672, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3674, line: 105, size: 128, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3673, file: !3674, line: 110, baseType: !246, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3673, file: !3674, line: 118, baseType: !3678, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3674, line: 95, size: 448, elements: !3680)
!3680 = !{!3681, !3682, !3687, !3688, !3689, !3690, !3691}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3679, file: !3674, line: 96, baseType: !641, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3679, file: !3674, line: 97, baseType: !3683, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3674, line: 60, baseType: !3685)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{null, !3672}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3679, file: !3674, line: 98, baseType: !3683, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3679, file: !3674, line: 99, baseType: !399, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3679, file: !3674, line: 100, baseType: !399, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3679, file: !3674, line: 101, baseType: !271, size: 128, align: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3679, file: !3674, line: 102, baseType: !3672, size: 64, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3659, file: !74, line: 113, baseType: !3673, size: 128, offset: 448)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3659, file: !74, line: 114, baseType: !1697, size: 192, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3659, file: !74, line: 115, baseType: !73, size: 32, offset: 768)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3659, file: !74, line: 116, baseType: !7, size: 32, offset: 800)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3659, file: !74, line: 117, baseType: !3697, size: 64, offset: 832)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3699)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !74, line: 67, size: 256, elements: !3700)
!3700 = !{!3701, !3702, !3706, !3707}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3699, file: !74, line: 73, baseType: !810, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3699, file: !74, line: 78, baseType: !3703, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3658}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3699, file: !74, line: 83, baseType: !3703, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3699, file: !74, line: 89, baseType: !998, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3659, file: !74, line: 118, baseType: !172, size: 64, offset: 896)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3659, file: !74, line: 119, baseType: !65, size: 32, offset: 960)
!3710 = !DIDerivedType(tag: DW_TAG_member, scope: !3659, file: !74, line: 120, baseType: !3711, size: 128, offset: 1024)
!3711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3659, file: !74, line: 120, size: 128, elements: !3712)
!3712 = !{!3713, !3719}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3711, file: !74, line: 121, baseType: !3714, size: 128)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3715, line: 6, size: 128, elements: !3716)
!3715 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3714, file: !3715, line: 7, baseType: !324, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3714, file: !3715, line: 8, baseType: !324, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3711, file: !74, line: 122, baseType: !3720)
!3720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3714, elements: !1863)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3655, file: !700, line: 162, baseType: !172, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !704, file: !700, line: 176, baseType: !271, size: 128, align: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !700, line: 179, baseType: !3724, size: 32, offset: 384)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !700, line: 179, size: 32, elements: !3725)
!3725 = !{!3726, !3727, !3728, !3729}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3724, file: !700, line: 184, baseType: !724, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3724, file: !700, line: 192, baseType: !7, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3724, file: !700, line: 194, baseType: !7, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3724, file: !700, line: 195, baseType: !65, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !699, file: !700, line: 199, baseType: !724, size: 32, offset: 416)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !571, file: !87, line: 1964, baseType: !3732, size: 64, offset: 1344)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!234, !505, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3737, line: 12, size: 256, elements: !3738)
!3737 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3738 = !{!3739, !3740, !3741, !3742, !3743}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3736, file: !3737, line: 13, baseType: !170, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3736, file: !3737, line: 16, baseType: !65, size: 32, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3736, file: !3737, line: 23, baseType: !246, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3736, file: !3737, line: 30, baseType: !246, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3736, file: !3737, line: 33, baseType: !3744, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !700, line: 27, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !571, file: !87, line: 1966, baseType: !3732, size: 64, offset: 1408)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !506, file: !87, line: 1424, baseType: !3748, size: 64, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3750)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !81, line: 322, size: 704, elements: !3751)
!3751 = !{!3752, !3798, !3802, !3806, !3807, !3808, !3809, !3810, !3815, !3820, !3824}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3750, file: !81, line: 323, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!65, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !81, line: 294, size: 1600, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3783, !3784, !3785}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3757, file: !81, line: 295, baseType: !550, size: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3757, file: !81, line: 296, baseType: !509, size: 128, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3757, file: !81, line: 297, baseType: !509, size: 128, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3757, file: !81, line: 298, baseType: !509, size: 128, offset: 384)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3757, file: !81, line: 299, baseType: !637, size: 192, offset: 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3757, file: !81, line: 300, baseType: !649, offset: 704)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3757, file: !81, line: 301, baseType: !724, size: 32, offset: 704)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3757, file: !81, line: 302, baseType: !505, size: 64, offset: 768)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3757, file: !81, line: 303, baseType: !3768, size: 64, offset: 832)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !81, line: 68, size: 64, elements: !3769)
!3769 = !{!3770, !3782}
!3770 = !DIDerivedType(tag: DW_TAG_member, scope: !3768, file: !81, line: 69, baseType: !3771, size: 32)
!3771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3768, file: !81, line: 69, size: 32, elements: !3772)
!3772 = !{!3773, !3774, !3775}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3771, file: !81, line: 70, baseType: !340, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3771, file: !81, line: 71, baseType: !348, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3771, file: !81, line: 72, baseType: !3776, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3777, line: 24, baseType: !3778)
!3777 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3777, line: 22, size: 32, elements: !3779)
!3779 = !{!3780}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3778, file: !3777, line: 23, baseType: !3781, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3777, line: 20, baseType: !346)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3768, file: !81, line: 74, baseType: !80, size: 32, offset: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3757, file: !81, line: 304, baseType: !440, size: 64, offset: 896)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3757, file: !81, line: 305, baseType: !246, size: 64, offset: 960)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3757, file: !81, line: 306, baseType: !3786, size: 576, offset: 1024)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !81, line: 205, size: 576, elements: !3787)
!3787 = !{!3788, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3786, file: !81, line: 206, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !81, line: 66, baseType: !133)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3786, file: !81, line: 207, baseType: !3789, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3786, file: !81, line: 208, baseType: !3789, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3786, file: !81, line: 209, baseType: !3789, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3786, file: !81, line: 210, baseType: !3789, size: 64, offset: 256)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3786, file: !81, line: 211, baseType: !3789, size: 64, offset: 320)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3786, file: !81, line: 212, baseType: !3789, size: 64, offset: 384)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3786, file: !81, line: 213, baseType: !232, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3786, file: !81, line: 214, baseType: !232, size: 64, offset: 512)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3750, file: !81, line: 324, baseType: !3799, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!3756, !505, !65}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3750, file: !81, line: 325, baseType: !3803, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3756}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3750, file: !81, line: 326, baseType: !3753, size: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3750, file: !81, line: 327, baseType: !3753, size: 64, offset: 256)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3750, file: !81, line: 328, baseType: !3753, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3750, file: !81, line: 329, baseType: !599, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3750, file: !81, line: 332, baseType: !3811, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!3814, !332}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3750, file: !81, line: 333, baseType: !3816, size: 64, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!65, !332, !3819}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3750, file: !81, line: 335, baseType: !3821, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!65, !332, !3814}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3750, file: !81, line: 337, baseType: !3825, size: 64, offset: 640)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!65, !505, !3828}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !506, file: !87, line: 1425, baseType: !3830, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3832)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !81, line: 428, size: 704, elements: !3833)
!3833 = !{!3834, !3838, !3839, !3843, !3844, !3845, !3860, !3883, !3887, !3888, !3911}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3832, file: !81, line: 429, baseType: !3835, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!65, !505, !65, !65, !450}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3832, file: !81, line: 430, baseType: !599, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3832, file: !81, line: 431, baseType: !3840, size: 64, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!65, !505, !7}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3832, file: !81, line: 432, baseType: !3840, size: 64, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3832, file: !81, line: 433, baseType: !599, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3832, file: !81, line: 434, baseType: !3846, size: 64, offset: 320)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!65, !505, !65, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !81, line: 415, size: 256, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3850, file: !81, line: 416, baseType: !65, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3850, file: !81, line: 417, baseType: !7, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3850, file: !81, line: 418, baseType: !7, size: 32, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3850, file: !81, line: 420, baseType: !7, size: 32, offset: 96)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3850, file: !81, line: 421, baseType: !7, size: 32, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3850, file: !81, line: 422, baseType: !7, size: 32, offset: 160)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3850, file: !81, line: 423, baseType: !7, size: 32, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3850, file: !81, line: 424, baseType: !7, size: 32, offset: 224)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3832, file: !81, line: 435, baseType: !3861, size: 64, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!65, !505, !3768, !3864}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !81, line: 343, size: 960, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3865, file: !81, line: 344, baseType: !65, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3865, file: !81, line: 345, baseType: !324, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3865, file: !81, line: 346, baseType: !324, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3865, file: !81, line: 347, baseType: !324, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3865, file: !81, line: 348, baseType: !324, size: 64, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3865, file: !81, line: 349, baseType: !324, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3865, file: !81, line: 350, baseType: !324, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3865, file: !81, line: 351, baseType: !647, size: 64, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3865, file: !81, line: 353, baseType: !647, size: 64, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3865, file: !81, line: 354, baseType: !65, size: 32, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3865, file: !81, line: 355, baseType: !65, size: 32, offset: 608)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3865, file: !81, line: 356, baseType: !324, size: 64, offset: 640)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3865, file: !81, line: 357, baseType: !324, size: 64, offset: 704)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3865, file: !81, line: 358, baseType: !324, size: 64, offset: 768)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3865, file: !81, line: 359, baseType: !647, size: 64, offset: 832)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3865, file: !81, line: 360, baseType: !65, size: 32, offset: 896)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3832, file: !81, line: 436, baseType: !3884, size: 64, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!65, !505, !3828, !3864}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3832, file: !81, line: 438, baseType: !3861, size: 64, offset: 512)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3832, file: !81, line: 439, baseType: !3889, size: 64, offset: 576)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!65, !505, !3892}
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !81, line: 409, size: 1408, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3893, file: !81, line: 410, baseType: !7, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3893, file: !81, line: 411, baseType: !3897, size: 1344, offset: 64)
!3897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3898, size: 1344, elements: !563)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !81, line: 395, size: 448, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3910}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3898, file: !81, line: 396, baseType: !7, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3898, file: !81, line: 397, baseType: !7, size: 32, offset: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3898, file: !81, line: 399, baseType: !7, size: 32, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3898, file: !81, line: 400, baseType: !7, size: 32, offset: 96)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3898, file: !81, line: 401, baseType: !7, size: 32, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3898, file: !81, line: 402, baseType: !7, size: 32, offset: 160)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3898, file: !81, line: 403, baseType: !7, size: 32, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3898, file: !81, line: 404, baseType: !326, size: 64, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3898, file: !81, line: 405, baseType: !3909, size: 64, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !171, line: 126, baseType: !324)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3898, file: !81, line: 406, baseType: !3909, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3832, file: !81, line: 440, baseType: !3840, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !506, file: !87, line: 1426, baseType: !3913, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3915)
!3915 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !87, line: 49, flags: DIFlagFwdDecl)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !506, file: !87, line: 1427, baseType: !246, size: 64, offset: 640)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !506, file: !87, line: 1428, baseType: !246, size: 64, offset: 704)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !506, file: !87, line: 1429, baseType: !246, size: 64, offset: 768)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !506, file: !87, line: 1430, baseType: !288, size: 64, offset: 832)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !506, file: !87, line: 1431, baseType: !744, size: 256, offset: 896)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !506, file: !87, line: 1432, baseType: !65, size: 32, offset: 1152)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !506, file: !87, line: 1433, baseType: !724, size: 32, offset: 1184)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !506, file: !87, line: 1437, baseType: !3924, size: 64, offset: 1216)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3927)
!3927 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !87, line: 1437, flags: DIFlagFwdDecl)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !506, file: !87, line: 1449, baseType: !3929, size: 64, offset: 1280)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !304, line: 34, size: 64, elements: !3930)
!3930 = !{!3931}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3929, file: !304, line: 35, baseType: !307, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !506, file: !87, line: 1450, baseType: !509, size: 128, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !506, file: !87, line: 1451, baseType: !3934, size: 64, offset: 1472)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !87, line: 699, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !506, file: !87, line: 1452, baseType: !2099, size: 64, offset: 1536)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !506, file: !87, line: 1453, baseType: !3938, size: 64, offset: 1600)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !87, line: 1453, flags: DIFlagFwdDecl)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !506, file: !87, line: 1454, baseType: !550, size: 128, offset: 1664)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !506, file: !87, line: 1455, baseType: !7, size: 32, offset: 1792)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !506, file: !87, line: 1456, baseType: !3943, size: 2432, offset: 1856)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !81, line: 518, size: 2432, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3949, !3981}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3943, file: !81, line: 519, baseType: !7, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3943, file: !81, line: 520, baseType: !744, size: 256, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3943, file: !81, line: 521, baseType: !3948, size: 192, offset: 320)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !563)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3943, file: !81, line: 522, baseType: !3950, size: 1728, offset: 512)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3951, size: 1728, elements: !563)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !81, line: 222, size: 576, elements: !3952)
!3952 = !{!3953, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3951, file: !81, line: 223, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !81, line: 443, size: 256, elements: !3956)
!3956 = !{!3957, !3958, !3971, !3972}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3955, file: !81, line: 444, baseType: !65, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3955, file: !81, line: 445, baseType: !3959, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !81, line: 310, size: 512, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3961, file: !81, line: 311, baseType: !599, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3961, file: !81, line: 312, baseType: !599, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3961, file: !81, line: 313, baseType: !599, size: 64, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3961, file: !81, line: 314, baseType: !599, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3961, file: !81, line: 315, baseType: !3753, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3961, file: !81, line: 316, baseType: !3753, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3961, file: !81, line: 317, baseType: !3753, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3961, file: !81, line: 318, baseType: !3825, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3955, file: !81, line: 446, baseType: !185, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3955, file: !81, line: 447, baseType: !3954, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3951, file: !81, line: 224, baseType: !65, size: 32, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3951, file: !81, line: 226, baseType: !509, size: 128, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3951, file: !81, line: 227, baseType: !246, size: 64, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3951, file: !81, line: 228, baseType: !7, size: 32, offset: 320)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3951, file: !81, line: 229, baseType: !7, size: 32, offset: 352)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3951, file: !81, line: 230, baseType: !3789, size: 64, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3951, file: !81, line: 231, baseType: !3789, size: 64, offset: 448)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3951, file: !81, line: 232, baseType: !172, size: 64, offset: 512)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3943, file: !81, line: 523, baseType: !3982, size: 192, offset: 2240)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3959, size: 192, elements: !563)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !506, file: !87, line: 1458, baseType: !3984, size: 2112, offset: 4288)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !87, line: 1410, size: 2112, elements: !3985)
!3985 = !{!3986, !3987, !3988}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3984, file: !87, line: 1411, baseType: !65, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3984, file: !87, line: 1412, baseType: !1446, size: 128, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3984, file: !87, line: 1413, baseType: !3989, size: 1920, offset: 192)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3990, size: 1920, elements: !563)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3991, line: 12, size: 640, elements: !3992)
!3991 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3992 = !{!3993, !4001, !4003, !4008, !4009}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3990, file: !3991, line: 13, baseType: !3994, size: 320)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3995, line: 17, size: 320, elements: !3996)
!3995 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3996 = !{!3997, !3998, !3999, !4000}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3994, file: !3995, line: 18, baseType: !65, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3994, file: !3995, line: 19, baseType: !65, size: 32, offset: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3994, file: !3995, line: 20, baseType: !1446, size: 128, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3994, file: !3995, line: 22, baseType: !271, size: 128, align: 64, offset: 192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3990, file: !3991, line: 14, baseType: !4002, size: 64, offset: 320)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3990, file: !3991, line: 15, baseType: !4004, size: 64, offset: 384)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4005, line: 16, size: 64, elements: !4006)
!4005 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!4006 = !{!4007}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4004, file: !4005, line: 17, baseType: !1179, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3990, file: !3991, line: 16, baseType: !1446, size: 128, offset: 448)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3990, file: !3991, line: 17, baseType: !724, size: 32, offset: 576)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !506, file: !87, line: 1465, baseType: !172, size: 64, offset: 6400)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !506, file: !87, line: 1468, baseType: !321, size: 32, offset: 6464)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !506, file: !87, line: 1470, baseType: !232, size: 64, offset: 6528)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !506, file: !87, line: 1471, baseType: !232, size: 64, offset: 6592)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !506, file: !87, line: 1473, baseType: !135, size: 32, offset: 6656)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !506, file: !87, line: 1474, baseType: !4016, size: 64, offset: 6720)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !87, line: 603, flags: DIFlagFwdDecl)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !506, file: !87, line: 1477, baseType: !4019, size: 256, offset: 6784)
!4019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !3576)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !506, file: !87, line: 1478, baseType: !4021, size: 128, offset: 7040)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4022, line: 18, baseType: !4023)
!4022 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4022, line: 16, size: 128, elements: !4024)
!4024 = !{!4025}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4023, file: !4022, line: 17, baseType: !4026, size: 128)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 128, elements: !1875)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !506, file: !87, line: 1480, baseType: !7, size: 32, offset: 7168)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !506, file: !87, line: 1481, baseType: !251, size: 32, offset: 7200)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !506, file: !87, line: 1487, baseType: !637, size: 192, offset: 7232)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !506, file: !87, line: 1493, baseType: !368, size: 64, offset: 7424)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !506, file: !87, line: 1495, baseType: !4032, size: 64, offset: 7488)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4034)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !286, line: 135, size: 1024, align: 512, elements: !4035)
!4035 = !{!4036, !4040, !4041, !4048, !4054, !4058, !4062, !4066, !4067, !4071, !4075, !4080, !4084}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4034, file: !286, line: 136, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!65, !288, !7}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4034, file: !286, line: 137, baseType: !4037, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4034, file: !286, line: 138, baseType: !4042, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!65, !4045, !4047}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4034, file: !286, line: 139, baseType: !4049, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!65, !4045, !7, !368, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4034, file: !286, line: 141, baseType: !4055, size: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!65, !4045}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4034, file: !286, line: 142, baseType: !4059, size: 64, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!65, !288}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4034, file: !286, line: 143, baseType: !4063, size: 64, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{null, !288}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4034, file: !286, line: 144, baseType: !4063, size: 64, offset: 448)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4034, file: !286, line: 145, baseType: !4068, size: 64, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{null, !288, !332}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4034, file: !286, line: 146, baseType: !4072, size: 64, offset: 576)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!394, !288, !394, !65}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4034, file: !286, line: 147, baseType: !4076, size: 64, offset: 640)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!284, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4034, file: !286, line: 148, baseType: !4081, size: 64, offset: 704)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!65, !450, !399}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4034, file: !286, line: 149, baseType: !4085, size: 64, offset: 768)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!288, !288, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !506, file: !87, line: 1500, baseType: !65, size: 32, offset: 7552)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !506, file: !87, line: 1502, baseType: !4092, size: 448, offset: 7616)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3737, line: 60, size: 448, elements: !4093)
!4093 = !{!4094, !4099, !4100, !4101, !4102, !4103, !4104}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4092, file: !3737, line: 61, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!246, !4098, !3735}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4092, file: !3737, line: 63, baseType: !4095, size: 64, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4092, file: !3737, line: 66, baseType: !234, size: 64, offset: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4092, file: !3737, line: 67, baseType: !65, size: 32, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4092, file: !3737, line: 68, baseType: !7, size: 32, offset: 224)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4092, file: !3737, line: 71, baseType: !509, size: 128, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4092, file: !3737, line: 77, baseType: !4105, size: 64, offset: 384)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !506, file: !87, line: 1505, baseType: !641, size: 64, offset: 8064)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !506, file: !87, line: 1508, baseType: !641, size: 64, offset: 8128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !506, file: !87, line: 1511, baseType: !65, size: 32, offset: 8192)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !506, file: !87, line: 1514, baseType: !879, size: 32, offset: 8224)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !506, file: !87, line: 1517, baseType: !4111, size: 64, offset: 8256)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1637, line: 18, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !506, file: !87, line: 1518, baseType: !546, size: 64, offset: 8320)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !506, file: !87, line: 1525, baseType: !1482, size: 64, offset: 8384)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !506, file: !87, line: 1532, baseType: !4116, size: 64, offset: 8448)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4117, line: 52, size: 64, elements: !4118)
!4117 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!4118 = !{!4119}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4116, file: !4117, line: 53, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4117, line: 40, size: 256, elements: !4122)
!4122 = !{!4123, !4124, !4129}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4121, file: !4117, line: 42, baseType: !649)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4121, file: !4117, line: 44, baseType: !4125, size: 192)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4117, line: 28, size: 192, elements: !4126)
!4126 = !{!4127, !4128}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4125, file: !4117, line: 29, baseType: !509, size: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4125, file: !4117, line: 31, baseType: !234, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4121, file: !4117, line: 49, baseType: !234, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !506, file: !87, line: 1533, baseType: !4116, size: 64, offset: 8512)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !506, file: !87, line: 1534, baseType: !271, size: 128, align: 64, offset: 8576)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !506, file: !87, line: 1535, baseType: !1636, size: 256, offset: 8704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !506, file: !87, line: 1537, baseType: !637, size: 192, offset: 8960)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !506, file: !87, line: 1542, baseType: !65, size: 32, offset: 9152)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !506, file: !87, line: 1545, baseType: !649, offset: 9184)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !506, file: !87, line: 1546, baseType: !509, size: 128, offset: 9216)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !506, file: !87, line: 1548, baseType: !649, offset: 9344)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !506, file: !87, line: 1549, baseType: !509, size: 128, offset: 9344)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !333, file: !87, line: 624, baseType: !711, size: 64, offset: 256)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !333, file: !87, line: 631, baseType: !246, size: 64, offset: 320)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !87, line: 639, baseType: !4142, size: 32, offset: 384)
!4142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !87, line: 639, size: 32, elements: !4143)
!4143 = !{!4144, !4146}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4142, file: !87, line: 640, baseType: !4145, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4142, file: !87, line: 641, baseType: !7, size: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !333, file: !87, line: 643, baseType: !422, size: 32, offset: 416)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !333, file: !87, line: 644, baseType: !440, size: 64, offset: 448)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !333, file: !87, line: 645, baseType: !228, size: 128, offset: 512)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !333, file: !87, line: 646, baseType: !228, size: 128, offset: 640)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !333, file: !87, line: 647, baseType: !228, size: 128, offset: 768)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !333, file: !87, line: 648, baseType: !649, offset: 896)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !333, file: !87, line: 649, baseType: !337, size: 16, offset: 896)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !333, file: !87, line: 650, baseType: !1315, size: 8, offset: 912)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !333, file: !87, line: 651, baseType: !1315, size: 8, offset: 920)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !333, file: !87, line: 652, baseType: !3909, size: 64, offset: 960)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !333, file: !87, line: 659, baseType: !246, size: 64, offset: 1024)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !333, file: !87, line: 660, baseType: !744, size: 256, offset: 1088)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !333, file: !87, line: 662, baseType: !246, size: 64, offset: 1344)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !333, file: !87, line: 663, baseType: !246, size: 64, offset: 1408)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !333, file: !87, line: 665, baseType: !550, size: 128, offset: 1472)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !333, file: !87, line: 666, baseType: !509, size: 128, offset: 1600)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !333, file: !87, line: 675, baseType: !509, size: 128, offset: 1728)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !333, file: !87, line: 676, baseType: !509, size: 128, offset: 1856)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !333, file: !87, line: 677, baseType: !509, size: 128, offset: 1984)
!4166 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !87, line: 678, baseType: !4167, size: 128, offset: 2112)
!4167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !87, line: 678, size: 128, elements: !4168)
!4168 = !{!4169, !4170}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4167, file: !87, line: 679, baseType: !546, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4167, file: !87, line: 680, baseType: !271, size: 128, align: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !333, file: !87, line: 682, baseType: !643, size: 64, offset: 2240)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !333, file: !87, line: 683, baseType: !643, size: 64, offset: 2304)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !333, file: !87, line: 684, baseType: !724, size: 32, offset: 2368)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !333, file: !87, line: 685, baseType: !724, size: 32, offset: 2400)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !333, file: !87, line: 686, baseType: !724, size: 32, offset: 2432)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !333, file: !87, line: 688, baseType: !724, size: 32, offset: 2464)
!4177 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !87, line: 690, baseType: !4178, size: 64, offset: 2496)
!4178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !87, line: 690, size: 64, elements: !4179)
!4179 = !{!4180, !4382}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4178, file: !87, line: 691, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4183)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !87, line: 1822, size: 2048, elements: !4184)
!4184 = !{!4185, !4186, !4190, !4194, !4198, !4199, !4200, !4204, !4217, !4218, !4222, !4226, !4227, !4231, !4232, !4236, !4241, !4242, !4246, !4250, !4342, !4346, !4347, !4351, !4352, !4356, !4360, !4365, !4369, !4373, !4377, !4381}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4183, file: !87, line: 1823, baseType: !185, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4183, file: !87, line: 1824, baseType: !4187, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!440, !258, !440, !65}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4183, file: !87, line: 1825, baseType: !4191, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!479, !258, !394, !482, !673}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4183, file: !87, line: 1826, baseType: !4195, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!479, !258, !368, !482, !673}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4183, file: !87, line: 1827, baseType: !814, size: 64, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4183, file: !87, line: 1828, baseType: !814, size: 64, offset: 320)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4183, file: !87, line: 1829, baseType: !4201, size: 64, offset: 384)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!65, !817, !399}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !4183, file: !87, line: 1830, baseType: !4205, size: 64, offset: 448)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!65, !258, !4208}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !87, line: 1776, size: 128, elements: !4210)
!4210 = !{!4211, !4216}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4209, file: !87, line: 1777, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !87, line: 1773, baseType: !4213)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!65, !4208, !368, !65, !440, !324, !7}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4209, file: !87, line: 1778, baseType: !440, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4183, file: !87, line: 1831, baseType: !4205, size: 64, offset: 512)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4183, file: !87, line: 1832, baseType: !4219, size: 64, offset: 576)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!256, !258, !2494}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4183, file: !87, line: 1833, baseType: !4223, size: 64, offset: 640)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!234, !258, !7, !246}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4183, file: !87, line: 1834, baseType: !4223, size: 64, offset: 704)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4183, file: !87, line: 1835, baseType: !4228, size: 64, offset: 768)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!65, !258, !952}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4183, file: !87, line: 1836, baseType: !246, size: 64, offset: 832)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4183, file: !87, line: 1837, baseType: !4233, size: 64, offset: 896)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!65, !332, !258}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4183, file: !87, line: 1838, baseType: !4237, size: 64, offset: 960)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!65, !258, !4240}
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !87, line: 1007, baseType: !172)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4183, file: !87, line: 1839, baseType: !4233, size: 64, offset: 1024)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4183, file: !87, line: 1840, baseType: !4243, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!65, !258, !440, !440, !65}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4183, file: !87, line: 1841, baseType: !4247, size: 64, offset: 1152)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!65, !65, !258, !65}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4183, file: !87, line: 1842, baseType: !4251, size: 64, offset: 1216)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!65, !258, !65, !4254}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !87, line: 1062, size: 1664, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4287, !4318}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4255, file: !87, line: 1063, baseType: !4254, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4255, file: !87, line: 1064, baseType: !509, size: 128, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4255, file: !87, line: 1065, baseType: !550, size: 128, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4255, file: !87, line: 1066, baseType: !509, size: 128, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4255, file: !87, line: 1069, baseType: !509, size: 128, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4255, file: !87, line: 1072, baseType: !4240, size: 64, offset: 576)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4255, file: !87, line: 1073, baseType: !7, size: 32, offset: 640)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4255, file: !87, line: 1074, baseType: !330, size: 8, offset: 672)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4255, file: !87, line: 1075, baseType: !7, size: 32, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4255, file: !87, line: 1076, baseType: !65, size: 32, offset: 736)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4255, file: !87, line: 1077, baseType: !1446, size: 128, offset: 768)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4255, file: !87, line: 1078, baseType: !258, size: 64, offset: 896)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4255, file: !87, line: 1079, baseType: !440, size: 64, offset: 960)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4255, file: !87, line: 1080, baseType: !440, size: 64, offset: 1024)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4255, file: !87, line: 1082, baseType: !3109, size: 64, offset: 1088)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4255, file: !87, line: 1084, baseType: !246, size: 64, offset: 1152)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4255, file: !87, line: 1085, baseType: !246, size: 64, offset: 1216)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4255, file: !87, line: 1087, baseType: !4275, size: 64, offset: 1280)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4277)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !87, line: 1011, size: 128, elements: !4278)
!4278 = !{!4279, !4283}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4277, file: !87, line: 1012, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !4254, !4254}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4277, file: !87, line: 1013, baseType: !4284, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !4254}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4255, file: !87, line: 1088, baseType: !4288, size: 64, offset: 1344)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !87, line: 1016, size: 512, elements: !4291)
!4291 = !{!4292, !4296, !4300, !4301, !4305, !4309, !4313, !4317}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4290, file: !87, line: 1017, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!4240, !4240}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4290, file: !87, line: 1018, baseType: !4297, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !4240}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4290, file: !87, line: 1019, baseType: !4284, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4290, file: !87, line: 1020, baseType: !4302, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!65, !4254, !65}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4290, file: !87, line: 1021, baseType: !4306, size: 64, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!399, !4254}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4290, file: !87, line: 1022, baseType: !4310, size: 64, offset: 320)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!65, !4254, !65, !512}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4290, file: !87, line: 1023, baseType: !4314, size: 64, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !4254, !791}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4290, file: !87, line: 1024, baseType: !4306, size: 64, offset: 448)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4255, file: !87, line: 1097, baseType: !4319, size: 256, offset: 1408)
!4319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4255, file: !87, line: 1089, size: 256, elements: !4320)
!4320 = !{!4321, !4330, !4336}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4319, file: !87, line: 1090, baseType: !4322, size: 256)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4323, line: 10, size: 256, elements: !4324)
!4323 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4324 = !{!4325, !4326, !4329}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4322, file: !4323, line: 11, baseType: !321, size: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4322, file: !4323, line: 12, baseType: !4327, size: 64, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4323, line: 5, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4322, file: !4323, line: 13, baseType: !509, size: 128, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4319, file: !87, line: 1091, baseType: !4331, size: 64)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4323, line: 17, size: 64, elements: !4332)
!4332 = !{!4333}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4331, file: !4323, line: 18, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4323, line: 16, flags: DIFlagFwdDecl)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4319, file: !87, line: 1096, baseType: !4337, size: 192)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4319, file: !87, line: 1092, size: 192, elements: !4338)
!4338 = !{!4339, !4340, !4341}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4337, file: !87, line: 1093, baseType: !509, size: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4337, file: !87, line: 1094, baseType: !65, size: 32, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4337, file: !87, line: 1095, baseType: !7, size: 32, offset: 160)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !4183, file: !87, line: 1843, baseType: !4343, size: 64, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!479, !258, !698, !65, !482, !673, !65}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4183, file: !87, line: 1844, baseType: !1072, size: 64, offset: 1344)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4183, file: !87, line: 1845, baseType: !4348, size: 64, offset: 1408)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!65, !65}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4183, file: !87, line: 1846, baseType: !4251, size: 64, offset: 1472)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4183, file: !87, line: 1847, baseType: !4353, size: 64, offset: 1536)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!479, !3459, !258, !673, !482, !7}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4183, file: !87, line: 1848, baseType: !4357, size: 64, offset: 1600)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!479, !258, !673, !3459, !482, !7}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4183, file: !87, line: 1849, baseType: !4361, size: 64, offset: 1664)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!65, !258, !234, !4364, !791}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4183, file: !87, line: 1850, baseType: !4366, size: 64, offset: 1728)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!234, !258, !65, !440, !440}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4183, file: !87, line: 1852, baseType: !4370, size: 64, offset: 1792)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{null, !625, !258}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4183, file: !87, line: 1856, baseType: !4374, size: 64, offset: 1856)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!479, !258, !440, !258, !440, !482, !7}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4183, file: !87, line: 1858, baseType: !4378, size: 64, offset: 1920)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!440, !258, !440, !258, !440, !440, !7}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4183, file: !87, line: 1861, baseType: !4243, size: 64, offset: 1984)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4178, file: !87, line: 692, baseType: !578, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !333, file: !87, line: 694, baseType: !4384, size: 64, offset: 2560)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !87, line: 1100, size: 384, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4390}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4385, file: !87, line: 1101, baseType: !649)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4385, file: !87, line: 1102, baseType: !509, size: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4385, file: !87, line: 1103, baseType: !509, size: 128, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4385, file: !87, line: 1104, baseType: !509, size: 128, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !333, file: !87, line: 695, baseType: !712, size: 1216, align: 64, offset: 2624)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !333, file: !87, line: 696, baseType: !509, size: 128, offset: 3840)
!4393 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !87, line: 697, baseType: !4394, size: 64, offset: 3968)
!4394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !87, line: 697, size: 64, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4409, !4410}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4394, file: !87, line: 698, baseType: !3459, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4394, file: !87, line: 699, baseType: !3934, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4394, file: !87, line: 700, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !4401, line: 14, size: 832, elements: !4402)
!4401 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4408}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4400, file: !4401, line: 15, baseType: !2242, size: 512)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4400, file: !4401, line: 16, baseType: !185, size: 64, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4400, file: !4401, line: 17, baseType: !4181, size: 64, offset: 576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4400, file: !4401, line: 18, baseType: !509, size: 128, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4400, file: !4401, line: 19, baseType: !422, size: 32, offset: 768)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4400, file: !4401, line: 20, baseType: !7, size: 32, offset: 800)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4394, file: !87, line: 701, baseType: !394, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4394, file: !87, line: 702, baseType: !7, size: 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !333, file: !87, line: 705, baseType: !135, size: 32, offset: 4032)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !333, file: !87, line: 708, baseType: !135, size: 32, offset: 4064)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !333, file: !87, line: 709, baseType: !4016, size: 64, offset: 4096)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !333, file: !87, line: 720, baseType: !172, size: 64, offset: 4160)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !289, file: !286, line: 98, baseType: !4416, size: 256, offset: 448)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !3576)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !289, file: !286, line: 101, baseType: !4418, size: 32, offset: 704)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4419, line: 25, size: 32, elements: !4420)
!4419 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4420 = !{!4421}
!4421 = !DIDerivedType(tag: DW_TAG_member, scope: !4418, file: !4419, line: 26, baseType: !4422, size: 32)
!4422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4418, file: !4419, line: 26, size: 32, elements: !4423)
!4423 = !{!4424}
!4424 = !DIDerivedType(tag: DW_TAG_member, scope: !4422, file: !4419, line: 30, baseType: !4425, size: 32)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4422, file: !4419, line: 30, size: 32, elements: !4426)
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4425, file: !4419, line: 31, baseType: !649)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4425, file: !4419, line: 32, baseType: !65, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !289, file: !286, line: 102, baseType: !4032, size: 64, offset: 768)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !289, file: !286, line: 103, baseType: !505, size: 64, offset: 832)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !289, file: !286, line: 104, baseType: !246, size: 64, offset: 896)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !289, file: !286, line: 105, baseType: !172, size: 64, offset: 960)
!4433 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !286, line: 107, baseType: !4434, size: 128, offset: 1024)
!4434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !286, line: 107, size: 128, elements: !4435)
!4435 = !{!4436, !4437}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4434, file: !286, line: 108, baseType: !509, size: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4434, file: !286, line: 109, baseType: !2503, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !289, file: !286, line: 111, baseType: !509, size: 128, offset: 1152)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !289, file: !286, line: 112, baseType: !509, size: 128, offset: 1280)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !289, file: !286, line: 120, baseType: !4441, size: 128, offset: 1408)
!4441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !286, line: 116, size: 128, elements: !4442)
!4442 = !{!4443, !4444, !4445}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4441, file: !286, line: 117, baseType: !550, size: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4441, file: !286, line: 118, baseType: !303, size: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4441, file: !286, line: 119, baseType: !271, size: 128, align: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !259, file: !87, line: 922, baseType: !332, size: 64, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !259, file: !87, line: 923, baseType: !4181, size: 64, offset: 320)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !259, file: !87, line: 929, baseType: !649, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !259, file: !87, line: 930, baseType: !86, size: 32, offset: 384)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !259, file: !87, line: 931, baseType: !641, size: 64, offset: 448)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !259, file: !87, line: 932, baseType: !7, size: 32, offset: 512)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !259, file: !87, line: 933, baseType: !251, size: 32, offset: 544)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !259, file: !87, line: 934, baseType: !637, size: 192, offset: 576)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !259, file: !87, line: 935, baseType: !440, size: 64, offset: 768)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !259, file: !87, line: 936, baseType: !4456, size: 192, offset: 832)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !87, line: 885, size: 192, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4456, file: !87, line: 886, baseType: !3113)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4456, file: !87, line: 887, baseType: !1436, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4456, file: !87, line: 888, baseType: !95, size: 32, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4456, file: !87, line: 889, baseType: !340, size: 32, offset: 96)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4456, file: !87, line: 889, baseType: !340, size: 32, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4456, file: !87, line: 890, baseType: !65, size: 32, offset: 160)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !259, file: !87, line: 937, baseType: !1797, size: 64, offset: 1024)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !259, file: !87, line: 938, baseType: !4466, size: 256, offset: 1088)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !87, line: 896, size: 256, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4466, file: !87, line: 897, baseType: !246, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4466, file: !87, line: 898, baseType: !7, size: 32, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4466, file: !87, line: 899, baseType: !7, size: 32, offset: 96)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4466, file: !87, line: 902, baseType: !7, size: 32, offset: 128)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4466, file: !87, line: 903, baseType: !7, size: 32, offset: 160)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4466, file: !87, line: 904, baseType: !440, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !259, file: !87, line: 940, baseType: !324, size: 64, offset: 1344)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !259, file: !87, line: 945, baseType: !172, size: 64, offset: 1408)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !259, file: !87, line: 949, baseType: !509, size: 128, offset: 1472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !259, file: !87, line: 950, baseType: !509, size: 128, offset: 1600)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !259, file: !87, line: 952, baseType: !711, size: 64, offset: 1728)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !259, file: !87, line: 953, baseType: !879, size: 32, offset: 1792)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !259, file: !87, line: 954, baseType: !879, size: 32, offset: 1824)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2496, line: 46, baseType: !2495)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !182, file: !179, line: 61, baseType: !4484, size: 64, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!65, !192}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !182, file: !179, line: 63, baseType: !4488, size: 64, offset: 576)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!479, !192, !4491, !394, !482}
!4491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !171, line: 87, baseType: !7)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !178, file: !179, line: 87, baseType: !4400, size: 832, offset: 640)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !178, file: !179, line: 88, baseType: !2238, size: 64, offset: 1472)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !178, file: !179, line: 89, baseType: !744, size: 256, offset: 1536)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "zombie", scope: !178, file: !179, line: 90, baseType: !399, size: 8, offset: 1792)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !174, file: !175, line: 31, baseType: !2239, size: 5568, offset: 1856)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !174, file: !175, line: 32, baseType: !4498, size: 64, offset: 7424)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_info", file: !104, line: 122, size: 1152, elements: !4500)
!4500 = !{!4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4520, !4524, !4528, !4529, !4533, !4537, !4546, !4557, !4561, !4566, !4570}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4499, file: !104, line: 123, baseType: !185, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4499, file: !104, line: 124, baseType: !1874, size: 128, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !4499, file: !104, line: 125, baseType: !167, size: 32, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !4499, file: !104, line: 126, baseType: !65, size: 32, offset: 224)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !4499, file: !104, line: 127, baseType: !65, size: 32, offset: 256)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !4499, file: !104, line: 128, baseType: !65, size: 32, offset: 288)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !4499, file: !104, line: 129, baseType: !65, size: 32, offset: 320)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !4499, file: !104, line: 130, baseType: !65, size: 32, offset: 352)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !4499, file: !104, line: 131, baseType: !4510, size: 64, offset: 384)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_pin_desc", file: !113, line: 174, size: 768, elements: !4512)
!4512 = !{!4513, !4515, !4516, !4517, !4518}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4511, file: !113, line: 180, baseType: !4514, size: 512)
!4514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 512, elements: !2055)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4511, file: !113, line: 184, baseType: !7, size: 32, offset: 512)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4511, file: !113, line: 188, baseType: !7, size: 32, offset: 544)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4511, file: !113, line: 194, baseType: !7, size: 32, offset: 576)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4511, file: !113, line: 198, baseType: !4519, size: 160, offset: 608)
!4519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !1500)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "adjfine", scope: !4499, file: !104, line: 132, baseType: !4521, size: 64, offset: 448)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!65, !4498, !234}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "adjfreq", scope: !4499, file: !104, line: 133, baseType: !4525, size: 64, offset: 512)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!65, !4498, !167}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "adjphase", scope: !4499, file: !104, line: 134, baseType: !4525, size: 64, offset: 576)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "adjtime", scope: !4499, file: !104, line: 135, baseType: !4530, size: 64, offset: 640)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!65, !4498, !647}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "gettime64", scope: !4499, file: !104, line: 136, baseType: !4534, size: 64, offset: 704)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!65, !4498, !227}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "gettimex64", scope: !4499, file: !104, line: 137, baseType: !4538, size: 64, offset: 768)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!65, !4498, !227, !4541}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !104, line: 33, size: 256, elements: !4543)
!4543 = !{!4544, !4545}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !4542, file: !104, line: 34, baseType: !228, size: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !4542, file: !104, line: 35, baseType: !228, size: 128, offset: 128)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosststamp", scope: !4499, file: !104, line: 139, baseType: !4547, size: 64, offset: 832)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!65, !4498, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_device_crosststamp", file: !4552, line: 261, size: 192, elements: !4553)
!4552 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!4553 = !{!4554, !4555, !4556}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4551, file: !4552, line: 262, baseType: !1263, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !4551, file: !4552, line: 263, baseType: !1263, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !4551, file: !4552, line: 264, baseType: !1263, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !4499, file: !104, line: 141, baseType: !4558, size: 64, offset: 896)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!65, !4498, !240}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4499, file: !104, line: 142, baseType: !4562, size: 64, offset: 960)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!65, !4498, !4565, !65}
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !4499, file: !104, line: 144, baseType: !4567, size: 64, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!65, !4498, !7, !153, !7}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "do_aux_work", scope: !4499, file: !104, line: 146, baseType: !4571, size: 64, offset: 1088)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!234, !4498}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !174, file: !175, line: 33, baseType: !422, size: 32, offset: 7488)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !174, file: !175, line: 34, baseType: !65, size: 32, offset: 7520)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "pps_source", scope: !174, file: !175, line: 35, baseType: !4577, size: 64, offset: 7552)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_device", file: !4579, line: 43, size: 2688, elements: !4580)
!4579 = !DIFile(filename: "./include/linux/pps_kernel.h", directory: "/home/lizy2001/genbc/linux")
!4580 = !{!4581, !4593, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4578, file: !4579, line: 44, baseType: !4582, size: 768)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_source_info", file: !4579, line: 23, size: 768, elements: !4583)
!4583 = !{!4584, !4585, !4586, !4587, !4591, !4592}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4582, file: !4579, line: 24, baseType: !4019, size: 256)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !4582, file: !4579, line: 25, baseType: !4019, size: 256, offset: 256)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4582, file: !4579, line: 26, baseType: !65, size: 32, offset: 512)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !4582, file: !4579, line: 28, baseType: !4588, size: 64, offset: 576)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !4577, !65, !172}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4582, file: !4579, line: 31, baseType: !185, size: 64, offset: 640)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4582, file: !4579, line: 32, baseType: !2238, size: 64, offset: 704)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !4578, file: !4579, line: 46, baseType: !4594, size: 320, offset: 768)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kparams", file: !4595, line: 83, size: 320, elements: !4596)
!4595 = !DIFile(filename: "./include/uapi/linux/pps.h", directory: "/home/lizy2001/genbc/linux")
!4596 = !{!4597, !4598, !4599, !4605}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !4594, file: !4595, line: 84, baseType: !65, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4594, file: !4595, line: 85, baseType: !65, size: 32, offset: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "assert_off_tu", scope: !4594, file: !4595, line: 86, baseType: !4600, size: 128, offset: 64)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_ktime", file: !4595, line: 54, size: 128, elements: !4601)
!4601 = !{!4602, !4603, !4604}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4600, file: !4595, line: 55, baseType: !131, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4600, file: !4595, line: 56, baseType: !169, size: 32, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4600, file: !4595, line: 57, baseType: !135, size: 32, offset: 96)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "clear_off_tu", scope: !4594, file: !4595, line: 87, baseType: !4600, size: 128, offset: 192)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !4578, file: !4579, line: 48, baseType: !135, size: 32, offset: 1088)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !4578, file: !4579, line: 49, baseType: !135, size: 32, offset: 1120)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !4578, file: !4579, line: 50, baseType: !4600, size: 128, offset: 1152)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !4578, file: !4579, line: 51, baseType: !4600, size: 128, offset: 1280)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !4578, file: !4579, line: 52, baseType: !65, size: 32, offset: 1408)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "last_ev", scope: !4578, file: !4579, line: 54, baseType: !7, size: 32, offset: 1440)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4578, file: !4579, line: 55, baseType: !1446, size: 128, offset: 1472)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4578, file: !4579, line: 57, baseType: !7, size: 32, offset: 1600)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_cookie", scope: !4578, file: !4579, line: 58, baseType: !2372, size: 64, offset: 1664)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !4578, file: !4579, line: 59, baseType: !4400, size: 832, offset: 1728)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4578, file: !4579, line: 60, baseType: !2238, size: 64, offset: 2560)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !4578, file: !4579, line: 61, baseType: !3109, size: 64, offset: 2624)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4578, file: !4579, line: 62, baseType: !649, offset: 2688)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dialed_frequency", scope: !174, file: !175, line: 36, baseType: !234, size: 64, offset: 7616)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq", scope: !174, file: !175, line: 37, baseType: !4621, size: 32832, offset: 7680)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timestamp_event_queue", file: !175, line: 22, size: 32832, elements: !4622)
!4622 = !{!4623, !4633, !4634, !4635}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4621, file: !175, line: 23, baseType: !4624, size: 32768)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4625, size: 32768, elements: !4631)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_event", file: !113, line: 227, size: 256, elements: !4626)
!4626 = !{!4627, !4628, !4629, !4630}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !4625, file: !113, line: 228, baseType: !128, size: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4625, file: !113, line: 229, baseType: !7, size: 32, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4625, file: !113, line: 230, baseType: !7, size: 32, offset: 160)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4625, file: !113, line: 231, baseType: !118, size: 64, offset: 192)
!4631 = !{!4632}
!4632 = !DISubrange(count: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4621, file: !175, line: 24, baseType: !65, size: 32, offset: 32768)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4621, file: !175, line: 25, baseType: !65, size: 32, offset: 32800)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4621, file: !175, line: 26, baseType: !649, offset: 32832)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq_mux", scope: !174, file: !175, line: 38, baseType: !637, size: 192, offset: 40512)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg_mux", scope: !174, file: !175, line: 39, baseType: !637, size: 192, offset: 40704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "tsev_wq", scope: !174, file: !175, line: 40, baseType: !1446, size: 128, offset: 40896)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "defunct", scope: !174, file: !175, line: 41, baseType: !65, size: 32, offset: 41024)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "pin_dev_attr", scope: !174, file: !175, line: 42, baseType: !4641, size: 64, offset: 41088)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !43, line: 99, size: 256, elements: !4643)
!4643 = !{!4644, !4645, !4649}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4642, file: !43, line: 100, baseType: !2308, size: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4642, file: !43, line: 101, baseType: !4646, size: 64, offset: 128)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!479, !2238, !4641, !394}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4642, file: !43, line: 103, baseType: !4650, size: 64, offset: 192)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!479, !2238, !4641, !368, !482}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr", scope: !174, file: !175, line: 43, baseType: !2317, size: 64, offset: 41152)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_group", scope: !174, file: !175, line: 44, baseType: !2322, size: 320, offset: 41216)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_groups", scope: !174, file: !175, line: 46, baseType: !4656, size: 128, offset: 41536)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2320, size: 128, elements: !119)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !174, file: !175, line: 47, baseType: !4658, size: 64, offset: 41664)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4660, line: 89, size: 448, elements: !4661)
!4660 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!4661 = !{!4662, !4663, !4664, !4665, !4666, !4667}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4659, file: !4660, line: 90, baseType: !7, size: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4659, file: !4660, line: 91, baseType: !750, offset: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4659, file: !4660, line: 92, baseType: !509, size: 128, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4659, file: !4660, line: 93, baseType: !509, size: 128, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4659, file: !4660, line: 94, baseType: !1179, size: 64, offset: 320)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4659, file: !4660, line: 95, baseType: !4668, size: 64, offset: 384)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4660, line: 98, size: 320, elements: !4670)
!4670 = !{!4671, !4672, !4677, !4678}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4669, file: !4660, line: 99, baseType: !509, size: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4669, file: !4660, line: 100, baseType: !4673, size: 64, offset: 128)
!4673 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4660, line: 82, baseType: !4674)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{null, !4668}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4669, file: !4660, line: 101, baseType: !4658, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4669, file: !4660, line: 103, baseType: !65, size: 32, offset: 256)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work", scope: !174, file: !175, line: 48, baseType: !4680, size: 640, offset: 41728)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_delayed_work", file: !4660, line: 106, size: 640, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4680, file: !4660, line: 107, baseType: !4669, size: 320)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4680, file: !4660, line: 108, baseType: !2700, size: 320, offset: 320)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !512)
!4686 = !{!4687, !4692, !4694, !4696, !4698, !4703, !4708, !4713, !4718, !0, !4721, !4723, !4728, !4730}
!4687 = !DIGlobalVariableExpression(var: !4688, expr: !DIExpression())
!4688 = distinct !DIGlobalVariable(name: "__key", scope: !4689, file: !3, line: 230, type: !556, isLocal: true, isDefinition: true)
!4689 = distinct !DISubprogram(name: "ptp_clock_register", scope: !3, file: !3, line: 204, type: !4690, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!173, !4498, !2238}
!4692 = !DIGlobalVariableExpression(var: !4693, expr: !DIExpression())
!4693 = distinct !DIGlobalVariable(name: "__key", scope: !4689, file: !3, line: 231, type: !556, isLocal: true, isDefinition: true)
!4694 = !DIGlobalVariableExpression(var: !4695, expr: !DIExpression())
!4695 = distinct !DIGlobalVariable(name: "__key", scope: !4689, file: !3, line: 232, type: !556, isLocal: true, isDefinition: true)
!4696 = !DIGlobalVariableExpression(var: !4697, expr: !DIExpression())
!4697 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ptp_init250", scope: !2, file: !3, line: 433, type: !172, isLocal: true, isDefinition: true)
!4698 = !DIGlobalVariableExpression(var: !4699, expr: !DIExpression())
!4699 = distinct !DIGlobalVariable(name: "__exitcall_ptp_exit", scope: !2, file: !3, line: 434, type: !4700, isLocal: true, isDefinition: true)
!4700 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4701, line: 117, baseType: !4702)
!4701 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!4703 = !DIGlobalVariableExpression(var: !4704, expr: !DIExpression())
!4704 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author251", scope: !2, file: !3, line: 436, type: !4705, isLocal: true, isDefinition: true, align: 8)
!4705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 432, elements: !4706)
!4706 = !{!4707}
!4707 = !DISubrange(count: 54)
!4708 = !DIGlobalVariableExpression(var: !4709, expr: !DIExpression())
!4709 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description252", scope: !2, file: !3, line: 437, type: !4710, isLocal: true, isDefinition: true, align: 8)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 280, elements: !4711)
!4711 = !{!4712}
!4712 = !DISubrange(count: 35)
!4713 = !DIGlobalVariableExpression(var: !4714, expr: !DIExpression())
!4714 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file253", scope: !2, file: !3, line: 438, type: !4715, isLocal: true, isDefinition: true, align: 8)
!4715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 200, elements: !4716)
!4716 = !{!4717}
!4717 = !DISubrange(count: 25)
!4718 = !DIGlobalVariableExpression(var: !4719, expr: !DIExpression())
!4719 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license254", scope: !2, file: !3, line: 438, type: !4720, isLocal: true, isDefinition: true, align: 8)
!4720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 128, elements: !1875)
!4721 = !DIGlobalVariableExpression(var: !4722, expr: !DIExpression())
!4722 = distinct !DIGlobalVariable(name: "ptp_class", scope: !2, file: !3, line: 30, type: !2825, isLocal: true, isDefinition: true)
!4723 = !DIGlobalVariableExpression(var: !4724, expr: !DIExpression())
!4724 = distinct !DIGlobalVariable(name: "ptp_clocks_map", scope: !2, file: !3, line: 32, type: !4725, isLocal: true, isDefinition: true)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1470, line: 244, size: 128, elements: !4726)
!4726 = !{!4727}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4725, file: !1470, line: 245, baseType: !716, size: 128)
!4728 = !DIGlobalVariableExpression(var: !4729, expr: !DIExpression())
!4729 = distinct !DIGlobalVariable(name: "ptp_clock_ops", scope: !2, file: !3, line: 166, type: !182, isLocal: true, isDefinition: true)
!4730 = !DIGlobalVariableExpression(var: !4731, expr: !DIExpression())
!4731 = distinct !DIGlobalVariable(name: "__key", scope: !4732, file: !3, line: 412, type: !556, isLocal: true, isDefinition: true)
!4732 = distinct !DISubprogram(name: "ptp_init", scope: !3, file: !3, line: 408, type: !4733, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!65}
!4735 = !{!"rsp"}
!4736 = !{i32 7, !"Dwarf Version", i32 4}
!4737 = !{i32 2, !"Debug Info Version", i32 3}
!4738 = !{i32 1, !"wchar_size", i32 2}
!4739 = !{i32 1, !"Code Model", i32 2}
!4740 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4741 = distinct !DISubprogram(name: "scaled_ppm_to_ppb", scope: !3, file: !3, line: 66, type: !4742, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!167, !234}
!4744 = !DILocalVariable(name: "ppm", arg: 1, scope: !4741, file: !3, line: 66, type: !234)
!4745 = !DILocation(line: 66, column: 28, scope: !4741)
!4746 = !DILocalVariable(name: "ppb", scope: !4741, file: !3, line: 80, type: !647)
!4747 = !DILocation(line: 80, column: 6, scope: !4741)
!4748 = !DILocation(line: 80, column: 16, scope: !4741)
!4749 = !DILocation(line: 80, column: 14, scope: !4741)
!4750 = !DILocation(line: 81, column: 6, scope: !4741)
!4751 = !DILocation(line: 82, column: 6, scope: !4741)
!4752 = !DILocation(line: 83, column: 15, scope: !4741)
!4753 = !DILocation(line: 83, column: 9, scope: !4741)
!4754 = !DILocation(line: 83, column: 2, scope: !4741)
!4755 = !DILocalVariable(name: "lock", arg: 1, scope: !4756, file: !4757, line: 327, type: !1035)
!4756 = distinct !DISubprogram(name: "spinlock_check", scope: !4757, file: !4757, line: 327, type: !4758, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!4757 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!4760, !1035}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!4761 = !DILocation(line: 327, column: 67, scope: !4756, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 229, column: 2, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 229, column: 2)
!4764 = !DILocalVariable(name: "info", arg: 1, scope: !4689, file: !3, line: 204, type: !4498)
!4765 = !DILocation(line: 204, column: 61, scope: !4689)
!4766 = !DILocalVariable(name: "parent", arg: 2, scope: !4689, file: !3, line: 205, type: !2238)
!4767 = !DILocation(line: 205, column: 25, scope: !4689)
!4768 = !DILocalVariable(name: "ptp", scope: !4689, file: !3, line: 207, type: !173)
!4769 = !DILocation(line: 207, column: 20, scope: !4689)
!4770 = !DILocalVariable(name: "err", scope: !4689, file: !3, line: 208, type: !65)
!4771 = !DILocation(line: 208, column: 6, scope: !4689)
!4772 = !DILocalVariable(name: "index", scope: !4689, file: !3, line: 208, type: !65)
!4773 = !DILocation(line: 208, column: 15, scope: !4689)
!4774 = !DILocalVariable(name: "major", scope: !4689, file: !3, line: 208, type: !65)
!4775 = !DILocation(line: 208, column: 22, scope: !4689)
!4776 = !DILocation(line: 208, column: 30, scope: !4689)
!4777 = !DILocation(line: 210, column: 6, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 210, column: 6)
!4779 = !DILocation(line: 210, column: 12, scope: !4778)
!4780 = !DILocation(line: 210, column: 20, scope: !4778)
!4781 = !DILocation(line: 210, column: 6, scope: !4689)
!4782 = !DILocation(line: 211, column: 10, scope: !4778)
!4783 = !DILocation(line: 211, column: 3, scope: !4778)
!4784 = !DILocation(line: 214, column: 6, scope: !4689)
!4785 = !DILocation(line: 215, column: 8, scope: !4689)
!4786 = !DILocation(line: 215, column: 6, scope: !4689)
!4787 = !DILocation(line: 216, column: 6, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 216, column: 6)
!4789 = !DILocation(line: 216, column: 10, scope: !4788)
!4790 = !DILocation(line: 216, column: 6, scope: !4689)
!4791 = !DILocation(line: 217, column: 3, scope: !4788)
!4792 = !DILocation(line: 219, column: 10, scope: !4689)
!4793 = !DILocation(line: 219, column: 8, scope: !4689)
!4794 = !DILocation(line: 220, column: 6, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 220, column: 6)
!4796 = !DILocation(line: 220, column: 12, scope: !4795)
!4797 = !DILocation(line: 220, column: 6, scope: !4689)
!4798 = !DILocation(line: 221, column: 9, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 220, column: 17)
!4800 = !DILocation(line: 221, column: 7, scope: !4799)
!4801 = !DILocation(line: 222, column: 3, scope: !4799)
!4802 = !DILocation(line: 225, column: 2, scope: !4689)
!4803 = !DILocation(line: 225, column: 7, scope: !4689)
!4804 = !DILocation(line: 225, column: 13, scope: !4689)
!4805 = !DILocation(line: 225, column: 19, scope: !4689)
!4806 = !DILocation(line: 226, column: 14, scope: !4689)
!4807 = !DILocation(line: 226, column: 2, scope: !4689)
!4808 = !DILocation(line: 226, column: 7, scope: !4689)
!4809 = !DILocation(line: 226, column: 12, scope: !4689)
!4810 = !DILocation(line: 227, column: 15, scope: !4689)
!4811 = !DILocation(line: 227, column: 2, scope: !4689)
!4812 = !DILocation(line: 227, column: 7, scope: !4689)
!4813 = !DILocation(line: 227, column: 13, scope: !4689)
!4814 = !DILocation(line: 228, column: 15, scope: !4689)
!4815 = !DILocation(line: 228, column: 2, scope: !4689)
!4816 = !DILocation(line: 228, column: 7, scope: !4689)
!4817 = !DILocation(line: 228, column: 13, scope: !4689)
!4818 = !DILocation(line: 229, column: 2, scope: !4689)
!4819 = !DILocation(line: 229, column: 2, scope: !4763)
!4820 = !DILocation(line: 329, column: 10, scope: !4756, inlinedAt: !4762)
!4821 = !DILocation(line: 329, column: 16, scope: !4756, inlinedAt: !4762)
!4822 = !DILocation(line: 230, column: 2, scope: !4689)
!4823 = !DILocation(line: 230, column: 2, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 230, column: 2)
!4825 = !DILocation(line: 231, column: 2, scope: !4689)
!4826 = !DILocation(line: 231, column: 2, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 231, column: 2)
!4828 = !DILocation(line: 232, column: 2, scope: !4689)
!4829 = !DILocation(line: 232, column: 2, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 232, column: 2)
!4831 = !DILocation(line: 234, column: 6, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 234, column: 6)
!4833 = !DILocation(line: 234, column: 11, scope: !4832)
!4834 = !DILocation(line: 234, column: 17, scope: !4832)
!4835 = !DILocation(line: 234, column: 6, scope: !4689)
!4836 = !DILocation(line: 235, column: 3, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 234, column: 30)
!4838 = !DILocation(line: 235, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 235, column: 3)
!4840 = !DILocation(line: 235, column: 3, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 235, column: 3)
!4842 = !DILocation(line: 236, column: 52, scope: !4837)
!4843 = !DILocation(line: 236, column: 57, scope: !4837)
!4844 = !DILocation(line: 236, column: 18, scope: !4837)
!4845 = !DILocation(line: 236, column: 3, scope: !4837)
!4846 = !DILocation(line: 236, column: 8, scope: !4837)
!4847 = !DILocation(line: 236, column: 16, scope: !4837)
!4848 = !DILocation(line: 237, column: 14, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 237, column: 7)
!4850 = !DILocation(line: 237, column: 19, scope: !4849)
!4851 = !DILocation(line: 237, column: 7, scope: !4849)
!4852 = !DILocation(line: 237, column: 7, scope: !4837)
!4853 = !DILocation(line: 238, column: 18, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 237, column: 29)
!4855 = !DILocation(line: 238, column: 23, scope: !4854)
!4856 = !DILocation(line: 238, column: 10, scope: !4854)
!4857 = !DILocation(line: 238, column: 8, scope: !4854)
!4858 = !DILocation(line: 239, column: 4, scope: !4854)
!4859 = !DILocation(line: 240, column: 4, scope: !4854)
!4860 = !DILocation(line: 242, column: 2, scope: !4837)
!4861 = !DILocation(line: 244, column: 32, scope: !4689)
!4862 = !DILocation(line: 244, column: 8, scope: !4689)
!4863 = !DILocation(line: 244, column: 6, scope: !4689)
!4864 = !DILocation(line: 245, column: 6, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 245, column: 6)
!4866 = !DILocation(line: 245, column: 6, scope: !4689)
!4867 = !DILocation(line: 246, column: 3, scope: !4865)
!4868 = !DILocation(line: 249, column: 6, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 249, column: 6)
!4870 = !DILocation(line: 249, column: 12, scope: !4869)
!4871 = !DILocation(line: 249, column: 6, scope: !4689)
!4872 = !DILocalVariable(name: "pps", scope: !4873, file: !3, line: 250, type: !4582)
!4873 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 249, column: 17)
!4874 = !DILocation(line: 250, column: 26, scope: !4873)
!4875 = !DILocation(line: 251, column: 3, scope: !4873)
!4876 = !DILocation(line: 252, column: 16, scope: !4873)
!4877 = !DILocation(line: 252, column: 12, scope: !4873)
!4878 = !DILocation(line: 252, column: 49, scope: !4873)
!4879 = !DILocation(line: 252, column: 3, scope: !4873)
!4880 = !DILocation(line: 253, column: 7, scope: !4873)
!4881 = !DILocation(line: 253, column: 12, scope: !4873)
!4882 = !DILocation(line: 254, column: 15, scope: !4873)
!4883 = !DILocation(line: 254, column: 21, scope: !4873)
!4884 = !DILocation(line: 254, column: 7, scope: !4873)
!4885 = !DILocation(line: 254, column: 13, scope: !4873)
!4886 = !DILocation(line: 255, column: 21, scope: !4873)
!4887 = !DILocation(line: 255, column: 3, scope: !4873)
!4888 = !DILocation(line: 255, column: 8, scope: !4873)
!4889 = !DILocation(line: 255, column: 19, scope: !4873)
!4890 = !DILocation(line: 256, column: 14, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 256, column: 7)
!4892 = !DILocation(line: 256, column: 19, scope: !4891)
!4893 = !DILocation(line: 256, column: 7, scope: !4891)
!4894 = !DILocation(line: 256, column: 7, scope: !4873)
!4895 = !DILocation(line: 257, column: 18, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 256, column: 32)
!4897 = !DILocation(line: 257, column: 23, scope: !4896)
!4898 = !DILocation(line: 257, column: 10, scope: !4896)
!4899 = !DILocation(line: 257, column: 8, scope: !4896)
!4900 = !DILocation(line: 258, column: 4, scope: !4896)
!4901 = !DILocation(line: 259, column: 4, scope: !4896)
!4902 = !DILocation(line: 261, column: 2, scope: !4873)
!4903 = !DILocation(line: 264, column: 21, scope: !4689)
!4904 = !DILocation(line: 264, column: 26, scope: !4689)
!4905 = !DILocation(line: 264, column: 2, scope: !4689)
!4906 = !DILocation(line: 265, column: 18, scope: !4689)
!4907 = !DILocation(line: 265, column: 23, scope: !4689)
!4908 = !DILocation(line: 265, column: 2, scope: !4689)
!4909 = !DILocation(line: 265, column: 7, scope: !4689)
!4910 = !DILocation(line: 265, column: 11, scope: !4689)
!4911 = !DILocation(line: 265, column: 16, scope: !4689)
!4912 = !DILocation(line: 266, column: 19, scope: !4689)
!4913 = !DILocation(line: 266, column: 2, scope: !4689)
!4914 = !DILocation(line: 266, column: 7, scope: !4689)
!4915 = !DILocation(line: 266, column: 11, scope: !4689)
!4916 = !DILocation(line: 266, column: 17, scope: !4689)
!4917 = !DILocation(line: 267, column: 20, scope: !4689)
!4918 = !DILocation(line: 267, column: 2, scope: !4689)
!4919 = !DILocation(line: 267, column: 7, scope: !4689)
!4920 = !DILocation(line: 267, column: 11, scope: !4689)
!4921 = !DILocation(line: 267, column: 18, scope: !4689)
!4922 = !DILocation(line: 268, column: 20, scope: !4689)
!4923 = !DILocation(line: 268, column: 25, scope: !4689)
!4924 = !DILocation(line: 268, column: 2, scope: !4689)
!4925 = !DILocation(line: 268, column: 7, scope: !4689)
!4926 = !DILocation(line: 268, column: 11, scope: !4689)
!4927 = !DILocation(line: 268, column: 18, scope: !4689)
!4928 = !DILocation(line: 269, column: 2, scope: !4689)
!4929 = !DILocation(line: 269, column: 7, scope: !4689)
!4930 = !DILocation(line: 269, column: 11, scope: !4689)
!4931 = !DILocation(line: 269, column: 19, scope: !4689)
!4932 = !DILocation(line: 270, column: 19, scope: !4689)
!4933 = !DILocation(line: 270, column: 24, scope: !4689)
!4934 = !DILocation(line: 270, column: 29, scope: !4689)
!4935 = !DILocation(line: 270, column: 2, scope: !4689)
!4936 = !DILocation(line: 271, column: 16, scope: !4689)
!4937 = !DILocation(line: 271, column: 21, scope: !4689)
!4938 = !DILocation(line: 271, column: 35, scope: !4689)
!4939 = !DILocation(line: 271, column: 40, scope: !4689)
!4940 = !DILocation(line: 271, column: 2, scope: !4689)
!4941 = !DILocation(line: 274, column: 30, scope: !4689)
!4942 = !DILocation(line: 274, column: 35, scope: !4689)
!4943 = !DILocation(line: 274, column: 43, scope: !4689)
!4944 = !DILocation(line: 274, column: 48, scope: !4689)
!4945 = !DILocation(line: 274, column: 8, scope: !4689)
!4946 = !DILocation(line: 274, column: 6, scope: !4689)
!4947 = !DILocation(line: 275, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 275, column: 6)
!4949 = !DILocation(line: 275, column: 6, scope: !4689)
!4950 = !DILocation(line: 276, column: 3, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 275, column: 11)
!4952 = !DILocation(line: 277, column: 3, scope: !4951)
!4953 = !DILocation(line: 280, column: 9, scope: !4689)
!4954 = !DILocation(line: 280, column: 2, scope: !4689)
!4955 = !DILabel(scope: !4689, name: "no_clock", file: !3, line: 282)
!4956 = !DILocation(line: 282, column: 1, scope: !4689)
!4957 = !DILocation(line: 283, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 283, column: 6)
!4959 = !DILocation(line: 283, column: 11, scope: !4958)
!4960 = !DILocation(line: 283, column: 6, scope: !4689)
!4961 = !DILocation(line: 284, column: 25, scope: !4958)
!4962 = !DILocation(line: 284, column: 30, scope: !4958)
!4963 = !DILocation(line: 284, column: 3, scope: !4958)
!4964 = !DILabel(scope: !4689, name: "no_pps", file: !3, line: 285)
!4965 = !DILocation(line: 285, column: 1, scope: !4689)
!4966 = !DILocation(line: 286, column: 25, scope: !4689)
!4967 = !DILocation(line: 286, column: 2, scope: !4689)
!4968 = !DILabel(scope: !4689, name: "no_pin_groups", file: !3, line: 287)
!4969 = !DILocation(line: 287, column: 1, scope: !4689)
!4970 = !DILocation(line: 288, column: 6, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 288, column: 6)
!4972 = !DILocation(line: 288, column: 11, scope: !4971)
!4973 = !DILocation(line: 288, column: 6, scope: !4689)
!4974 = !DILocation(line: 289, column: 26, scope: !4971)
!4975 = !DILocation(line: 289, column: 31, scope: !4971)
!4976 = !DILocation(line: 289, column: 3, scope: !4971)
!4977 = !DILabel(scope: !4689, name: "kworker_err", file: !3, line: 290)
!4978 = !DILocation(line: 290, column: 1, scope: !4689)
!4979 = !DILocation(line: 291, column: 17, scope: !4689)
!4980 = !DILocation(line: 291, column: 22, scope: !4689)
!4981 = !DILocation(line: 291, column: 2, scope: !4689)
!4982 = !DILocation(line: 292, column: 17, scope: !4689)
!4983 = !DILocation(line: 292, column: 22, scope: !4689)
!4984 = !DILocation(line: 292, column: 2, scope: !4689)
!4985 = !DILocation(line: 293, column: 2, scope: !4689)
!4986 = !DILabel(scope: !4689, name: "no_slot", file: !3, line: 294)
!4987 = !DILocation(line: 294, column: 1, scope: !4689)
!4988 = !DILocation(line: 295, column: 8, scope: !4689)
!4989 = !DILocation(line: 295, column: 2, scope: !4689)
!4990 = !DILabel(scope: !4689, name: "no_memory", file: !3, line: 296)
!4991 = !DILocation(line: 296, column: 1, scope: !4689)
!4992 = !DILocation(line: 297, column: 17, scope: !4689)
!4993 = !DILocation(line: 297, column: 9, scope: !4689)
!4994 = !DILocation(line: 297, column: 2, scope: !4689)
!4995 = !DILocation(line: 298, column: 1, scope: !4689)
!4996 = distinct !DISubprogram(name: "ERR_PTR", scope: !4997, file: !4997, line: 24, type: !4998, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!4997 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!172, !234}
!5000 = !DILocalVariable(name: "error", arg: 1, scope: !4996, file: !4997, line: 24, type: !234)
!5001 = !DILocation(line: 24, column: 48, scope: !4996)
!5002 = !DILocation(line: 26, column: 18, scope: !4996)
!5003 = !DILocation(line: 26, column: 9, scope: !4996)
!5004 = !DILocation(line: 26, column: 2, scope: !4996)
!5005 = distinct !DISubprogram(name: "kzalloc", scope: !160, file: !160, line: 662, type: !5006, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!172, !482, !170}
!5008 = !DILocalVariable(name: "s", arg: 1, scope: !5009, file: !160, line: 445, type: !905)
!5009 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !160, file: !160, line: 445, type: !5010, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!172, !905, !170, !482}
!5012 = !DILocation(line: 445, column: 72, scope: !5009, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 552, column: 10, scope: !5014, inlinedAt: !5017)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !160, line: 540, column: 34)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !160, line: 540, column: 6)
!5016 = distinct !DISubprogram(name: "kmalloc", scope: !160, file: !160, line: 538, type: !5006, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5017 = distinct !DILocation(line: 664, column: 9, scope: !5005)
!5018 = !DILocalVariable(name: "flags", arg: 2, scope: !5009, file: !160, line: 446, type: !170)
!5019 = !DILocation(line: 446, column: 9, scope: !5009, inlinedAt: !5013)
!5020 = !DILocalVariable(name: "size", arg: 3, scope: !5009, file: !160, line: 446, type: !482)
!5021 = !DILocation(line: 446, column: 23, scope: !5009, inlinedAt: !5013)
!5022 = !DILocalVariable(name: "ret", scope: !5009, file: !160, line: 448, type: !172)
!5023 = !DILocation(line: 448, column: 8, scope: !5009, inlinedAt: !5013)
!5024 = !DILocalVariable(name: "flags", arg: 1, scope: !5025, file: !160, line: 318, type: !170)
!5025 = distinct !DISubprogram(name: "kmalloc_type", scope: !160, file: !160, line: 318, type: !5026, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!159, !170}
!5028 = !DILocation(line: 318, column: 67, scope: !5025, inlinedAt: !5029)
!5029 = distinct !DILocation(line: 553, column: 20, scope: !5014, inlinedAt: !5017)
!5030 = !DILocalVariable(name: "size", arg: 1, scope: !5031, file: !160, line: 346, type: !482)
!5031 = distinct !DISubprogram(name: "kmalloc_index", scope: !160, file: !160, line: 346, type: !5032, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!7, !482}
!5034 = !DILocation(line: 346, column: 58, scope: !5031, inlinedAt: !5035)
!5035 = distinct !DILocation(line: 547, column: 11, scope: !5014, inlinedAt: !5017)
!5036 = !DILocalVariable(name: "size", arg: 1, scope: !5037, file: !160, line: 472, type: !482)
!5037 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !160, file: !160, line: 472, type: !5038, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!172, !482, !170, !7}
!5040 = !DILocation(line: 472, column: 28, scope: !5037, inlinedAt: !5041)
!5041 = distinct !DILocation(line: 481, column: 9, scope: !5042, inlinedAt: !5043)
!5042 = distinct !DISubprogram(name: "kmalloc_large", scope: !160, file: !160, line: 478, type: !5006, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5043 = distinct !DILocation(line: 545, column: 11, scope: !5044, inlinedAt: !5017)
!5044 = distinct !DILexicalBlock(scope: !5014, file: !160, line: 544, column: 7)
!5045 = !DILocalVariable(name: "flags", arg: 2, scope: !5037, file: !160, line: 472, type: !170)
!5046 = !DILocation(line: 472, column: 40, scope: !5037, inlinedAt: !5041)
!5047 = !DILocalVariable(name: "order", arg: 3, scope: !5037, file: !160, line: 472, type: !7)
!5048 = !DILocation(line: 472, column: 60, scope: !5037, inlinedAt: !5041)
!5049 = !DILocalVariable(name: "size", arg: 1, scope: !5042, file: !160, line: 478, type: !482)
!5050 = !DILocation(line: 478, column: 51, scope: !5042, inlinedAt: !5043)
!5051 = !DILocalVariable(name: "flags", arg: 2, scope: !5042, file: !160, line: 478, type: !170)
!5052 = !DILocation(line: 478, column: 63, scope: !5042, inlinedAt: !5043)
!5053 = !DILocalVariable(name: "order", scope: !5042, file: !160, line: 480, type: !7)
!5054 = !DILocation(line: 480, column: 15, scope: !5042, inlinedAt: !5043)
!5055 = !DILocalVariable(name: "size", arg: 1, scope: !5016, file: !160, line: 538, type: !482)
!5056 = !DILocation(line: 538, column: 45, scope: !5016, inlinedAt: !5017)
!5057 = !DILocalVariable(name: "flags", arg: 2, scope: !5016, file: !160, line: 538, type: !170)
!5058 = !DILocation(line: 538, column: 57, scope: !5016, inlinedAt: !5017)
!5059 = !DILocalVariable(name: "index", scope: !5014, file: !160, line: 542, type: !7)
!5060 = !DILocation(line: 542, column: 16, scope: !5014, inlinedAt: !5017)
!5061 = !DILocalVariable(name: "size", arg: 1, scope: !5005, file: !160, line: 662, type: !482)
!5062 = !DILocation(line: 662, column: 36, scope: !5005)
!5063 = !DILocalVariable(name: "flags", arg: 2, scope: !5005, file: !160, line: 662, type: !170)
!5064 = !DILocation(line: 662, column: 48, scope: !5005)
!5065 = !DILocation(line: 664, column: 17, scope: !5005)
!5066 = !DILocation(line: 664, column: 23, scope: !5005)
!5067 = !DILocation(line: 664, column: 29, scope: !5005)
!5068 = !DILocation(line: 540, column: 27, scope: !5015, inlinedAt: !5017)
!5069 = !DILocation(line: 540, column: 6, scope: !5015, inlinedAt: !5017)
!5070 = !DILocation(line: 540, column: 6, scope: !5016, inlinedAt: !5017)
!5071 = !DILocation(line: 544, column: 7, scope: !5044, inlinedAt: !5017)
!5072 = !DILocation(line: 544, column: 12, scope: !5044, inlinedAt: !5017)
!5073 = !DILocation(line: 544, column: 7, scope: !5014, inlinedAt: !5017)
!5074 = !DILocation(line: 545, column: 25, scope: !5044, inlinedAt: !5017)
!5075 = !DILocation(line: 545, column: 31, scope: !5044, inlinedAt: !5017)
!5076 = !DILocation(line: 480, column: 33, scope: !5042, inlinedAt: !5043)
!5077 = !DILocation(line: 480, column: 23, scope: !5042, inlinedAt: !5043)
!5078 = !DILocation(line: 481, column: 29, scope: !5042, inlinedAt: !5043)
!5079 = !DILocation(line: 481, column: 35, scope: !5042, inlinedAt: !5043)
!5080 = !DILocation(line: 481, column: 42, scope: !5042, inlinedAt: !5043)
!5081 = !DILocation(line: 474, column: 23, scope: !5037, inlinedAt: !5041)
!5082 = !DILocation(line: 474, column: 29, scope: !5037, inlinedAt: !5041)
!5083 = !DILocation(line: 474, column: 36, scope: !5037, inlinedAt: !5041)
!5084 = !DILocation(line: 474, column: 9, scope: !5037, inlinedAt: !5041)
!5085 = !DILocation(line: 545, column: 4, scope: !5044, inlinedAt: !5017)
!5086 = !DILocation(line: 547, column: 25, scope: !5014, inlinedAt: !5017)
!5087 = !DILocation(line: 348, column: 7, scope: !5088, inlinedAt: !5035)
!5088 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 348, column: 6)
!5089 = !DILocation(line: 348, column: 6, scope: !5031, inlinedAt: !5035)
!5090 = !DILocation(line: 349, column: 3, scope: !5088, inlinedAt: !5035)
!5091 = !DILocation(line: 351, column: 6, scope: !5092, inlinedAt: !5035)
!5092 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 351, column: 6)
!5093 = !DILocation(line: 351, column: 11, scope: !5092, inlinedAt: !5035)
!5094 = !DILocation(line: 351, column: 6, scope: !5031, inlinedAt: !5035)
!5095 = !DILocation(line: 352, column: 3, scope: !5092, inlinedAt: !5035)
!5096 = !DILocation(line: 354, column: 32, scope: !5097, inlinedAt: !5035)
!5097 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 354, column: 6)
!5098 = !DILocation(line: 354, column: 37, scope: !5097, inlinedAt: !5035)
!5099 = !DILocation(line: 354, column: 42, scope: !5097, inlinedAt: !5035)
!5100 = !DILocation(line: 354, column: 45, scope: !5097, inlinedAt: !5035)
!5101 = !DILocation(line: 354, column: 50, scope: !5097, inlinedAt: !5035)
!5102 = !DILocation(line: 354, column: 6, scope: !5031, inlinedAt: !5035)
!5103 = !DILocation(line: 355, column: 3, scope: !5097, inlinedAt: !5035)
!5104 = !DILocation(line: 356, column: 32, scope: !5105, inlinedAt: !5035)
!5105 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 356, column: 6)
!5106 = !DILocation(line: 356, column: 37, scope: !5105, inlinedAt: !5035)
!5107 = !DILocation(line: 356, column: 43, scope: !5105, inlinedAt: !5035)
!5108 = !DILocation(line: 356, column: 46, scope: !5105, inlinedAt: !5035)
!5109 = !DILocation(line: 356, column: 51, scope: !5105, inlinedAt: !5035)
!5110 = !DILocation(line: 356, column: 6, scope: !5031, inlinedAt: !5035)
!5111 = !DILocation(line: 357, column: 3, scope: !5105, inlinedAt: !5035)
!5112 = !DILocation(line: 358, column: 6, scope: !5113, inlinedAt: !5035)
!5113 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 358, column: 6)
!5114 = !DILocation(line: 358, column: 11, scope: !5113, inlinedAt: !5035)
!5115 = !DILocation(line: 358, column: 6, scope: !5031, inlinedAt: !5035)
!5116 = !DILocation(line: 358, column: 26, scope: !5113, inlinedAt: !5035)
!5117 = !DILocation(line: 359, column: 6, scope: !5118, inlinedAt: !5035)
!5118 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 359, column: 6)
!5119 = !DILocation(line: 359, column: 11, scope: !5118, inlinedAt: !5035)
!5120 = !DILocation(line: 359, column: 6, scope: !5031, inlinedAt: !5035)
!5121 = !DILocation(line: 359, column: 26, scope: !5118, inlinedAt: !5035)
!5122 = !DILocation(line: 360, column: 6, scope: !5123, inlinedAt: !5035)
!5123 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 360, column: 6)
!5124 = !DILocation(line: 360, column: 11, scope: !5123, inlinedAt: !5035)
!5125 = !DILocation(line: 360, column: 6, scope: !5031, inlinedAt: !5035)
!5126 = !DILocation(line: 360, column: 26, scope: !5123, inlinedAt: !5035)
!5127 = !DILocation(line: 361, column: 6, scope: !5128, inlinedAt: !5035)
!5128 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 361, column: 6)
!5129 = !DILocation(line: 361, column: 11, scope: !5128, inlinedAt: !5035)
!5130 = !DILocation(line: 361, column: 6, scope: !5031, inlinedAt: !5035)
!5131 = !DILocation(line: 361, column: 26, scope: !5128, inlinedAt: !5035)
!5132 = !DILocation(line: 362, column: 6, scope: !5133, inlinedAt: !5035)
!5133 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 362, column: 6)
!5134 = !DILocation(line: 362, column: 11, scope: !5133, inlinedAt: !5035)
!5135 = !DILocation(line: 362, column: 6, scope: !5031, inlinedAt: !5035)
!5136 = !DILocation(line: 362, column: 26, scope: !5133, inlinedAt: !5035)
!5137 = !DILocation(line: 363, column: 6, scope: !5138, inlinedAt: !5035)
!5138 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 363, column: 6)
!5139 = !DILocation(line: 363, column: 11, scope: !5138, inlinedAt: !5035)
!5140 = !DILocation(line: 363, column: 6, scope: !5031, inlinedAt: !5035)
!5141 = !DILocation(line: 363, column: 26, scope: !5138, inlinedAt: !5035)
!5142 = !DILocation(line: 364, column: 6, scope: !5143, inlinedAt: !5035)
!5143 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 364, column: 6)
!5144 = !DILocation(line: 364, column: 11, scope: !5143, inlinedAt: !5035)
!5145 = !DILocation(line: 364, column: 6, scope: !5031, inlinedAt: !5035)
!5146 = !DILocation(line: 364, column: 26, scope: !5143, inlinedAt: !5035)
!5147 = !DILocation(line: 365, column: 6, scope: !5148, inlinedAt: !5035)
!5148 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 365, column: 6)
!5149 = !DILocation(line: 365, column: 11, scope: !5148, inlinedAt: !5035)
!5150 = !DILocation(line: 365, column: 6, scope: !5031, inlinedAt: !5035)
!5151 = !DILocation(line: 365, column: 26, scope: !5148, inlinedAt: !5035)
!5152 = !DILocation(line: 366, column: 6, scope: !5153, inlinedAt: !5035)
!5153 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 366, column: 6)
!5154 = !DILocation(line: 366, column: 11, scope: !5153, inlinedAt: !5035)
!5155 = !DILocation(line: 366, column: 6, scope: !5031, inlinedAt: !5035)
!5156 = !DILocation(line: 366, column: 26, scope: !5153, inlinedAt: !5035)
!5157 = !DILocation(line: 367, column: 6, scope: !5158, inlinedAt: !5035)
!5158 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 367, column: 6)
!5159 = !DILocation(line: 367, column: 11, scope: !5158, inlinedAt: !5035)
!5160 = !DILocation(line: 367, column: 6, scope: !5031, inlinedAt: !5035)
!5161 = !DILocation(line: 367, column: 26, scope: !5158, inlinedAt: !5035)
!5162 = !DILocation(line: 368, column: 6, scope: !5163, inlinedAt: !5035)
!5163 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 368, column: 6)
!5164 = !DILocation(line: 368, column: 11, scope: !5163, inlinedAt: !5035)
!5165 = !DILocation(line: 368, column: 6, scope: !5031, inlinedAt: !5035)
!5166 = !DILocation(line: 368, column: 26, scope: !5163, inlinedAt: !5035)
!5167 = !DILocation(line: 369, column: 6, scope: !5168, inlinedAt: !5035)
!5168 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 369, column: 6)
!5169 = !DILocation(line: 369, column: 11, scope: !5168, inlinedAt: !5035)
!5170 = !DILocation(line: 369, column: 6, scope: !5031, inlinedAt: !5035)
!5171 = !DILocation(line: 369, column: 26, scope: !5168, inlinedAt: !5035)
!5172 = !DILocation(line: 370, column: 6, scope: !5173, inlinedAt: !5035)
!5173 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 370, column: 6)
!5174 = !DILocation(line: 370, column: 11, scope: !5173, inlinedAt: !5035)
!5175 = !DILocation(line: 370, column: 6, scope: !5031, inlinedAt: !5035)
!5176 = !DILocation(line: 370, column: 26, scope: !5173, inlinedAt: !5035)
!5177 = !DILocation(line: 371, column: 6, scope: !5178, inlinedAt: !5035)
!5178 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 371, column: 6)
!5179 = !DILocation(line: 371, column: 11, scope: !5178, inlinedAt: !5035)
!5180 = !DILocation(line: 371, column: 6, scope: !5031, inlinedAt: !5035)
!5181 = !DILocation(line: 371, column: 26, scope: !5178, inlinedAt: !5035)
!5182 = !DILocation(line: 372, column: 6, scope: !5183, inlinedAt: !5035)
!5183 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 372, column: 6)
!5184 = !DILocation(line: 372, column: 11, scope: !5183, inlinedAt: !5035)
!5185 = !DILocation(line: 372, column: 6, scope: !5031, inlinedAt: !5035)
!5186 = !DILocation(line: 372, column: 26, scope: !5183, inlinedAt: !5035)
!5187 = !DILocation(line: 373, column: 6, scope: !5188, inlinedAt: !5035)
!5188 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 373, column: 6)
!5189 = !DILocation(line: 373, column: 11, scope: !5188, inlinedAt: !5035)
!5190 = !DILocation(line: 373, column: 6, scope: !5031, inlinedAt: !5035)
!5191 = !DILocation(line: 373, column: 26, scope: !5188, inlinedAt: !5035)
!5192 = !DILocation(line: 374, column: 6, scope: !5193, inlinedAt: !5035)
!5193 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 374, column: 6)
!5194 = !DILocation(line: 374, column: 11, scope: !5193, inlinedAt: !5035)
!5195 = !DILocation(line: 374, column: 6, scope: !5031, inlinedAt: !5035)
!5196 = !DILocation(line: 374, column: 26, scope: !5193, inlinedAt: !5035)
!5197 = !DILocation(line: 375, column: 6, scope: !5198, inlinedAt: !5035)
!5198 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 375, column: 6)
!5199 = !DILocation(line: 375, column: 11, scope: !5198, inlinedAt: !5035)
!5200 = !DILocation(line: 375, column: 6, scope: !5031, inlinedAt: !5035)
!5201 = !DILocation(line: 375, column: 27, scope: !5198, inlinedAt: !5035)
!5202 = !DILocation(line: 376, column: 6, scope: !5203, inlinedAt: !5035)
!5203 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 376, column: 6)
!5204 = !DILocation(line: 376, column: 11, scope: !5203, inlinedAt: !5035)
!5205 = !DILocation(line: 376, column: 6, scope: !5031, inlinedAt: !5035)
!5206 = !DILocation(line: 376, column: 32, scope: !5203, inlinedAt: !5035)
!5207 = !DILocation(line: 377, column: 6, scope: !5208, inlinedAt: !5035)
!5208 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 377, column: 6)
!5209 = !DILocation(line: 377, column: 11, scope: !5208, inlinedAt: !5035)
!5210 = !DILocation(line: 377, column: 6, scope: !5031, inlinedAt: !5035)
!5211 = !DILocation(line: 377, column: 32, scope: !5208, inlinedAt: !5035)
!5212 = !DILocation(line: 378, column: 6, scope: !5213, inlinedAt: !5035)
!5213 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 378, column: 6)
!5214 = !DILocation(line: 378, column: 11, scope: !5213, inlinedAt: !5035)
!5215 = !DILocation(line: 378, column: 6, scope: !5031, inlinedAt: !5035)
!5216 = !DILocation(line: 378, column: 32, scope: !5213, inlinedAt: !5035)
!5217 = !DILocation(line: 379, column: 6, scope: !5218, inlinedAt: !5035)
!5218 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 379, column: 6)
!5219 = !DILocation(line: 379, column: 11, scope: !5218, inlinedAt: !5035)
!5220 = !DILocation(line: 379, column: 6, scope: !5031, inlinedAt: !5035)
!5221 = !DILocation(line: 379, column: 33, scope: !5218, inlinedAt: !5035)
!5222 = !DILocation(line: 380, column: 6, scope: !5223, inlinedAt: !5035)
!5223 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 380, column: 6)
!5224 = !DILocation(line: 380, column: 11, scope: !5223, inlinedAt: !5035)
!5225 = !DILocation(line: 380, column: 6, scope: !5031, inlinedAt: !5035)
!5226 = !DILocation(line: 380, column: 33, scope: !5223, inlinedAt: !5035)
!5227 = !DILocation(line: 381, column: 6, scope: !5228, inlinedAt: !5035)
!5228 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 381, column: 6)
!5229 = !DILocation(line: 381, column: 11, scope: !5228, inlinedAt: !5035)
!5230 = !DILocation(line: 381, column: 6, scope: !5031, inlinedAt: !5035)
!5231 = !DILocation(line: 381, column: 33, scope: !5228, inlinedAt: !5035)
!5232 = !DILocation(line: 382, column: 2, scope: !5233, inlinedAt: !5035)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !160, line: 382, column: 2)
!5234 = distinct !DILexicalBlock(scope: !5031, file: !160, line: 382, column: 2)
!5235 = !{i32 -2142874591, i32 -2142874562, i32 -2142874516, i32 -2142874458, i32 -2142874404, i32 -2142874350, i32 -2142874295, i32 -2142874264}
!5236 = !DILocation(line: 382, column: 2, scope: !5237, inlinedAt: !5035)
!5237 = distinct !DILexicalBlock(scope: !5238, file: !160, line: 382, column: 2)
!5238 = distinct !DILexicalBlock(scope: !5234, file: !160, line: 382, column: 2)
!5239 = !{i32 -2142873821, i32 -2142873814, i32 -2142873760, i32 -2142873729, i32 -2142873699}
!5240 = !DILocation(line: 382, column: 2, scope: !5238, inlinedAt: !5035)
!5241 = !DILocation(line: 386, column: 1, scope: !5031, inlinedAt: !5035)
!5242 = !DILocation(line: 547, column: 9, scope: !5014, inlinedAt: !5017)
!5243 = !DILocation(line: 549, column: 8, scope: !5244, inlinedAt: !5017)
!5244 = distinct !DILexicalBlock(scope: !5014, file: !160, line: 549, column: 7)
!5245 = !DILocation(line: 549, column: 7, scope: !5014, inlinedAt: !5017)
!5246 = !DILocation(line: 550, column: 4, scope: !5244, inlinedAt: !5017)
!5247 = !DILocation(line: 553, column: 33, scope: !5014, inlinedAt: !5017)
!5248 = !DILocation(line: 325, column: 6, scope: !5249, inlinedAt: !5029)
!5249 = distinct !DILexicalBlock(scope: !5025, file: !160, line: 325, column: 6)
!5250 = !DILocation(line: 325, column: 6, scope: !5025, inlinedAt: !5029)
!5251 = !DILocation(line: 326, column: 3, scope: !5249, inlinedAt: !5029)
!5252 = !DILocation(line: 332, column: 9, scope: !5025, inlinedAt: !5029)
!5253 = !DILocation(line: 332, column: 15, scope: !5025, inlinedAt: !5029)
!5254 = !DILocation(line: 332, column: 2, scope: !5025, inlinedAt: !5029)
!5255 = !DILocation(line: 336, column: 1, scope: !5025, inlinedAt: !5029)
!5256 = !DILocation(line: 553, column: 5, scope: !5014, inlinedAt: !5017)
!5257 = !DILocation(line: 553, column: 41, scope: !5014, inlinedAt: !5017)
!5258 = !DILocation(line: 554, column: 5, scope: !5014, inlinedAt: !5017)
!5259 = !DILocation(line: 554, column: 12, scope: !5014, inlinedAt: !5017)
!5260 = !DILocation(line: 448, column: 31, scope: !5009, inlinedAt: !5013)
!5261 = !DILocation(line: 448, column: 34, scope: !5009, inlinedAt: !5013)
!5262 = !DILocation(line: 448, column: 14, scope: !5009, inlinedAt: !5013)
!5263 = !DILocation(line: 450, column: 22, scope: !5009, inlinedAt: !5013)
!5264 = !DILocation(line: 450, column: 25, scope: !5009, inlinedAt: !5013)
!5265 = !DILocation(line: 450, column: 30, scope: !5009, inlinedAt: !5013)
!5266 = !DILocation(line: 450, column: 36, scope: !5009, inlinedAt: !5013)
!5267 = !DILocation(line: 450, column: 8, scope: !5009, inlinedAt: !5013)
!5268 = !DILocation(line: 450, column: 6, scope: !5009, inlinedAt: !5013)
!5269 = !DILocation(line: 451, column: 9, scope: !5009, inlinedAt: !5013)
!5270 = !DILocation(line: 552, column: 3, scope: !5014, inlinedAt: !5017)
!5271 = !DILocation(line: 557, column: 19, scope: !5016, inlinedAt: !5017)
!5272 = !DILocation(line: 557, column: 25, scope: !5016, inlinedAt: !5017)
!5273 = !DILocation(line: 557, column: 9, scope: !5016, inlinedAt: !5017)
!5274 = !DILocation(line: 557, column: 2, scope: !5016, inlinedAt: !5017)
!5275 = !DILocation(line: 558, column: 1, scope: !5016, inlinedAt: !5017)
!5276 = !DILocation(line: 664, column: 2, scope: !5005)
!5277 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5278, file: !5278, line: 33, type: !5279, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5278 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5279 = !DISubroutineType(types: !5280)
!5280 = !{null, !512}
!5281 = !DILocalVariable(name: "list", arg: 1, scope: !5277, file: !5278, line: 33, type: !512)
!5282 = !DILocation(line: 33, column: 53, scope: !5277)
!5283 = !DILocation(line: 35, column: 2, scope: !5277)
!5284 = !DILocation(line: 35, column: 2, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5277, file: !5278, line: 35, column: 2)
!5286 = !DILocation(line: 35, column: 2, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5285, file: !5278, line: 35, column: 2)
!5288 = !DILocation(line: 35, column: 2, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5285, file: !5278, line: 35, column: 2)
!5290 = !DILocation(line: 36, column: 15, scope: !5277)
!5291 = !DILocation(line: 36, column: 2, scope: !5277)
!5292 = !DILocation(line: 36, column: 8, scope: !5277)
!5293 = !DILocation(line: 36, column: 13, scope: !5277)
!5294 = !DILocation(line: 37, column: 1, scope: !5277)
!5295 = distinct !DISubprogram(name: "ptp_aux_kworker", scope: !3, file: !3, line: 189, type: !4675, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5296 = !DILocalVariable(name: "work", arg: 1, scope: !5295, file: !3, line: 189, type: !4668)
!5297 = !DILocation(line: 189, column: 50, scope: !5295)
!5298 = !DILocalVariable(name: "ptp", scope: !5295, file: !3, line: 191, type: !173)
!5299 = !DILocation(line: 191, column: 20, scope: !5295)
!5300 = !DILocalVariable(name: "__mptr", scope: !5301, file: !3, line: 191, type: !172)
!5301 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 191, column: 26)
!5302 = !DILocation(line: 191, column: 26, scope: !5301)
!5303 = !DILocation(line: 191, column: 26, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 191, column: 26)
!5305 = !DILocalVariable(name: "info", scope: !5295, file: !3, line: 193, type: !4498)
!5306 = !DILocation(line: 193, column: 25, scope: !5295)
!5307 = !DILocation(line: 193, column: 32, scope: !5295)
!5308 = !DILocation(line: 193, column: 37, scope: !5295)
!5309 = !DILocalVariable(name: "delay", scope: !5295, file: !3, line: 194, type: !234)
!5310 = !DILocation(line: 194, column: 7, scope: !5295)
!5311 = !DILocation(line: 196, column: 10, scope: !5295)
!5312 = !DILocation(line: 196, column: 16, scope: !5295)
!5313 = !DILocation(line: 196, column: 28, scope: !5295)
!5314 = !DILocation(line: 196, column: 8, scope: !5295)
!5315 = !DILocation(line: 198, column: 6, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 198, column: 6)
!5317 = !DILocation(line: 198, column: 12, scope: !5316)
!5318 = !DILocation(line: 198, column: 6, scope: !5295)
!5319 = !DILocation(line: 199, column: 30, scope: !5316)
!5320 = !DILocation(line: 199, column: 35, scope: !5316)
!5321 = !DILocation(line: 199, column: 45, scope: !5316)
!5322 = !DILocation(line: 199, column: 50, scope: !5316)
!5323 = !DILocation(line: 199, column: 60, scope: !5316)
!5324 = !DILocation(line: 199, column: 3, scope: !5316)
!5325 = !DILocation(line: 200, column: 1, scope: !5295)
!5326 = distinct !DISubprogram(name: "IS_ERR", scope: !4997, file: !4997, line: 34, type: !5327, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!399, !2372}
!5329 = !DILocalVariable(name: "ptr", arg: 1, scope: !5326, file: !4997, line: 34, type: !2372)
!5330 = !DILocation(line: 34, column: 60, scope: !5326)
!5331 = !DILocation(line: 36, column: 9, scope: !5326)
!5332 = !DILocation(line: 36, column: 2, scope: !5326)
!5333 = distinct !DISubprogram(name: "PTR_ERR", scope: !4997, file: !4997, line: 29, type: !5334, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!234, !2372}
!5336 = !DILocalVariable(name: "ptr", arg: 1, scope: !5333, file: !4997, line: 29, type: !2372)
!5337 = !DILocation(line: 29, column: 61, scope: !5333)
!5338 = !DILocation(line: 31, column: 16, scope: !5333)
!5339 = !DILocation(line: 31, column: 9, scope: !5333)
!5340 = !DILocation(line: 31, column: 2, scope: !5333)
!5341 = distinct !DISubprogram(name: "ptp_clock_release", scope: !3, file: !3, line: 178, type: !2550, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5342 = !DILocalVariable(name: "dev", arg: 1, scope: !5341, file: !3, line: 178, type: !2238)
!5343 = !DILocation(line: 178, column: 46, scope: !5341)
!5344 = !DILocalVariable(name: "ptp", scope: !5341, file: !3, line: 180, type: !173)
!5345 = !DILocation(line: 180, column: 20, scope: !5341)
!5346 = !DILocalVariable(name: "__mptr", scope: !5347, file: !3, line: 180, type: !172)
!5347 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 180, column: 26)
!5348 = !DILocation(line: 180, column: 26, scope: !5347)
!5349 = !DILocation(line: 180, column: 26, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 180, column: 26)
!5351 = !DILocation(line: 182, column: 25, scope: !5341)
!5352 = !DILocation(line: 182, column: 2, scope: !5341)
!5353 = !DILocation(line: 183, column: 17, scope: !5341)
!5354 = !DILocation(line: 183, column: 22, scope: !5341)
!5355 = !DILocation(line: 183, column: 2, scope: !5341)
!5356 = !DILocation(line: 184, column: 17, scope: !5341)
!5357 = !DILocation(line: 184, column: 22, scope: !5341)
!5358 = !DILocation(line: 184, column: 2, scope: !5341)
!5359 = !DILocation(line: 185, column: 2, scope: !5341)
!5360 = !DILocation(line: 186, column: 8, scope: !5341)
!5361 = !DILocation(line: 186, column: 2, scope: !5341)
!5362 = !DILocation(line: 187, column: 1, scope: !5341)
!5363 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !43, file: !43, line: 660, type: !5364, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5364 = !DISubroutineType(types: !5365)
!5365 = !{null, !2238, !172}
!5366 = !DILocalVariable(name: "dev", arg: 1, scope: !5363, file: !43, line: 660, type: !2238)
!5367 = !DILocation(line: 660, column: 51, scope: !5363)
!5368 = !DILocalVariable(name: "data", arg: 2, scope: !5363, file: !43, line: 660, type: !172)
!5369 = !DILocation(line: 660, column: 62, scope: !5363)
!5370 = !DILocation(line: 662, column: 21, scope: !5363)
!5371 = !DILocation(line: 662, column: 2, scope: !5363)
!5372 = !DILocation(line: 662, column: 7, scope: !5363)
!5373 = !DILocation(line: 662, column: 19, scope: !5363)
!5374 = !DILocation(line: 663, column: 1, scope: !5363)
!5375 = distinct !DISubprogram(name: "mutex_destroy", scope: !638, file: !638, line: 103, type: !5376, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{null, !5378}
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!5379 = !DILocalVariable(name: "lock", arg: 1, scope: !5375, file: !638, line: 103, type: !5378)
!5380 = !DILocation(line: 103, column: 48, scope: !5375)
!5381 = !DILocation(line: 103, column: 55, scope: !5375)
!5382 = distinct !DISubprogram(name: "ptp_clock_unregister", scope: !3, file: !3, line: 301, type: !5383, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!65, !173}
!5385 = !DILocalVariable(name: "ptp", arg: 1, scope: !5382, file: !3, line: 301, type: !173)
!5386 = !DILocation(line: 301, column: 44, scope: !5382)
!5387 = !DILocation(line: 303, column: 2, scope: !5382)
!5388 = !DILocation(line: 303, column: 7, scope: !5382)
!5389 = !DILocation(line: 303, column: 15, scope: !5382)
!5390 = !DILocation(line: 304, column: 2, scope: !5382)
!5391 = !DILocation(line: 306, column: 6, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 306, column: 6)
!5393 = !DILocation(line: 306, column: 11, scope: !5392)
!5394 = !DILocation(line: 306, column: 6, scope: !5382)
!5395 = !DILocation(line: 307, column: 37, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 306, column: 20)
!5397 = !DILocation(line: 307, column: 42, scope: !5396)
!5398 = !DILocation(line: 307, column: 3, scope: !5396)
!5399 = !DILocation(line: 308, column: 26, scope: !5396)
!5400 = !DILocation(line: 308, column: 31, scope: !5396)
!5401 = !DILocation(line: 308, column: 3, scope: !5396)
!5402 = !DILocation(line: 309, column: 2, scope: !5396)
!5403 = !DILocation(line: 312, column: 6, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 312, column: 6)
!5405 = !DILocation(line: 312, column: 11, scope: !5404)
!5406 = !DILocation(line: 312, column: 6, scope: !5382)
!5407 = !DILocation(line: 313, column: 25, scope: !5404)
!5408 = !DILocation(line: 313, column: 30, scope: !5404)
!5409 = !DILocation(line: 313, column: 3, scope: !5404)
!5410 = !DILocation(line: 315, column: 26, scope: !5382)
!5411 = !DILocation(line: 315, column: 31, scope: !5382)
!5412 = !DILocation(line: 315, column: 2, scope: !5382)
!5413 = !DILocation(line: 317, column: 2, scope: !5382)
!5414 = distinct !DISubprogram(name: "ptp_clock_event", scope: !3, file: !3, line: 321, type: !5415, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5415 = !DISubroutineType(types: !5416)
!5416 = !{null, !173, !5417}
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_event", file: !104, line: 167, size: 192, elements: !5419)
!5419 = !{!5420, !5421, !5422}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5418, file: !104, line: 168, baseType: !65, size: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5418, file: !104, line: 169, baseType: !65, size: 32, offset: 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !104, line: 170, baseType: !5423, size: 128, offset: 64)
!5423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5418, file: !104, line: 170, size: 128, elements: !5424)
!5424 = !{!5425, !5426}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5423, file: !104, line: 171, baseType: !324, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "pps_times", scope: !5423, file: !104, line: 172, baseType: !5427, size: 128)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_event_time", file: !4579, line: 35, size: 128, elements: !5428)
!5428 = !{!5429}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "ts_real", scope: !5427, file: !4579, line: 39, baseType: !228, size: 128)
!5430 = !DILocalVariable(name: "ptp", arg: 1, scope: !5414, file: !3, line: 321, type: !173)
!5431 = !DILocation(line: 321, column: 40, scope: !5414)
!5432 = !DILocalVariable(name: "event", arg: 2, scope: !5414, file: !3, line: 321, type: !5417)
!5433 = !DILocation(line: 321, column: 69, scope: !5414)
!5434 = !DILocalVariable(name: "evt", scope: !5414, file: !3, line: 323, type: !5427)
!5435 = !DILocation(line: 323, column: 24, scope: !5414)
!5436 = !DILocation(line: 325, column: 10, scope: !5414)
!5437 = !DILocation(line: 325, column: 17, scope: !5414)
!5438 = !DILocation(line: 325, column: 2, scope: !5414)
!5439 = !DILocation(line: 328, column: 3, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 325, column: 23)
!5441 = !DILocation(line: 331, column: 31, scope: !5440)
!5442 = !DILocation(line: 331, column: 36, scope: !5440)
!5443 = !DILocation(line: 331, column: 43, scope: !5440)
!5444 = !DILocation(line: 331, column: 3, scope: !5440)
!5445 = !DILocation(line: 332, column: 3, scope: !5440)
!5446 = !DILocation(line: 333, column: 3, scope: !5440)
!5447 = !DILocation(line: 336, column: 3, scope: !5440)
!5448 = !DILocation(line: 337, column: 13, scope: !5440)
!5449 = !DILocation(line: 337, column: 18, scope: !5440)
!5450 = !DILocation(line: 337, column: 3, scope: !5440)
!5451 = !DILocation(line: 338, column: 3, scope: !5440)
!5452 = !DILocation(line: 341, column: 13, scope: !5440)
!5453 = !DILocation(line: 341, column: 18, scope: !5440)
!5454 = !DILocation(line: 341, column: 31, scope: !5440)
!5455 = !DILocation(line: 341, column: 38, scope: !5440)
!5456 = !DILocation(line: 341, column: 3, scope: !5440)
!5457 = !DILocation(line: 343, column: 3, scope: !5440)
!5458 = !DILocation(line: 345, column: 1, scope: !5414)
!5459 = distinct !DISubprogram(name: "enqueue_external_timestamp", scope: !3, file: !3, line: 41, type: !5460, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{null, !5462, !5417}
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!5463 = !DILocalVariable(name: "lock", arg: 1, scope: !5464, file: !4757, line: 407, type: !1035)
!5464 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4757, file: !4757, line: 407, type: !5465, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{null, !1035, !246}
!5467 = !DILocation(line: 407, column: 64, scope: !5464, inlinedAt: !5468)
!5468 = distinct !DILocation(line: 63, column: 2, scope: !5459)
!5469 = !DILocalVariable(name: "flags", arg: 2, scope: !5464, file: !4757, line: 407, type: !246)
!5470 = !DILocation(line: 407, column: 84, scope: !5464, inlinedAt: !5468)
!5471 = !DILocation(line: 327, column: 67, scope: !4756, inlinedAt: !5472)
!5472 = distinct !DILocation(line: 51, column: 2, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 51, column: 2)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 51, column: 2)
!5475 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 51, column: 2)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 51, column: 2)
!5477 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 51, column: 2)
!5478 = !DILocalVariable(name: "queue", arg: 1, scope: !5459, file: !3, line: 41, type: !5462)
!5479 = !DILocation(line: 41, column: 70, scope: !5459)
!5480 = !DILocalVariable(name: "src", arg: 2, scope: !5459, file: !3, line: 42, type: !5417)
!5481 = !DILocation(line: 42, column: 36, scope: !5459)
!5482 = !DILocalVariable(name: "dst", scope: !5459, file: !3, line: 44, type: !5483)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!5484 = !DILocation(line: 44, column: 26, scope: !5459)
!5485 = !DILocalVariable(name: "flags", scope: !5459, file: !3, line: 45, type: !246)
!5486 = !DILocation(line: 45, column: 16, scope: !5459)
!5487 = !DILocalVariable(name: "seconds", scope: !5459, file: !3, line: 46, type: !647)
!5488 = !DILocation(line: 46, column: 6, scope: !5459)
!5489 = !DILocalVariable(name: "remainder", scope: !5459, file: !3, line: 47, type: !321)
!5490 = !DILocation(line: 47, column: 6, scope: !5459)
!5491 = !DILocation(line: 49, column: 24, scope: !5459)
!5492 = !DILocation(line: 49, column: 29, scope: !5459)
!5493 = !DILocation(line: 49, column: 12, scope: !5459)
!5494 = !DILocation(line: 49, column: 10, scope: !5459)
!5495 = !DILocation(line: 51, column: 2, scope: !5459)
!5496 = !DILocation(line: 51, column: 2, scope: !5477)
!5497 = !DILocalVariable(name: "__dummy", scope: !5498, file: !3, line: 51, type: !246)
!5498 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 51, column: 2)
!5499 = !DILocation(line: 51, column: 2, scope: !5498)
!5500 = !DILocalVariable(name: "__dummy2", scope: !5498, file: !3, line: 51, type: !246)
!5501 = !DILocation(line: 51, column: 2, scope: !5476)
!5502 = !DILocation(line: 51, column: 2, scope: !5475)
!5503 = !DILocation(line: 51, column: 2, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 51, column: 2)
!5505 = !DILocalVariable(name: "__dummy", scope: !5506, file: !3, line: 51, type: !246)
!5506 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 51, column: 2)
!5507 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 51, column: 2)
!5508 = !DILocation(line: 51, column: 2, scope: !5506)
!5509 = !DILocalVariable(name: "__dummy2", scope: !5506, file: !3, line: 51, type: !246)
!5510 = !DILocation(line: 51, column: 2, scope: !5507)
!5511 = !DILocation(line: 51, column: 2, scope: !5474)
!5512 = !{i32 -2141129685}
!5513 = !DILocation(line: 51, column: 2, scope: !5473)
!5514 = !DILocation(line: 329, column: 10, scope: !4756, inlinedAt: !5472)
!5515 = !DILocation(line: 329, column: 16, scope: !4756, inlinedAt: !5472)
!5516 = !DILocation(line: 53, column: 9, scope: !5459)
!5517 = !DILocation(line: 53, column: 16, scope: !5459)
!5518 = !DILocation(line: 53, column: 20, scope: !5459)
!5519 = !DILocation(line: 53, column: 27, scope: !5459)
!5520 = !DILocation(line: 53, column: 6, scope: !5459)
!5521 = !DILocation(line: 54, column: 15, scope: !5459)
!5522 = !DILocation(line: 54, column: 20, scope: !5459)
!5523 = !DILocation(line: 54, column: 2, scope: !5459)
!5524 = !DILocation(line: 54, column: 7, scope: !5459)
!5525 = !DILocation(line: 54, column: 13, scope: !5459)
!5526 = !DILocation(line: 55, column: 15, scope: !5459)
!5527 = !DILocation(line: 55, column: 2, scope: !5459)
!5528 = !DILocation(line: 55, column: 7, scope: !5459)
!5529 = !DILocation(line: 55, column: 9, scope: !5459)
!5530 = !DILocation(line: 55, column: 13, scope: !5459)
!5531 = !DILocation(line: 56, column: 16, scope: !5459)
!5532 = !DILocation(line: 56, column: 2, scope: !5459)
!5533 = !DILocation(line: 56, column: 7, scope: !5459)
!5534 = !DILocation(line: 56, column: 9, scope: !5459)
!5535 = !DILocation(line: 56, column: 14, scope: !5459)
!5536 = !DILocation(line: 58, column: 18, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 58, column: 6)
!5538 = !DILocation(line: 58, column: 7, scope: !5537)
!5539 = !DILocation(line: 58, column: 6, scope: !5459)
!5540 = !DILocation(line: 59, column: 18, scope: !5537)
!5541 = !DILocation(line: 59, column: 25, scope: !5537)
!5542 = !DILocation(line: 59, column: 30, scope: !5537)
!5543 = !DILocation(line: 59, column: 35, scope: !5537)
!5544 = !DILocation(line: 59, column: 3, scope: !5537)
!5545 = !DILocation(line: 59, column: 10, scope: !5537)
!5546 = !DILocation(line: 59, column: 15, scope: !5537)
!5547 = !DILocation(line: 61, column: 17, scope: !5459)
!5548 = !DILocation(line: 61, column: 24, scope: !5459)
!5549 = !DILocation(line: 61, column: 29, scope: !5459)
!5550 = !DILocation(line: 61, column: 34, scope: !5459)
!5551 = !DILocation(line: 61, column: 2, scope: !5459)
!5552 = !DILocation(line: 61, column: 9, scope: !5459)
!5553 = !DILocation(line: 61, column: 14, scope: !5459)
!5554 = !DILocation(line: 63, column: 26, scope: !5459)
!5555 = !DILocation(line: 63, column: 33, scope: !5459)
!5556 = !DILocation(line: 63, column: 39, scope: !5459)
!5557 = !DILocalVariable(name: "__dummy", scope: !5558, file: !4757, line: 409, type: !246)
!5558 = distinct !DILexicalBlock(scope: !5559, file: !4757, line: 409, column: 2)
!5559 = distinct !DILexicalBlock(scope: !5464, file: !4757, line: 409, column: 2)
!5560 = !DILocation(line: 409, column: 2, scope: !5558, inlinedAt: !5468)
!5561 = !DILocalVariable(name: "__dummy2", scope: !5558, file: !4757, line: 409, type: !246)
!5562 = !DILocalVariable(name: "__dummy", scope: !5563, file: !4757, line: 409, type: !246)
!5563 = distinct !DILexicalBlock(scope: !5564, file: !4757, line: 409, column: 2)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !4757, line: 409, column: 2)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !4757, line: 409, column: 2)
!5566 = distinct !DILexicalBlock(scope: !5559, file: !4757, line: 409, column: 2)
!5567 = !DILocation(line: 409, column: 2, scope: !5563, inlinedAt: !5468)
!5568 = !DILocalVariable(name: "__dummy2", scope: !5563, file: !4757, line: 409, type: !246)
!5569 = !DILocation(line: 409, column: 2, scope: !5564, inlinedAt: !5468)
!5570 = !DILocation(line: 409, column: 2, scope: !5571, inlinedAt: !5468)
!5571 = distinct !DILexicalBlock(scope: !5566, file: !4757, line: 409, column: 2)
!5572 = !{i32 -2145530066}
!5573 = !DILocation(line: 409, column: 2, scope: !5574, inlinedAt: !5468)
!5574 = distinct !DILexicalBlock(scope: !5571, file: !4757, line: 409, column: 2)
!5575 = !DILocation(line: 64, column: 1, scope: !5459)
!5576 = distinct !DISubprogram(name: "pps_get_ts", scope: !4579, file: !4579, line: 100, type: !5577, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{null, !5579}
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5580 = !DILocalVariable(name: "ts", arg: 1, scope: !5576, file: !4579, line: 100, type: !5579)
!5581 = !DILocation(line: 100, column: 54, scope: !5576)
!5582 = !DILocalVariable(name: "snap", scope: !5576, file: !4579, line: 102, type: !5583)
!5583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_time_snapshot", file: !4552, line: 246, size: 256, elements: !5584)
!5584 = !{!5585, !5586, !5587, !5588, !5589}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !5583, file: !4552, line: 247, baseType: !324, size: 64)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !5583, file: !4552, line: 248, baseType: !1263, size: 64, offset: 64)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5583, file: !4552, line: 249, baseType: !1263, size: 64, offset: 128)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !5583, file: !4552, line: 250, baseType: !7, size: 32, offset: 192)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "cs_was_changed_seq", scope: !5583, file: !4552, line: 251, baseType: !1315, size: 8, offset: 224)
!5590 = !DILocation(line: 102, column: 30, scope: !5576)
!5591 = !DILocation(line: 104, column: 2, scope: !5576)
!5592 = !DILocation(line: 105, column: 2, scope: !5576)
!5593 = !DILocation(line: 105, column: 6, scope: !5576)
!5594 = !DILocation(line: 105, column: 16, scope: !5576)
!5595 = !DILocation(line: 109, column: 1, scope: !5576)
!5596 = distinct !DISubprogram(name: "ptp_clock_index", scope: !3, file: !3, line: 348, type: !5383, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5597 = !DILocalVariable(name: "ptp", arg: 1, scope: !5596, file: !3, line: 348, type: !173)
!5598 = !DILocation(line: 348, column: 39, scope: !5596)
!5599 = !DILocation(line: 350, column: 9, scope: !5596)
!5600 = !DILocation(line: 350, column: 14, scope: !5596)
!5601 = !DILocation(line: 350, column: 2, scope: !5596)
!5602 = distinct !DISubprogram(name: "ptp_find_pin", scope: !3, file: !3, line: 354, type: !5603, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!65, !173, !153, !7}
!5605 = !DILocalVariable(name: "ptp", arg: 1, scope: !5602, file: !3, line: 354, type: !173)
!5606 = !DILocation(line: 354, column: 36, scope: !5602)
!5607 = !DILocalVariable(name: "func", arg: 2, scope: !5602, file: !3, line: 355, type: !153)
!5608 = !DILocation(line: 355, column: 26, scope: !5602)
!5609 = !DILocalVariable(name: "chan", arg: 3, scope: !5602, file: !3, line: 355, type: !7)
!5610 = !DILocation(line: 355, column: 45, scope: !5602)
!5611 = !DILocalVariable(name: "pin", scope: !5602, file: !3, line: 357, type: !4510)
!5612 = !DILocation(line: 357, column: 23, scope: !5602)
!5613 = !DILocalVariable(name: "i", scope: !5602, file: !3, line: 358, type: !65)
!5614 = !DILocation(line: 358, column: 6, scope: !5602)
!5615 = !DILocation(line: 360, column: 9, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 360, column: 2)
!5617 = !DILocation(line: 360, column: 7, scope: !5616)
!5618 = !DILocation(line: 360, column: 14, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 360, column: 2)
!5620 = !DILocation(line: 360, column: 18, scope: !5619)
!5621 = !DILocation(line: 360, column: 23, scope: !5619)
!5622 = !DILocation(line: 360, column: 29, scope: !5619)
!5623 = !DILocation(line: 360, column: 16, scope: !5619)
!5624 = !DILocation(line: 360, column: 2, scope: !5616)
!5625 = !DILocation(line: 361, column: 7, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 361, column: 7)
!5627 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 360, column: 42)
!5628 = !DILocation(line: 361, column: 12, scope: !5626)
!5629 = !DILocation(line: 361, column: 18, scope: !5626)
!5630 = !DILocation(line: 361, column: 29, scope: !5626)
!5631 = !DILocation(line: 361, column: 32, scope: !5626)
!5632 = !DILocation(line: 361, column: 40, scope: !5626)
!5633 = !DILocation(line: 361, column: 37, scope: !5626)
!5634 = !DILocation(line: 361, column: 45, scope: !5626)
!5635 = !DILocation(line: 362, column: 7, scope: !5626)
!5636 = !DILocation(line: 362, column: 12, scope: !5626)
!5637 = !DILocation(line: 362, column: 18, scope: !5626)
!5638 = !DILocation(line: 362, column: 29, scope: !5626)
!5639 = !DILocation(line: 362, column: 32, scope: !5626)
!5640 = !DILocation(line: 362, column: 40, scope: !5626)
!5641 = !DILocation(line: 362, column: 37, scope: !5626)
!5642 = !DILocation(line: 361, column: 7, scope: !5627)
!5643 = !DILocation(line: 363, column: 11, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 362, column: 46)
!5645 = !DILocation(line: 363, column: 16, scope: !5644)
!5646 = !DILocation(line: 363, column: 22, scope: !5644)
!5647 = !DILocation(line: 363, column: 33, scope: !5644)
!5648 = !DILocation(line: 363, column: 8, scope: !5644)
!5649 = !DILocation(line: 364, column: 4, scope: !5644)
!5650 = !DILocation(line: 366, column: 2, scope: !5627)
!5651 = !DILocation(line: 360, column: 38, scope: !5619)
!5652 = !DILocation(line: 360, column: 2, scope: !5619)
!5653 = distinct !{!5653, !5624, !5654}
!5654 = !DILocation(line: 366, column: 2, scope: !5616)
!5655 = !DILocation(line: 368, column: 9, scope: !5602)
!5656 = !DILocation(line: 368, column: 15, scope: !5602)
!5657 = !DILocation(line: 368, column: 2, scope: !5602)
!5658 = distinct !DISubprogram(name: "ptp_find_pin_unlocked", scope: !3, file: !3, line: 372, type: !5603, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5659 = !DILocalVariable(name: "ptp", arg: 1, scope: !5658, file: !3, line: 372, type: !173)
!5660 = !DILocation(line: 372, column: 45, scope: !5658)
!5661 = !DILocalVariable(name: "func", arg: 2, scope: !5658, file: !3, line: 373, type: !153)
!5662 = !DILocation(line: 373, column: 28, scope: !5658)
!5663 = !DILocalVariable(name: "chan", arg: 3, scope: !5658, file: !3, line: 373, type: !7)
!5664 = !DILocation(line: 373, column: 47, scope: !5658)
!5665 = !DILocalVariable(name: "result", scope: !5658, file: !3, line: 375, type: !65)
!5666 = !DILocation(line: 375, column: 6, scope: !5658)
!5667 = !DILocation(line: 377, column: 14, scope: !5658)
!5668 = !DILocation(line: 377, column: 19, scope: !5658)
!5669 = !DILocation(line: 377, column: 2, scope: !5658)
!5670 = !DILocation(line: 379, column: 24, scope: !5658)
!5671 = !DILocation(line: 379, column: 29, scope: !5658)
!5672 = !DILocation(line: 379, column: 35, scope: !5658)
!5673 = !DILocation(line: 379, column: 11, scope: !5658)
!5674 = !DILocation(line: 379, column: 9, scope: !5658)
!5675 = !DILocation(line: 381, column: 16, scope: !5658)
!5676 = !DILocation(line: 381, column: 21, scope: !5658)
!5677 = !DILocation(line: 381, column: 2, scope: !5658)
!5678 = !DILocation(line: 383, column: 9, scope: !5658)
!5679 = !DILocation(line: 383, column: 2, scope: !5658)
!5680 = distinct !DISubprogram(name: "ptp_schedule_worker", scope: !3, file: !3, line: 387, type: !5681, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!65, !173, !246}
!5683 = !DILocalVariable(name: "ptp", arg: 1, scope: !5680, file: !3, line: 387, type: !173)
!5684 = !DILocation(line: 387, column: 43, scope: !5680)
!5685 = !DILocalVariable(name: "delay", arg: 2, scope: !5680, file: !3, line: 387, type: !246)
!5686 = !DILocation(line: 387, column: 62, scope: !5680)
!5687 = !DILocation(line: 389, column: 34, scope: !5680)
!5688 = !DILocation(line: 389, column: 39, scope: !5680)
!5689 = !DILocation(line: 389, column: 49, scope: !5680)
!5690 = !DILocation(line: 389, column: 54, scope: !5680)
!5691 = !DILocation(line: 389, column: 64, scope: !5680)
!5692 = !DILocation(line: 389, column: 9, scope: !5680)
!5693 = !DILocation(line: 389, column: 2, scope: !5680)
!5694 = distinct !DISubprogram(name: "ptp_cancel_worker_sync", scope: !3, file: !3, line: 393, type: !5695, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{null, !173}
!5697 = !DILocalVariable(name: "ptp", arg: 1, scope: !5694, file: !3, line: 393, type: !173)
!5698 = !DILocation(line: 393, column: 47, scope: !5694)
!5699 = !DILocation(line: 395, column: 36, scope: !5694)
!5700 = !DILocation(line: 395, column: 41, scope: !5694)
!5701 = !DILocation(line: 395, column: 2, scope: !5694)
!5702 = !DILocation(line: 396, column: 1, scope: !5694)
!5703 = distinct !DISubprogram(name: "ptp_exit", scope: !3, file: !3, line: 401, type: !2052, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5704 = !DILocation(line: 403, column: 16, scope: !5703)
!5705 = !DILocation(line: 403, column: 2, scope: !5703)
!5706 = !DILocation(line: 404, column: 27, scope: !5703)
!5707 = !DILocation(line: 404, column: 2, scope: !5703)
!5708 = !DILocation(line: 405, column: 2, scope: !5703)
!5709 = !DILocation(line: 406, column: 1, scope: !5703)
!5710 = !DILocalVariable(name: "err", scope: !4732, file: !3, line: 410, type: !65)
!5711 = !DILocation(line: 410, column: 6, scope: !4732)
!5712 = !DILocation(line: 412, column: 14, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 412, column: 14)
!5714 = !DILocation(line: 412, column: 12, scope: !4732)
!5715 = !DILocation(line: 413, column: 13, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 413, column: 6)
!5717 = !DILocation(line: 413, column: 6, scope: !5716)
!5718 = !DILocation(line: 413, column: 6, scope: !4732)
!5719 = !DILocation(line: 414, column: 3, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 413, column: 25)
!5721 = !DILocation(line: 415, column: 18, scope: !5720)
!5722 = !DILocation(line: 415, column: 10, scope: !5720)
!5723 = !DILocation(line: 415, column: 3, scope: !5720)
!5724 = !DILocation(line: 418, column: 8, scope: !4732)
!5725 = !DILocation(line: 418, column: 6, scope: !4732)
!5726 = !DILocation(line: 419, column: 6, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 419, column: 6)
!5728 = !DILocation(line: 419, column: 10, scope: !5727)
!5729 = !DILocation(line: 419, column: 6, scope: !4732)
!5730 = !DILocation(line: 420, column: 3, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 419, column: 15)
!5732 = !DILocation(line: 421, column: 3, scope: !5731)
!5733 = !DILocation(line: 424, column: 2, scope: !4732)
!5734 = !DILocation(line: 424, column: 13, scope: !4732)
!5735 = !DILocation(line: 424, column: 24, scope: !4732)
!5736 = !DILocation(line: 425, column: 2, scope: !4732)
!5737 = !DILocation(line: 426, column: 2, scope: !4732)
!5738 = !DILabel(scope: !4732, name: "no_region", file: !3, line: 428)
!5739 = !DILocation(line: 428, column: 1, scope: !4732)
!5740 = !DILocation(line: 429, column: 16, scope: !4732)
!5741 = !DILocation(line: 429, column: 2, scope: !4732)
!5742 = !DILocation(line: 430, column: 9, scope: !4732)
!5743 = !DILocation(line: 430, column: 2, scope: !4732)
!5744 = !DILocation(line: 431, column: 1, scope: !4732)
!5745 = distinct !DISubprogram(name: "get_order", scope: !5746, file: !5746, line: 29, type: !5747, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5746 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!65, !246}
!5749 = !DILocalVariable(name: "x", arg: 1, scope: !5750, file: !5751, line: 366, type: !325)
!5750 = distinct !DISubprogram(name: "fls64", scope: !5751, file: !5751, line: 366, type: !5752, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5751 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!65, !325}
!5754 = !DILocation(line: 366, column: 40, scope: !5750, inlinedAt: !5755)
!5755 = distinct !DILocation(line: 46, column: 9, scope: !5745)
!5756 = !DILocalVariable(name: "bitpos", scope: !5750, file: !5751, line: 368, type: !65)
!5757 = !DILocation(line: 368, column: 6, scope: !5750, inlinedAt: !5755)
!5758 = !DILocalVariable(name: "size", arg: 1, scope: !5745, file: !5746, line: 29, type: !246)
!5759 = !DILocation(line: 29, column: 63, scope: !5745)
!5760 = !DILocation(line: 31, column: 27, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5745, file: !5746, line: 31, column: 6)
!5762 = !DILocation(line: 31, column: 6, scope: !5761)
!5763 = !DILocation(line: 31, column: 6, scope: !5745)
!5764 = !DILocation(line: 32, column: 8, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5766, file: !5746, line: 32, column: 7)
!5766 = distinct !DILexicalBlock(scope: !5761, file: !5746, line: 31, column: 34)
!5767 = !DILocation(line: 32, column: 7, scope: !5766)
!5768 = !DILocation(line: 33, column: 4, scope: !5765)
!5769 = !DILocation(line: 35, column: 7, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5766, file: !5746, line: 35, column: 7)
!5771 = !DILocation(line: 35, column: 12, scope: !5770)
!5772 = !DILocation(line: 35, column: 7, scope: !5766)
!5773 = !DILocation(line: 36, column: 4, scope: !5770)
!5774 = !DILocation(line: 38, column: 10, scope: !5766)
!5775 = !DILocation(line: 38, column: 28, scope: !5766)
!5776 = !DILocation(line: 38, column: 41, scope: !5766)
!5777 = !DILocation(line: 38, column: 3, scope: !5766)
!5778 = !DILocation(line: 41, column: 6, scope: !5745)
!5779 = !DILocation(line: 42, column: 7, scope: !5745)
!5780 = !DILocation(line: 46, column: 15, scope: !5745)
!5781 = !DILocation(line: 374, column: 2, scope: !5750, inlinedAt: !5755)
!5782 = !DILocation(line: 376, column: 14, scope: !5750, inlinedAt: !5755)
!5783 = !{i32 221871}
!5784 = !DILocation(line: 377, column: 9, scope: !5750, inlinedAt: !5755)
!5785 = !DILocation(line: 377, column: 16, scope: !5750, inlinedAt: !5755)
!5786 = !DILocation(line: 46, column: 2, scope: !5745)
!5787 = !DILocation(line: 48, column: 1, scope: !5745)
!5788 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5789, file: !5789, line: 30, type: !5790, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5789 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5790 = !DISubroutineType(types: !5791)
!5791 = !{!65, !324}
!5792 = !DILocation(line: 366, column: 40, scope: !5750, inlinedAt: !5793)
!5793 = distinct !DILocation(line: 32, column: 9, scope: !5788)
!5794 = !DILocation(line: 368, column: 6, scope: !5750, inlinedAt: !5793)
!5795 = !DILocalVariable(name: "n", arg: 1, scope: !5788, file: !5789, line: 30, type: !324)
!5796 = !DILocation(line: 30, column: 21, scope: !5788)
!5797 = !DILocation(line: 32, column: 15, scope: !5788)
!5798 = !DILocation(line: 374, column: 2, scope: !5750, inlinedAt: !5793)
!5799 = !DILocation(line: 376, column: 14, scope: !5750, inlinedAt: !5793)
!5800 = !DILocation(line: 377, column: 9, scope: !5750, inlinedAt: !5793)
!5801 = !DILocation(line: 377, column: 16, scope: !5750, inlinedAt: !5793)
!5802 = !DILocation(line: 32, column: 18, scope: !5788)
!5803 = !DILocation(line: 32, column: 2, scope: !5788)
!5804 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5805, file: !5805, line: 137, type: !5806, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5805 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!172, !905, !2372, !482, !170}
!5808 = !DILocalVariable(name: "s", arg: 1, scope: !5804, file: !5805, line: 137, type: !905)
!5809 = !DILocation(line: 137, column: 54, scope: !5804)
!5810 = !DILocalVariable(name: "object", arg: 2, scope: !5804, file: !5805, line: 137, type: !2372)
!5811 = !DILocation(line: 137, column: 69, scope: !5804)
!5812 = !DILocalVariable(name: "size", arg: 3, scope: !5804, file: !5805, line: 138, type: !482)
!5813 = !DILocation(line: 138, column: 12, scope: !5804)
!5814 = !DILocalVariable(name: "flags", arg: 4, scope: !5804, file: !5805, line: 138, type: !170)
!5815 = !DILocation(line: 138, column: 24, scope: !5804)
!5816 = !DILocation(line: 140, column: 17, scope: !5804)
!5817 = !DILocation(line: 140, column: 2, scope: !5804)
!5818 = distinct !DISubprogram(name: "ptp_clock_adjtime", scope: !3, file: !3, line: 115, type: !190, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5819 = !DILocalVariable(name: "pc", arg: 1, scope: !5818, file: !3, line: 115, type: !192)
!5820 = !DILocation(line: 115, column: 50, scope: !5818)
!5821 = !DILocalVariable(name: "tx", arg: 2, scope: !5818, file: !3, line: 115, type: !193)
!5822 = !DILocation(line: 115, column: 77, scope: !5818)
!5823 = !DILocalVariable(name: "ptp", scope: !5818, file: !3, line: 117, type: !173)
!5824 = !DILocation(line: 117, column: 20, scope: !5818)
!5825 = !DILocalVariable(name: "__mptr", scope: !5826, file: !3, line: 117, type: !172)
!5826 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 117, column: 26)
!5827 = !DILocation(line: 117, column: 26, scope: !5826)
!5828 = !DILocation(line: 117, column: 26, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 117, column: 26)
!5830 = !DILocalVariable(name: "ops", scope: !5818, file: !3, line: 118, type: !4498)
!5831 = !DILocation(line: 118, column: 25, scope: !5818)
!5832 = !DILocalVariable(name: "err", scope: !5818, file: !3, line: 119, type: !65)
!5833 = !DILocation(line: 119, column: 6, scope: !5818)
!5834 = !DILocation(line: 121, column: 8, scope: !5818)
!5835 = !DILocation(line: 121, column: 13, scope: !5818)
!5836 = !DILocation(line: 121, column: 6, scope: !5818)
!5837 = !DILocation(line: 123, column: 6, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 123, column: 6)
!5839 = !DILocation(line: 123, column: 10, scope: !5838)
!5840 = !DILocation(line: 123, column: 16, scope: !5838)
!5841 = !DILocation(line: 123, column: 6, scope: !5818)
!5842 = !DILocalVariable(name: "ts", scope: !5843, file: !3, line: 124, type: !228)
!5843 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 123, column: 33)
!5844 = !DILocation(line: 124, column: 21, scope: !5843)
!5845 = !DILocalVariable(name: "kt", scope: !5843, file: !3, line: 125, type: !1263)
!5846 = !DILocation(line: 125, column: 11, scope: !5843)
!5847 = !DILocalVariable(name: "delta", scope: !5843, file: !3, line: 126, type: !647)
!5848 = !DILocation(line: 126, column: 7, scope: !5843)
!5849 = !DILocation(line: 128, column: 16, scope: !5843)
!5850 = !DILocation(line: 128, column: 20, scope: !5843)
!5851 = !DILocation(line: 128, column: 25, scope: !5843)
!5852 = !DILocation(line: 128, column: 6, scope: !5843)
!5853 = !DILocation(line: 128, column: 14, scope: !5843)
!5854 = !DILocation(line: 129, column: 16, scope: !5843)
!5855 = !DILocation(line: 129, column: 20, scope: !5843)
!5856 = !DILocation(line: 129, column: 25, scope: !5843)
!5857 = !DILocation(line: 129, column: 6, scope: !5843)
!5858 = !DILocation(line: 129, column: 14, scope: !5843)
!5859 = !DILocation(line: 131, column: 9, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 131, column: 7)
!5861 = !DILocation(line: 131, column: 13, scope: !5860)
!5862 = !DILocation(line: 131, column: 19, scope: !5860)
!5863 = !DILocation(line: 131, column: 7, scope: !5843)
!5864 = !DILocation(line: 132, column: 7, scope: !5860)
!5865 = !DILocation(line: 132, column: 15, scope: !5860)
!5866 = !DILocation(line: 132, column: 4, scope: !5860)
!5867 = !DILocation(line: 134, column: 26, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 134, column: 7)
!5869 = !DILocation(line: 134, column: 34, scope: !5868)
!5870 = !DILocation(line: 134, column: 7, scope: !5843)
!5871 = !DILocation(line: 135, column: 4, scope: !5868)
!5872 = !DILocation(line: 137, column: 8, scope: !5843)
!5873 = !DILocation(line: 137, column: 6, scope: !5843)
!5874 = !DILocation(line: 138, column: 23, scope: !5843)
!5875 = !DILocation(line: 138, column: 11, scope: !5843)
!5876 = !DILocation(line: 138, column: 9, scope: !5843)
!5877 = !DILocation(line: 139, column: 9, scope: !5843)
!5878 = !DILocation(line: 139, column: 14, scope: !5843)
!5879 = !DILocation(line: 139, column: 22, scope: !5843)
!5880 = !DILocation(line: 139, column: 27, scope: !5843)
!5881 = !DILocation(line: 139, column: 7, scope: !5843)
!5882 = !DILocation(line: 140, column: 2, scope: !5843)
!5883 = !DILocation(line: 140, column: 13, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 140, column: 13)
!5885 = !DILocation(line: 140, column: 17, scope: !5884)
!5886 = !DILocation(line: 140, column: 23, scope: !5884)
!5887 = !DILocation(line: 140, column: 13, scope: !5838)
!5888 = !DILocalVariable(name: "ppb", scope: !5889, file: !3, line: 141, type: !167)
!5889 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 140, column: 40)
!5890 = !DILocation(line: 141, column: 7, scope: !5889)
!5891 = !DILocation(line: 141, column: 31, scope: !5889)
!5892 = !DILocation(line: 141, column: 35, scope: !5889)
!5893 = !DILocation(line: 141, column: 13, scope: !5889)
!5894 = !DILocation(line: 142, column: 7, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 142, column: 7)
!5896 = !DILocation(line: 142, column: 13, scope: !5895)
!5897 = !DILocation(line: 142, column: 18, scope: !5895)
!5898 = !DILocation(line: 142, column: 11, scope: !5895)
!5899 = !DILocation(line: 142, column: 26, scope: !5895)
!5900 = !DILocation(line: 142, column: 29, scope: !5895)
!5901 = !DILocation(line: 142, column: 36, scope: !5895)
!5902 = !DILocation(line: 142, column: 41, scope: !5895)
!5903 = !DILocation(line: 142, column: 35, scope: !5895)
!5904 = !DILocation(line: 142, column: 33, scope: !5895)
!5905 = !DILocation(line: 142, column: 7, scope: !5889)
!5906 = !DILocation(line: 143, column: 4, scope: !5895)
!5907 = !DILocation(line: 144, column: 7, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 144, column: 7)
!5909 = !DILocation(line: 144, column: 12, scope: !5908)
!5910 = !DILocation(line: 144, column: 7, scope: !5889)
!5911 = !DILocation(line: 145, column: 10, scope: !5908)
!5912 = !DILocation(line: 145, column: 15, scope: !5908)
!5913 = !DILocation(line: 145, column: 23, scope: !5908)
!5914 = !DILocation(line: 145, column: 28, scope: !5908)
!5915 = !DILocation(line: 145, column: 32, scope: !5908)
!5916 = !DILocation(line: 145, column: 8, scope: !5908)
!5917 = !DILocation(line: 145, column: 4, scope: !5908)
!5918 = !DILocation(line: 147, column: 10, scope: !5908)
!5919 = !DILocation(line: 147, column: 15, scope: !5908)
!5920 = !DILocation(line: 147, column: 23, scope: !5908)
!5921 = !DILocation(line: 147, column: 28, scope: !5908)
!5922 = !DILocation(line: 147, column: 8, scope: !5908)
!5923 = !DILocation(line: 148, column: 27, scope: !5889)
!5924 = !DILocation(line: 148, column: 31, scope: !5889)
!5925 = !DILocation(line: 148, column: 3, scope: !5889)
!5926 = !DILocation(line: 148, column: 8, scope: !5889)
!5927 = !DILocation(line: 148, column: 25, scope: !5889)
!5928 = !DILocation(line: 149, column: 2, scope: !5889)
!5929 = !DILocation(line: 149, column: 13, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 149, column: 13)
!5931 = !DILocation(line: 149, column: 17, scope: !5930)
!5932 = !DILocation(line: 149, column: 23, scope: !5930)
!5933 = !DILocation(line: 149, column: 13, scope: !5884)
!5934 = !DILocation(line: 150, column: 7, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 150, column: 7)
!5936 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 149, column: 37)
!5937 = !DILocation(line: 150, column: 12, scope: !5935)
!5938 = !DILocation(line: 150, column: 7, scope: !5936)
!5939 = !DILocalVariable(name: "offset", scope: !5940, file: !3, line: 151, type: !167)
!5940 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 150, column: 22)
!5941 = !DILocation(line: 151, column: 8, scope: !5940)
!5942 = !DILocation(line: 151, column: 17, scope: !5940)
!5943 = !DILocation(line: 151, column: 21, scope: !5940)
!5944 = !DILocation(line: 153, column: 10, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 153, column: 8)
!5946 = !DILocation(line: 153, column: 14, scope: !5945)
!5947 = !DILocation(line: 153, column: 20, scope: !5945)
!5948 = !DILocation(line: 153, column: 8, scope: !5940)
!5949 = !DILocation(line: 154, column: 12, scope: !5945)
!5950 = !DILocation(line: 154, column: 5, scope: !5945)
!5951 = !DILocation(line: 156, column: 10, scope: !5940)
!5952 = !DILocation(line: 156, column: 15, scope: !5940)
!5953 = !DILocation(line: 156, column: 24, scope: !5940)
!5954 = !DILocation(line: 156, column: 29, scope: !5940)
!5955 = !DILocation(line: 156, column: 8, scope: !5940)
!5956 = !DILocation(line: 157, column: 3, scope: !5940)
!5957 = !DILocation(line: 158, column: 2, scope: !5936)
!5958 = !DILocation(line: 158, column: 13, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 158, column: 13)
!5960 = !DILocation(line: 158, column: 17, scope: !5959)
!5961 = !DILocation(line: 158, column: 23, scope: !5959)
!5962 = !DILocation(line: 158, column: 13, scope: !5930)
!5963 = !DILocation(line: 159, column: 14, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 158, column: 29)
!5965 = !DILocation(line: 159, column: 19, scope: !5964)
!5966 = !DILocation(line: 159, column: 3, scope: !5964)
!5967 = !DILocation(line: 159, column: 7, scope: !5964)
!5968 = !DILocation(line: 159, column: 12, scope: !5964)
!5969 = !DILocation(line: 160, column: 7, scope: !5964)
!5970 = !DILocation(line: 161, column: 2, scope: !5964)
!5971 = !DILocation(line: 163, column: 9, scope: !5818)
!5972 = !DILocation(line: 163, column: 2, scope: !5818)
!5973 = !DILocation(line: 164, column: 1, scope: !5818)
!5974 = distinct !DISubprogram(name: "ptp_clock_gettime", scope: !3, file: !3, line: 103, type: !225, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!5975 = !DILocalVariable(name: "pc", arg: 1, scope: !5974, file: !3, line: 103, type: !192)
!5976 = !DILocation(line: 103, column: 50, scope: !5974)
!5977 = !DILocalVariable(name: "tp", arg: 2, scope: !5974, file: !3, line: 103, type: !227)
!5978 = !DILocation(line: 103, column: 73, scope: !5974)
!5979 = !DILocalVariable(name: "ptp", scope: !5974, file: !3, line: 105, type: !173)
!5980 = !DILocation(line: 105, column: 20, scope: !5974)
!5981 = !DILocalVariable(name: "__mptr", scope: !5982, file: !3, line: 105, type: !172)
!5982 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 105, column: 26)
!5983 = !DILocation(line: 105, column: 26, scope: !5982)
!5984 = !DILocation(line: 105, column: 26, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 105, column: 26)
!5986 = !DILocalVariable(name: "err", scope: !5974, file: !3, line: 106, type: !65)
!5987 = !DILocation(line: 106, column: 6, scope: !5974)
!5988 = !DILocation(line: 108, column: 6, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 108, column: 6)
!5990 = !DILocation(line: 108, column: 11, scope: !5989)
!5991 = !DILocation(line: 108, column: 17, scope: !5989)
!5992 = !DILocation(line: 108, column: 6, scope: !5974)
!5993 = !DILocation(line: 109, column: 9, scope: !5989)
!5994 = !DILocation(line: 109, column: 14, scope: !5989)
!5995 = !DILocation(line: 109, column: 20, scope: !5989)
!5996 = !DILocation(line: 109, column: 31, scope: !5989)
!5997 = !DILocation(line: 109, column: 36, scope: !5989)
!5998 = !DILocation(line: 109, column: 42, scope: !5989)
!5999 = !DILocation(line: 109, column: 7, scope: !5989)
!6000 = !DILocation(line: 109, column: 3, scope: !5989)
!6001 = !DILocation(line: 111, column: 9, scope: !5989)
!6002 = !DILocation(line: 111, column: 14, scope: !5989)
!6003 = !DILocation(line: 111, column: 20, scope: !5989)
!6004 = !DILocation(line: 111, column: 30, scope: !5989)
!6005 = !DILocation(line: 111, column: 35, scope: !5989)
!6006 = !DILocation(line: 111, column: 41, scope: !5989)
!6007 = !DILocation(line: 111, column: 7, scope: !5989)
!6008 = !DILocation(line: 112, column: 9, scope: !5974)
!6009 = !DILocation(line: 112, column: 2, scope: !5974)
!6010 = distinct !DISubprogram(name: "ptp_clock_getres", scope: !3, file: !3, line: 89, type: !225, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6011 = !DILocalVariable(name: "pc", arg: 1, scope: !6010, file: !3, line: 89, type: !192)
!6012 = !DILocation(line: 89, column: 49, scope: !6010)
!6013 = !DILocalVariable(name: "tp", arg: 2, scope: !6010, file: !3, line: 89, type: !227)
!6014 = !DILocation(line: 89, column: 72, scope: !6010)
!6015 = !DILocation(line: 91, column: 2, scope: !6010)
!6016 = !DILocation(line: 91, column: 6, scope: !6010)
!6017 = !DILocation(line: 91, column: 13, scope: !6010)
!6018 = !DILocation(line: 92, column: 2, scope: !6010)
!6019 = !DILocation(line: 92, column: 6, scope: !6010)
!6020 = !DILocation(line: 92, column: 14, scope: !6010)
!6021 = !DILocation(line: 93, column: 2, scope: !6010)
!6022 = distinct !DISubprogram(name: "ptp_clock_settime", scope: !3, file: !3, line: 96, type: !238, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6023 = !DILocalVariable(name: "pc", arg: 1, scope: !6022, file: !3, line: 96, type: !192)
!6024 = !DILocation(line: 96, column: 50, scope: !6022)
!6025 = !DILocalVariable(name: "tp", arg: 2, scope: !6022, file: !3, line: 96, type: !240)
!6026 = !DILocation(line: 96, column: 79, scope: !6022)
!6027 = !DILocalVariable(name: "ptp", scope: !6022, file: !3, line: 98, type: !173)
!6028 = !DILocation(line: 98, column: 20, scope: !6022)
!6029 = !DILocalVariable(name: "__mptr", scope: !6030, file: !3, line: 98, type: !172)
!6030 = distinct !DILexicalBlock(scope: !6022, file: !3, line: 98, column: 26)
!6031 = !DILocation(line: 98, column: 26, scope: !6030)
!6032 = !DILocation(line: 98, column: 26, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6030, file: !3, line: 98, column: 26)
!6034 = !DILocation(line: 100, column: 10, scope: !6022)
!6035 = !DILocation(line: 100, column: 15, scope: !6022)
!6036 = !DILocation(line: 100, column: 21, scope: !6022)
!6037 = !DILocation(line: 100, column: 31, scope: !6022)
!6038 = !DILocation(line: 100, column: 36, scope: !6022)
!6039 = !DILocation(line: 100, column: 42, scope: !6022)
!6040 = !DILocation(line: 100, column: 2, scope: !6022)
!6041 = distinct !DISubprogram(name: "timespec64_to_ktime", scope: !1264, file: !1264, line: 71, type: !6042, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6042 = !DISubroutineType(types: !6043)
!6043 = !{!1263, !228}
!6044 = !DILocalVariable(name: "ts", arg: 1, scope: !6041, file: !1264, line: 71, type: !228)
!6045 = !DILocation(line: 71, column: 61, scope: !6041)
!6046 = !DILocation(line: 73, column: 22, scope: !6041)
!6047 = !DILocation(line: 73, column: 33, scope: !6041)
!6048 = !DILocation(line: 73, column: 9, scope: !6041)
!6049 = !DILocation(line: 73, column: 2, scope: !6041)
!6050 = distinct !DISubprogram(name: "ktime_to_ns", scope: !1264, file: !1264, line: 80, type: !6051, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6051 = !DISubroutineType(types: !6052)
!6052 = !{!647, !6053}
!6053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!6054 = !DILocalVariable(name: "kt", arg: 1, scope: !6050, file: !1264, line: 80, type: !6053)
!6055 = !DILocation(line: 80, column: 45, scope: !6050)
!6056 = !DILocation(line: 82, column: 9, scope: !6050)
!6057 = !DILocation(line: 82, column: 2, scope: !6050)
!6058 = distinct !DISubprogram(name: "ktime_set", scope: !1264, file: !1264, line: 38, type: !6059, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!1263, !6061, !3665}
!6061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!6062 = !DILocalVariable(name: "secs", arg: 1, scope: !6058, file: !1264, line: 38, type: !6061)
!6063 = !DILocation(line: 38, column: 43, scope: !6058)
!6064 = !DILocalVariable(name: "nsecs", arg: 2, scope: !6058, file: !1264, line: 38, type: !3665)
!6065 = !DILocation(line: 38, column: 69, scope: !6058)
!6066 = !DILocation(line: 40, column: 6, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6058, file: !1264, line: 40, column: 6)
!6068 = !DILocation(line: 40, column: 6, scope: !6058)
!6069 = !DILocation(line: 41, column: 3, scope: !6067)
!6070 = !DILocation(line: 43, column: 9, scope: !6058)
!6071 = !DILocation(line: 43, column: 14, scope: !6058)
!6072 = !DILocation(line: 43, column: 36, scope: !6058)
!6073 = !DILocation(line: 43, column: 29, scope: !6058)
!6074 = !DILocation(line: 43, column: 2, scope: !6058)
!6075 = !DILocation(line: 44, column: 1, scope: !6058)
!6076 = distinct !DISubprogram(name: "div_u64_rem", scope: !6077, file: !6077, line: 25, type: !6078, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6077 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!6078 = !DISubroutineType(types: !6079)
!6079 = !{!324, !324, !321, !1378}
!6080 = !DILocalVariable(name: "dividend", arg: 1, scope: !6076, file: !6077, line: 25, type: !324)
!6081 = !DILocation(line: 25, column: 35, scope: !6076)
!6082 = !DILocalVariable(name: "divisor", arg: 2, scope: !6076, file: !6077, line: 25, type: !321)
!6083 = !DILocation(line: 25, column: 49, scope: !6076)
!6084 = !DILocalVariable(name: "remainder", arg: 3, scope: !6076, file: !6077, line: 25, type: !1378)
!6085 = !DILocation(line: 25, column: 63, scope: !6076)
!6086 = !DILocation(line: 27, column: 15, scope: !6076)
!6087 = !DILocation(line: 27, column: 26, scope: !6076)
!6088 = !DILocation(line: 27, column: 24, scope: !6076)
!6089 = !DILocation(line: 27, column: 3, scope: !6076)
!6090 = !DILocation(line: 27, column: 13, scope: !6076)
!6091 = !DILocation(line: 28, column: 9, scope: !6076)
!6092 = !DILocation(line: 28, column: 20, scope: !6076)
!6093 = !DILocation(line: 28, column: 18, scope: !6076)
!6094 = !DILocation(line: 28, column: 2, scope: !6076)
!6095 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6096, file: !6096, line: 666, type: !6097, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6096 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6097 = !DISubroutineType(types: !6098)
!6098 = !{!246}
!6099 = !DILocalVariable(name: "f", scope: !6095, file: !6096, line: 668, type: !246)
!6100 = !DILocation(line: 668, column: 16, scope: !6095)
!6101 = !DILocation(line: 670, column: 6, scope: !6095)
!6102 = !DILocation(line: 670, column: 4, scope: !6095)
!6103 = !DILocation(line: 671, column: 2, scope: !6095)
!6104 = !DILocation(line: 672, column: 9, scope: !6095)
!6105 = !DILocation(line: 672, column: 2, scope: !6095)
!6106 = distinct !DISubprogram(name: "queue_free", scope: !3, file: !3, line: 36, type: !6107, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6107 = !DISubroutineType(types: !6108)
!6108 = !{!65, !5462}
!6109 = !DILocalVariable(name: "q", arg: 1, scope: !6106, file: !3, line: 36, type: !5462)
!6110 = !DILocation(line: 36, column: 60, scope: !6106)
!6111 = !DILocation(line: 38, column: 40, scope: !6106)
!6112 = !DILocation(line: 38, column: 30, scope: !6106)
!6113 = !DILocation(line: 38, column: 28, scope: !6106)
!6114 = !DILocation(line: 38, column: 43, scope: !6106)
!6115 = !DILocation(line: 38, column: 2, scope: !6106)
!6116 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6096, file: !6096, line: 646, type: !6097, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6117 = !DILocalVariable(name: "__ret", scope: !6118, file: !6096, line: 648, type: !246)
!6118 = distinct !DILexicalBlock(scope: !6116, file: !6096, line: 648, column: 9)
!6119 = !DILocation(line: 648, column: 9, scope: !6118)
!6120 = !DILocalVariable(name: "__edi", scope: !6118, file: !6096, line: 648, type: !246)
!6121 = !DILocalVariable(name: "__esi", scope: !6118, file: !6096, line: 648, type: !246)
!6122 = !DILocalVariable(name: "__edx", scope: !6118, file: !6096, line: 648, type: !246)
!6123 = !DILocalVariable(name: "__ecx", scope: !6118, file: !6096, line: 648, type: !246)
!6124 = !DILocalVariable(name: "__eax", scope: !6118, file: !6096, line: 648, type: !246)
!6125 = !DILocation(line: 648, column: 9, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6127, file: !6096, line: 648, column: 9)
!6127 = distinct !DILexicalBlock(scope: !6118, file: !6096, line: 648, column: 9)
!6128 = !{i32 -2145772198, i32 -2145769883, i32 -2145769649, i32 -2145769598, i32 -2145769570, i32 -2145769545, i32 -2145769861, i32 -2145769848, i32 -2145769410, i32 -2145769291, i32 -2145769756, i32 -2145769729, i32 -2145769701, i32 -2145769671}
!6129 = !DILocalVariable(name: "__mask", scope: !6130, file: !6096, line: 648, type: !246)
!6130 = distinct !DILexicalBlock(scope: !6126, file: !6096, line: 648, column: 9)
!6131 = !DILocation(line: 648, column: 9, scope: !6130)
!6132 = !DILocation(line: 648, column: 9, scope: !6127)
!6133 = !DILocation(line: 648, column: 2, scope: !6116)
!6134 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6096, file: !6096, line: 656, type: !2052, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6135 = !DILocalVariable(name: "__edi", scope: !6136, file: !6096, line: 658, type: !246)
!6136 = distinct !DILexicalBlock(scope: !6134, file: !6096, line: 658, column: 2)
!6137 = !DILocation(line: 658, column: 2, scope: !6136)
!6138 = !DILocalVariable(name: "__esi", scope: !6136, file: !6096, line: 658, type: !246)
!6139 = !DILocalVariable(name: "__edx", scope: !6136, file: !6096, line: 658, type: !246)
!6140 = !DILocalVariable(name: "__ecx", scope: !6136, file: !6096, line: 658, type: !246)
!6141 = !DILocalVariable(name: "__eax", scope: !6136, file: !6096, line: 658, type: !246)
!6142 = !{i32 -2145765104, i32 -2145764372, i32 -2145764138, i32 -2145764087, i32 -2145764059, i32 -2145764034, i32 -2145764350, i32 -2145764337, i32 -2145763899, i32 -2145763780, i32 -2145764245, i32 -2145764218, i32 -2145764190, i32 -2145764160}
!6143 = !DILocation(line: 659, column: 1, scope: !6134)
!6144 = distinct !DISubprogram(name: "queue_cnt", scope: !175, file: !175, line: 58, type: !6107, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6145 = !DILocalVariable(name: "q", arg: 1, scope: !6144, file: !175, line: 58, type: !5462)
!6146 = !DILocation(line: 58, column: 59, scope: !6144)
!6147 = !DILocalVariable(name: "cnt", scope: !6144, file: !175, line: 60, type: !65)
!6148 = !DILocation(line: 60, column: 6, scope: !6144)
!6149 = !DILocation(line: 60, column: 12, scope: !6144)
!6150 = !DILocation(line: 60, column: 15, scope: !6144)
!6151 = !DILocation(line: 60, column: 22, scope: !6144)
!6152 = !DILocation(line: 60, column: 25, scope: !6144)
!6153 = !DILocation(line: 60, column: 20, scope: !6144)
!6154 = !DILocation(line: 61, column: 9, scope: !6144)
!6155 = !DILocation(line: 61, column: 13, scope: !6144)
!6156 = !DILocation(line: 61, column: 40, scope: !6144)
!6157 = !DILocation(line: 61, column: 38, scope: !6144)
!6158 = !DILocation(line: 61, column: 46, scope: !6144)
!6159 = !DILocation(line: 61, column: 2, scope: !6144)
!6160 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6096, file: !6096, line: 651, type: !6161, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!6161 = !DISubroutineType(types: !6162)
!6162 = !{null, !246}
!6163 = !DILocalVariable(name: "f", arg: 1, scope: !6160, file: !6096, line: 651, type: !246)
!6164 = !DILocation(line: 651, column: 65, scope: !6160)
!6165 = !DILocalVariable(name: "__edi", scope: !6166, file: !6096, line: 653, type: !246)
!6166 = distinct !DILexicalBlock(scope: !6160, file: !6096, line: 653, column: 2)
!6167 = !DILocation(line: 653, column: 2, scope: !6166)
!6168 = !DILocalVariable(name: "__esi", scope: !6166, file: !6096, line: 653, type: !246)
!6169 = !DILocalVariable(name: "__edx", scope: !6166, file: !6096, line: 653, type: !246)
!6170 = !DILocalVariable(name: "__ecx", scope: !6166, file: !6096, line: 653, type: !246)
!6171 = !DILocalVariable(name: "__eax", scope: !6166, file: !6096, line: 653, type: !246)
!6172 = !{i32 -2145767731, i32 -2145766981, i32 -2145766747, i32 -2145766696, i32 -2145766668, i32 -2145766643, i32 -2145766959, i32 -2145766946, i32 -2145766508, i32 -2145766389, i32 -2145766854, i32 -2145766827, i32 -2145766799, i32 -2145766769}
!6173 = !DILocation(line: 654, column: 1, scope: !6160)
