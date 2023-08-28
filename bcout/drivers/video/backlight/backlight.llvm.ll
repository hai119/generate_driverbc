; ModuleID = '../bcout/drivers/video/backlight/backlight.llvm.bc'
source_filename = "drivers/video/backlight/backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall2.init\22, \22a\22\09"
module asm "__initcall_backlight_class_init2:\09\09\09"
module asm ".long\09backlight_class_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.18, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.18 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.63, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.63 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kref = type { %struct.refcount_struct }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.cgroup_namespace = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, {}*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, %struct.backlight_ops*, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*, %struct.fb_info*)* }
%struct.fb_info = type { %struct.atomic_t, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, %struct.fb_videomode*, %struct.backlight_device*, %struct.mutex, [128 x i8], %struct.delayed_work, %struct.fb_deferred_io*, %struct.fb_ops*, %struct.device*, %struct.device*, i32, %struct.fb_tile_ops*, %union.anon.65, i64, i8*, i32, i8*, i8*, %struct.apertures_struct*, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i64, i32, i32, i32, i32, i16, i16, i16, i32, i64, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, %struct.fb_videomode*, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct.fb_info*, i8*, i8*, i32)*, void (%struct.fb_info*, i8*, i8*, i32)* }
%struct.fb_cmap = type { i32, i32, i16*, i16*, i16*, i16* }
%struct.fb_videomode = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, void (%struct.fb_info*)*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.fb_tile_ops = type { void (%struct.fb_info*, %struct.fb_tilemap*)*, void (%struct.fb_info*, %struct.fb_tilearea*)*, void (%struct.fb_info*, %struct.fb_tilerect*)*, void (%struct.fb_info*, %struct.fb_tileblit*)*, void (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*)* }
%struct.fb_tilemap = type { i32, i32, i32, i32, i8* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }
%union.anon.65 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }
%struct.fb_event = type { %struct.fb_info*, i8* }

@backlight_device_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"&new_bd->update_lock\00", align 1
@backlight_device_register.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4397
@.str.2 = private unnamed_addr constant [18 x i8] c"&new_bd->ops_lock\00", align 1
@backlight_class = internal global %struct.class* null, align 8, !dbg !4436
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: invalid backlight type\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"drivers/video/backlight/backlight.c\00", align 1
@backlight_dev_list_mutex = internal global %struct.mutex zeroinitializer, align 8, !dbg !4428
@backlight_dev_list = internal global %struct.list_head zeroinitializer, align 8, !dbg !4426
@backlight_notifier = internal global %struct.blocking_notifier_head zeroinitializer, align 8, !dbg !4430
@__UNIQUE_ID___addressable_backlight_class_init258 = internal global i8* bitcast (i32 ()* @backlight_class_init to i8*), section ".discard.addressable", align 8, !dbg !4399
@__exitcall_backlight_class_exit = internal global void ()* @backlight_class_exit, section ".exitcall.exit", align 8, !dbg !4401
@__UNIQUE_ID_file259 = internal constant [49 x i8] c"backlight.file=drivers/video/backlight/backlight\00", section ".modinfo", align 1, !dbg !4406
@__UNIQUE_ID_license260 = internal constant [22 x i8] c"backlight.license=GPL\00", section ".modinfo", align 1, !dbg !4411
@__UNIQUE_ID_author261 = internal constant [86 x i8] c"backlight.author=Jamey Hicks <jamey.hicks@hp.com>, Andrew Zabolotny <zap@homelink.ru>\00", section ".modinfo", align 1, !dbg !4416
@__UNIQUE_ID_description262 = internal constant [61 x i8] c"backlight.description=Backlight Lowlevel Control Abstraction\00", section ".modinfo", align 1, !dbg !4421
@.str.6 = private unnamed_addr constant [13 x i8] c"SOURCE=sysfs\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"SOURCE=hotkey\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"SOURCE=unknown\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"actual_brightness\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@backlight_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4438
@.str.12 = private unnamed_addr constant [60 x i8] c"\014backlight: Unable to create backlight class; errno = %ld\0A\00", align 1
@bl_device_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @bl_device_group, %struct.attribute_group* null], align 16, !dbg !4447
@backlight_class_dev_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @backlight_suspend, i32 (%struct.device*)* @backlight_resume, i32 (%struct.device*)* @backlight_suspend, i32 (%struct.device*)* @backlight_resume, i32 (%struct.device*)* @backlight_suspend, i32 (%struct.device*)* @backlight_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !4488
@backlight_class_init.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4443
@.str.14 = private unnamed_addr constant [26 x i8] c"&backlight_dev_list_mutex\00", align 1
@backlight_class_init.__key.15 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4445
@.str.16 = private unnamed_addr constant [30 x i8] c"&(&backlight_notifier)->rwsem\00", align 1
@bl_device_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([7 x %struct.attribute*], [7 x %struct.attribute*]* @bl_device_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4450
@bl_device_attrs = internal global [7 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bl_power, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_brightness, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_actual_brightness, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_max_brightness, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_scale, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4452
@dev_attr_bl_power = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @bl_power_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bl_power_store }, align 8, !dbg !4457
@dev_attr_brightness = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @brightness_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @brightness_store }, align 8, !dbg !4471
@dev_attr_actual_brightness = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @actual_brightness_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4473
@dev_attr_max_brightness = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @max_brightness_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4475
@dev_attr_scale = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @scale_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4477
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4483
@.str.17 = private unnamed_addr constant [9 x i8] c"bl_power\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"max_brightness\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@backlight_scale_types = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)], align 16, !dbg !4479
@.str.24 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"non-linear\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@backlight_types = internal constant [4 x i8*] [i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)], align 16, !dbg !4485
@.str.28 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @backlight_class_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_backlight_class_init258 to i8*), i8* bitcast (void ()** @__exitcall_backlight_class_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file259, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license260, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__UNIQUE_ID_author261, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description262, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @backlight_device_set_brightness(%struct.backlight_device* %bd, i64 %brightness) #0 !dbg !4495 {
entry:
  %bd.addr = alloca %struct.backlight_device*, align 8
  %brightness.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  store i64 %brightness, i64* %brightness.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %brightness.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4502, metadata !DIExpression()), !dbg !4503
  store i32 -6, i32* %rc, align 4, !dbg !4503
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4504
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %0, i32 0, i32 2, !dbg !4505
  call void @mutex_lock(%struct.mutex* %ops_lock) #9, !dbg !4506
  %1 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4507
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %1, i32 0, i32 3, !dbg !4509
  %2 = load %struct.backlight_ops*, %struct.backlight_ops** %ops, align 8, !dbg !4509
  %tobool = icmp ne %struct.backlight_ops* %2, null, !dbg !4507
  br i1 %tobool, label %if.then, label %if.end6, !dbg !4510

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %brightness.addr, align 8, !dbg !4511
  %4 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4514
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %4, i32 0, i32 0, !dbg !4515
  %max_brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 1, !dbg !4516
  %5 = load i32, i32* %max_brightness, align 4, !dbg !4516
  %conv = sext i32 %5 to i64, !dbg !4514
  %cmp = icmp ugt i64 %3, %conv, !dbg !4517
  br i1 %cmp, label %if.then2, label %if.else, !dbg !4518

if.then2:                                         ; preds = %if.then
  store i32 -22, i32* %rc, align 4, !dbg !4519
  br label %if.end, !dbg !4520

if.else:                                          ; preds = %if.then
  store i32 0, i32* %tmp, align 4, !dbg !4521
  %6 = load i32, i32* %tmp, align 4, !dbg !4525
  %7 = load i64, i64* %brightness.addr, align 8, !dbg !4526
  %conv3 = trunc i64 %7 to i32, !dbg !4526
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4527
  %props4 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 0, !dbg !4528
  %brightness5 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props4, i32 0, i32 0, !dbg !4529
  store i32 %conv3, i32* %brightness5, align 8, !dbg !4530
  %9 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4531
  %call = call i32 @backlight_update_status(%struct.backlight_device* %9) #9, !dbg !4532
  store i32 %call, i32* %rc, align 4, !dbg !4533
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end6, !dbg !4534

if.end6:                                          ; preds = %if.end, %entry
  %10 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4535
  %ops_lock7 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 2, !dbg !4536
  call void @mutex_unlock(%struct.mutex* %ops_lock7) #9, !dbg !4537
  %11 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4538
  call void @backlight_generate_event(%struct.backlight_device* %11, i32 1) #9, !dbg !4539
  %12 = load i32, i32* %rc, align 4, !dbg !4540
  ret i32 %12, !dbg !4541
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @backlight_update_status(%struct.backlight_device* %bd) #0 !dbg !4542 {
entry:
  %bd.addr = alloca %struct.backlight_device*, align 8
  %ret = alloca i32, align 4
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !4543, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4545, metadata !DIExpression()), !dbg !4546
  store i32 -2, i32* %ret, align 4, !dbg !4546
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4547
  %update_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %0, i32 0, i32 1, !dbg !4548
  call void @mutex_lock(%struct.mutex* %update_lock) #9, !dbg !4549
  %1 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4550
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %1, i32 0, i32 3, !dbg !4552
  %2 = load %struct.backlight_ops*, %struct.backlight_ops** %ops, align 8, !dbg !4552
  %tobool = icmp ne %struct.backlight_ops* %2, null, !dbg !4550
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4553

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4554
  %ops1 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %3, i32 0, i32 3, !dbg !4555
  %4 = load %struct.backlight_ops*, %struct.backlight_ops** %ops1, align 8, !dbg !4555
  %update_status = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %4, i32 0, i32 1, !dbg !4556
  %5 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %update_status, align 8, !dbg !4556
  %tobool2 = icmp ne i32 (%struct.backlight_device*)* %5, null, !dbg !4554
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4557

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4558
  %ops3 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 3, !dbg !4559
  %7 = load %struct.backlight_ops*, %struct.backlight_ops** %ops3, align 8, !dbg !4559
  %update_status4 = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %7, i32 0, i32 1, !dbg !4560
  %8 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %update_status4, align 8, !dbg !4560
  %9 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4561
  %call = call i32 %8(%struct.backlight_device* %9) #9, !dbg !4558
  store i32 %call, i32* %ret, align 4, !dbg !4562
  br label %if.end, !dbg !4563

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4564
  %update_lock5 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 1, !dbg !4565
  call void @mutex_unlock(%struct.mutex* %update_lock5) #9, !dbg !4566
  %11 = load i32, i32* %ret, align 4, !dbg !4567
  ret i32 %11, !dbg !4568
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @backlight_generate_event(%struct.backlight_device* %bd, i32 %reason) #0 !dbg !4569 {
entry:
  %bd.addr = alloca %struct.backlight_device*, align 8
  %reason.addr = alloca i32, align 4
  %envp = alloca [2 x i8*], align 16
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  store i32 %reason, i32* %reason.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reason.addr, metadata !4574, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.declare(metadata [2 x i8*]* %envp, metadata !4576, metadata !DIExpression()), !dbg !4578
  %0 = load i32, i32* %reason.addr, align 4, !dbg !4579
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ], !dbg !4580

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* %envp, i64 0, i64 0, !dbg !4581
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %arrayidx, align 16, !dbg !4583
  br label %sw.epilog, !dbg !4584

sw.bb1:                                           ; preds = %entry
  %arrayidx2 = getelementptr [2 x i8*], [2 x i8*]* %envp, i64 0, i64 0, !dbg !4585
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %arrayidx2, align 16, !dbg !4586
  br label %sw.epilog, !dbg !4587

sw.default:                                       ; preds = %entry
  %arrayidx3 = getelementptr [2 x i8*], [2 x i8*]* %envp, i64 0, i64 0, !dbg !4588
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %arrayidx3, align 16, !dbg !4589
  br label %sw.epilog, !dbg !4590

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %arrayidx4 = getelementptr [2 x i8*], [2 x i8*]* %envp, i64 0, i64 1, !dbg !4591
  store i8* null, i8** %arrayidx4, align 8, !dbg !4592
  %1 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4593
  %dev = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %1, i32 0, i32 6, !dbg !4594
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !4595
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %envp, i64 0, i64 0, !dbg !4596
  %call = call i32 @kobject_uevent_env(%struct.kobject* %kobj, i32 2, i8** %arraydecay) #9, !dbg !4597
  %2 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4598
  %dev5 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %2, i32 0, i32 6, !dbg !4599
  %kobj6 = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 0, !dbg !4600
  call void @sysfs_notify(%struct.kobject* %kobj6, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !4601
  ret void, !dbg !4602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @backlight_force_update(%struct.backlight_device* %bd, i32 %reason) #0 !dbg !4603 {
entry:
  %bd.addr = alloca %struct.backlight_device*, align 8
  %reason.addr = alloca i32, align 4
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  store i32 %reason, i32* %reason.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reason.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4608
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %0, i32 0, i32 2, !dbg !4609
  call void @mutex_lock(%struct.mutex* %ops_lock) #9, !dbg !4610
  %1 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4611
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %1, i32 0, i32 3, !dbg !4613
  %2 = load %struct.backlight_ops*, %struct.backlight_ops** %ops, align 8, !dbg !4613
  %tobool = icmp ne %struct.backlight_ops* %2, null, !dbg !4611
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4614

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4615
  %ops1 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %3, i32 0, i32 3, !dbg !4616
  %4 = load %struct.backlight_ops*, %struct.backlight_ops** %ops1, align 8, !dbg !4616
  %get_brightness = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %4, i32 0, i32 2, !dbg !4617
  %5 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %get_brightness, align 8, !dbg !4617
  %tobool2 = icmp ne i32 (%struct.backlight_device*)* %5, null, !dbg !4615
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4618

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4619
  %ops3 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 3, !dbg !4620
  %7 = load %struct.backlight_ops*, %struct.backlight_ops** %ops3, align 8, !dbg !4620
  %get_brightness4 = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %7, i32 0, i32 2, !dbg !4621
  %8 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %get_brightness4, align 8, !dbg !4621
  %9 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4622
  %call = call i32 %8(%struct.backlight_device* %9) #9, !dbg !4619
  %10 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4623
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 0, !dbg !4624
  %brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 0, !dbg !4625
  store i32 %call, i32* %brightness, align 8, !dbg !4626
  br label %if.end, !dbg !4623

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4627
  %ops_lock5 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 2, !dbg !4628
  call void @mutex_unlock(%struct.mutex* %ops_lock5) #9, !dbg !4629
  %12 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !4630
  %13 = load i32, i32* %reason.addr, align 4, !dbg !4631
  call void @backlight_generate_event(%struct.backlight_device* %12, i32 %13) #9, !dbg !4632
  ret void, !dbg !4633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.backlight_device* @backlight_device_register(i8* %name, %struct.device* %parent, i8* %devdata, %struct.backlight_ops* %ops, %struct.backlight_properties* %props) #0 !dbg !2 {
entry:
  %retval = alloca %struct.backlight_device*, align 8
  %name.addr = alloca i8*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %devdata.addr = alloca i8*, align 8
  %ops.addr = alloca %struct.backlight_ops*, align 8
  %props.addr = alloca %struct.backlight_properties*, align 8
  %new_bd = alloca %struct.backlight_device*, align 8
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp35 = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  store i8* %devdata, i8** %devdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devdata.addr, metadata !4638, metadata !DIExpression()), !dbg !4639
  store %struct.backlight_ops* %ops, %struct.backlight_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_ops** %ops.addr, metadata !4640, metadata !DIExpression()), !dbg !4641
  store %struct.backlight_properties* %props, %struct.backlight_properties** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_properties** %props.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %new_bd, metadata !4644, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4646, metadata !DIExpression()), !dbg !4647
  store i32 0, i32* %tmp, align 4, !dbg !4648
  %0 = load i32, i32* %tmp, align 4, !dbg !4651
  %call = call i8* @kzalloc(i64 864, i32 3264) #9, !dbg !4652
  %1 = bitcast i8* %call to %struct.backlight_device*, !dbg !4652
  store %struct.backlight_device* %1, %struct.backlight_device** %new_bd, align 8, !dbg !4653
  %2 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4654
  %tobool = icmp ne %struct.backlight_device* %2, null, !dbg !4654
  br i1 %tobool, label %if.end, label %if.then, !dbg !4656

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4657
  %3 = bitcast i8* %call1 to %struct.backlight_device*, !dbg !4657
  store %struct.backlight_device* %3, %struct.backlight_device** %retval, align 8, !dbg !4658
  br label %return, !dbg !4658

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4659

do.body:                                          ; preds = %if.end
  %4 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4660
  %update_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %4, i32 0, i32 1, !dbg !4660
  call void @__mutex_init(%struct.mutex* %update_lock, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @backlight_device_register.__key) #9, !dbg !4660
  br label %do.end, !dbg !4660

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !4662

do.body2:                                         ; preds = %do.end
  %5 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4663
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 2, !dbg !4663
  call void @__mutex_init(%struct.mutex* %ops_lock, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @backlight_device_register.__key.1) #9, !dbg !4663
  br label %do.end3, !dbg !4663

do.end3:                                          ; preds = %do.body2
  %6 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !4665
  %7 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4666
  %dev = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 6, !dbg !4667
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 29, !dbg !4668
  store %struct.class* %6, %struct.class** %class, align 8, !dbg !4669
  %8 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4670
  %9 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4671
  %dev4 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 6, !dbg !4672
  %parent5 = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 1, !dbg !4673
  store %struct.device* %8, %struct.device** %parent5, align 8, !dbg !4674
  %10 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4675
  %dev6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 6, !dbg !4676
  %release = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 31, !dbg !4677
  store void (%struct.device*)* @bl_device_release, void (%struct.device*)** %release, align 8, !dbg !4678
  %11 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4679
  %dev7 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 6, !dbg !4680
  %12 = load i8*, i8** %name.addr, align 8, !dbg !4681
  %call8 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %12) #9, !dbg !4682
  %13 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4683
  %dev9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 6, !dbg !4684
  %14 = load i8*, i8** %devdata.addr, align 8, !dbg !4685
  call void @dev_set_drvdata(%struct.device* %dev9, i8* %14) #9, !dbg !4686
  %15 = load %struct.backlight_properties*, %struct.backlight_properties** %props.addr, align 8, !dbg !4687
  %tobool10 = icmp ne %struct.backlight_properties* %15, null, !dbg !4687
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !4689

if.then11:                                        ; preds = %do.end3
  %16 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4690
  %props12 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %16, i32 0, i32 0, !dbg !4692
  %17 = bitcast %struct.backlight_properties* %props12 to i8*, !dbg !4693
  %18 = load %struct.backlight_properties*, %struct.backlight_properties** %props.addr, align 8, !dbg !4694
  %19 = bitcast %struct.backlight_properties* %18 to i8*, !dbg !4693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 4 %19, i64 28, i1 false), !dbg !4693
  %20 = load %struct.backlight_properties*, %struct.backlight_properties** %props.addr, align 8, !dbg !4695
  %type = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %20, i32 0, i32 4, !dbg !4697
  %21 = load i32, i32* %type, align 4, !dbg !4697
  %cmp = icmp ule i32 %21, 0, !dbg !4698
  br i1 %cmp, label %if.then15, label %lor.lhs.false, !dbg !4699

lor.lhs.false:                                    ; preds = %if.then11
  %22 = load %struct.backlight_properties*, %struct.backlight_properties** %props.addr, align 8, !dbg !4700
  %type13 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %22, i32 0, i32 4, !dbg !4701
  %23 = load i32, i32* %type13, align 4, !dbg !4701
  %cmp14 = icmp uge i32 %23, 4, !dbg !4702
  br i1 %cmp14, label %if.then15, label %if.end44, !dbg !4703

if.then15:                                        ; preds = %lor.lhs.false, %if.then11
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4704, metadata !DIExpression()), !dbg !4707
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4707
  %24 = load i32, i32* %__ret_warn_on, align 4, !dbg !4708
  %tobool16 = icmp ne i32 %24, 0, !dbg !4708
  %lnot = xor i1 %tobool16, true, !dbg !4708
  %lnot17 = xor i1 %lnot, true, !dbg !4708
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !4708
  %conv = sext i32 %lnot.ext to i64, !dbg !4708
  %tobool18 = icmp ne i64 %conv, 0, !dbg !4708
  br i1 %tobool18, label %if.then19, label %if.end34, !dbg !4707

if.then19:                                        ; preds = %if.then15
  br label %do.body20, !dbg !4708

do.body20:                                        ; preds = %if.then19
  br label %do.body21, !dbg !4710

do.body21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !4712

do.end22:                                         ; preds = %do.body21
  %25 = load i8*, i8** %name.addr, align 8, !dbg !4710
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %25) #9, !dbg !4710
  br label %do.body23, !dbg !4710

do.body23:                                        ; preds = %do.end22
  br label %do.body24, !dbg !4714

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !4716

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !4714

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 420, i32 2313, i64 12) #10, !dbg !4718, !srcloc !4720
  br label %do.end27, !dbg !4718

do.end27:                                         ; preds = %do.body26
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 252) #10, !dbg !4721, !srcloc !4723
  br label %do.body28, !dbg !4714

do.body28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !4724

do.end29:                                         ; preds = %do.body28
  br label %do.end30, !dbg !4714

do.end30:                                         ; preds = %do.end29
  br label %do.body31, !dbg !4710

do.body31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !4726

do.end32:                                         ; preds = %do.body31
  br label %do.end33, !dbg !4710

do.end33:                                         ; preds = %do.end32
  br label %if.end34, !dbg !4710

if.end34:                                         ; preds = %do.end33, %if.then15
  %26 = load i32, i32* %__ret_warn_on, align 4, !dbg !4707
  %tobool36 = icmp ne i32 %26, 0, !dbg !4707
  %lnot37 = xor i1 %tobool36, true, !dbg !4707
  %lnot39 = xor i1 %lnot37, true, !dbg !4707
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !4707
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !4707
  store i64 %conv41, i64* %tmp35, align 8, !dbg !4708
  %27 = load i64, i64* %tmp35, align 8, !dbg !4707
  %28 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4728
  %props42 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %28, i32 0, i32 0, !dbg !4729
  %type43 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props42, i32 0, i32 4, !dbg !4730
  store i32 1, i32* %type43, align 8, !dbg !4731
  br label %if.end44, !dbg !4732

if.end44:                                         ; preds = %if.end34, %lor.lhs.false
  br label %if.end47, !dbg !4733

if.else:                                          ; preds = %do.end3
  %29 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4734
  %props45 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %29, i32 0, i32 0, !dbg !4736
  %type46 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props45, i32 0, i32 4, !dbg !4737
  store i32 1, i32* %type46, align 8, !dbg !4738
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end44
  %30 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4739
  %dev48 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %30, i32 0, i32 6, !dbg !4740
  %call49 = call i32 @device_register(%struct.device* %dev48) #9, !dbg !4741
  store i32 %call49, i32* %rc, align 4, !dbg !4742
  %31 = load i32, i32* %rc, align 4, !dbg !4743
  %tobool50 = icmp ne i32 %31, 0, !dbg !4743
  br i1 %tobool50, label %if.then51, label %if.end55, !dbg !4745

if.then51:                                        ; preds = %if.end47
  %32 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4746
  %dev52 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %32, i32 0, i32 6, !dbg !4748
  call void @put_device(%struct.device* %dev52) #9, !dbg !4749
  %33 = load i32, i32* %rc, align 4, !dbg !4750
  %conv53 = sext i32 %33 to i64, !dbg !4750
  %call54 = call i8* @ERR_PTR(i64 %conv53) #9, !dbg !4751
  %34 = bitcast i8* %call54 to %struct.backlight_device*, !dbg !4751
  store %struct.backlight_device* %34, %struct.backlight_device** %retval, align 8, !dbg !4752
  br label %return, !dbg !4752

if.end55:                                         ; preds = %if.end47
  %35 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4753
  %call56 = call i32 @backlight_register_fb(%struct.backlight_device* %35) #9, !dbg !4754
  store i32 %call56, i32* %rc, align 4, !dbg !4755
  %36 = load i32, i32* %rc, align 4, !dbg !4756
  %tobool57 = icmp ne i32 %36, 0, !dbg !4756
  br i1 %tobool57, label %if.then58, label %if.end62, !dbg !4758

if.then58:                                        ; preds = %if.end55
  %37 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4759
  %dev59 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %37, i32 0, i32 6, !dbg !4761
  call void @device_unregister(%struct.device* %dev59) #9, !dbg !4762
  %38 = load i32, i32* %rc, align 4, !dbg !4763
  %conv60 = sext i32 %38 to i64, !dbg !4763
  %call61 = call i8* @ERR_PTR(i64 %conv60) #9, !dbg !4764
  %39 = bitcast i8* %call61 to %struct.backlight_device*, !dbg !4764
  store %struct.backlight_device* %39, %struct.backlight_device** %retval, align 8, !dbg !4765
  br label %return, !dbg !4765

if.end62:                                         ; preds = %if.end55
  %40 = load %struct.backlight_ops*, %struct.backlight_ops** %ops.addr, align 8, !dbg !4766
  %41 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4767
  %ops63 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %41, i32 0, i32 3, !dbg !4768
  store %struct.backlight_ops* %40, %struct.backlight_ops** %ops63, align 8, !dbg !4769
  call void @mutex_lock(%struct.mutex* @backlight_dev_list_mutex) #9, !dbg !4770
  %42 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4771
  %entry64 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %42, i32 0, i32 5, !dbg !4772
  call void @list_add(%struct.list_head* %entry64, %struct.list_head* @backlight_dev_list) #9, !dbg !4773
  call void @mutex_unlock(%struct.mutex* @backlight_dev_list_mutex) #9, !dbg !4774
  %43 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4775
  %44 = bitcast %struct.backlight_device* %43 to i8*, !dbg !4775
  %call65 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* @backlight_notifier, i64 0, i8* %44) #9, !dbg !4776
  %45 = load %struct.backlight_device*, %struct.backlight_device** %new_bd, align 8, !dbg !4777
  store %struct.backlight_device* %45, %struct.backlight_device** %retval, align 8, !dbg !4778
  br label %return, !dbg !4778

return:                                           ; preds = %if.end62, %if.then58, %if.then51, %if.then
  %46 = load %struct.backlight_device*, %struct.backlight_device** %retval, align 8, !dbg !4779
  ret %struct.backlight_device* %46, !dbg !4779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4780 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4783, metadata !DIExpression()), !dbg !4787
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4793, metadata !DIExpression()), !dbg !4794
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4795, metadata !DIExpression()), !dbg !4796
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4797, metadata !DIExpression()), !dbg !4798
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4799, metadata !DIExpression()), !dbg !4803
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4805, metadata !DIExpression()), !dbg !4809
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4811, metadata !DIExpression()), !dbg !4815
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4820, metadata !DIExpression()), !dbg !4821
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4822, metadata !DIExpression()), !dbg !4823
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4824, metadata !DIExpression()), !dbg !4825
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4826, metadata !DIExpression()), !dbg !4827
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4828, metadata !DIExpression()), !dbg !4829
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4830, metadata !DIExpression()), !dbg !4831
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4832, metadata !DIExpression()), !dbg !4833
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4834, metadata !DIExpression()), !dbg !4835
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  %0 = load i64, i64* %size.addr, align 8, !dbg !4840
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4841
  %or = or i32 %1, 256, !dbg !4842
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4843
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4844
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4845

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4846
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4847
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4848

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4849
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4850
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4851
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4852
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4829
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4853
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4854
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4855
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4856
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4857
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4858
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4859
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4859
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4859
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4859
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4859
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4860
  br label %kmalloc.exit, !dbg !4860

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4861
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4862
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4862
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4864

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4865
  br label %kmalloc_index.exit.i, !dbg !4865

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4866
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4868
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4869

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4870
  br label %kmalloc_index.exit.i, !dbg !4870

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4871
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4873
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4874

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4875
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4876
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4877

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4878
  br label %kmalloc_index.exit.i, !dbg !4878

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4879
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4881
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4882

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4883
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4884
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4885

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4886
  br label %kmalloc_index.exit.i, !dbg !4886

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4887
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4889
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4890

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4891
  br label %kmalloc_index.exit.i, !dbg !4891

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4892
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4894
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4895

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4896
  br label %kmalloc_index.exit.i, !dbg !4896

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4897
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4899
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4900

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4901
  br label %kmalloc_index.exit.i, !dbg !4901

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4902
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4904
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4905

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4906
  br label %kmalloc_index.exit.i, !dbg !4906

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4907
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4909
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4910

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4911
  br label %kmalloc_index.exit.i, !dbg !4911

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4912
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4914
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4915

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4916
  br label %kmalloc_index.exit.i, !dbg !4916

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4917
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4919
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4920

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4921
  br label %kmalloc_index.exit.i, !dbg !4921

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4922
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4924
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4925

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4926
  br label %kmalloc_index.exit.i, !dbg !4926

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4927
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4929
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4930

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4931
  br label %kmalloc_index.exit.i, !dbg !4931

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4932
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4934
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4935

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4936
  br label %kmalloc_index.exit.i, !dbg !4936

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4937
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4939
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4940

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4941
  br label %kmalloc_index.exit.i, !dbg !4941

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4942
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4944
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4945

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4946
  br label %kmalloc_index.exit.i, !dbg !4946

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4947
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4949
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4950

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4951
  br label %kmalloc_index.exit.i, !dbg !4951

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4952
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4954
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4955

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4956
  br label %kmalloc_index.exit.i, !dbg !4956

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4957
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4959
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4960

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4961
  br label %kmalloc_index.exit.i, !dbg !4961

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4962
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4964
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4965

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4966
  br label %kmalloc_index.exit.i, !dbg !4966

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4967
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4969
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4970

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4971
  br label %kmalloc_index.exit.i, !dbg !4971

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4972
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4974
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4975

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4976
  br label %kmalloc_index.exit.i, !dbg !4976

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4977
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4979
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4980

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4981
  br label %kmalloc_index.exit.i, !dbg !4981

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4982
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4984
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4985

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4986
  br label %kmalloc_index.exit.i, !dbg !4986

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4987
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4989
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4990

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4991
  br label %kmalloc_index.exit.i, !dbg !4991

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4992
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4994
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4995

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4996
  br label %kmalloc_index.exit.i, !dbg !4996

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4997
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4999
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5000

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5001
  br label %kmalloc_index.exit.i, !dbg !5001

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5002
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5004
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5005

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5006
  br label %kmalloc_index.exit.i, !dbg !5006

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5007, !srcloc !5010
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 231) #10, !dbg !5011, !srcloc !5014
  unreachable, !dbg !5015

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5016
  store i32 %45, i32* %index.i, align 4, !dbg !5017
  %46 = load i32, i32* %index.i, align 4, !dbg !5018
  %tobool.i = icmp ne i32 %46, 0, !dbg !5018
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5020

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5021
  br label %kmalloc.exit, !dbg !5021

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5022
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5023
  %and.i.i = and i32 %48, 17, !dbg !5023
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5023
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5023
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5023
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5023
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5025

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5026
  br label %kmalloc_type.exit.i, !dbg !5026

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5027
  %and2.i.i = and i32 %49, 1, !dbg !5028
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5027
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5027
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5027
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5029
  br label %kmalloc_type.exit.i, !dbg !5029

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5030
  %idxprom.i = zext i32 %51 to i64, !dbg !5031
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5031
  %52 = load i32, i32* %index.i, align 4, !dbg !5032
  %idxprom6.i = zext i32 %52 to i64, !dbg !5031
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5031
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5031
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5033
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5034
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5035
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5036
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5037
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5037
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5037
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5037
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5037
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4798
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5038
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5039
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5040
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5041
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5042
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5043
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5044
  store i8* %62, i8** %retval.i, align 8, !dbg !5045
  br label %kmalloc.exit, !dbg !5045

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5046
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5047
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5048
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5048
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5048
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5048
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5048
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5049
  br label %kmalloc.exit, !dbg !5049

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5050
  ret i8* %65, !dbg !5051
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5052 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  %0 = load i64, i64* %error.addr, align 8, !dbg !5058
  %1 = inttoptr i64 %0 to i8*, !dbg !5059
  ret i8* %1, !dbg !5060
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bl_device_release(%struct.device* %dev) #0 !dbg !5061 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !5064, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5066, metadata !DIExpression()), !dbg !5068
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5068
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5068
  store i8* %1, i8** %__mptr, align 8, !dbg !5068
  br label %do.body, !dbg !5068

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5069

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5068
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !5068
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !5068
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !5069
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !5068
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !5065
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5071
  %6 = bitcast %struct.backlight_device* %5 to i8*, !dbg !5071
  call void @kfree(i8* %6) #9, !dbg !5072
  ret void, !dbg !5073
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5074 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5077, metadata !DIExpression()), !dbg !5078
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5081
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5082
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5083
  store i8* %0, i8** %driver_data, align 8, !dbg !5084
  ret void, !dbg !5085
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @backlight_register_fb(%struct.backlight_device* %bd) #0 !dbg !5086 {
entry:
  %bd.addr = alloca %struct.backlight_device*, align 8
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5089
  %fb_notif = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %0, i32 0, i32 4, !dbg !5090
  %1 = bitcast %struct.notifier_block* %fb_notif to i8*, !dbg !5091
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 24, i1 false), !dbg !5091
  %2 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5092
  %fb_notif1 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %2, i32 0, i32 4, !dbg !5093
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %fb_notif1, i32 0, i32 0, !dbg !5094
  store i32 (%struct.notifier_block*, i64, i8*)* @fb_notifier_callback, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8, !dbg !5095
  %3 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5096
  %fb_notif2 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %3, i32 0, i32 4, !dbg !5097
  %call = call i32 @fb_register_client(%struct.notifier_block* %fb_notif2) #9, !dbg !5098
  ret i32 %call, !dbg !5099
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5100 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5108
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5109
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5110
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !5111
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5111
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #9, !dbg !5112
  ret void, !dbg !5113
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head*, i64, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.backlight_device* @backlight_device_get_by_type(i32 %type) #0 !dbg !5114 {
entry:
  %type.addr = alloca i32, align 4
  %found = alloca i8, align 1
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp8 = alloca %struct.backlight_device*, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5117, metadata !DIExpression()), !dbg !5118
  call void @llvm.dbg.declare(metadata i8* %found, metadata !5119, metadata !DIExpression()), !dbg !5120
  store i8 0, i8* %found, align 1, !dbg !5120
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !5121, metadata !DIExpression()), !dbg !5122
  call void @mutex_lock(%struct.mutex* @backlight_dev_list_mutex) #9, !dbg !5123
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5124, metadata !DIExpression()), !dbg !5127
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @backlight_dev_list, i32 0, i32 0), align 8, !dbg !5127
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5127
  store i8* %1, i8** %__mptr, align 8, !dbg !5127
  br label %do.body, !dbg !5127

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5128

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5127
  %add.ptr = getelementptr i8, i8* %2, i64 -112, !dbg !5127
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !5127
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !5128
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !5127
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !5130
  br label %for.cond, !dbg !5130

for.cond:                                         ; preds = %do.end7, %do.end
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5131
  %entry1 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 5, !dbg !5131
  %cmp = icmp eq %struct.list_head* %entry1, @backlight_dev_list, !dbg !5131
  %lnot = xor i1 %cmp, true, !dbg !5131
  br i1 %lnot, label %for.body, label %for.end, !dbg !5130

for.body:                                         ; preds = %for.cond
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5133
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0, !dbg !5136
  %type2 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 4, !dbg !5137
  %7 = load i32, i32* %type2, align 8, !dbg !5137
  %8 = load i32, i32* %type.addr, align 4, !dbg !5138
  %cmp3 = icmp eq i32 %7, %8, !dbg !5139
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5140

if.then:                                          ; preds = %for.body
  store i8 1, i8* %found, align 1, !dbg !5141
  br label %for.end, !dbg !5143

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5144

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !5145, metadata !DIExpression()), !dbg !5147
  %9 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5147
  %entry5 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 5, !dbg !5147
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry5, i32 0, i32 0, !dbg !5147
  %10 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5147
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !5147
  store i8* %11, i8** %__mptr4, align 8, !dbg !5147
  br label %do.body6, !dbg !5147

do.body6:                                         ; preds = %for.inc
  br label %do.end7, !dbg !5148

do.end7:                                          ; preds = %do.body6
  %12 = load i8*, i8** %__mptr4, align 8, !dbg !5147
  %add.ptr9 = getelementptr i8, i8* %12, i64 -112, !dbg !5147
  %13 = bitcast i8* %add.ptr9 to %struct.backlight_device*, !dbg !5147
  store %struct.backlight_device* %13, %struct.backlight_device** %tmp8, align 8, !dbg !5148
  %14 = load %struct.backlight_device*, %struct.backlight_device** %tmp8, align 8, !dbg !5147
  store %struct.backlight_device* %14, %struct.backlight_device** %bd, align 8, !dbg !5131
  br label %for.cond, !dbg !5131, !llvm.loop !5150

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(%struct.mutex* @backlight_dev_list_mutex) #9, !dbg !5152
  %15 = load i8, i8* %found, align 1, !dbg !5153
  %tobool = trunc i8 %15 to i1, !dbg !5153
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5153

cond.true:                                        ; preds = %for.end
  %16 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5154
  br label %cond.end, !dbg !5153

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !5153

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.backlight_device* [ %16, %cond.true ], [ null, %cond.false ], !dbg !5153
  ret %struct.backlight_device* %cond, !dbg !5155
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.backlight_device* @backlight_device_get_by_name(i8* %name) #0 !dbg !5156 {
entry:
  %name.addr = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5159, metadata !DIExpression()), !dbg !5160
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5161, metadata !DIExpression()), !dbg !5162
  %0 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !5163
  %1 = load i8*, i8** %name.addr, align 8, !dbg !5164
  %call = call %struct.device* @class_find_device_by_name(%struct.class* %0, i8* %1) #9, !dbg !5165
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !5166
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5167
  %tobool = icmp ne %struct.device* %2, null, !dbg !5167
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5167

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5168, metadata !DIExpression()), !dbg !5170
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5170
  %4 = bitcast %struct.device* %3 to i8*, !dbg !5170
  store i8* %4, i8** %__mptr, align 8, !dbg !5170
  br label %do.body, !dbg !5170

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5171

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5170
  %add.ptr = getelementptr i8, i8* %5, i64 -128, !dbg !5170
  %6 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !5170
  store %struct.backlight_device* %6, %struct.backlight_device** %tmp, align 8, !dbg !5171
  %7 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !5170
  br label %cond.end, !dbg !5167

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5167

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.backlight_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !5167
  ret %struct.backlight_device* %cond, !dbg !5173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @class_find_device_by_name(%struct.class* %class, i8* %name) #0 !dbg !5174 {
entry:
  %class.addr = alloca %struct.class*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !5181
  %1 = load i8*, i8** %name.addr, align 8, !dbg !5182
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @device_match_name) #9, !dbg !5183
  ret %struct.device* %call, !dbg !5184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @backlight_device_unregister(%struct.backlight_device* %bd) #0 !dbg !5185 {
entry:
  %bd.addr = alloca %struct.backlight_device*, align 8
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !5188, metadata !DIExpression()), !dbg !5189
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5190
  %tobool = icmp ne %struct.backlight_device* %0, null, !dbg !5190
  br i1 %tobool, label %if.end, label %if.then, !dbg !5192

if.then:                                          ; preds = %entry
  br label %return, !dbg !5193

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @backlight_dev_list_mutex) #9, !dbg !5194
  %1 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5195
  %entry1 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %1, i32 0, i32 5, !dbg !5196
  call void @list_del(%struct.list_head* %entry1) #9, !dbg !5197
  call void @mutex_unlock(%struct.mutex* @backlight_dev_list_mutex) #9, !dbg !5198
  %2 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5199
  %3 = bitcast %struct.backlight_device* %2 to i8*, !dbg !5199
  %call = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* @backlight_notifier, i64 1, i8* %3) #9, !dbg !5200
  %4 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5201
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %4, i32 0, i32 2, !dbg !5202
  call void @mutex_lock(%struct.mutex* %ops_lock) #9, !dbg !5203
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5204
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 3, !dbg !5205
  store %struct.backlight_ops* null, %struct.backlight_ops** %ops, align 8, !dbg !5206
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5207
  %ops_lock2 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 2, !dbg !5208
  call void @mutex_unlock(%struct.mutex* %ops_lock2) #9, !dbg !5209
  %7 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5210
  call void @backlight_unregister_fb(%struct.backlight_device* %7) #9, !dbg !5211
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5212
  %dev = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 6, !dbg !5213
  call void @device_unregister(%struct.device* %dev) #9, !dbg !5214
  br label %return, !dbg !5215

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5216 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5221
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !5222
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5223
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5224
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5225
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5226
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5227
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5228
  ret void, !dbg !5229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @backlight_unregister_fb(%struct.backlight_device* %bd) #0 !dbg !5230 {
entry:
  %bd.addr = alloca %struct.backlight_device*, align 8
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !5231, metadata !DIExpression()), !dbg !5232
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5233
  %fb_notif = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %0, i32 0, i32 4, !dbg !5234
  %call = call i32 @fb_unregister_client(%struct.notifier_block* %fb_notif) #9, !dbg !5235
  ret void, !dbg !5236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @backlight_register_notifier(%struct.notifier_block* %nb) #0 !dbg !5237 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !5240, metadata !DIExpression()), !dbg !5241
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !5242
  %call = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* @backlight_notifier, %struct.notifier_block* %0) #9, !dbg !5243
  ret i32 %call, !dbg !5244
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @backlight_unregister_notifier(%struct.notifier_block* %nb) #0 !dbg !5245 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !5246, metadata !DIExpression()), !dbg !5247
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !5248
  %call = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* @backlight_notifier, %struct.notifier_block* %0) #9, !dbg !5249
  ret i32 %call, !dbg !5250
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.device* %dev, i8* %name, %struct.device* %parent, i8* %devdata, %struct.backlight_ops* %ops, %struct.backlight_properties* %props) #0 !dbg !5251 {
entry:
  %retval = alloca %struct.backlight_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %devdata.addr = alloca i8*, align 8
  %ops.addr = alloca %struct.backlight_ops*, align 8
  %props.addr = alloca %struct.backlight_properties*, align 8
  %ptr = alloca %struct.backlight_device**, align 8
  %backlight = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5256, metadata !DIExpression()), !dbg !5257
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !5258, metadata !DIExpression()), !dbg !5259
  store i8* %devdata, i8** %devdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devdata.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  store %struct.backlight_ops* %ops, %struct.backlight_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_ops** %ops.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store %struct.backlight_properties* %props, %struct.backlight_properties** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_properties** %props.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata %struct.backlight_device*** %ptr, metadata !5266, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %backlight, metadata !5268, metadata !DIExpression()), !dbg !5269
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_backlight_device_release, i64 8, i32 3264) #9, !dbg !5270
  %0 = bitcast i8* %call to %struct.backlight_device**, !dbg !5270
  store %struct.backlight_device** %0, %struct.backlight_device*** %ptr, align 8, !dbg !5271
  %1 = load %struct.backlight_device**, %struct.backlight_device*** %ptr, align 8, !dbg !5272
  %tobool = icmp ne %struct.backlight_device** %1, null, !dbg !5272
  br i1 %tobool, label %if.end, label %if.then, !dbg !5274

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #9, !dbg !5275
  %2 = bitcast i8* %call1 to %struct.backlight_device*, !dbg !5275
  store %struct.backlight_device* %2, %struct.backlight_device** %retval, align 8, !dbg !5276
  br label %return, !dbg !5276

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8, !dbg !5277
  %4 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !5278
  %5 = load i8*, i8** %devdata.addr, align 8, !dbg !5279
  %6 = load %struct.backlight_ops*, %struct.backlight_ops** %ops.addr, align 8, !dbg !5280
  %7 = load %struct.backlight_properties*, %struct.backlight_properties** %props.addr, align 8, !dbg !5281
  %call2 = call %struct.backlight_device* @backlight_device_register(i8* %3, %struct.device* %4, i8* %5, %struct.backlight_ops* %6, %struct.backlight_properties* %7) #9, !dbg !5282
  store %struct.backlight_device* %call2, %struct.backlight_device** %backlight, align 8, !dbg !5283
  %8 = load %struct.backlight_device*, %struct.backlight_device** %backlight, align 8, !dbg !5284
  %9 = bitcast %struct.backlight_device* %8 to i8*, !dbg !5284
  %call3 = call zeroext i1 @IS_ERR(i8* %9) #9, !dbg !5286
  br i1 %call3, label %if.else, label %if.then4, !dbg !5287

if.then4:                                         ; preds = %if.end
  %10 = load %struct.backlight_device*, %struct.backlight_device** %backlight, align 8, !dbg !5288
  %11 = load %struct.backlight_device**, %struct.backlight_device*** %ptr, align 8, !dbg !5290
  store %struct.backlight_device* %10, %struct.backlight_device** %11, align 8, !dbg !5291
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5292
  %13 = load %struct.backlight_device**, %struct.backlight_device*** %ptr, align 8, !dbg !5293
  %14 = bitcast %struct.backlight_device** %13 to i8*, !dbg !5293
  call void @devres_add(%struct.device* %12, i8* %14) #9, !dbg !5294
  br label %if.end5, !dbg !5295

if.else:                                          ; preds = %if.end
  %15 = load %struct.backlight_device**, %struct.backlight_device*** %ptr, align 8, !dbg !5296
  %16 = bitcast %struct.backlight_device** %15 to i8*, !dbg !5296
  call void @devres_free(i8* %16) #9, !dbg !5298
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %17 = load %struct.backlight_device*, %struct.backlight_device** %backlight, align 8, !dbg !5299
  store %struct.backlight_device* %17, %struct.backlight_device** %retval, align 8, !dbg !5300
  br label %return, !dbg !5300

return:                                           ; preds = %if.end5, %if.then
  %18 = load %struct.backlight_device*, %struct.backlight_device** %retval, align 8, !dbg !5301
  ret %struct.backlight_device* %18, !dbg !5301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !5302 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !5313
  %1 = load i64, i64* %size.addr, align 8, !dbg !5314
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5315
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #9, !dbg !5316
  ret i8* %call, !dbg !5317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_backlight_device_release(%struct.device* %dev, i8* %res) #0 !dbg !5318 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %backlight = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %backlight, metadata !5323, metadata !DIExpression()), !dbg !5324
  %0 = load i8*, i8** %res.addr, align 8, !dbg !5325
  %1 = bitcast i8* %0 to %struct.backlight_device**, !dbg !5326
  %2 = load %struct.backlight_device*, %struct.backlight_device** %1, align 8, !dbg !5327
  store %struct.backlight_device* %2, %struct.backlight_device** %backlight, align 8, !dbg !5324
  %3 = load %struct.backlight_device*, %struct.backlight_device** %backlight, align 8, !dbg !5328
  call void @backlight_device_unregister(%struct.backlight_device* %3) #9, !dbg !5329
  ret void, !dbg !5330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5331 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5336
  %1 = ptrtoint i8* %0 to i64, !dbg !5336
  %2 = inttoptr i64 %1 to i8*, !dbg !5336
  %3 = ptrtoint i8* %2 to i64, !dbg !5336
  %cmp = icmp uge i64 %3, -4095, !dbg !5336
  %lnot = xor i1 %cmp, true, !dbg !5336
  %lnot1 = xor i1 %lnot, true, !dbg !5336
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5336
  %conv = sext i32 %lnot.ext to i64, !dbg !5336
  %tobool = icmp ne i64 %conv, 0, !dbg !5336
  ret i1 %tobool, !dbg !5337
}

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_backlight_device_unregister(%struct.device* %dev, %struct.backlight_device* %bd) #0 !dbg !5338 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %bd.addr = alloca %struct.backlight_device*, align 8
  %rc = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !5343, metadata !DIExpression()), !dbg !5344
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5345, metadata !DIExpression()), !dbg !5346
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5347
  %1 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5348
  %2 = bitcast %struct.backlight_device* %1 to i8*, !dbg !5348
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_backlight_device_release, i32 (%struct.device*, i8*, i8*)* @devm_backlight_device_match, i8* %2) #9, !dbg !5349
  store i32 %call, i32* %rc, align 4, !dbg !5350
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5351, metadata !DIExpression()), !dbg !5353
  %3 = load i32, i32* %rc, align 4, !dbg !5353
  %tobool = icmp ne i32 %3, 0, !dbg !5353
  %lnot = xor i1 %tobool, true, !dbg !5353
  %lnot1 = xor i1 %lnot, true, !dbg !5353
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5353
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5353
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5354
  %tobool2 = icmp ne i32 %4, 0, !dbg !5354
  %lnot3 = xor i1 %tobool2, true, !dbg !5354
  %lnot5 = xor i1 %lnot3, true, !dbg !5354
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5354
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5354
  %tobool7 = icmp ne i64 %conv, 0, !dbg !5354
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5353

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5354

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !5356

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !5358

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !5356

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 643, i32 2305, i64 12) #10, !dbg !5360, !srcloc !5362
  br label %do.end10, !dbg !5360

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 256) #10, !dbg !5363, !srcloc !5365
  br label %do.body11, !dbg !5356

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !5366

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !5356

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !5356

if.end:                                           ; preds = %do.end13, %entry
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !5353
  %tobool14 = icmp ne i32 %5, 0, !dbg !5353
  %lnot15 = xor i1 %tobool14, true, !dbg !5353
  %lnot17 = xor i1 %lnot15, true, !dbg !5353
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5353
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !5353
  store i64 %conv19, i64* %tmp, align 8, !dbg !5354
  %6 = load i64, i64* %tmp, align 8, !dbg !5353
  ret void, !dbg !5368
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_backlight_device_match(%struct.device* %dev, i8* %res, i8* %data) #0 !dbg !5369 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %r = alloca %struct.backlight_device**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.declare(metadata %struct.backlight_device*** %r, metadata !5378, metadata !DIExpression()), !dbg !5379
  %0 = load i8*, i8** %res.addr, align 8, !dbg !5380
  %1 = bitcast i8* %0 to %struct.backlight_device**, !dbg !5380
  store %struct.backlight_device** %1, %struct.backlight_device*** %r, align 8, !dbg !5379
  %2 = load %struct.backlight_device**, %struct.backlight_device*** %r, align 8, !dbg !5381
  %3 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8, !dbg !5382
  %4 = load i8*, i8** %data.addr, align 8, !dbg !5383
  %5 = bitcast i8* %4 to %struct.backlight_device*, !dbg !5383
  %cmp = icmp eq %struct.backlight_device* %3, %5, !dbg !5384
  %conv = zext i1 %cmp to i32, !dbg !5384
  ret i32 %conv, !dbg !5385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.backlight_device* @of_find_backlight_by_node(%struct.device_node* %node) #0 !dbg !5386 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5389, metadata !DIExpression()), !dbg !5390
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5391, metadata !DIExpression()), !dbg !5392
  %0 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !5393
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !5394
  %2 = bitcast %struct.device_node* %1 to i8*, !dbg !5394
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @of_parent_match) #9, !dbg !5395
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !5396
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5397
  %tobool = icmp ne %struct.device* %3, null, !dbg !5397
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5397

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5398, metadata !DIExpression()), !dbg !5400
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5400
  %5 = bitcast %struct.device* %4 to i8*, !dbg !5400
  store i8* %5, i8** %__mptr, align 8, !dbg !5400
  br label %do.body, !dbg !5400

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5401

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !5400
  %add.ptr = getelementptr i8, i8* %6, i64 -128, !dbg !5400
  %7 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !5400
  store %struct.backlight_device* %7, %struct.backlight_device** %tmp, align 8, !dbg !5401
  %8 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !5400
  br label %cond.end, !dbg !5397

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5397

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.backlight_device* [ %8, %do.end ], [ null, %cond.false ], !dbg !5397
  ret %struct.backlight_device* %cond, !dbg !5403
}

; Function Attrs: noredzone
declare dso_local %struct.device* @class_find_device(%struct.class*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_parent_match(%struct.device* %dev, i8* %data) #0 !dbg !5404 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5411
  %parent = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 1, !dbg !5412
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5412
  %tobool = icmp ne %struct.device* %1, null, !dbg !5411
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5413

land.rhs:                                         ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5414
  %parent1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 1, !dbg !5415
  %3 = load %struct.device*, %struct.device** %parent1, align 8, !dbg !5415
  %of_node = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !5416
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5416
  %5 = load i8*, i8** %data.addr, align 8, !dbg !5417
  %6 = bitcast i8* %5 to %struct.device_node*, !dbg !5417
  %cmp = icmp eq %struct.device_node* %4, %6, !dbg !5418
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5419
  %land.ext = zext i1 %7 to i32, !dbg !5413
  ret i32 %land.ext, !dbg !5420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.backlight_device* @devm_of_find_backlight(%struct.device* %dev) #0 !dbg !5421 {
entry:
  %retval = alloca %struct.backlight_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !5426, metadata !DIExpression()), !dbg !5427
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5428, metadata !DIExpression()), !dbg !5429
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5430
  %call = call %struct.backlight_device* @of_find_backlight(%struct.device* %0) #9, !dbg !5431
  store %struct.backlight_device* %call, %struct.backlight_device** %bd, align 8, !dbg !5432
  %1 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5433
  %2 = bitcast %struct.backlight_device* %1 to i8*, !dbg !5433
  %call1 = call zeroext i1 @IS_ERR_OR_NULL(i8* %2) #9, !dbg !5435
  br i1 %call1, label %if.then, label %if.end, !dbg !5436

if.then:                                          ; preds = %entry
  %3 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5437
  store %struct.backlight_device* %3, %struct.backlight_device** %retval, align 8, !dbg !5438
  br label %return, !dbg !5438

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5439
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5440
  %6 = bitcast %struct.backlight_device* %5 to i8*, !dbg !5440
  %call2 = call i32 @devm_add_action(%struct.device* %4, void (i8*)* @devm_backlight_release, i8* %6) #9, !dbg !5441
  store i32 %call2, i32* %ret, align 4, !dbg !5442
  %7 = load i32, i32* %ret, align 4, !dbg !5443
  %tobool = icmp ne i32 %7, 0, !dbg !5443
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5445

if.then3:                                         ; preds = %if.end
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5446
  %dev4 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 6, !dbg !5448
  call void @put_device(%struct.device* %dev4) #9, !dbg !5449
  %9 = load i32, i32* %ret, align 4, !dbg !5450
  %conv = sext i32 %9 to i64, !dbg !5450
  %call5 = call i8* @ERR_PTR(i64 %conv) #9, !dbg !5451
  %10 = bitcast i8* %call5 to %struct.backlight_device*, !dbg !5451
  store %struct.backlight_device* %10, %struct.backlight_device** %retval, align 8, !dbg !5452
  br label %return, !dbg !5452

if.end6:                                          ; preds = %if.end
  %11 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5453
  store %struct.backlight_device* %11, %struct.backlight_device** %retval, align 8, !dbg !5454
  br label %return, !dbg !5454

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %12 = load %struct.backlight_device*, %struct.backlight_device** %retval, align 8, !dbg !5455
  ret %struct.backlight_device* %12, !dbg !5455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.backlight_device* @of_find_backlight(%struct.device* %dev) #0 !dbg !5456 {
entry:
  %retval = alloca %struct.backlight_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %np = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !5459, metadata !DIExpression()), !dbg !5460
  store %struct.backlight_device* null, %struct.backlight_device** %bd, align 8, !dbg !5460
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !5461, metadata !DIExpression()), !dbg !5462
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5463
  %tobool = icmp ne %struct.device* %0, null, !dbg !5463
  br i1 %tobool, label %if.end, label %if.then, !dbg !5465

if.then:                                          ; preds = %entry
  store %struct.backlight_device* null, %struct.backlight_device** %retval, align 8, !dbg !5466
  br label %return, !dbg !5466

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5467
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !5469
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5469
  %tobool1 = icmp ne %struct.device_node* %2, null, !dbg !5467
  br i1 %tobool1, label %if.then2, label %if.end18, !dbg !5470

if.then2:                                         ; preds = %if.end
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5471
  %of_node3 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !5473
  %4 = load %struct.device_node*, %struct.device_node** %of_node3, align 8, !dbg !5473
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 0) #9, !dbg !5474
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !5475
  %5 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5476
  %tobool4 = icmp ne %struct.device_node* %5, null, !dbg !5476
  br i1 %tobool4, label %if.then5, label %if.end17, !dbg !5478

if.then5:                                         ; preds = %if.then2
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5479
  %call6 = call %struct.backlight_device* @of_find_backlight_by_node(%struct.device_node* %6) #9, !dbg !5481
  store %struct.backlight_device* %call6, %struct.backlight_device** %bd, align 8, !dbg !5482
  %7 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5483
  call void @of_node_put(%struct.device_node* %7) #9, !dbg !5484
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5485
  %tobool7 = icmp ne %struct.backlight_device* %8, null, !dbg !5485
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !5487

if.then8:                                         ; preds = %if.then5
  %call9 = call i8* @ERR_PTR(i64 -517) #9, !dbg !5488
  %9 = bitcast i8* %call9 to %struct.backlight_device*, !dbg !5488
  store %struct.backlight_device* %9, %struct.backlight_device** %retval, align 8, !dbg !5489
  br label %return, !dbg !5489

if.end10:                                         ; preds = %if.then5
  %10 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5490
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 0, !dbg !5492
  %brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 0, !dbg !5493
  %11 = load i32, i32* %brightness, align 8, !dbg !5493
  %tobool11 = icmp ne i32 %11, 0, !dbg !5490
  br i1 %tobool11, label %if.end16, label %if.then12, !dbg !5494

if.then12:                                        ; preds = %if.end10
  %12 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5495
  %props13 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 0, !dbg !5496
  %max_brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props13, i32 0, i32 1, !dbg !5497
  %13 = load i32, i32* %max_brightness, align 4, !dbg !5497
  %14 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5498
  %props14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %14, i32 0, i32 0, !dbg !5499
  %brightness15 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props14, i32 0, i32 0, !dbg !5500
  store i32 %13, i32* %brightness15, align 8, !dbg !5501
  br label %if.end16, !dbg !5498

if.end16:                                         ; preds = %if.then12, %if.end10
  br label %if.end17, !dbg !5502

if.end17:                                         ; preds = %if.end16, %if.then2
  br label %if.end18, !dbg !5503

if.end18:                                         ; preds = %if.end17, %if.end
  %15 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5504
  store %struct.backlight_device* %15, %struct.backlight_device** %retval, align 8, !dbg !5505
  br label %return, !dbg !5505

return:                                           ; preds = %if.end18, %if.then8, %if.then
  %16 = load %struct.backlight_device*, %struct.backlight_device** %retval, align 8, !dbg !5506
  ret %struct.backlight_device* %16, !dbg !5506
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !5507 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5508, metadata !DIExpression()), !dbg !5509
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5510
  %tobool = icmp ne i8* %0, null, !dbg !5510
  %lnot = xor i1 %tobool, true, !dbg !5510
  %lnot1 = xor i1 %lnot, true, !dbg !5510
  %lnot2 = xor i1 %lnot1, true, !dbg !5510
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5510
  %conv = sext i32 %lnot.ext to i64, !dbg !5510
  %tobool3 = icmp ne i64 %conv, 0, !dbg !5510
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5511

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !5512
  %2 = ptrtoint i8* %1 to i64, !dbg !5512
  %3 = inttoptr i64 %2 to i8*, !dbg !5512
  %4 = ptrtoint i8* %3 to i64, !dbg !5512
  %cmp = icmp uge i64 %4, -4095, !dbg !5512
  %lnot5 = xor i1 %cmp, true, !dbg !5512
  %lnot7 = xor i1 %lnot5, true, !dbg !5512
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5512
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5512
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !5511
  br label %lor.end, !dbg !5511

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !5513
}

; Function Attrs: noredzone
declare dso_local i32 @devm_add_action(%struct.device*, void (i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_backlight_release(i8* %data) #0 !dbg !5514 {
entry:
  %data.addr = alloca i8*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !5517, metadata !DIExpression()), !dbg !5518
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5519
  %1 = bitcast i8* %0 to %struct.backlight_device*, !dbg !5519
  store %struct.backlight_device* %1, %struct.backlight_device** %bd, align 8, !dbg !5518
  %2 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5520
  %tobool = icmp ne %struct.backlight_device* %2, null, !dbg !5520
  br i1 %tobool, label %if.then, label %if.end, !dbg !5522

if.then:                                          ; preds = %entry
  %3 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5523
  %dev = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %3, i32 0, i32 6, !dbg !5524
  call void @put_device(%struct.device* %dev) #9, !dbg !5525
  br label %if.end, !dbg !5525

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5526
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @backlight_class_exit() #4 section ".exit.text" !dbg !5527 {
entry:
  %0 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !5528
  call void @class_destroy(%struct.class* %0) #9, !dbg !5529
  ret void, !dbg !5530
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @backlight_class_init() #4 section ".init.text" !dbg !4440 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  %call = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* @backlight_class_init.__key) #9, !dbg !5531
  store %struct.class* %call, %struct.class** %tmp, align 8, !dbg !5531
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !5531
  store %struct.class* %0, %struct.class** @backlight_class, align 8, !dbg !5533
  %1 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !5534
  %2 = bitcast %struct.class* %1 to i8*, !dbg !5534
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #9, !dbg !5536
  br i1 %call1, label %if.then, label %if.end, !dbg !5537

if.then:                                          ; preds = %entry
  %3 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !5538
  %4 = bitcast %struct.class* %3 to i8*, !dbg !5538
  %call2 = call i64 @PTR_ERR(i8* %4) #9, !dbg !5538
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i64 %call2) #13, !dbg !5538
  %5 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !5540
  %6 = bitcast %struct.class* %5 to i8*, !dbg !5540
  %call4 = call i64 @PTR_ERR(i8* %6) #9, !dbg !5541
  %conv = trunc i64 %call4 to i32, !dbg !5541
  store i32 %conv, i32* %retval, align 4, !dbg !5542
  br label %return, !dbg !5542

if.end:                                           ; preds = %entry
  %7 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !5543
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %7, i32 0, i32 3, !dbg !5544
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @bl_device_groups, i64 0, i64 0), %struct.attribute_group*** %dev_groups, align 8, !dbg !5545
  %8 = load %struct.class*, %struct.class** @backlight_class, align 8, !dbg !5546
  %pm = getelementptr inbounds %struct.class, %struct.class* %8, i32 0, i32 13, !dbg !5547
  store %struct.dev_pm_ops* @backlight_class_dev_pm_ops, %struct.dev_pm_ops** %pm, align 8, !dbg !5548
  call void @INIT_LIST_HEAD(%struct.list_head* @backlight_dev_list) #9, !dbg !5549
  br label %do.body, !dbg !5550

do.body:                                          ; preds = %if.end
  call void @__mutex_init(%struct.mutex* @backlight_dev_list_mutex, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), %struct.lock_class_key* @backlight_class_init.__key.13) #9, !dbg !5551
  br label %do.end, !dbg !5551

do.end:                                           ; preds = %do.body
  br label %do.body5, !dbg !5553

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !5554

do.body6:                                         ; preds = %do.body5
  call void @__init_rwsem(%struct.rw_semaphore* getelementptr inbounds (%struct.blocking_notifier_head, %struct.blocking_notifier_head* @backlight_notifier, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), %struct.lock_class_key* @backlight_class_init.__key.15) #9, !dbg !5556
  br label %do.end7, !dbg !5556

do.end7:                                          ; preds = %do.body6
  store %struct.notifier_block* null, %struct.notifier_block** getelementptr inbounds (%struct.blocking_notifier_head, %struct.blocking_notifier_head* @backlight_notifier, i32 0, i32 1), align 8, !dbg !5554
  br label %do.end8, !dbg !5554

do.end8:                                          ; preds = %do.end7
  store i32 0, i32* %retval, align 4, !dbg !5558
  br label %return, !dbg !5558

return:                                           ; preds = %do.end8, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5559
  ret i32 %9, !dbg !5559
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #2

; Function Attrs: noredzone
declare dso_local void @sysfs_notify(%struct.kobject*, i8*, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5560 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5564, metadata !DIExpression()), !dbg !5569
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5571, metadata !DIExpression()), !dbg !5572
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  %0 = load i64, i64* %size.addr, align 8, !dbg !5575
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5577
  br i1 %1, label %if.then, label %if.end447, !dbg !5578

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5579
  %tobool = icmp ne i64 %2, 0, !dbg !5579
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5582

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5583
  br label %return, !dbg !5583

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5584
  %cmp = icmp ult i64 %3, 4096, !dbg !5586
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5587

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5588
  br label %return, !dbg !5588

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub = sub i64 %4, 1, !dbg !5589
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5589
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5589

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub4 = sub i64 %6, 1, !dbg !5589
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5589
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5589

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub6 = sub i64 %8, 1, !dbg !5589
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5589
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5589

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5589

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub9 = sub i64 %9, 1, !dbg !5589
  %and = and i64 %sub9, -9223372036854775808, !dbg !5589
  %tobool10 = icmp ne i64 %and, 0, !dbg !5589
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5589

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5589

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub13 = sub i64 %10, 1, !dbg !5589
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5589
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5589
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5589

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5589

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub18 = sub i64 %11, 1, !dbg !5589
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5589
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5589
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5589

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5589

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub23 = sub i64 %12, 1, !dbg !5589
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5589
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5589
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5589

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5589

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub28 = sub i64 %13, 1, !dbg !5589
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5589
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5589
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5589

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5589

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub33 = sub i64 %14, 1, !dbg !5589
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5589
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5589
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5589

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5589

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub38 = sub i64 %15, 1, !dbg !5589
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5589
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5589
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5589

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5589

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub43 = sub i64 %16, 1, !dbg !5589
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5589
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5589
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5589

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5589

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub48 = sub i64 %17, 1, !dbg !5589
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5589
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5589
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5589

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5589

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub53 = sub i64 %18, 1, !dbg !5589
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5589
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5589
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5589

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5589

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub58 = sub i64 %19, 1, !dbg !5589
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5589
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5589
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5589

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5589

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub63 = sub i64 %20, 1, !dbg !5589
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5589
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5589
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5589

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5589

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub68 = sub i64 %21, 1, !dbg !5589
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5589
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5589
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5589

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5589

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub73 = sub i64 %22, 1, !dbg !5589
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5589
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5589
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5589

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5589

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub78 = sub i64 %23, 1, !dbg !5589
  %and79 = and i64 %sub78, 562949953421312, !dbg !5589
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5589
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5589

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5589

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub83 = sub i64 %24, 1, !dbg !5589
  %and84 = and i64 %sub83, 281474976710656, !dbg !5589
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5589
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5589

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5589

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub88 = sub i64 %25, 1, !dbg !5589
  %and89 = and i64 %sub88, 140737488355328, !dbg !5589
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5589
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5589

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5589

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub93 = sub i64 %26, 1, !dbg !5589
  %and94 = and i64 %sub93, 70368744177664, !dbg !5589
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5589
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5589

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5589

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub98 = sub i64 %27, 1, !dbg !5589
  %and99 = and i64 %sub98, 35184372088832, !dbg !5589
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5589
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5589

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5589

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub103 = sub i64 %28, 1, !dbg !5589
  %and104 = and i64 %sub103, 17592186044416, !dbg !5589
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5589
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5589

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5589

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub108 = sub i64 %29, 1, !dbg !5589
  %and109 = and i64 %sub108, 8796093022208, !dbg !5589
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5589
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5589

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5589

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub113 = sub i64 %30, 1, !dbg !5589
  %and114 = and i64 %sub113, 4398046511104, !dbg !5589
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5589
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5589

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5589

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub118 = sub i64 %31, 1, !dbg !5589
  %and119 = and i64 %sub118, 2199023255552, !dbg !5589
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5589
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5589

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5589

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub123 = sub i64 %32, 1, !dbg !5589
  %and124 = and i64 %sub123, 1099511627776, !dbg !5589
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5589
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5589

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5589

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub128 = sub i64 %33, 1, !dbg !5589
  %and129 = and i64 %sub128, 549755813888, !dbg !5589
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5589
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5589

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5589

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub133 = sub i64 %34, 1, !dbg !5589
  %and134 = and i64 %sub133, 274877906944, !dbg !5589
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5589
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5589

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5589

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub138 = sub i64 %35, 1, !dbg !5589
  %and139 = and i64 %sub138, 137438953472, !dbg !5589
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5589
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5589

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5589

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub143 = sub i64 %36, 1, !dbg !5589
  %and144 = and i64 %sub143, 68719476736, !dbg !5589
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5589
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5589

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5589

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub148 = sub i64 %37, 1, !dbg !5589
  %and149 = and i64 %sub148, 34359738368, !dbg !5589
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5589
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5589

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5589

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub153 = sub i64 %38, 1, !dbg !5589
  %and154 = and i64 %sub153, 17179869184, !dbg !5589
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5589
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5589

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5589

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub158 = sub i64 %39, 1, !dbg !5589
  %and159 = and i64 %sub158, 8589934592, !dbg !5589
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5589
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5589

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5589

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub163 = sub i64 %40, 1, !dbg !5589
  %and164 = and i64 %sub163, 4294967296, !dbg !5589
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5589
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5589

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5589

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub168 = sub i64 %41, 1, !dbg !5589
  %and169 = and i64 %sub168, 2147483648, !dbg !5589
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5589
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5589

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5589

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub173 = sub i64 %42, 1, !dbg !5589
  %and174 = and i64 %sub173, 1073741824, !dbg !5589
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5589
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5589

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5589

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub178 = sub i64 %43, 1, !dbg !5589
  %and179 = and i64 %sub178, 536870912, !dbg !5589
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5589
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5589

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5589

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub183 = sub i64 %44, 1, !dbg !5589
  %and184 = and i64 %sub183, 268435456, !dbg !5589
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5589
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5589

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5589

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub188 = sub i64 %45, 1, !dbg !5589
  %and189 = and i64 %sub188, 134217728, !dbg !5589
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5589
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5589

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5589

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub193 = sub i64 %46, 1, !dbg !5589
  %and194 = and i64 %sub193, 67108864, !dbg !5589
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5589
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5589

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5589

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub198 = sub i64 %47, 1, !dbg !5589
  %and199 = and i64 %sub198, 33554432, !dbg !5589
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5589
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5589

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5589

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub203 = sub i64 %48, 1, !dbg !5589
  %and204 = and i64 %sub203, 16777216, !dbg !5589
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5589
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5589

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5589

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub208 = sub i64 %49, 1, !dbg !5589
  %and209 = and i64 %sub208, 8388608, !dbg !5589
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5589
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5589

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5589

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub213 = sub i64 %50, 1, !dbg !5589
  %and214 = and i64 %sub213, 4194304, !dbg !5589
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5589
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5589

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5589

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub218 = sub i64 %51, 1, !dbg !5589
  %and219 = and i64 %sub218, 2097152, !dbg !5589
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5589
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5589

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5589

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub223 = sub i64 %52, 1, !dbg !5589
  %and224 = and i64 %sub223, 1048576, !dbg !5589
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5589
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5589

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5589

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub228 = sub i64 %53, 1, !dbg !5589
  %and229 = and i64 %sub228, 524288, !dbg !5589
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5589
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5589

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5589

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub233 = sub i64 %54, 1, !dbg !5589
  %and234 = and i64 %sub233, 262144, !dbg !5589
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5589
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5589

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5589

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub238 = sub i64 %55, 1, !dbg !5589
  %and239 = and i64 %sub238, 131072, !dbg !5589
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5589
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5589

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5589

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub243 = sub i64 %56, 1, !dbg !5589
  %and244 = and i64 %sub243, 65536, !dbg !5589
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5589
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5589

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5589

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub248 = sub i64 %57, 1, !dbg !5589
  %and249 = and i64 %sub248, 32768, !dbg !5589
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5589
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5589

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5589

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub253 = sub i64 %58, 1, !dbg !5589
  %and254 = and i64 %sub253, 16384, !dbg !5589
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5589
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5589

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5589

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub258 = sub i64 %59, 1, !dbg !5589
  %and259 = and i64 %sub258, 8192, !dbg !5589
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5589
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5589

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5589

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub263 = sub i64 %60, 1, !dbg !5589
  %and264 = and i64 %sub263, 4096, !dbg !5589
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5589
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5589

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5589

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub268 = sub i64 %61, 1, !dbg !5589
  %and269 = and i64 %sub268, 2048, !dbg !5589
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5589
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5589

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5589

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub273 = sub i64 %62, 1, !dbg !5589
  %and274 = and i64 %sub273, 1024, !dbg !5589
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5589
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5589

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5589

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub278 = sub i64 %63, 1, !dbg !5589
  %and279 = and i64 %sub278, 512, !dbg !5589
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5589
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5589

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5589

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub283 = sub i64 %64, 1, !dbg !5589
  %and284 = and i64 %sub283, 256, !dbg !5589
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5589
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5589

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5589

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub288 = sub i64 %65, 1, !dbg !5589
  %and289 = and i64 %sub288, 128, !dbg !5589
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5589
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5589

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5589

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub293 = sub i64 %66, 1, !dbg !5589
  %and294 = and i64 %sub293, 64, !dbg !5589
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5589
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5589

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5589

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub298 = sub i64 %67, 1, !dbg !5589
  %and299 = and i64 %sub298, 32, !dbg !5589
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5589
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5589

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5589

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub303 = sub i64 %68, 1, !dbg !5589
  %and304 = and i64 %sub303, 16, !dbg !5589
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5589
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5589

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5589

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub308 = sub i64 %69, 1, !dbg !5589
  %and309 = and i64 %sub308, 8, !dbg !5589
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5589
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5589

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5589

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub313 = sub i64 %70, 1, !dbg !5589
  %and314 = and i64 %sub313, 4, !dbg !5589
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5589
  %71 = zext i1 %tobool315 to i64, !dbg !5589
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5589
  br label %cond.end, !dbg !5589

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5589
  br label %cond.end317, !dbg !5589

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5589
  br label %cond.end319, !dbg !5589

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5589
  br label %cond.end321, !dbg !5589

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5589
  br label %cond.end323, !dbg !5589

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5589
  br label %cond.end325, !dbg !5589

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5589
  br label %cond.end327, !dbg !5589

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5589
  br label %cond.end329, !dbg !5589

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5589
  br label %cond.end331, !dbg !5589

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5589
  br label %cond.end333, !dbg !5589

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5589
  br label %cond.end335, !dbg !5589

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5589
  br label %cond.end337, !dbg !5589

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5589
  br label %cond.end339, !dbg !5589

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5589
  br label %cond.end341, !dbg !5589

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5589
  br label %cond.end343, !dbg !5589

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5589
  br label %cond.end345, !dbg !5589

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5589
  br label %cond.end347, !dbg !5589

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5589
  br label %cond.end349, !dbg !5589

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5589
  br label %cond.end351, !dbg !5589

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5589
  br label %cond.end353, !dbg !5589

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5589
  br label %cond.end355, !dbg !5589

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5589
  br label %cond.end357, !dbg !5589

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5589
  br label %cond.end359, !dbg !5589

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5589
  br label %cond.end361, !dbg !5589

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5589
  br label %cond.end363, !dbg !5589

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5589
  br label %cond.end365, !dbg !5589

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5589
  br label %cond.end367, !dbg !5589

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5589
  br label %cond.end369, !dbg !5589

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5589
  br label %cond.end371, !dbg !5589

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5589
  br label %cond.end373, !dbg !5589

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5589
  br label %cond.end375, !dbg !5589

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5589
  br label %cond.end377, !dbg !5589

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5589
  br label %cond.end379, !dbg !5589

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5589
  br label %cond.end381, !dbg !5589

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5589
  br label %cond.end383, !dbg !5589

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5589
  br label %cond.end385, !dbg !5589

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5589
  br label %cond.end387, !dbg !5589

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5589
  br label %cond.end389, !dbg !5589

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5589
  br label %cond.end391, !dbg !5589

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5589
  br label %cond.end393, !dbg !5589

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5589
  br label %cond.end395, !dbg !5589

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5589
  br label %cond.end397, !dbg !5589

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5589
  br label %cond.end399, !dbg !5589

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5589
  br label %cond.end401, !dbg !5589

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5589
  br label %cond.end403, !dbg !5589

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5589
  br label %cond.end405, !dbg !5589

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5589
  br label %cond.end407, !dbg !5589

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5589
  br label %cond.end409, !dbg !5589

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5589
  br label %cond.end411, !dbg !5589

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5589
  br label %cond.end413, !dbg !5589

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5589
  br label %cond.end415, !dbg !5589

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5589
  br label %cond.end417, !dbg !5589

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5589
  br label %cond.end419, !dbg !5589

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5589
  br label %cond.end421, !dbg !5589

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5589
  br label %cond.end423, !dbg !5589

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5589
  br label %cond.end425, !dbg !5589

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5589
  br label %cond.end427, !dbg !5589

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5589
  br label %cond.end429, !dbg !5589

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5589
  br label %cond.end431, !dbg !5589

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5589
  br label %cond.end433, !dbg !5589

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5589
  br label %cond.end435, !dbg !5589

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5589
  br label %cond.end437, !dbg !5589

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5589
  br label %cond.end440, !dbg !5589

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5589

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5589
  br label %cond.end444, !dbg !5589

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5589
  %sub443 = sub i64 %72, 1, !dbg !5589
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5589
  br label %cond.end444, !dbg !5589

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5589
  %sub446 = sub i32 %cond445, 12, !dbg !5590
  %add = add i32 %sub446, 1, !dbg !5591
  store i32 %add, i32* %retval, align 4, !dbg !5592
  br label %return, !dbg !5592

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5593
  %dec = add i64 %73, -1, !dbg !5593
  store i64 %dec, i64* %size.addr, align 8, !dbg !5593
  %74 = load i64, i64* %size.addr, align 8, !dbg !5594
  %shr = lshr i64 %74, 12, !dbg !5594
  store i64 %shr, i64* %size.addr, align 8, !dbg !5594
  %75 = load i64, i64* %size.addr, align 8, !dbg !5595
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5572
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5596
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5597
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5596, !srcloc !5598
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5596
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5599
  %add.i = add i32 %79, 1, !dbg !5600
  store i32 %add.i, i32* %retval, align 4, !dbg !5601
  br label %return, !dbg !5601

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5602
  ret i32 %80, !dbg !5602
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5603 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5564, metadata !DIExpression()), !dbg !5607
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5571, metadata !DIExpression()), !dbg !5609
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5610, metadata !DIExpression()), !dbg !5611
  %0 = load i64, i64* %n.addr, align 8, !dbg !5612
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5609
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5613
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5614
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5613, !srcloc !5598
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5613
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5615
  %add.i = add i32 %4, 1, !dbg !5616
  %sub = sub i32 %add.i, 1, !dbg !5617
  ret i32 %sub, !dbg !5618
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5619 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5631
  ret i8* %0, !dbg !5632
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_notifier_callback(%struct.notifier_block* %self, i64 %event, i8* %data) #0 !dbg !5633 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.notifier_block*, align 8
  %event.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %evdata = alloca %struct.fb_event*, align 8
  %node = alloca i32, align 4
  %fb_blank = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.notifier_block* %self, %struct.notifier_block** %self.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %self.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  store i64 %event, i64* %event.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %event.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata %struct.fb_event** %evdata, metadata !5642, metadata !DIExpression()), !dbg !5648
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5649
  %1 = bitcast i8* %0 to %struct.fb_event*, !dbg !5649
  store %struct.fb_event* %1, %struct.fb_event** %evdata, align 8, !dbg !5648
  call void @llvm.dbg.declare(metadata i32* %node, metadata !5650, metadata !DIExpression()), !dbg !5651
  %2 = load %struct.fb_event*, %struct.fb_event** %evdata, align 8, !dbg !5652
  %info = getelementptr inbounds %struct.fb_event, %struct.fb_event* %2, i32 0, i32 0, !dbg !5653
  %3 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5653
  %node1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 1, !dbg !5654
  %4 = load i32, i32* %node1, align 4, !dbg !5654
  store i32 %4, i32* %node, align 4, !dbg !5651
  call void @llvm.dbg.declare(metadata i32* %fb_blank, metadata !5655, metadata !DIExpression()), !dbg !5656
  store i32 0, i32* %fb_blank, align 4, !dbg !5656
  %5 = load i64, i64* %event.addr, align 8, !dbg !5657
  %cmp = icmp ne i64 %5, 9, !dbg !5659
  br i1 %cmp, label %if.then, label %if.end, !dbg !5660

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5661
  br label %return, !dbg !5661

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5662, metadata !DIExpression()), !dbg !5664
  %6 = load %struct.notifier_block*, %struct.notifier_block** %self.addr, align 8, !dbg !5664
  %7 = bitcast %struct.notifier_block* %6 to i8*, !dbg !5664
  store i8* %7, i8** %__mptr, align 8, !dbg !5664
  br label %do.body, !dbg !5664

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5665

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !5664
  %add.ptr = getelementptr i8, i8* %8, i64 -88, !dbg !5664
  %9 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !5664
  store %struct.backlight_device* %9, %struct.backlight_device** %tmp, align 8, !dbg !5665
  %10 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !5664
  store %struct.backlight_device* %10, %struct.backlight_device** %bd, align 8, !dbg !5667
  %11 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5668
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 2, !dbg !5669
  call void @mutex_lock(%struct.mutex* %ops_lock) #9, !dbg !5670
  %12 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5671
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 3, !dbg !5673
  %13 = load %struct.backlight_ops*, %struct.backlight_ops** %ops, align 8, !dbg !5673
  %tobool = icmp ne %struct.backlight_ops* %13, null, !dbg !5671
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5674

if.then2:                                         ; preds = %do.end
  br label %out, !dbg !5675

if.end3:                                          ; preds = %do.end
  %14 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5676
  %ops4 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %14, i32 0, i32 3, !dbg !5678
  %15 = load %struct.backlight_ops*, %struct.backlight_ops** %ops4, align 8, !dbg !5678
  %check_fb = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %15, i32 0, i32 3, !dbg !5679
  %16 = load i32 (%struct.backlight_device*, %struct.fb_info*)*, i32 (%struct.backlight_device*, %struct.fb_info*)** %check_fb, align 8, !dbg !5679
  %tobool5 = icmp ne i32 (%struct.backlight_device*, %struct.fb_info*)* %16, null, !dbg !5676
  br i1 %tobool5, label %land.lhs.true, label %if.end11, !dbg !5680

land.lhs.true:                                    ; preds = %if.end3
  %17 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5681
  %ops6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 3, !dbg !5682
  %18 = load %struct.backlight_ops*, %struct.backlight_ops** %ops6, align 8, !dbg !5682
  %check_fb7 = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %18, i32 0, i32 3, !dbg !5683
  %19 = load i32 (%struct.backlight_device*, %struct.fb_info*)*, i32 (%struct.backlight_device*, %struct.fb_info*)** %check_fb7, align 8, !dbg !5683
  %20 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5684
  %21 = load %struct.fb_event*, %struct.fb_event** %evdata, align 8, !dbg !5685
  %info8 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %21, i32 0, i32 0, !dbg !5686
  %22 = load %struct.fb_info*, %struct.fb_info** %info8, align 8, !dbg !5686
  %call = call i32 %19(%struct.backlight_device* %20, %struct.fb_info* %22) #9, !dbg !5681
  %tobool9 = icmp ne i32 %call, 0, !dbg !5681
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5687

if.then10:                                        ; preds = %land.lhs.true
  br label %out, !dbg !5688

if.end11:                                         ; preds = %land.lhs.true, %if.end3
  %23 = load %struct.fb_event*, %struct.fb_event** %evdata, align 8, !dbg !5689
  %data12 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %23, i32 0, i32 1, !dbg !5690
  %24 = load i8*, i8** %data12, align 8, !dbg !5690
  %25 = bitcast i8* %24 to i32*, !dbg !5691
  %26 = load i32, i32* %25, align 4, !dbg !5692
  store i32 %26, i32* %fb_blank, align 4, !dbg !5693
  %27 = load i32, i32* %fb_blank, align 4, !dbg !5694
  %cmp13 = icmp eq i32 %27, 0, !dbg !5696
  br i1 %cmp13, label %land.lhs.true14, label %if.else, !dbg !5697

land.lhs.true14:                                  ; preds = %if.end11
  %28 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5698
  %fb_bl_on = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %28, i32 0, i32 7, !dbg !5699
  %29 = load i32, i32* %node, align 4, !dbg !5700
  %idxprom = sext i32 %29 to i64, !dbg !5698
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %fb_bl_on, i64 0, i64 %idxprom, !dbg !5698
  %30 = load i8, i8* %arrayidx, align 1, !dbg !5698
  %tobool15 = trunc i8 %30 to i1, !dbg !5698
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !5701

if.then16:                                        ; preds = %land.lhs.true14
  %31 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5702
  %fb_bl_on17 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %31, i32 0, i32 7, !dbg !5704
  %32 = load i32, i32* %node, align 4, !dbg !5705
  %idxprom18 = sext i32 %32 to i64, !dbg !5702
  %arrayidx19 = getelementptr [32 x i8], [32 x i8]* %fb_bl_on17, i64 0, i64 %idxprom18, !dbg !5702
  store i8 1, i8* %arrayidx19, align 1, !dbg !5706
  %33 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5707
  %use_count = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %33, i32 0, i32 8, !dbg !5709
  %34 = load i32, i32* %use_count, align 8, !dbg !5710
  %inc = add i32 %34, 1, !dbg !5710
  store i32 %inc, i32* %use_count, align 8, !dbg !5710
  %tobool20 = icmp ne i32 %34, 0, !dbg !5710
  br i1 %tobool20, label %if.end25, label %if.then21, !dbg !5711

if.then21:                                        ; preds = %if.then16
  %35 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5712
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %35, i32 0, i32 0, !dbg !5714
  %state = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 5, !dbg !5715
  %36 = load i32, i32* %state, align 4, !dbg !5716
  %and = and i32 %36, -3, !dbg !5716
  store i32 %and, i32* %state, align 4, !dbg !5716
  %37 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5717
  %props22 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %37, i32 0, i32 0, !dbg !5718
  %fb_blank23 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props22, i32 0, i32 3, !dbg !5719
  store i32 0, i32* %fb_blank23, align 4, !dbg !5720
  %38 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5721
  %call24 = call i32 @backlight_update_status(%struct.backlight_device* %38) #9, !dbg !5722
  br label %if.end25, !dbg !5723

if.end25:                                         ; preds = %if.then21, %if.then16
  br label %if.end46, !dbg !5724

if.else:                                          ; preds = %land.lhs.true14, %if.end11
  %39 = load i32, i32* %fb_blank, align 4, !dbg !5725
  %cmp26 = icmp ne i32 %39, 0, !dbg !5727
  br i1 %cmp26, label %land.lhs.true27, label %if.end45, !dbg !5728

land.lhs.true27:                                  ; preds = %if.else
  %40 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5729
  %fb_bl_on28 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %40, i32 0, i32 7, !dbg !5730
  %41 = load i32, i32* %node, align 4, !dbg !5731
  %idxprom29 = sext i32 %41 to i64, !dbg !5729
  %arrayidx30 = getelementptr [32 x i8], [32 x i8]* %fb_bl_on28, i64 0, i64 %idxprom29, !dbg !5729
  %42 = load i8, i8* %arrayidx30, align 1, !dbg !5729
  %tobool31 = trunc i8 %42 to i1, !dbg !5729
  br i1 %tobool31, label %if.then32, label %if.end45, !dbg !5732

if.then32:                                        ; preds = %land.lhs.true27
  %43 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5733
  %fb_bl_on33 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %43, i32 0, i32 7, !dbg !5735
  %44 = load i32, i32* %node, align 4, !dbg !5736
  %idxprom34 = sext i32 %44 to i64, !dbg !5733
  %arrayidx35 = getelementptr [32 x i8], [32 x i8]* %fb_bl_on33, i64 0, i64 %idxprom34, !dbg !5733
  store i8 0, i8* %arrayidx35, align 1, !dbg !5737
  %45 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5738
  %use_count36 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %45, i32 0, i32 8, !dbg !5740
  %46 = load i32, i32* %use_count36, align 8, !dbg !5741
  %dec = add i32 %46, -1, !dbg !5741
  store i32 %dec, i32* %use_count36, align 8, !dbg !5741
  %tobool37 = icmp ne i32 %dec, 0, !dbg !5741
  br i1 %tobool37, label %if.end44, label %if.then38, !dbg !5742

if.then38:                                        ; preds = %if.then32
  %47 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5743
  %props39 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %47, i32 0, i32 0, !dbg !5745
  %state40 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props39, i32 0, i32 5, !dbg !5746
  %48 = load i32, i32* %state40, align 4, !dbg !5747
  %or = or i32 %48, 2, !dbg !5747
  store i32 %or, i32* %state40, align 4, !dbg !5747
  %49 = load i32, i32* %fb_blank, align 4, !dbg !5748
  %50 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5749
  %props41 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %50, i32 0, i32 0, !dbg !5750
  %fb_blank42 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props41, i32 0, i32 3, !dbg !5751
  store i32 %49, i32* %fb_blank42, align 4, !dbg !5752
  %51 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5753
  %call43 = call i32 @backlight_update_status(%struct.backlight_device* %51) #9, !dbg !5754
  br label %if.end44, !dbg !5755

if.end44:                                         ; preds = %if.then38, %if.then32
  br label %if.end45, !dbg !5756

if.end45:                                         ; preds = %if.end44, %land.lhs.true27, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end25
  br label %out, !dbg !5757

out:                                              ; preds = %if.end46, %if.then10, %if.then2
  call void @llvm.dbg.label(metadata !5758), !dbg !5759
  %52 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5760
  %ops_lock47 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %52, i32 0, i32 2, !dbg !5761
  call void @mutex_unlock(%struct.mutex* %ops_lock47) #9, !dbg !5762
  store i32 0, i32* %retval, align 4, !dbg !5763
  br label %return, !dbg !5763

return:                                           ; preds = %out, %if.then
  %53 = load i32, i32* %retval, align 4, !dbg !5764
  ret i32 %53, !dbg !5764
}

; Function Attrs: noredzone
declare dso_local i32 @fb_register_client(%struct.notifier_block*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5765 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5774
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5776
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5777
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !5778
  br i1 %call, label %if.end, label %if.then, !dbg !5779

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5780

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5781
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5782
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5783
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5784
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5785
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5786
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5787
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5788
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5789
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5790
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5791
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5792
  br label %do.body, !dbg !5793

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5794

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5796

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5794

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5798
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5798
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5798
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5798
  br label %do.end7, !dbg !5798

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5794

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5801 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  ret i1 true, !dbg !5810
}

; Function Attrs: noredzone
declare dso_local i32 @device_match_name(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5811 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5814
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !5816
  br i1 %call, label %if.end, label %if.then, !dbg !5817

if.then:                                          ; preds = %entry
  br label %return, !dbg !5818

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5819
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5820
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5820
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5821
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5822
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5822
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !5823
  br label %return, !dbg !5824

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5824
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5825 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  ret i1 true, !dbg !5830
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5831 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5836
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5837
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5838
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5839
  br label %do.body, !dbg !5840

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5841

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5843

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5841

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5845
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5845
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5845
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5845
  br label %do.end5, !dbg !5845

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5841

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5847
}

; Function Attrs: noredzone
declare dso_local i32 @fb_unregister_client(%struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !5848 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  ret void, !dbg !5853
}

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5854 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5859
  %1 = ptrtoint i8* %0 to i64, !dbg !5860
  ret i64 %1, !dbg !5861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5862 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  br label %do.body, !dbg !5865

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5866

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5868

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5866

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5870
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5870
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5870
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5870
  br label %do.end3, !dbg !5870

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5866

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5872
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5873
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5874
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5875
  ret void, !dbg !5876
}

; Function Attrs: noredzone
declare dso_local void @__init_rwsem(%struct.rw_semaphore*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bl_power_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5877 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5882, metadata !DIExpression()), !dbg !5883
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !5884, metadata !DIExpression()), !dbg !5885
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5886, metadata !DIExpression()), !dbg !5888
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5888
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5888
  store i8* %1, i8** %__mptr, align 8, !dbg !5888
  br label %do.body, !dbg !5888

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5889

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5888
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !5888
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !5888
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !5889
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !5888
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !5885
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5891
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5892
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0, !dbg !5893
  %power = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 2, !dbg !5894
  %7 = load i32, i32* %power, align 8, !dbg !5894
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %7) #9, !dbg !5895
  %conv = sext i32 %call to i64, !dbg !5895
  ret i64 %conv, !dbg !5896
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bl_power_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5897 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  %power = alloca i64, align 8
  %old_power = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5898, metadata !DIExpression()), !dbg !5899
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5906, metadata !DIExpression()), !dbg !5907
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !5908, metadata !DIExpression()), !dbg !5909
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5910, metadata !DIExpression()), !dbg !5912
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5912
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5912
  store i8* %1, i8** %__mptr, align 8, !dbg !5912
  br label %do.body, !dbg !5912

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5913

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5912
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !5912
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !5912
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !5913
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !5912
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !5909
  call void @llvm.dbg.declare(metadata i64* %power, metadata !5915, metadata !DIExpression()), !dbg !5916
  call void @llvm.dbg.declare(metadata i64* %old_power, metadata !5917, metadata !DIExpression()), !dbg !5918
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5919
  %call = call i32 @kstrtoul(i8* %5, i32 0, i64* %power) #9, !dbg !5920
  store i32 %call, i32* %rc, align 4, !dbg !5921
  %6 = load i32, i32* %rc, align 4, !dbg !5922
  %tobool = icmp ne i32 %6, 0, !dbg !5922
  br i1 %tobool, label %if.then, label %if.end, !dbg !5924

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %rc, align 4, !dbg !5925
  %conv = sext i32 %7 to i64, !dbg !5925
  store i64 %conv, i64* %retval, align 8, !dbg !5926
  br label %return, !dbg !5926

if.end:                                           ; preds = %do.end
  store i32 -6, i32* %rc, align 4, !dbg !5927
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5928
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 2, !dbg !5929
  call void @mutex_lock(%struct.mutex* %ops_lock) #9, !dbg !5930
  %9 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5931
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 3, !dbg !5933
  %10 = load %struct.backlight_ops*, %struct.backlight_ops** %ops, align 8, !dbg !5933
  %tobool1 = icmp ne %struct.backlight_ops* %10, null, !dbg !5931
  br i1 %tobool1, label %if.then2, label %if.end25, !dbg !5934

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %tmp3, align 4, !dbg !5935
  %11 = load i32, i32* %tmp3, align 4, !dbg !5939
  %12 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5940
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 0, !dbg !5942
  %power4 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 2, !dbg !5943
  %13 = load i32, i32* %power4, align 8, !dbg !5943
  %conv5 = sext i32 %13 to i64, !dbg !5940
  %14 = load i64, i64* %power, align 8, !dbg !5944
  %cmp = icmp ne i64 %conv5, %14, !dbg !5945
  br i1 %cmp, label %if.then7, label %if.else22, !dbg !5946

if.then7:                                         ; preds = %if.then2
  %15 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5947
  %props8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %15, i32 0, i32 0, !dbg !5949
  %power9 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props8, i32 0, i32 2, !dbg !5950
  %16 = load i32, i32* %power9, align 8, !dbg !5950
  %conv10 = sext i32 %16 to i64, !dbg !5947
  store i64 %conv10, i64* %old_power, align 8, !dbg !5951
  %17 = load i64, i64* %power, align 8, !dbg !5952
  %conv11 = trunc i64 %17 to i32, !dbg !5952
  %18 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5953
  %props12 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 0, !dbg !5954
  %power13 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props12, i32 0, i32 2, !dbg !5955
  store i32 %conv11, i32* %power13, align 8, !dbg !5956
  %19 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5957
  %call14 = call i32 @backlight_update_status(%struct.backlight_device* %19) #9, !dbg !5958
  store i32 %call14, i32* %rc, align 4, !dbg !5959
  %20 = load i32, i32* %rc, align 4, !dbg !5960
  %tobool15 = icmp ne i32 %20, 0, !dbg !5960
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !5962

if.then16:                                        ; preds = %if.then7
  %21 = load i64, i64* %old_power, align 8, !dbg !5963
  %conv17 = trunc i64 %21 to i32, !dbg !5963
  %22 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5964
  %props18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %22, i32 0, i32 0, !dbg !5965
  %power19 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props18, i32 0, i32 2, !dbg !5966
  store i32 %conv17, i32* %power19, align 8, !dbg !5967
  br label %if.end21, !dbg !5964

if.else:                                          ; preds = %if.then7
  %23 = load i64, i64* %count.addr, align 8, !dbg !5968
  %conv20 = trunc i64 %23 to i32, !dbg !5968
  store i32 %conv20, i32* %rc, align 4, !dbg !5969
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  br label %if.end24, !dbg !5970

if.else22:                                        ; preds = %if.then2
  %24 = load i64, i64* %count.addr, align 8, !dbg !5971
  %conv23 = trunc i64 %24 to i32, !dbg !5971
  store i32 %conv23, i32* %rc, align 4, !dbg !5973
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.end21
  br label %if.end25, !dbg !5974

if.end25:                                         ; preds = %if.end24, %if.end
  %25 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5975
  %ops_lock26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 2, !dbg !5976
  call void @mutex_unlock(%struct.mutex* %ops_lock26) #9, !dbg !5977
  %26 = load i32, i32* %rc, align 4, !dbg !5978
  %conv27 = sext i32 %26 to i64, !dbg !5978
  store i64 %conv27, i64* %retval, align 8, !dbg !5979
  br label %return, !dbg !5979

return:                                           ; preds = %if.end25, %if.then
  %27 = load i64, i64* %retval, align 8, !dbg !5980
  ret i64 %27, !dbg !5980
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #0 !dbg !5981 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5985, metadata !DIExpression()), !dbg !5986
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5987, metadata !DIExpression()), !dbg !5988
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5989, metadata !DIExpression()), !dbg !5990
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5991
  %1 = load i32, i32* %base.addr, align 4, !dbg !5993
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5994
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #9, !dbg !5995
  ret i32 %call, !dbg !5996
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @brightness_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5997 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5998, metadata !DIExpression()), !dbg !5999
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !6004, metadata !DIExpression()), !dbg !6005
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6006, metadata !DIExpression()), !dbg !6008
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6008
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6008
  store i8* %1, i8** %__mptr, align 8, !dbg !6008
  br label %do.body, !dbg !6008

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6009

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6008
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !6008
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !6008
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !6009
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !6008
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !6005
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6011
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6012
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0, !dbg !6013
  %brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 0, !dbg !6014
  %7 = load i32, i32* %brightness, align 8, !dbg !6014
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %7) #9, !dbg !6015
  %conv = sext i32 %call to i64, !dbg !6015
  ret i64 %conv, !dbg !6016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @brightness_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !6017 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  %brightness = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6024, metadata !DIExpression()), !dbg !6025
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6026, metadata !DIExpression()), !dbg !6027
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !6028, metadata !DIExpression()), !dbg !6029
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6030, metadata !DIExpression()), !dbg !6032
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6032
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6032
  store i8* %1, i8** %__mptr, align 8, !dbg !6032
  br label %do.body, !dbg !6032

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6033

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6032
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !6032
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !6032
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !6033
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !6032
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !6029
  call void @llvm.dbg.declare(metadata i64* %brightness, metadata !6035, metadata !DIExpression()), !dbg !6036
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6037
  %call = call i32 @kstrtoul(i8* %5, i32 0, i64* %brightness) #9, !dbg !6038
  store i32 %call, i32* %rc, align 4, !dbg !6039
  %6 = load i32, i32* %rc, align 4, !dbg !6040
  %tobool = icmp ne i32 %6, 0, !dbg !6040
  br i1 %tobool, label %if.then, label %if.end, !dbg !6042

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %rc, align 4, !dbg !6043
  %conv = sext i32 %7 to i64, !dbg !6043
  store i64 %conv, i64* %retval, align 8, !dbg !6044
  br label %return, !dbg !6044

if.end:                                           ; preds = %do.end
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6045
  %9 = load i64, i64* %brightness, align 8, !dbg !6046
  %call1 = call i32 @backlight_device_set_brightness(%struct.backlight_device* %8, i64 %9) #9, !dbg !6047
  store i32 %call1, i32* %rc, align 4, !dbg !6048
  %10 = load i32, i32* %rc, align 4, !dbg !6049
  %tobool2 = icmp ne i32 %10, 0, !dbg !6049
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !6049

cond.true:                                        ; preds = %if.end
  %11 = load i32, i32* %rc, align 4, !dbg !6050
  %conv3 = sext i32 %11 to i64, !dbg !6050
  br label %cond.end, !dbg !6049

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %count.addr, align 8, !dbg !6051
  br label %cond.end, !dbg !6049

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ %12, %cond.false ], !dbg !6049
  store i64 %cond, i64* %retval, align 8, !dbg !6052
  br label %return, !dbg !6052

return:                                           ; preds = %cond.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !6053
  ret i64 %13, !dbg !6053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @actual_brightness_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6054 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6055, metadata !DIExpression()), !dbg !6056
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6057, metadata !DIExpression()), !dbg !6058
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6059, metadata !DIExpression()), !dbg !6060
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6061, metadata !DIExpression()), !dbg !6062
  store i32 -6, i32* %rc, align 4, !dbg !6062
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !6063, metadata !DIExpression()), !dbg !6064
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6065, metadata !DIExpression()), !dbg !6067
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6067
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6067
  store i8* %1, i8** %__mptr, align 8, !dbg !6067
  br label %do.body, !dbg !6067

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6068

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6067
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !6067
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !6067
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !6068
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !6067
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !6064
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6070
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 2, !dbg !6071
  call void @mutex_lock(%struct.mutex* %ops_lock) #9, !dbg !6072
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6073
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 3, !dbg !6075
  %7 = load %struct.backlight_ops*, %struct.backlight_ops** %ops, align 8, !dbg !6075
  %tobool = icmp ne %struct.backlight_ops* %7, null, !dbg !6073
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !6076

land.lhs.true:                                    ; preds = %do.end
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6077
  %ops1 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 3, !dbg !6078
  %9 = load %struct.backlight_ops*, %struct.backlight_ops** %ops1, align 8, !dbg !6078
  %get_brightness = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %9, i32 0, i32 2, !dbg !6079
  %10 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %get_brightness, align 8, !dbg !6079
  %tobool2 = icmp ne i32 (%struct.backlight_device*)* %10, null, !dbg !6077
  br i1 %tobool2, label %if.then, label %if.else, !dbg !6080

if.then:                                          ; preds = %land.lhs.true
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !6081
  %12 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6082
  %ops3 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 3, !dbg !6083
  %13 = load %struct.backlight_ops*, %struct.backlight_ops** %ops3, align 8, !dbg !6083
  %get_brightness4 = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %13, i32 0, i32 2, !dbg !6084
  %14 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %get_brightness4, align 8, !dbg !6084
  %15 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6085
  %call = call i32 %14(%struct.backlight_device* %15) #9, !dbg !6082
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %call) #9, !dbg !6086
  store i32 %call5, i32* %rc, align 4, !dbg !6087
  br label %if.end, !dbg !6088

if.else:                                          ; preds = %land.lhs.true, %do.end
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !6089
  %17 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6090
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0, !dbg !6091
  %brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 0, !dbg !6092
  %18 = load i32, i32* %brightness, align 8, !dbg !6092
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %18) #9, !dbg !6093
  store i32 %call6, i32* %rc, align 4, !dbg !6094
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6095
  %ops_lock7 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %19, i32 0, i32 2, !dbg !6096
  call void @mutex_unlock(%struct.mutex* %ops_lock7) #9, !dbg !6097
  %20 = load i32, i32* %rc, align 4, !dbg !6098
  %conv = sext i32 %20 to i64, !dbg !6098
  ret i64 %conv, !dbg !6099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @max_brightness_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6100 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6105, metadata !DIExpression()), !dbg !6106
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !6107, metadata !DIExpression()), !dbg !6108
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6109, metadata !DIExpression()), !dbg !6111
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6111
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6111
  store i8* %1, i8** %__mptr, align 8, !dbg !6111
  br label %do.body, !dbg !6111

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6112

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6111
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !6111
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !6111
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !6112
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !6111
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !6108
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6114
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6115
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0, !dbg !6116
  %max_brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 1, !dbg !6117
  %7 = load i32, i32* %max_brightness, align 4, !dbg !6117
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %7) #9, !dbg !6118
  %conv = sext i32 %call to i64, !dbg !6118
  ret i64 %conv, !dbg !6119
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @scale_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6120 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp15 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6121, metadata !DIExpression()), !dbg !6122
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6123, metadata !DIExpression()), !dbg !6124
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6125, metadata !DIExpression()), !dbg !6126
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !6127, metadata !DIExpression()), !dbg !6128
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6129, metadata !DIExpression()), !dbg !6131
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6131
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6131
  store i8* %1, i8** %__mptr, align 8, !dbg !6131
  br label %do.body, !dbg !6131

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6132

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6131
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !6131
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !6131
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !6132
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !6131
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !6128
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6134, metadata !DIExpression()), !dbg !6137
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6137
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 0, !dbg !6137
  %scale = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 6, !dbg !6137
  %6 = load i32, i32* %scale, align 8, !dbg !6137
  %cmp = icmp ugt i32 %6, 2, !dbg !6137
  %lnot = xor i1 %cmp, true, !dbg !6137
  %lnot1 = xor i1 %lnot, true, !dbg !6137
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6137
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !6137
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !6138
  %tobool = icmp ne i32 %7, 0, !dbg !6138
  %lnot2 = xor i1 %tobool, true, !dbg !6138
  %lnot4 = xor i1 %lnot2, true, !dbg !6138
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6138
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6138
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6138
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6137

if.then:                                          ; preds = %do.end
  br label %do.body7, !dbg !6138

do.body7:                                         ; preds = %if.then
  br label %do.body8, !dbg !6140

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6142

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !6140

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 310, i32 2305, i64 12) #10, !dbg !6144, !srcloc !6146
  br label %do.end11, !dbg !6144

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 248) #10, !dbg !6147, !srcloc !6149
  br label %do.body12, !dbg !6140

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6150

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6140

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6140

if.end:                                           ; preds = %do.end14, %do.end
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !6137
  %tobool16 = icmp ne i32 %8, 0, !dbg !6137
  %lnot17 = xor i1 %tobool16, true, !dbg !6137
  %lnot19 = xor i1 %lnot17, true, !dbg !6137
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6137
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6137
  store i64 %conv21, i64* %tmp15, align 8, !dbg !6138
  %9 = load i64, i64* %tmp15, align 8, !dbg !6137
  %tobool22 = icmp ne i64 %9, 0, !dbg !6152
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !6153

if.then23:                                        ; preds = %if.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !6154
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !6155
  %conv24 = sext i32 %call to i64, !dbg !6155
  store i64 %conv24, i64* %retval, align 8, !dbg !6156
  br label %return, !dbg !6156

if.end25:                                         ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !6157
  %12 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6158
  %props26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 0, !dbg !6159
  %scale27 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props26, i32 0, i32 6, !dbg !6160
  %13 = load i32, i32* %scale27, align 8, !dbg !6160
  %idxprom = zext i32 %13 to i64, !dbg !6161
  %arrayidx = getelementptr [3 x i8*], [3 x i8*]* @backlight_scale_types, i64 0, i64 %idxprom, !dbg !6161
  %14 = load i8*, i8** %arrayidx, align 8, !dbg !6161
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %14) #9, !dbg !6162
  %conv29 = sext i32 %call28 to i64, !dbg !6162
  store i64 %conv29, i64* %retval, align 8, !dbg !6163
  br label %return, !dbg !6163

return:                                           ; preds = %if.end25, %if.then23
  %15 = load i64, i64* %retval, align 8, !dbg !6164
  ret i64 %15, !dbg !6164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6165 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6168, metadata !DIExpression()), !dbg !6169
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6170, metadata !DIExpression()), !dbg !6171
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !6172, metadata !DIExpression()), !dbg !6173
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6174, metadata !DIExpression()), !dbg !6176
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6176
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6176
  store i8* %1, i8** %__mptr, align 8, !dbg !6176
  br label %do.body, !dbg !6176

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6177

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6176
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !6176
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !6176
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !6177
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !6176
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !6173
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6179
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6180
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0, !dbg !6181
  %type = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 4, !dbg !6182
  %7 = load i32, i32* %type, align 8, !dbg !6182
  %idxprom = zext i32 %7 to i64, !dbg !6183
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @backlight_types, i64 0, i64 %idxprom, !dbg !6183
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !6183
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %8) #9, !dbg !6184
  %conv = sext i32 %call to i64, !dbg !6184
  ret i64 %conv, !dbg !6185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @backlight_suspend(%struct.device* %dev) #0 !dbg !6186 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !6189, metadata !DIExpression()), !dbg !6190
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6191, metadata !DIExpression()), !dbg !6193
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6193
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6193
  store i8* %1, i8** %__mptr, align 8, !dbg !6193
  br label %do.body, !dbg !6193

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6194

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6193
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !6193
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !6193
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !6194
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !6193
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !6190
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6196
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 2, !dbg !6197
  call void @mutex_lock(%struct.mutex* %ops_lock) #9, !dbg !6198
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6199
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 3, !dbg !6201
  %7 = load %struct.backlight_ops*, %struct.backlight_ops** %ops, align 8, !dbg !6201
  %tobool = icmp ne %struct.backlight_ops* %7, null, !dbg !6199
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6202

land.lhs.true:                                    ; preds = %do.end
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6203
  %ops1 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 3, !dbg !6204
  %9 = load %struct.backlight_ops*, %struct.backlight_ops** %ops1, align 8, !dbg !6204
  %options = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %9, i32 0, i32 0, !dbg !6205
  %10 = load i32, i32* %options, align 8, !dbg !6205
  %and = and i32 %10, 1, !dbg !6206
  %tobool2 = icmp ne i32 %and, 0, !dbg !6206
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6207

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6208
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 0, !dbg !6210
  %state = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 5, !dbg !6211
  %12 = load i32, i32* %state, align 4, !dbg !6212
  %or = or i32 %12, 1, !dbg !6212
  store i32 %or, i32* %state, align 4, !dbg !6212
  %13 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6213
  %call = call i32 @backlight_update_status(%struct.backlight_device* %13) #9, !dbg !6214
  br label %if.end, !dbg !6215

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %14 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6216
  %ops_lock3 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %14, i32 0, i32 2, !dbg !6217
  call void @mutex_unlock(%struct.mutex* %ops_lock3) #9, !dbg !6218
  ret i32 0, !dbg !6219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @backlight_resume(%struct.device* %dev) #0 !dbg !6220 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %bd = alloca %struct.backlight_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.backlight_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6221, metadata !DIExpression()), !dbg !6222
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd, metadata !6223, metadata !DIExpression()), !dbg !6224
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6225, metadata !DIExpression()), !dbg !6227
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6227
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6227
  store i8* %1, i8** %__mptr, align 8, !dbg !6227
  br label %do.body, !dbg !6227

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6228

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6227
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !6227
  %3 = bitcast i8* %add.ptr to %struct.backlight_device*, !dbg !6227
  store %struct.backlight_device* %3, %struct.backlight_device** %tmp, align 8, !dbg !6228
  %4 = load %struct.backlight_device*, %struct.backlight_device** %tmp, align 8, !dbg !6227
  store %struct.backlight_device* %4, %struct.backlight_device** %bd, align 8, !dbg !6224
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6230
  %ops_lock = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 2, !dbg !6231
  call void @mutex_lock(%struct.mutex* %ops_lock) #9, !dbg !6232
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6233
  %ops = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 3, !dbg !6235
  %7 = load %struct.backlight_ops*, %struct.backlight_ops** %ops, align 8, !dbg !6235
  %tobool = icmp ne %struct.backlight_ops* %7, null, !dbg !6233
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6236

land.lhs.true:                                    ; preds = %do.end
  %8 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6237
  %ops1 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 3, !dbg !6238
  %9 = load %struct.backlight_ops*, %struct.backlight_ops** %ops1, align 8, !dbg !6238
  %options = getelementptr inbounds %struct.backlight_ops, %struct.backlight_ops* %9, i32 0, i32 0, !dbg !6239
  %10 = load i32, i32* %options, align 8, !dbg !6239
  %and = and i32 %10, 1, !dbg !6240
  %tobool2 = icmp ne i32 %and, 0, !dbg !6240
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6241

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6242
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 0, !dbg !6244
  %state = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 5, !dbg !6245
  %12 = load i32, i32* %state, align 4, !dbg !6246
  %and3 = and i32 %12, -2, !dbg !6246
  store i32 %and3, i32* %state, align 4, !dbg !6246
  %13 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6247
  %call = call i32 @backlight_update_status(%struct.backlight_device* %13) #9, !dbg !6248
  br label %if.end, !dbg !6249

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %14 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !6250
  %ops_lock4 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %14, i32 0, i32 2, !dbg !6251
  call void @mutex_unlock(%struct.mutex* %ops_lock4) #9, !dbg !6252
  ret i32 0, !dbg !6253
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!4352}
!llvm.module.flags = !{!4490, !4491, !4492, !4493}
!llvm.ident = !{!4494}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 406, type: !773, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "backlight_device_register", scope: !3, file: !3, line: 393, type: !4, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!3 = !DIFile(filename: "drivers/video/backlight/backlight.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !191, !3362, !268, !74, !4350}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !8, line: 280, size: 6912, elements: !9)
!8 = !DIFile(filename: "./include/linux/backlight.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !33, !72, !73, !4333, !4345, !4346, !4347, !4349}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !7, file: !8, line: 284, baseType: !11, size: 224)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !8, line: 182, size: 224, elements: !12)
!12 = !{!13, !15, !16, !17, !18, !26, !27}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !11, file: !8, line: 194, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !11, file: !8, line: 203, baseType: !14, size: 32, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !11, file: !8, line: 219, baseType: !14, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !11, file: !8, line: 238, baseType: !14, size: 32, offset: 96)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !8, line: 249, baseType: !19, size: 32, offset: 128)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_type", file: !8, line: 40, baseType: !20, size: 32, elements: !21)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "BACKLIGHT_RAW", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "BACKLIGHT_PLATFORM", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "BACKLIGHT_FIRMWARE", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "BACKLIGHT_TYPE_MAX", value: 4, isUnsigned: true)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !11, file: !8, line: 264, baseType: !20, size: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !11, file: !8, line: 272, baseType: !28, size: 32, offset: 192)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_scale", file: !8, line: 90, baseType: !20, size: 32, elements: !29)
!29 = !{!30, !31, !32}
!30 = !DIEnumerator(name: "BACKLIGHT_SCALE_UNKNOWN", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "BACKLIGHT_SCALE_LINEAR", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "BACKLIGHT_SCALE_NON_LINEAR", value: 2, isUnsigned: true)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !7, file: !8, line: 294, baseType: !34, size: 192, offset: 256)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !35, line: 53, size: 192, elements: !36)
!35 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !50, !66}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !34, file: !35, line: 54, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !39, line: 13, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 175, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 173, size: 64, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !42, file: !41, line: 174, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !46, line: 22, baseType: !47)
!46 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !48, line: 30, baseType: !49)
!48 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!49 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !34, file: !35, line: 55, baseType: !51, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !52, line: 83, baseType: !53)
!52 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !52, line: 71, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, scope: !53, file: !52, line: 72, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !53, file: !52, line: 72, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !56, file: !52, line: 73, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !52, line: 20, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !59, file: !52, line: 21, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !63, line: 25, baseType: !64)
!63 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 25, elements: !65)
!65 = !{}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !34, file: !35, line: 59, baseType: !67, size: 128, offset: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 178, size: 128, elements: !68)
!68 = !{!69, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !67, file: !41, line: 179, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !67, file: !41, line: 179, baseType: !70, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !7, file: !8, line: 303, baseType: !34, size: 192, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !7, file: !8, line: 312, baseType: !74, size: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !8, line: 120, size: 256, elements: !77)
!77 = !{!78, !79, !83, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !76, file: !8, line: 128, baseType: !20, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !76, file: !8, line: 146, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!14, !6}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !76, file: !8, line: 160, baseType: !80, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !76, file: !8, line: 174, baseType: !85, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!14, !6, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !90, line: 437, size: 8128, elements: !91)
!90 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !97, !98, !99, !100, !101, !102, !144, !172, !238, !250, !270, !271, !281, !282, !283, !284, !285, !289, !315, !330, !3361, !4232, !4233, !4234, !4310, !4315, !4316, !4317, !4318, !4319, !4320, !4332}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !89, file: !90, line: 438, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 168, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 166, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !94, file: !41, line: 167, baseType: !14, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !90, line: 439, baseType: !14, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !90, line: 440, baseType: !14, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !89, file: !90, line: 445, baseType: !14, size: 32, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !89, file: !90, line: 446, baseType: !34, size: 192, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !89, file: !90, line: 447, baseType: !34, size: 192, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !89, file: !90, line: 448, baseType: !103, size: 1280, offset: 512)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !104, line: 242, size: 1280, elements: !105)
!104 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!105 = !{!106, !108, !109, !110, !111, !112, !113, !114, !115, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !103, file: !104, line: 243, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !48, line: 27, baseType: !20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !103, file: !104, line: 244, baseType: !107, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !103, file: !104, line: 245, baseType: !107, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !103, file: !104, line: 246, baseType: !107, size: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !103, file: !104, line: 247, baseType: !107, size: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !103, file: !104, line: 248, baseType: !107, size: 32, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !103, file: !104, line: 250, baseType: !107, size: 32, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !103, file: !104, line: 251, baseType: !107, size: 32, offset: 224)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !103, file: !104, line: 253, baseType: !116, size: 96, offset: 256)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !104, line: 188, size: 96, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !116, file: !104, line: 189, baseType: !107, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !116, file: !104, line: 190, baseType: !107, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !116, file: !104, line: 191, baseType: !107, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !103, file: !104, line: 254, baseType: !116, size: 96, offset: 352)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !103, file: !104, line: 255, baseType: !116, size: 96, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !103, file: !104, line: 256, baseType: !116, size: 96, offset: 544)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !103, file: !104, line: 258, baseType: !107, size: 32, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !103, file: !104, line: 260, baseType: !107, size: 32, offset: 672)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !103, file: !104, line: 262, baseType: !107, size: 32, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !103, file: !104, line: 263, baseType: !107, size: 32, offset: 736)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !103, file: !104, line: 265, baseType: !107, size: 32, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !103, file: !104, line: 268, baseType: !107, size: 32, offset: 800)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !103, file: !104, line: 269, baseType: !107, size: 32, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !103, file: !104, line: 270, baseType: !107, size: 32, offset: 864)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !103, file: !104, line: 271, baseType: !107, size: 32, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !103, file: !104, line: 272, baseType: !107, size: 32, offset: 928)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !103, file: !104, line: 273, baseType: !107, size: 32, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !103, file: !104, line: 274, baseType: !107, size: 32, offset: 992)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !103, file: !104, line: 275, baseType: !107, size: 32, offset: 1024)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !103, file: !104, line: 276, baseType: !107, size: 32, offset: 1056)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !103, file: !104, line: 277, baseType: !107, size: 32, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !103, file: !104, line: 278, baseType: !107, size: 32, offset: 1120)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !103, file: !104, line: 279, baseType: !141, size: 128, offset: 1152)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 4)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !89, file: !90, line: 449, baseType: !145, size: 640, offset: 1792)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !104, line: 157, size: 640, elements: !146)
!146 = !{!147, !152, !154, !155, !156, !157, !158, !161, !162, !163, !164, !165, !166, !167, !168}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !145, file: !104, line: 158, baseType: !148, size: 128)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 128, elements: !150)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!150 = !{!151}
!151 = !DISubrange(count: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !145, file: !104, line: 159, baseType: !153, size: 64, offset: 128)
!153 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !145, file: !104, line: 161, baseType: !107, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !104, line: 162, baseType: !107, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !145, file: !104, line: 163, baseType: !107, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !145, file: !104, line: 164, baseType: !107, size: 32, offset: 288)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !145, file: !104, line: 165, baseType: !159, size: 16, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !48, line: 24, baseType: !160)
!160 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !145, file: !104, line: 166, baseType: !159, size: 16, offset: 336)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !145, file: !104, line: 167, baseType: !159, size: 16, offset: 352)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !145, file: !104, line: 168, baseType: !107, size: 32, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !145, file: !104, line: 169, baseType: !153, size: 64, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !145, file: !104, line: 171, baseType: !107, size: 32, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !145, file: !104, line: 172, baseType: !107, size: 32, offset: 544)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !145, file: !104, line: 174, baseType: !159, size: 16, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !145, file: !104, line: 175, baseType: !169, size: 32, offset: 592)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 2)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !89, file: !90, line: 450, baseType: !173, size: 1152, offset: 2432)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !90, line: 63, size: 1152, elements: !174)
!174 = !{!175, !186, !207, !211, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !173, file: !90, line: 64, baseType: !176, size: 256)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !90, line: 52, size: 256, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !176, file: !90, line: 53, baseType: !107, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !176, file: !90, line: 54, baseType: !107, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !176, file: !90, line: 55, baseType: !107, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !176, file: !90, line: 56, baseType: !107, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !176, file: !90, line: 57, baseType: !107, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !176, file: !90, line: 58, baseType: !107, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !176, file: !90, line: 59, baseType: !107, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !176, file: !90, line: 60, baseType: !107, size: 32, offset: 224)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !173, file: !90, line: 65, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !90, line: 766, size: 512, elements: !189)
!189 = !{!190, !193, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !90, line: 767, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !188, file: !90, line: 768, baseType: !194, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !46, line: 21, baseType: !107)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !188, file: !90, line: 769, baseType: !194, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !188, file: !90, line: 770, baseType: !194, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !188, file: !90, line: 771, baseType: !194, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !188, file: !90, line: 772, baseType: !194, size: 32, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !188, file: !90, line: 773, baseType: !194, size: 32, offset: 224)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !188, file: !90, line: 774, baseType: !194, size: 32, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !188, file: !90, line: 775, baseType: !194, size: 32, offset: 288)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !188, file: !90, line: 776, baseType: !194, size: 32, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !188, file: !90, line: 777, baseType: !194, size: 32, offset: 352)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !188, file: !90, line: 778, baseType: !194, size: 32, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !188, file: !90, line: 779, baseType: !194, size: 32, offset: 416)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !188, file: !90, line: 780, baseType: !194, size: 32, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !173, file: !90, line: 66, baseType: !208, size: 32, offset: 320)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 32, elements: !142)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !48, line: 21, baseType: !210)
!210 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !173, file: !90, line: 67, baseType: !212, size: 112, offset: 352)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 112, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 14)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !173, file: !90, line: 68, baseType: !212, size: 112, offset: 464)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !173, file: !90, line: 69, baseType: !212, size: 112, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !173, file: !90, line: 70, baseType: !107, size: 32, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !173, file: !90, line: 71, baseType: !107, size: 32, offset: 736)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !173, file: !90, line: 72, baseType: !107, size: 32, offset: 768)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !173, file: !90, line: 73, baseType: !107, size: 32, offset: 800)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !173, file: !90, line: 74, baseType: !107, size: 32, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !173, file: !90, line: 75, baseType: !107, size: 32, offset: 864)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !173, file: !90, line: 76, baseType: !107, size: 32, offset: 896)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !173, file: !90, line: 77, baseType: !107, size: 32, offset: 928)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !173, file: !90, line: 78, baseType: !107, size: 32, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !173, file: !90, line: 79, baseType: !159, size: 16, offset: 992)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !173, file: !90, line: 80, baseType: !159, size: 16, offset: 1008)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !173, file: !90, line: 81, baseType: !159, size: 16, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !173, file: !90, line: 82, baseType: !159, size: 16, offset: 1040)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !173, file: !90, line: 83, baseType: !159, size: 16, offset: 1056)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !173, file: !90, line: 84, baseType: !159, size: 16, offset: 1072)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !173, file: !90, line: 85, baseType: !159, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !173, file: !90, line: 86, baseType: !159, size: 16, offset: 1104)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !173, file: !90, line: 87, baseType: !209, size: 8, offset: 1120)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !173, file: !90, line: 88, baseType: !209, size: 8, offset: 1128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !173, file: !90, line: 89, baseType: !209, size: 8, offset: 1136)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !173, file: !90, line: 90, baseType: !209, size: 8, offset: 1144)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !89, file: !90, line: 451, baseType: !239, size: 256, offset: 3584)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !240, line: 102, size: 256, elements: !241)
!240 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !243, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !239, file: !240, line: 103, baseType: !38, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !239, file: !240, line: 104, baseType: !67, size: 128, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !239, file: !240, line: 105, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !240, line: 21, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !89, file: !90, line: 452, baseType: !251, size: 448, offset: 3840)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !90, line: 185, size: 448, elements: !252)
!252 = !{!253, !256, !257, !258, !259, !260, !261, !262, !263, !264, !269}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !251, file: !90, line: 186, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !46, line: 17, baseType: !209)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !251, file: !90, line: 187, baseType: !194, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !251, file: !90, line: 188, baseType: !194, size: 32, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !251, file: !90, line: 189, baseType: !194, size: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !251, file: !90, line: 190, baseType: !194, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !251, file: !90, line: 191, baseType: !194, size: 32, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !90, line: 192, baseType: !194, size: 32, offset: 224)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !251, file: !90, line: 193, baseType: !194, size: 32, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !251, file: !90, line: 194, baseType: !194, size: 32, offset: 288)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !251, file: !90, line: 198, baseType: !265, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !88, !268, !268, !20}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !251, file: !90, line: 199, baseType: !265, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !89, file: !90, line: 453, baseType: !251, size: 448, offset: 4288)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !89, file: !90, line: 454, baseType: !272, size: 320, offset: 4736)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !104, line: 282, size: 320, elements: !273)
!273 = !{!274, !275, !276, !278, !279, !280}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !272, file: !104, line: 283, baseType: !107, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !272, file: !104, line: 284, baseType: !107, size: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !272, file: !104, line: 285, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !272, file: !104, line: 286, baseType: !277, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !272, file: !104, line: 287, baseType: !277, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !272, file: !104, line: 288, baseType: !277, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !89, file: !90, line: 455, baseType: !67, size: 128, offset: 5056)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !89, file: !90, line: 456, baseType: !187, size: 64, offset: 5184)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !89, file: !90, line: 462, baseType: !6, size: 64, offset: 5248)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !89, file: !90, line: 465, baseType: !34, size: 192, offset: 5312)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !89, file: !90, line: 466, baseType: !286, size: 1024, offset: 5504)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 1024, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !89, file: !90, line: 469, baseType: !290, size: 704, offset: 6528)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !240, line: 115, size: 704, elements: !291)
!291 = !{!292, !293, !311, !314}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !290, file: !240, line: 116, baseType: !239, size: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !290, file: !240, line: 117, baseType: !294, size: 320, offset: 256)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !295, line: 11, size: 320, elements: !296)
!295 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !304, !305, !310}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !294, file: !295, line: 16, baseType: !298, size: 128)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 186, size: 128, elements: !299)
!299 = !{!300, !302}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !41, line: 187, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !298, file: !41, line: 187, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !294, file: !295, line: 17, baseType: !153, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !294, file: !295, line: 18, baseType: !306, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !295, line: 19, baseType: !194, size: 32, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !290, file: !240, line: 120, baseType: !312, size: 64, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !240, line: 18, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !290, file: !240, line: 121, baseType: !14, size: 32, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !89, file: !90, line: 470, baseType: !316, size: 64, offset: 7232)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !90, line: 203, size: 512, elements: !318)
!318 = !{!319, !320, !321, !322, !326}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !317, file: !90, line: 205, baseType: !153, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !317, file: !90, line: 206, baseType: !34, size: 192, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !317, file: !90, line: 207, baseType: !67, size: 128, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !317, file: !90, line: 209, baseType: !323, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !88}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !317, file: !90, line: 210, baseType: !327, size: 64, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !88, !70}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !89, file: !90, line: 473, baseType: !331, size: 64, offset: 7296)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !90, line: 228, size: 1472, elements: !334)
!334 = !{!335, !339, !343, !344, !360, !364, !369, !373, !377, !382, !386, !387, !401, !415, !432, !449, !450, !454, !455, !3347, !3358, !3359, !3360}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !333, file: !90, line: 230, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !338, line: 76, flags: DIFlagFwdDecl)
!338 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!339 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !333, file: !90, line: 231, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!14, !88, !14}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !333, file: !90, line: 232, baseType: !340, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !333, file: !90, line: 237, baseType: !345, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !88, !353, !354, !357}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 60, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !350, line: 73, baseType: !351)
!350 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !350, line: 15, baseType: !352)
!352 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 55, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !350, line: 72, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !350, line: 16, baseType: !153)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !41, line: 46, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !350, line: 88, baseType: !49)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !333, file: !90, line: 239, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!348, !88, !191, !354, !357}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !333, file: !90, line: 244, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!14, !368, !88}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !333, file: !90, line: 247, baseType: !370, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!14, !88}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !333, file: !90, line: 250, baseType: !374, size: 64, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!14, !20, !20, !20, !20, !20, !88}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !333, file: !90, line: 254, baseType: !378, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!14, !381, !88}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !333, file: !90, line: 257, baseType: !383, size: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!14, !14, !88}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !333, file: !90, line: 260, baseType: !365, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !333, file: !90, line: 263, baseType: !388, size: 64, offset: 704)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !88, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !104, line: 351, size: 192, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !393, file: !104, line: 352, baseType: !107, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !393, file: !104, line: 353, baseType: !107, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !393, file: !104, line: 354, baseType: !107, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !393, file: !104, line: 355, baseType: !107, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !393, file: !104, line: 356, baseType: !107, size: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !393, file: !104, line: 357, baseType: !107, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !333, file: !90, line: 265, baseType: !402, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !88, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !104, line: 342, size: 192, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !407, file: !104, line: 343, baseType: !107, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !407, file: !104, line: 344, baseType: !107, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !407, file: !104, line: 345, baseType: !107, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !407, file: !104, line: 346, baseType: !107, size: 32, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !407, file: !104, line: 347, baseType: !107, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !407, file: !104, line: 348, baseType: !107, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !333, file: !90, line: 267, baseType: !416, size: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !88, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !104, line: 360, size: 640, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !421, file: !104, line: 361, baseType: !107, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !421, file: !104, line: 362, baseType: !107, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !421, file: !104, line: 363, baseType: !107, size: 32, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !421, file: !104, line: 364, baseType: !107, size: 32, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !421, file: !104, line: 365, baseType: !107, size: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !421, file: !104, line: 366, baseType: !107, size: 32, offset: 160)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !421, file: !104, line: 367, baseType: !209, size: 8, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !421, file: !104, line: 368, baseType: !191, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !421, file: !104, line: 369, baseType: !272, size: 320, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !333, file: !90, line: 270, baseType: !433, size: 64, offset: 896)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!14, !88, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !104, line: 388, size: 832, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !448}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !437, file: !104, line: 389, baseType: !159, size: 16)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !437, file: !104, line: 390, baseType: !159, size: 16, offset: 16)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !437, file: !104, line: 391, baseType: !159, size: 16, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !437, file: !104, line: 392, baseType: !191, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !437, file: !104, line: 393, baseType: !444, size: 32, offset: 128)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !104, line: 384, size: 32, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !444, file: !104, line: 385, baseType: !159, size: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !444, file: !104, line: 385, baseType: !159, size: 16, offset: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !437, file: !104, line: 394, baseType: !421, size: 640, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !333, file: !90, line: 273, baseType: !370, size: 64, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !333, file: !90, line: 276, baseType: !451, size: 64, offset: 1024)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!14, !88, !20, !153}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !333, file: !90, line: 280, baseType: !451, size: 64, offset: 1088)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !333, file: !90, line: 284, baseType: !456, size: 64, offset: 1152)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!14, !88, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !461, line: 305, size: 1472, elements: !462)
!461 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!462 = !{!463, !464, !465, !466, !467, !475, !476, !3275, !3281, !3282, !3287, !3288, !3291, !3341, !3342, !3343, !3344, !3345}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !460, file: !461, line: 308, baseType: !153, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !460, file: !461, line: 309, baseType: !153, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !460, file: !461, line: 313, baseType: !459, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !460, file: !461, line: 313, baseType: !459, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !460, file: !461, line: 315, baseType: !468, size: 192, align: 64, offset: 256)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !469, line: 24, size: 192, align: 64, elements: !470)
!469 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!470 = !{!471, !472, !474}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !468, file: !469, line: 25, baseType: !153, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !468, file: !469, line: 26, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !468, file: !469, line: 27, baseType: !473, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !460, file: !461, line: 323, baseType: !153, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !460, file: !461, line: 327, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !461, line: 388, size: 7296, elements: !479)
!479 = !{!480, !3271}
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !461, line: 389, baseType: !481, size: 7296)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !461, line: 389, size: 7296, elements: !482)
!482 = !{!483, !484, !488, !492, !3150, !3151, !3152, !3153, !3154, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3195, !3200, !3203, !3242, !3243, !3255, !3256, !3259, !3260, !3261, !3264, !3265, !3266, !3269, !3270}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !481, file: !461, line: 390, baseType: !459, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !481, file: !461, line: 391, baseType: !485, size: 64, offset: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !469, line: 31, size: 64, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !485, file: !469, line: 32, baseType: !473, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !481, file: !461, line: 392, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !46, line: 23, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !48, line: 31, baseType: !491)
!491 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !481, file: !461, line: 394, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!153, !496, !153, !153, !153, !153}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !498, line: 916, size: 1856, align: 32, elements: !499)
!498 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !518, !3100, !3101, !3102, !3103, !3112, !3113, !3114, !3115, !3116, !3117, !3133, !3134, !3143, !3144, !3145, !3146, !3147, !3148, !3149}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !497, file: !498, line: 920, baseType: !501, size: 128)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !498, line: 917, size: 128, elements: !502)
!502 = !{!503, !509}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !501, file: !498, line: 918, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !505, line: 58, size: 64, elements: !506)
!505 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !505, line: 59, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !501, file: !498, line: 919, baseType: !510, size: 128, align: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 216, size: 128, align: 64, elements: !511)
!511 = !{!512, !514}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !41, line: 217, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !510, file: !41, line: 218, baseType: !515, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !513}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !497, file: !498, line: 921, baseType: !519, size: 128, offset: 128)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !520, line: 8, size: 128, elements: !521)
!520 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!521 = !{!522, !526}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !519, file: !520, line: 9, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !525, line: 18, flags: DIFlagFwdDecl)
!525 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !519, file: !520, line: 10, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !525, line: 89, size: 1536, elements: !529)
!529 = !{!530, !531, !541, !549, !550, !565, !3068, !3070, !3082, !3083, !3084, !3085, !3086, !3092, !3093, !3094}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !528, file: !525, line: 91, baseType: !20, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !528, file: !525, line: 92, baseType: !532, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !533, line: 277, baseType: !534)
!533 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !533, line: 277, size: 32, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !534, file: !533, line: 277, baseType: !537, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !533, line: 70, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !533, line: 65, size: 32, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !538, file: !533, line: 66, baseType: !20, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !528, file: !525, line: 93, baseType: !542, size: 128, offset: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !543, line: 38, size: 128, elements: !544)
!543 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!544 = !{!545, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !543, line: 39, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !542, file: !543, line: 39, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !528, file: !525, line: 94, baseType: !527, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !528, file: !525, line: 95, baseType: !551, size: 128, offset: 256)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !525, line: 47, size: 128, elements: !552)
!552 = !{!553, !562}
!553 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !525, line: 48, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !525, line: 48, size: 64, elements: !555)
!555 = !{!556, !561}
!556 = !DIDerivedType(tag: DW_TAG_member, scope: !554, file: !525, line: 49, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !554, file: !525, line: 49, size: 64, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !557, file: !525, line: 50, baseType: !194, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !557, file: !525, line: 50, baseType: !194, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !554, file: !525, line: 52, baseType: !489, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !551, file: !525, line: 54, baseType: !563, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !528, file: !525, line: 96, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !498, line: 610, size: 4224, elements: !568)
!568 = !{!569, !571, !572, !580, !587, !588, !732, !2780, !2781, !2782, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !3044, !3052, !3053, !3054, !3064, !3065, !3066, !3067}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !567, file: !498, line: 611, baseType: !570, size: 16)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !41, line: 19, baseType: !160)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !567, file: !498, line: 612, baseType: !160, size: 16, offset: 16)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !567, file: !498, line: 613, baseType: !573, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !574, line: 23, baseType: !575)
!574 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 21, size: 32, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !575, file: !574, line: 22, baseType: !578, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 32, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !350, line: 49, baseType: !20)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !567, file: !498, line: 614, baseType: !581, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !574, line: 28, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 26, size: 32, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !582, file: !574, line: 27, baseType: !585, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 33, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !350, line: 50, baseType: !20)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !567, file: !498, line: 615, baseType: !20, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !567, file: !498, line: 622, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !498, line: 1864, size: 1536, align: 512, elements: !592)
!592 = !{!593, !597, !610, !614, !620, !624, !630, !634, !638, !642, !646, !647, !653, !657, !679, !708, !712, !718, !723, !727, !728}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !591, file: !498, line: 1865, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!527, !566, !527, !20}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !591, file: !498, line: 1866, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!191, !527, !566, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !603, line: 10, size: 128, elements: !604)
!603 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!604 = !{!605, !609}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !602, file: !603, line: 11, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !268}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !602, file: !603, line: 12, baseType: !268, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !591, file: !498, line: 1867, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!14, !566, !14}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !591, file: !498, line: 1868, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!618, !566, !14}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !498, line: 581, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !591, file: !498, line: 1870, baseType: !621, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!14, !527, !353, !14}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !591, file: !498, line: 1872, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!14, !566, !527, !570, !628}
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 30, baseType: !629)
!629 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !591, file: !498, line: 1873, baseType: !631, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!14, !527, !566, !527}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !591, file: !498, line: 1874, baseType: !635, size: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!14, !566, !527}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !591, file: !498, line: 1875, baseType: !639, size: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!14, !566, !527, !191}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !591, file: !498, line: 1876, baseType: !643, size: 64, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!14, !566, !527, !570}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !591, file: !498, line: 1877, baseType: !635, size: 64, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !591, file: !498, line: 1878, baseType: !648, size: 64, offset: 704)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!14, !566, !527, !570, !651}
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !41, line: 16, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !41, line: 13, baseType: !194)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !591, file: !498, line: 1879, baseType: !654, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!14, !566, !527, !566, !527, !20}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !591, file: !498, line: 1881, baseType: !658, size: 64, offset: 832)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!14, !527, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !498, line: 219, size: 640, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !676, !677, !678}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !662, file: !498, line: 220, baseType: !20, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !662, file: !498, line: 221, baseType: !570, size: 16, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !662, file: !498, line: 222, baseType: !573, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !662, file: !498, line: 223, baseType: !581, size: 32, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !662, file: !498, line: 224, baseType: !358, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !662, file: !498, line: 225, baseType: !670, size: 128, offset: 192)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !671, line: 13, size: 128, elements: !672)
!671 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!672 = !{!673, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !670, file: !671, line: 14, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !671, line: 8, baseType: !47)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !670, file: !671, line: 15, baseType: !352, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !662, file: !498, line: 226, baseType: !670, size: 128, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !662, file: !498, line: 227, baseType: !670, size: 128, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !662, file: !498, line: 234, baseType: !496, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !591, file: !498, line: 1882, baseType: !680, size: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!14, !683, !685, !194, !20}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !687, line: 22, size: 1152, elements: !688)
!687 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690, !691, !692, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !686, file: !687, line: 23, baseType: !194, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !686, file: !687, line: 24, baseType: !570, size: 16, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !686, file: !687, line: 25, baseType: !20, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !686, file: !687, line: 26, baseType: !693, size: 32, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 104, baseType: !194)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !686, file: !687, line: 27, baseType: !489, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !686, file: !687, line: 28, baseType: !489, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !686, file: !687, line: 37, baseType: !489, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !686, file: !687, line: 38, baseType: !651, size: 32, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !686, file: !687, line: 39, baseType: !651, size: 32, offset: 352)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !686, file: !687, line: 40, baseType: !573, size: 32, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !686, file: !687, line: 41, baseType: !581, size: 32, offset: 416)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !686, file: !687, line: 42, baseType: !358, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !686, file: !687, line: 43, baseType: !670, size: 128, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !686, file: !687, line: 44, baseType: !670, size: 128, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !686, file: !687, line: 45, baseType: !670, size: 128, offset: 768)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !686, file: !687, line: 46, baseType: !670, size: 128, offset: 896)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !686, file: !687, line: 47, baseType: !489, size: 64, offset: 1024)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !686, file: !687, line: 48, baseType: !489, size: 64, offset: 1088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !591, file: !498, line: 1883, baseType: !709, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!348, !527, !353, !354}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !591, file: !498, line: 1884, baseType: !713, size: 64, offset: 1024)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!14, !566, !716, !489, !489}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !498, line: 50, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !591, file: !498, line: 1886, baseType: !719, size: 64, offset: 1088)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!14, !566, !722, !14}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !591, file: !498, line: 1887, baseType: !724, size: 64, offset: 1152)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!14, !566, !527, !496, !20, !570}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !591, file: !498, line: 1890, baseType: !643, size: 64, offset: 1216)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !591, file: !498, line: 1891, baseType: !729, size: 64, offset: 1280)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!14, !566, !618, !14}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !567, file: !498, line: 623, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !498, line: 1416, size: 9472, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !784, !1244, !1332, !1415, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1431, !1435, !1436, !1439, !1443, !1446, !1447, !1448, !1489, !2652, !2653, !2654, !2655, !2656, !2657, !2660, !2662, !2669, !2670, !2672, !2673, !2674, !2733, !2734, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !734, file: !498, line: 1417, baseType: !67, size: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !734, file: !498, line: 1418, baseType: !651, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !734, file: !498, line: 1419, baseType: !210, size: 8, offset: 160)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !734, file: !498, line: 1420, baseType: !153, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !734, file: !498, line: 1421, baseType: !358, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !734, file: !498, line: 1422, baseType: !742, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !498, line: 2228, size: 576, elements: !744)
!744 = !{!745, !746, !747, !754, !758, !762, !766, !767, !768, !772, !775, !776, !777, !781, !782, !783}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !743, file: !498, line: 2229, baseType: !191, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !743, file: !498, line: 2230, baseType: !14, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !743, file: !498, line: 2238, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!14, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !753, line: 28, flags: DIFlagFwdDecl)
!753 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!754 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !743, file: !498, line: 2239, baseType: !755, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !498, line: 70, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !743, file: !498, line: 2240, baseType: !759, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!527, !742, !14, !191, !268}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !743, file: !498, line: 2242, baseType: !763, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !733}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !743, file: !498, line: 2243, baseType: !336, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !498, line: 2244, baseType: !742, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !743, file: !498, line: 2245, baseType: !769, size: 64, offset: 512)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 182, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !769, file: !41, line: 183, baseType: !301, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !743, file: !498, line: 2247, baseType: !773, offset: 576)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !774, line: 187, elements: !65)
!774 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !743, file: !498, line: 2248, baseType: !773, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !743, file: !498, line: 2249, baseType: !773, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !743, file: !498, line: 2250, baseType: !778, offset: 576)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 3)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !743, file: !498, line: 2252, baseType: !773, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !743, file: !498, line: 2253, baseType: !773, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !743, file: !498, line: 2254, baseType: !773, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !734, file: !498, line: 1423, baseType: !785, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !498, line: 1935, size: 1472, elements: !788)
!788 = !{!789, !793, !797, !798, !802, !809, !813, !814, !815, !819, !823, !824, !825, !826, !832, !837, !838, !845, !846, !847, !848, !1228, !1243}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !787, file: !498, line: 1936, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!566, !733}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !787, file: !498, line: 1937, baseType: !794, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !566}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !787, file: !498, line: 1938, baseType: !794, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !787, file: !498, line: 1940, baseType: !799, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !566, !14}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !787, file: !498, line: 1941, baseType: !803, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!14, !566, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !808, line: 40, flags: DIFlagFwdDecl)
!808 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!809 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !787, file: !498, line: 1942, baseType: !810, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!14, !566}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !787, file: !498, line: 1943, baseType: !794, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !787, file: !498, line: 1944, baseType: !763, size: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !787, file: !498, line: 1945, baseType: !816, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!14, !733, !14}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !787, file: !498, line: 1946, baseType: !820, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!14, !733}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !787, file: !498, line: 1947, baseType: !820, size: 64, offset: 640)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !787, file: !498, line: 1948, baseType: !820, size: 64, offset: 704)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !787, file: !498, line: 1949, baseType: !820, size: 64, offset: 768)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !787, file: !498, line: 1950, baseType: !827, size: 64, offset: 832)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!14, !527, !830}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !498, line: 57, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !787, file: !498, line: 1951, baseType: !833, size: 64, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!14, !733, !836, !353}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !787, file: !498, line: 1952, baseType: !763, size: 64, offset: 960)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !787, file: !498, line: 1954, baseType: !839, size: 64, offset: 1024)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!14, !842, !527}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !844, line: 539, flags: DIFlagFwdDecl)
!844 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!845 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !787, file: !498, line: 1955, baseType: !839, size: 64, offset: 1088)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !787, file: !498, line: 1956, baseType: !839, size: 64, offset: 1152)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !787, file: !498, line: 1957, baseType: !839, size: 64, offset: 1216)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !787, file: !498, line: 1963, baseType: !849, size: 64, offset: 1280)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!14, !733, !852, !874}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !461, line: 68, size: 512, align: 128, elements: !854)
!854 = !{!855, !856, !1220, !1227}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !461, line: 69, baseType: !153, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !461, line: 77, baseType: !857, size: 320, offset: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !461, line: 77, size: 320, elements: !858)
!858 = !{!859, !1032, !1037, !1065, !1073, !1079, !1092, !1219}
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !461, line: 78, baseType: !860, size: 320)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !461, line: 78, size: 320, elements: !861)
!861 = !{!862, !863, !1030, !1031}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !860, file: !461, line: 84, baseType: !67, size: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !860, file: !461, line: 86, baseType: !864, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !498, line: 451, size: 1216, align: 64, elements: !866)
!866 = !{!867, !868, !876, !877, !878, !883, !892, !893, !894, !895, !1023, !1024, !1027, !1028, !1029}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !865, file: !498, line: 452, baseType: !566, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !865, file: !498, line: 453, baseType: !869, size: 128, offset: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !870, line: 292, size: 128, elements: !871)
!870 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!871 = !{!872, !873, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !869, file: !870, line: 293, baseType: !51)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !869, file: !870, line: 295, baseType: !874, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 148, baseType: !20)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !869, file: !870, line: 296, baseType: !268, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !865, file: !498, line: 454, baseType: !874, size: 32, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !865, file: !498, line: 455, baseType: !93, size: 32, offset: 224)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !865, file: !498, line: 460, baseType: !879, size: 128, offset: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !469, line: 125, size: 128, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !879, file: !469, line: 126, baseType: !485, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !879, file: !469, line: 127, baseType: !473, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !865, file: !498, line: 461, baseType: !884, size: 256, offset: 384)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !885, line: 35, size: 256, elements: !886)
!885 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!886 = !{!887, !888, !889, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !884, file: !885, line: 36, baseType: !38, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !884, file: !885, line: 42, baseType: !38, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !884, file: !885, line: 46, baseType: !890, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !52, line: 29, baseType: !59)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !884, file: !885, line: 47, baseType: !67, size: 128, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !865, file: !498, line: 462, baseType: !153, size: 64, offset: 640)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !865, file: !498, line: 463, baseType: !153, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !865, file: !498, line: 464, baseType: !153, size: 64, offset: 768)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !865, file: !498, line: 465, baseType: !896, size: 64, offset: 832)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !498, line: 367, size: 1408, elements: !899)
!899 = !{!900, !904, !908, !912, !916, !920, !926, !932, !936, !941, !945, !949, !953, !980, !991, !997, !998, !999, !1003, !1008, !1012, !1019}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !898, file: !498, line: 368, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!14, !852, !806}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !898, file: !498, line: 369, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!14, !496, !852}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !898, file: !498, line: 372, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!14, !864, !806}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !898, file: !498, line: 375, baseType: !913, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!14, !852}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !898, file: !498, line: 381, baseType: !917, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!14, !496, !864, !70, !20}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !898, file: !498, line: 383, baseType: !921, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !924}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !498, line: 290, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !898, file: !498, line: 385, baseType: !927, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!14, !496, !864, !358, !20, !20, !930, !931}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !898, file: !498, line: 388, baseType: !933, size: 64, offset: 448)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!14, !496, !864, !358, !20, !20, !852, !268}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !898, file: !498, line: 393, baseType: !937, size: 64, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!940, !864, !940}
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !41, line: 125, baseType: !489)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !898, file: !498, line: 394, baseType: !942, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !852, !20, !20}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !898, file: !498, line: 395, baseType: !946, size: 64, offset: 640)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!14, !852, !874}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !898, file: !498, line: 396, baseType: !950, size: 64, offset: 704)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !852}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !898, file: !498, line: 397, baseType: !954, size: 64, offset: 768)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!348, !957, !978}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !498, line: 320, size: 384, elements: !959)
!959 = !{!960, !961, !962, !966, !967, !968, !970, !971}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !958, file: !498, line: 321, baseType: !496, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !958, file: !498, line: 326, baseType: !358, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !958, file: !498, line: 327, baseType: !963, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !957, !352, !352}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !958, file: !498, line: 328, baseType: !268, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !958, file: !498, line: 329, baseType: !14, size: 32, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !958, file: !498, line: 330, baseType: !969, size: 16, offset: 288)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !46, line: 19, baseType: !159)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !958, file: !498, line: 331, baseType: !969, size: 16, offset: 304)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !498, line: 332, baseType: !972, size: 64, offset: 320)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !498, line: 332, size: 64, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !972, file: !498, line: 333, baseType: !20, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !972, file: !498, line: 334, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !498, line: 334, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !498, line: 64, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !898, file: !498, line: 402, baseType: !981, size: 64, offset: 832)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!14, !864, !852, !852, !984}
!984 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !985, line: 15, baseType: !20, size: 32, elements: !986)
!985 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !988, !989, !990}
!987 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!988 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!989 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!990 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !898, file: !498, line: 404, baseType: !992, size: 64, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!628, !852, !995}
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !996, line: 305, baseType: !20)
!996 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!997 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !898, file: !498, line: 405, baseType: !950, size: 64, offset: 960)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !898, file: !498, line: 406, baseType: !913, size: 64, offset: 1024)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !898, file: !498, line: 407, baseType: !1000, size: 64, offset: 1088)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!14, !852, !153, !153}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !898, file: !498, line: 409, baseType: !1004, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !852, !1007, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !898, file: !498, line: 410, baseType: !1009, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!14, !864, !852}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !898, file: !498, line: 413, baseType: !1013, size: 64, offset: 1280)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!14, !1016, !496, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !498, line: 61, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !898, file: !498, line: 415, baseType: !1020, size: 64, offset: 1344)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !496}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !865, file: !498, line: 466, baseType: !153, size: 64, offset: 896)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !865, file: !498, line: 467, baseType: !1025, size: 32, offset: 960)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1026, line: 8, baseType: !194)
!1026 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !865, file: !498, line: 468, baseType: !51, offset: 992)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !865, file: !498, line: 469, baseType: !67, size: 128, offset: 1024)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !865, file: !498, line: 470, baseType: !268, size: 64, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !860, file: !461, line: 87, baseType: !153, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !860, file: !461, line: 94, baseType: !153, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !461, line: 96, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !461, line: 96, size: 64, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1033, file: !461, line: 101, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !41, line: 143, baseType: !489)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !461, line: 103, baseType: !1038, size: 320)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !461, line: 103, size: 320, elements: !1039)
!1039 = !{!1040, !1050, !1053, !1054}
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !461, line: 104, baseType: !1041, size: 128)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !461, line: 104, size: 128, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1041, file: !461, line: 105, baseType: !67, size: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !461, line: 106, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !461, line: 106, size: 128, elements: !1046)
!1046 = !{!1047, !1048, !1049}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1045, file: !461, line: 107, baseType: !852, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1045, file: !461, line: 109, baseType: !14, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1045, file: !461, line: 110, baseType: !14, size: 32, offset: 96)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1038, file: !461, line: 117, baseType: !1051, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !461, line: 117, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1038, file: !461, line: 119, baseType: !268, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !461, line: 120, baseType: !1055, size: 64, offset: 256)
!1055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !461, line: 120, size: 64, elements: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1055, file: !461, line: 121, baseType: !268, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1055, file: !461, line: 122, baseType: !153, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !461, line: 123, baseType: !1060, size: 32)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !461, line: 123, size: 32, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1060, file: !461, line: 124, baseType: !20, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1060, file: !461, line: 125, baseType: !20, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1060, file: !461, line: 126, baseType: !20, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !461, line: 130, baseType: !1066, size: 192)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !461, line: 130, size: 192, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1066, file: !461, line: 131, baseType: !153, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1066, file: !461, line: 134, baseType: !210, size: 8, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1066, file: !461, line: 135, baseType: !210, size: 8, offset: 72)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1066, file: !461, line: 136, baseType: !93, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1066, file: !461, line: 137, baseType: !20, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !461, line: 139, baseType: !1074, size: 256)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !461, line: 139, size: 256, elements: !1075)
!1075 = !{!1076, !1077, !1078}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1074, file: !461, line: 140, baseType: !153, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1074, file: !461, line: 141, baseType: !93, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1074, file: !461, line: 143, baseType: !67, size: 128, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !461, line: 145, baseType: !1080, size: 256)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !461, line: 145, size: 256, elements: !1081)
!1081 = !{!1082, !1083, !1085, !1086, !1091}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1080, file: !461, line: 146, baseType: !153, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1080, file: !461, line: 147, baseType: !1084, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !844, line: 509, baseType: !852)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1080, file: !461, line: 148, baseType: !153, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !461, line: 149, baseType: !1087, size: 64, offset: 192)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !461, line: 149, size: 64, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1087, file: !461, line: 150, baseType: !477, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1087, file: !461, line: 151, baseType: !93, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1080, file: !461, line: 156, baseType: !51, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !461, line: 159, baseType: !1093, size: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !461, line: 159, size: 128, elements: !1094)
!1094 = !{!1095, !1218}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1093, file: !461, line: 161, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1098, line: 110, size: 1152, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!1099 = !{!1100, !1110, !1131, !1132, !1143, !1150, !1151, !1203, !1204, !1205}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1097, file: !1098, line: 111, baseType: !1101, size: 384)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1098, line: 19, size: 384, elements: !1102)
!1102 = !{!1103, !1105, !1106, !1107, !1108, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1101, file: !1098, line: 20, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1101, file: !1098, line: 21, baseType: !1104, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1101, file: !1098, line: 22, baseType: !1104, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1101, file: !1098, line: 23, baseType: !153, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1101, file: !1098, line: 24, baseType: !153, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1101, file: !1098, line: 25, baseType: !153, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1097, file: !1098, line: 112, baseType: !1111, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1113, line: 105, size: 128, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1112, file: !1113, line: 110, baseType: !153, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1112, file: !1113, line: 118, baseType: !1117, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1113, line: 95, size: 448, elements: !1119)
!1119 = !{!1120, !1121, !1126, !1127, !1128, !1129, !1130}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1118, file: !1113, line: 96, baseType: !38, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1118, file: !1113, line: 97, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1113, line: 60, baseType: !1124)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !1111}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1118, file: !1113, line: 98, baseType: !1122, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1118, file: !1113, line: 99, baseType: !628, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1118, file: !1113, line: 100, baseType: !628, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1118, file: !1113, line: 101, baseType: !510, size: 128, align: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1118, file: !1113, line: 102, baseType: !1111, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !1097, file: !1098, line: 113, baseType: !1112, size: 128, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1097, file: !1098, line: 114, baseType: !1133, size: 192, offset: 576)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1134, line: 26, size: 192, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1133, file: !1134, line: 27, baseType: !20, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1133, file: !1134, line: 28, baseType: !1138, size: 128, offset: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1139, line: 43, size: 128, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1138, file: !1139, line: 44, baseType: !890)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1138, file: !1139, line: 45, baseType: !67, size: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1097, file: !1098, line: 115, baseType: !1144, size: 32, offset: 768)
!1144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1098, line: 59, baseType: !20, size: 32, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149}
!1146 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!1147 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!1148 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!1149 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1097, file: !1098, line: 116, baseType: !20, size: 32, offset: 800)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1097, file: !1098, line: 117, baseType: !1152, size: 64, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1098, line: 67, size: 256, elements: !1155)
!1155 = !{!1156, !1157, !1161, !1162}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1154, file: !1098, line: 73, baseType: !950, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !1154, file: !1098, line: 78, baseType: !1158, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1096}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1154, file: !1098, line: 83, baseType: !1158, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1154, file: !1098, line: 89, baseType: !1163, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !461, line: 682, baseType: !20)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !808, line: 508, size: 768, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1183, !1190, !1196, !1197, !1198, !1200, !1202}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1168, file: !808, line: 509, baseType: !459, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1168, file: !808, line: 510, baseType: !20, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1168, file: !808, line: 511, baseType: !874, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1168, file: !808, line: 512, baseType: !153, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1168, file: !808, line: 513, baseType: !153, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1168, file: !808, line: 514, baseType: !1176, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !844, line: 385, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !844, line: 385, size: 64, elements: !1179)
!1179 = !{!1180}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1178, file: !844, line: 385, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1182, line: 15, baseType: !153)
!1182 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1168, file: !808, line: 516, baseType: !1184, size: 64, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !844, line: 359, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !844, line: 359, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1186, file: !844, line: 359, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1182, line: 16, baseType: !153)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1168, file: !808, line: 519, baseType: !1191, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1182, line: 21, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1182, line: 21, size: 64, elements: !1193)
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1192, file: !1182, line: 21, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1182, line: 14, baseType: !153)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1168, file: !808, line: 521, baseType: !852, size: 64, offset: 448)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1168, file: !808, line: 522, baseType: !852, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1168, file: !808, line: 528, baseType: !1199, size: 64, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1168, file: !808, line: 532, baseType: !1201, size: 64, offset: 640)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1168, file: !808, line: 536, baseType: !1084, size: 64, offset: 704)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1097, file: !1098, line: 118, baseType: !268, size: 64, offset: 896)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1097, file: !1098, line: 119, baseType: !14, size: 32, offset: 960)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1097, file: !1098, line: 120, baseType: !1206, size: 128, offset: 1024)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1097, file: !1098, line: 120, size: 128, elements: !1207)
!1207 = !{!1208, !1214}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1206, file: !1098, line: 121, baseType: !1209, size: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1210, line: 6, size: 128, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1209, file: !1210, line: 7, baseType: !489, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1209, file: !1210, line: 8, baseType: !489, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1206, file: !1098, line: 122, baseType: !1215)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 0)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1093, file: !461, line: 162, baseType: !268, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !857, file: !461, line: 176, baseType: !510, size: 128, align: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !461, line: 179, baseType: !1221, size: 32, offset: 384)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !461, line: 179, size: 32, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1221, file: !461, line: 184, baseType: !93, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1221, file: !461, line: 192, baseType: !20, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1221, file: !461, line: 194, baseType: !20, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1221, file: !461, line: 195, baseType: !14, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !853, file: !461, line: 199, baseType: !93, size: 32, offset: 416)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !787, file: !498, line: 1964, baseType: !1229, size: 64, offset: 1344)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!352, !733, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1234, line: 12, size: 256, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1235 = !{!1236, !1237, !1238, !1239, !1240}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1233, file: !1234, line: 13, baseType: !874, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1233, file: !1234, line: 16, baseType: !14, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1233, file: !1234, line: 23, baseType: !153, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1233, file: !1234, line: 30, baseType: !153, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1233, file: !1234, line: 33, baseType: !1241, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !461, line: 27, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !787, file: !498, line: 1966, baseType: !1229, size: 64, offset: 1408)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !734, file: !498, line: 1424, baseType: !1245, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !1248, line: 322, size: 704, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1301, !1305, !1309, !1310, !1311, !1312, !1313, !1318, !1323, !1327}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1247, file: !1248, line: 323, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!14, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !1248, line: 294, size: 1600, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1286, !1287, !1288}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1255, file: !1248, line: 295, baseType: !298, size: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1255, file: !1248, line: 296, baseType: !67, size: 128, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1255, file: !1248, line: 297, baseType: !67, size: 128, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1255, file: !1248, line: 298, baseType: !67, size: 128, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1255, file: !1248, line: 299, baseType: !34, size: 192, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1255, file: !1248, line: 300, baseType: !51, offset: 704)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1255, file: !1248, line: 301, baseType: !93, size: 32, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1255, file: !1248, line: 302, baseType: !733, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1255, file: !1248, line: 303, baseType: !1266, size: 64, offset: 832)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !1248, line: 68, size: 64, elements: !1267)
!1267 = !{!1268, !1280}
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1248, line: 69, baseType: !1269, size: 32)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1248, line: 69, size: 32, elements: !1270)
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1269, file: !1248, line: 70, baseType: !573, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1269, file: !1248, line: 71, baseType: !581, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1269, file: !1248, line: 72, baseType: !1274, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1275, line: 24, baseType: !1276)
!1275 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1275, line: 22, size: 32, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1276, file: !1275, line: 23, baseType: !1279, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1275, line: 20, baseType: !579)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1266, file: !1248, line: 74, baseType: !1281, size: 32, offset: 32)
!1281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !1248, line: 54, baseType: !20, size: 32, elements: !1282)
!1282 = !{!1283, !1284, !1285}
!1283 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!1284 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!1285 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1255, file: !1248, line: 304, baseType: !358, size: 64, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1255, file: !1248, line: 305, baseType: !153, size: 64, offset: 960)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1255, file: !1248, line: 306, baseType: !1289, size: 576, offset: 1024)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !1248, line: 205, size: 576, elements: !1290)
!1290 = !{!1291, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1289, file: !1248, line: 206, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !1248, line: 66, baseType: !49)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1289, file: !1248, line: 207, baseType: !1292, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1289, file: !1248, line: 208, baseType: !1292, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1289, file: !1248, line: 209, baseType: !1292, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1289, file: !1248, line: 210, baseType: !1292, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1289, file: !1248, line: 211, baseType: !1292, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1289, file: !1248, line: 212, baseType: !1292, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1289, file: !1248, line: 213, baseType: !674, size: 64, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1289, file: !1248, line: 214, baseType: !674, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1247, file: !1248, line: 324, baseType: !1302, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1254, !733, !14}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1247, file: !1248, line: 325, baseType: !1306, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1254}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1247, file: !1248, line: 326, baseType: !1251, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1247, file: !1248, line: 327, baseType: !1251, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1247, file: !1248, line: 328, baseType: !1251, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1247, file: !1248, line: 329, baseType: !816, size: 64, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1247, file: !1248, line: 332, baseType: !1314, size: 64, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!1317, !566}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1247, file: !1248, line: 333, baseType: !1319, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!14, !566, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1247, file: !1248, line: 335, baseType: !1324, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!14, !566, !1317}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1247, file: !1248, line: 337, baseType: !1328, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!14, !733, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !734, file: !498, line: 1425, baseType: !1333, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !1248, line: 428, size: 704, elements: !1336)
!1336 = !{!1337, !1341, !1342, !1346, !1347, !1348, !1363, !1386, !1390, !1391, !1414}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1335, file: !1248, line: 429, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!14, !733, !14, !14, !683}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1335, file: !1248, line: 430, baseType: !816, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1335, file: !1248, line: 431, baseType: !1343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!14, !733, !20}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1335, file: !1248, line: 432, baseType: !1343, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1335, file: !1248, line: 433, baseType: !816, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1335, file: !1248, line: 434, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!14, !733, !14, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !1248, line: 415, size: 256, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1353, file: !1248, line: 416, baseType: !14, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1353, file: !1248, line: 417, baseType: !20, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1353, file: !1248, line: 418, baseType: !20, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1353, file: !1248, line: 420, baseType: !20, size: 32, offset: 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1353, file: !1248, line: 421, baseType: !20, size: 32, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1353, file: !1248, line: 422, baseType: !20, size: 32, offset: 160)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1353, file: !1248, line: 423, baseType: !20, size: 32, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1353, file: !1248, line: 424, baseType: !20, size: 32, offset: 224)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1335, file: !1248, line: 435, baseType: !1364, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!14, !733, !1266, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !1248, line: 343, size: 960, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1368, file: !1248, line: 344, baseType: !14, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1368, file: !1248, line: 345, baseType: !489, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1368, file: !1248, line: 346, baseType: !489, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1368, file: !1248, line: 347, baseType: !489, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1368, file: !1248, line: 348, baseType: !489, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1368, file: !1248, line: 349, baseType: !489, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1368, file: !1248, line: 350, baseType: !489, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1368, file: !1248, line: 351, baseType: !45, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1368, file: !1248, line: 353, baseType: !45, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1368, file: !1248, line: 354, baseType: !14, size: 32, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1368, file: !1248, line: 355, baseType: !14, size: 32, offset: 608)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1368, file: !1248, line: 356, baseType: !489, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1368, file: !1248, line: 357, baseType: !489, size: 64, offset: 704)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1368, file: !1248, line: 358, baseType: !489, size: 64, offset: 768)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1368, file: !1248, line: 359, baseType: !45, size: 64, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1368, file: !1248, line: 360, baseType: !14, size: 32, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1335, file: !1248, line: 436, baseType: !1387, size: 64, offset: 448)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!14, !733, !1331, !1367}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1335, file: !1248, line: 438, baseType: !1364, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1335, file: !1248, line: 439, baseType: !1392, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!14, !733, !1395}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !1248, line: 409, size: 1408, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1396, file: !1248, line: 410, baseType: !20, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1396, file: !1248, line: 411, baseType: !1400, size: 1344, offset: 64)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 1344, elements: !779)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !1248, line: 395, size: 448, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1413}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !1248, line: 396, baseType: !20, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1401, file: !1248, line: 397, baseType: !20, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1401, file: !1248, line: 399, baseType: !20, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1401, file: !1248, line: 400, baseType: !20, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1401, file: !1248, line: 401, baseType: !20, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1401, file: !1248, line: 402, baseType: !20, size: 32, offset: 160)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1401, file: !1248, line: 403, baseType: !20, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1401, file: !1248, line: 404, baseType: !491, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1401, file: !1248, line: 405, baseType: !1412, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !41, line: 126, baseType: !489)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1401, file: !1248, line: 406, baseType: !1412, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1335, file: !1248, line: 440, baseType: !1343, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !734, file: !498, line: 1426, baseType: !1416, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !498, line: 49, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !734, file: !498, line: 1427, baseType: !153, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !734, file: !498, line: 1428, baseType: !153, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !734, file: !498, line: 1429, baseType: !153, size: 64, offset: 768)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !734, file: !498, line: 1430, baseType: !527, size: 64, offset: 832)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !734, file: !498, line: 1431, baseType: !884, size: 256, offset: 896)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !734, file: !498, line: 1432, baseType: !14, size: 32, offset: 1152)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !734, file: !498, line: 1433, baseType: !93, size: 32, offset: 1184)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !734, file: !498, line: 1437, baseType: !1427, size: 64, offset: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !498, line: 1437, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !734, file: !498, line: 1449, baseType: !1432, size: 64, offset: 1280)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !543, line: 34, size: 64, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1432, file: !543, line: 35, baseType: !546, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !734, file: !498, line: 1450, baseType: !67, size: 128, offset: 1344)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !734, file: !498, line: 1451, baseType: !1437, size: 64, offset: 1472)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !498, line: 699, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !734, file: !498, line: 1452, baseType: !1440, size: 64, offset: 1536)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1442, line: 40, flags: DIFlagFwdDecl)
!1442 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !734, file: !498, line: 1453, baseType: !1444, size: 64, offset: 1600)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !498, line: 1453, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !734, file: !498, line: 1454, baseType: !298, size: 128, offset: 1664)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !734, file: !498, line: 1455, baseType: !20, size: 32, offset: 1792)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !734, file: !498, line: 1456, baseType: !1449, size: 2432, offset: 1856)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !1248, line: 518, size: 2432, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1455, !1487}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1248, line: 519, baseType: !20, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1449, file: !1248, line: 520, baseType: !884, size: 256, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1449, file: !1248, line: 521, baseType: !1454, size: 192, offset: 320)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 192, elements: !779)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1449, file: !1248, line: 522, baseType: !1456, size: 1728, offset: 512)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1457, size: 1728, elements: !779)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !1248, line: 222, size: 576, elements: !1458)
!1458 = !{!1459, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1457, file: !1248, line: 223, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !1248, line: 443, size: 256, elements: !1462)
!1462 = !{!1463, !1464, !1477, !1478}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1461, file: !1248, line: 444, baseType: !14, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1461, file: !1248, line: 445, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !1248, line: 310, size: 512, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1467, file: !1248, line: 311, baseType: !816, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1467, file: !1248, line: 312, baseType: !816, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1467, file: !1248, line: 313, baseType: !816, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1467, file: !1248, line: 314, baseType: !816, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1467, file: !1248, line: 315, baseType: !1251, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1467, file: !1248, line: 316, baseType: !1251, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1467, file: !1248, line: 317, baseType: !1251, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1467, file: !1248, line: 318, baseType: !1328, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1461, file: !1248, line: 446, baseType: !336, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1461, file: !1248, line: 447, baseType: !1460, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1457, file: !1248, line: 224, baseType: !14, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1457, file: !1248, line: 226, baseType: !67, size: 128, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1457, file: !1248, line: 227, baseType: !153, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1457, file: !1248, line: 228, baseType: !20, size: 32, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1457, file: !1248, line: 229, baseType: !20, size: 32, offset: 352)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1457, file: !1248, line: 230, baseType: !1292, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1457, file: !1248, line: 231, baseType: !1292, size: 64, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1457, file: !1248, line: 232, baseType: !268, size: 64, offset: 512)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1449, file: !1248, line: 523, baseType: !1488, size: 192, offset: 2240)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1465, size: 192, elements: !779)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !734, file: !498, line: 1458, baseType: !1490, size: 2112, offset: 4288)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !498, line: 1410, size: 2112, elements: !1491)
!1491 = !{!1492, !1493, !1500}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1490, file: !498, line: 1411, baseType: !14, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1490, file: !498, line: 1412, baseType: !1494, size: 128, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1495, line: 40, baseType: !1496)
!1495 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1495, line: 36, size: 128, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1496, file: !1495, line: 37, baseType: !51)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1496, file: !1495, line: 38, baseType: !67, size: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1490, file: !498, line: 1413, baseType: !1501, size: 1920, offset: 192)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 1920, elements: !779)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1503, line: 12, size: 640, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1513, !1515, !2650, !2651}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1502, file: !1503, line: 13, baseType: !1506, size: 320)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1507, line: 17, size: 320, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1508 = !{!1509, !1510, !1511, !1512}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1506, file: !1507, line: 18, baseType: !14, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1506, file: !1507, line: 19, baseType: !14, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1506, file: !1507, line: 20, baseType: !1494, size: 128, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1506, file: !1507, line: 22, baseType: !510, size: 128, align: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1502, file: !1503, line: 14, baseType: !1514, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1502, file: !1503, line: 15, baseType: !1516, size: 64, offset: 384)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1517, line: 16, size: 64, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1516, file: !1517, line: 17, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1442, line: 640, size: 48640, elements: !1522)
!1522 = !{!1523, !1529, !1531, !1532, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1549, !1567, !1578, !1666, !1667, !1668, !1679, !1680, !1682, !1683, !1684, !1685, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1771, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1841, !1843, !1844, !1845, !1847, !1848, !1849, !1850, !1851, !1852, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1876, !1881, !2060, !2061, !2062, !2063, !2064, !2067, !2070, !2073, !2076, !2102, !2203, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2251, !2252, !2253, !2254, !2255, !2260, !2261, !2262, !2265, !2266, !2269, !2272, !2275, !2276, !2308, !2311, !2312, !2391, !2392, !2395, !2396, !2399, !2400, !2401, !2405, !2406, !2407, !2420, !2421, !2422, !2432, !2437, !2440, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1521, file: !1442, line: 646, baseType: !1524, size: 128)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1525, line: 56, size: 128, elements: !1526)
!1525 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1524, file: !1525, line: 57, baseType: !153, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1524, file: !1525, line: 58, baseType: !194, size: 32, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1521, file: !1442, line: 649, baseType: !1530, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !352)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1521, file: !1442, line: 657, baseType: !268, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1521, file: !1442, line: 658, baseType: !1533, size: 32, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1534, line: 113, baseType: !1535)
!1534 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1534, line: 111, size: 32, elements: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1535, file: !1534, line: 112, baseType: !93, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1521, file: !1442, line: 660, baseType: !20, size: 32, offset: 288)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1521, file: !1442, line: 661, baseType: !20, size: 32, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1521, file: !1442, line: 684, baseType: !14, size: 32, offset: 352)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1521, file: !1442, line: 686, baseType: !14, size: 32, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1521, file: !1442, line: 687, baseType: !14, size: 32, offset: 416)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1521, file: !1442, line: 688, baseType: !14, size: 32, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1521, file: !1442, line: 689, baseType: !20, size: 32, offset: 480)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1521, file: !1442, line: 691, baseType: !1546, size: 64, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1442, line: 691, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1521, file: !1442, line: 692, baseType: !1550, size: 832, offset: 576)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1442, line: 451, size: 832, elements: !1551)
!1551 = !{!1552, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1550, file: !1442, line: 453, baseType: !1553, size: 128)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1442, line: 325, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1553, file: !1442, line: 326, baseType: !153, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1553, file: !1442, line: 327, baseType: !194, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1550, file: !1442, line: 454, baseType: !468, size: 192, align: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1550, file: !1442, line: 455, baseType: !67, size: 128, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1550, file: !1442, line: 456, baseType: !20, size: 32, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1550, file: !1442, line: 458, baseType: !489, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1550, file: !1442, line: 459, baseType: !489, size: 64, offset: 576)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1550, file: !1442, line: 460, baseType: !489, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1550, file: !1442, line: 461, baseType: !489, size: 64, offset: 704)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1550, file: !1442, line: 463, baseType: !489, size: 64, offset: 768)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1550, file: !1442, line: 465, baseType: !1566, offset: 832)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1442, line: 415, elements: !65)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1521, file: !1442, line: 693, baseType: !1568, size: 384, offset: 1408)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1442, line: 489, size: 384, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1568, file: !1442, line: 490, baseType: !67, size: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1568, file: !1442, line: 491, baseType: !153, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1568, file: !1442, line: 492, baseType: !153, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1568, file: !1442, line: 493, baseType: !20, size: 32, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1568, file: !1442, line: 494, baseType: !160, size: 16, offset: 288)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1568, file: !1442, line: 495, baseType: !160, size: 16, offset: 304)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1568, file: !1442, line: 497, baseType: !1577, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1521, file: !1442, line: 697, baseType: !1579, size: 1792, offset: 1792)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1442, line: 507, size: 1792, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1663, !1664}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1579, file: !1442, line: 508, baseType: !468, size: 192, align: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1579, file: !1442, line: 515, baseType: !489, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1579, file: !1442, line: 516, baseType: !489, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1579, file: !1442, line: 517, baseType: !489, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1579, file: !1442, line: 518, baseType: !489, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1579, file: !1442, line: 519, baseType: !489, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1579, file: !1442, line: 526, baseType: !45, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1579, file: !1442, line: 527, baseType: !489, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1579, file: !1442, line: 528, baseType: !20, size: 32, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1579, file: !1442, line: 554, baseType: !20, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1579, file: !1442, line: 555, baseType: !20, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1579, file: !1442, line: 556, baseType: !20, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1579, file: !1442, line: 557, baseType: !20, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1579, file: !1442, line: 563, baseType: !1595, size: 512, offset: 704)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1596, line: 118, size: 512, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1606, !1607, !1616, !1659, !1660, !1661, !1662}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1595, file: !1596, line: 119, baseType: !1599, size: 256)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1600, line: 9, size: 256, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1599, file: !1600, line: 10, baseType: !468, size: 192, align: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1599, file: !1600, line: 11, baseType: !1604, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1605, line: 29, baseType: !45)
!1605 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1595, file: !1596, line: 120, baseType: !1604, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1595, file: !1596, line: 121, baseType: !1608, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1611, !1615}
!1611 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1596, line: 65, baseType: !20, size: 32, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1614 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1595, file: !1596, line: 122, baseType: !1617, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1596, line: 159, size: 512, align: 512, elements: !1619)
!1619 = !{!1620, !1640, !1641, !1644, !1649, !1650, !1654, !1658}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1618, file: !1596, line: 160, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1596, line: 214, size: 4608, align: 512, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1622, file: !1596, line: 215, baseType: !890)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1622, file: !1596, line: 216, baseType: !20, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1622, file: !1596, line: 217, baseType: !20, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1622, file: !1596, line: 218, baseType: !20, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1622, file: !1596, line: 219, baseType: !20, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1622, file: !1596, line: 220, baseType: !20, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1622, file: !1596, line: 221, baseType: !20, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1622, file: !1596, line: 222, baseType: !20, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1622, file: !1596, line: 233, baseType: !1604, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1622, file: !1596, line: 234, baseType: !1615, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1622, file: !1596, line: 235, baseType: !1604, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1622, file: !1596, line: 236, baseType: !1615, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1622, file: !1596, line: 237, baseType: !1637, size: 4096, offset: 512)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1618, size: 4096, elements: !1638)
!1638 = !{!1639}
!1639 = !DISubrange(count: 8)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1618, file: !1596, line: 161, baseType: !20, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1618, file: !1596, line: 162, baseType: !1642, size: 32, offset: 96)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 27, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !350, line: 96, baseType: !14)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1618, file: !1596, line: 163, baseType: !1645, size: 32, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !533, line: 276, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !533, line: 276, size: 32, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1646, file: !533, line: 276, baseType: !537, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1618, file: !1596, line: 164, baseType: !1615, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1618, file: !1596, line: 165, baseType: !1651, size: 128, offset: 256)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1600, line: 14, size: 128, elements: !1652)
!1652 = !{!1653}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1651, file: !1600, line: 15, baseType: !879, size: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1618, file: !1596, line: 166, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1604}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1618, file: !1596, line: 167, baseType: !1604, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1595, file: !1596, line: 123, baseType: !255, size: 8, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1595, file: !1596, line: 124, baseType: !255, size: 8, offset: 456)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1595, file: !1596, line: 125, baseType: !255, size: 8, offset: 464)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1595, file: !1596, line: 126, baseType: !255, size: 8, offset: 472)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1579, file: !1442, line: 572, baseType: !1595, size: 512, offset: 1216)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1579, file: !1442, line: 580, baseType: !1665, size: 64, offset: 1728)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1521, file: !1442, line: 721, baseType: !20, size: 32, offset: 3584)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1521, file: !1442, line: 722, baseType: !14, size: 32, offset: 3616)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1521, file: !1442, line: 723, baseType: !1669, size: 64, offset: 3648)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1672, line: 17, baseType: !1673)
!1672 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1672, line: 17, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1673, file: !1672, line: 17, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 1)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1521, file: !1442, line: 724, baseType: !1671, size: 64, offset: 3712)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1521, file: !1442, line: 749, baseType: !1681, offset: 3776)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1442, line: 290, elements: !65)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1521, file: !1442, line: 751, baseType: !67, size: 128, offset: 3776)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1521, file: !1442, line: 757, baseType: !477, size: 64, offset: 3904)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1521, file: !1442, line: 758, baseType: !477, size: 64, offset: 3968)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1521, file: !1442, line: 761, baseType: !1686, size: 320, offset: 4032)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1687, line: 34, size: 320, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1686, file: !1687, line: 35, baseType: !489, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1686, file: !1687, line: 36, baseType: !1691, size: 256, offset: 64)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 256, elements: !142)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1521, file: !1442, line: 766, baseType: !14, size: 32, offset: 4352)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1521, file: !1442, line: 767, baseType: !14, size: 32, offset: 4384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1521, file: !1442, line: 768, baseType: !14, size: 32, offset: 4416)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1521, file: !1442, line: 770, baseType: !14, size: 32, offset: 4448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1521, file: !1442, line: 772, baseType: !153, size: 64, offset: 4480)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1521, file: !1442, line: 775, baseType: !20, size: 32, offset: 4544)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1521, file: !1442, line: 778, baseType: !20, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1521, file: !1442, line: 779, baseType: !20, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1521, file: !1442, line: 780, baseType: !20, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1521, file: !1442, line: 803, baseType: !20, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1521, file: !1442, line: 806, baseType: !20, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1521, file: !1442, line: 807, baseType: !20, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1521, file: !1442, line: 809, baseType: !20, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1521, file: !1442, line: 815, baseType: !20, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1521, file: !1442, line: 831, baseType: !153, size: 64, offset: 4672)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1521, file: !1442, line: 833, baseType: !1708, size: 384, offset: 4736)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1709, line: 25, size: 384, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !{!1711, !1716}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1708, file: !1709, line: 26, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!352, !1715}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !1709, line: 27, baseType: !1717, size: 320, offset: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !1709, line: 27, size: 320, elements: !1718)
!1718 = !{!1719, !1729, !1761}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1717, file: !1709, line: 36, baseType: !1720, size: 320)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1709, line: 29, size: 320, elements: !1721)
!1721 = !{!1722, !1724, !1725, !1726, !1727, !1728}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1720, file: !1709, line: 30, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1720, file: !1709, line: 31, baseType: !194, size: 32, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1720, file: !1709, line: 32, baseType: !194, size: 32, offset: 96)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1720, file: !1709, line: 33, baseType: !194, size: 32, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1720, file: !1709, line: 34, baseType: !489, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1720, file: !1709, line: 35, baseType: !1723, size: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1717, file: !1709, line: 46, baseType: !1730, size: 192)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1709, line: 38, size: 192, elements: !1731)
!1731 = !{!1732, !1733, !1739, !1760}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1730, file: !1709, line: 39, baseType: !1642, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1730, file: !1709, line: 40, baseType: !1734, size: 32, offset: 32)
!1734 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1709, line: 16, baseType: !20, size: 32, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1737 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1738 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1709, line: 41, baseType: !1740, size: 64, offset: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1730, file: !1709, line: 41, size: 64, elements: !1741)
!1741 = !{!1742, !1750}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1740, file: !1709, line: 42, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1745, line: 7, size: 128, elements: !1746)
!1745 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1749}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1744, file: !1745, line: 8, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !350, line: 93, baseType: !49)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1744, file: !1745, line: 9, baseType: !49, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1740, file: !1709, line: 43, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1753, line: 7, size: 64, elements: !1754)
!1753 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1759}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1752, file: !1753, line: 8, baseType: !1756, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1753, line: 5, baseType: !1757)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !46, line: 20, baseType: !1758)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !48, line: 26, baseType: !14)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1752, file: !1753, line: 9, baseType: !1757, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1730, file: !1709, line: 45, baseType: !489, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1717, file: !1709, line: 54, baseType: !1762, size: 256)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1709, line: 48, size: 256, elements: !1763)
!1763 = !{!1764, !1767, !1768, !1769, !1770}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1762, file: !1709, line: 49, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1709, line: 14, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1762, file: !1709, line: 50, baseType: !14, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1762, file: !1709, line: 51, baseType: !14, size: 32, offset: 96)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1762, file: !1709, line: 52, baseType: !153, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1762, file: !1709, line: 53, baseType: !153, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1521, file: !1442, line: 835, baseType: !1772, size: 32, offset: 5120)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 22, baseType: !1773)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !350, line: 28, baseType: !14)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1521, file: !1442, line: 836, baseType: !1772, size: 32, offset: 5152)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1521, file: !1442, line: 840, baseType: !153, size: 64, offset: 5184)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1521, file: !1442, line: 849, baseType: !1520, size: 64, offset: 5248)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1521, file: !1442, line: 852, baseType: !1520, size: 64, offset: 5312)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1521, file: !1442, line: 857, baseType: !67, size: 128, offset: 5376)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1521, file: !1442, line: 858, baseType: !67, size: 128, offset: 5504)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1521, file: !1442, line: 859, baseType: !1520, size: 64, offset: 5632)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1521, file: !1442, line: 867, baseType: !67, size: 128, offset: 5696)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1521, file: !1442, line: 868, baseType: !67, size: 128, offset: 5824)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1521, file: !1442, line: 871, baseType: !1784, size: 64, offset: 5952)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1786, line: 59, size: 768, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788, !1789, !1790, !1791, !1793, !1794, !1795, !1796}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1785, file: !1786, line: 61, baseType: !1533, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1785, file: !1786, line: 62, baseType: !20, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1785, file: !1786, line: 63, baseType: !51, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1785, file: !1786, line: 65, baseType: !1792, size: 256, offset: 64)
!1792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 256, elements: !142)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1785, file: !1786, line: 66, baseType: !769, size: 64, offset: 320)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1785, file: !1786, line: 68, baseType: !1494, size: 128, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1785, file: !1786, line: 69, baseType: !510, size: 128, align: 64, offset: 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1785, file: !1786, line: 70, baseType: !1797, size: 128, offset: 640)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1798, size: 128, elements: !1677)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1786, line: 54, size: 128, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1798, file: !1786, line: 55, baseType: !14, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1798, file: !1786, line: 56, baseType: !1802, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1804, line: 20, size: 1088, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !{!1806, !1811, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1827, !1830, !1831}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1803, file: !1804, line: 21, baseType: !1807, size: 32)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1808, line: 19, size: 32, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1807, file: !1808, line: 20, baseType: !1533, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1803, file: !1804, line: 22, baseType: !1812, size: 192, offset: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1813, line: 19, size: 192, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1816, !1817}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1812, file: !1813, line: 20, baseType: !869, size: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1812, file: !1813, line: 21, baseType: !20, size: 32, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1812, file: !1813, line: 22, baseType: !20, size: 32, offset: 160)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1803, file: !1804, line: 23, baseType: !510, size: 128, align: 64, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1803, file: !1804, line: 24, baseType: !20, size: 32, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1803, file: !1804, line: 25, baseType: !1520, size: 64, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1803, file: !1804, line: 26, baseType: !1051, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1803, file: !1804, line: 27, baseType: !20, size: 32, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1803, file: !1804, line: 28, baseType: !1802, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1803, file: !1804, line: 32, baseType: !1825, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !574, line: 18, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1803, file: !1804, line: 33, baseType: !1828, size: 64, offset: 768)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1804, line: 33, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1803, file: !1804, line: 34, baseType: !14, size: 32, offset: 832)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1803, file: !1804, line: 35, baseType: !1832, size: 192, offset: 896)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1833, line: 7, size: 192, elements: !1834)
!1833 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !{!1835, !1836, !1840}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1832, file: !1833, line: 8, baseType: !38, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1832, file: !1833, line: 9, baseType: !1837, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1839)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1833, line: 5, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1832, file: !1833, line: 10, baseType: !20, size: 32, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1521, file: !1442, line: 872, baseType: !1842, size: 512, offset: 6016)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 512, elements: !142)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1521, file: !1442, line: 873, baseType: !67, size: 128, offset: 6528)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1521, file: !1442, line: 874, baseType: !67, size: 128, offset: 6656)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1521, file: !1442, line: 876, baseType: !1846, size: 64, offset: 6784)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1521, file: !1442, line: 879, baseType: !836, size: 64, offset: 6848)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1521, file: !1442, line: 882, baseType: !836, size: 64, offset: 6912)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1521, file: !1442, line: 884, baseType: !489, size: 64, offset: 6976)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1521, file: !1442, line: 885, baseType: !489, size: 64, offset: 7040)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1521, file: !1442, line: 890, baseType: !489, size: 64, offset: 7104)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1521, file: !1442, line: 891, baseType: !1853, size: 128, offset: 7168)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1442, line: 242, size: 128, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1853, file: !1442, line: 244, baseType: !489, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1853, file: !1442, line: 245, baseType: !489, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1853, file: !1442, line: 246, baseType: !890, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1521, file: !1442, line: 900, baseType: !153, size: 64, offset: 7296)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1521, file: !1442, line: 901, baseType: !153, size: 64, offset: 7360)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1521, file: !1442, line: 904, baseType: !489, size: 64, offset: 7424)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1521, file: !1442, line: 907, baseType: !489, size: 64, offset: 7488)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1521, file: !1442, line: 910, baseType: !153, size: 64, offset: 7552)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1521, file: !1442, line: 911, baseType: !153, size: 64, offset: 7616)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1521, file: !1442, line: 914, baseType: !1865, size: 640, offset: 7680)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1866, line: 123, size: 640, elements: !1867)
!1866 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1867 = !{!1868, !1874, !1875}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1865, file: !1866, line: 124, baseType: !1869, size: 576)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1870, size: 576, elements: !779)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1866, line: 108, size: 192, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1870, file: !1866, line: 109, baseType: !489, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1870, file: !1866, line: 110, baseType: !1651, size: 128, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1865, file: !1866, line: 125, baseType: !20, size: 32, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1865, file: !1866, line: 126, baseType: !20, size: 32, offset: 608)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1521, file: !1442, line: 917, baseType: !1877, size: 192, offset: 8320)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1866, line: 134, size: 192, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1877, file: !1866, line: 135, baseType: !510, size: 128, align: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1877, file: !1866, line: 136, baseType: !20, size: 32, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1521, file: !1442, line: 923, baseType: !1882, size: 64, offset: 8512)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1885, line: 111, size: 1280, elements: !1886)
!1885 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1904, !1905, !1906, !1907, !1908, !1909, !2017, !2018, !2019, !2020, !2046, !2047, !2055}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1884, file: !1885, line: 112, baseType: !93, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1884, file: !1885, line: 120, baseType: !573, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1884, file: !1885, line: 121, baseType: !581, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1884, file: !1885, line: 122, baseType: !573, size: 32, offset: 96)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1884, file: !1885, line: 123, baseType: !581, size: 32, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1884, file: !1885, line: 124, baseType: !573, size: 32, offset: 160)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1884, file: !1885, line: 125, baseType: !581, size: 32, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1884, file: !1885, line: 126, baseType: !573, size: 32, offset: 224)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1884, file: !1885, line: 127, baseType: !581, size: 32, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1884, file: !1885, line: 128, baseType: !20, size: 32, offset: 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1884, file: !1885, line: 129, baseType: !1898, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1899, line: 26, baseType: !1900)
!1899 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1899, line: 24, size: 64, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1900, file: !1899, line: 25, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !170)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1884, file: !1885, line: 130, baseType: !1898, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1884, file: !1885, line: 131, baseType: !1898, size: 64, offset: 448)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1884, file: !1885, line: 132, baseType: !1898, size: 64, offset: 512)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1884, file: !1885, line: 133, baseType: !1898, size: 64, offset: 576)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1884, file: !1885, line: 135, baseType: !210, size: 8, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1884, file: !1885, line: 137, baseType: !1910, size: 64, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1912, line: 189, size: 1664, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1913 = !{!1914, !1915, !1918, !1923, !1924, !1927, !1928, !1933, !1934, !1935, !1936, !1938, !1939, !1940, !1942, !1943, !1981, !2002}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1911, file: !1912, line: 190, baseType: !1533, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1911, file: !1912, line: 191, baseType: !1916, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1912, line: 28, baseType: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !41, line: 98, baseType: !1757)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !1912, line: 192, baseType: !1919, size: 192, offset: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1911, file: !1912, line: 192, size: 192, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1919, file: !1912, line: 193, baseType: !67, size: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1919, file: !1912, line: 194, baseType: !468, size: 192, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1911, file: !1912, line: 199, baseType: !884, size: 256, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1911, file: !1912, line: 200, baseType: !1925, size: 64, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1912, line: 200, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1911, file: !1912, line: 201, baseType: !268, size: 64, offset: 576)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !1912, line: 202, baseType: !1929, size: 64, offset: 640)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1911, file: !1912, line: 202, size: 64, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1929, file: !1912, line: 203, baseType: !674, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1929, file: !1912, line: 204, baseType: !674, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1911, file: !1912, line: 206, baseType: !674, size: 64, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1911, file: !1912, line: 207, baseType: !573, size: 32, offset: 768)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1911, file: !1912, line: 208, baseType: !581, size: 32, offset: 800)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1911, file: !1912, line: 209, baseType: !1937, size: 32, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1912, line: 31, baseType: !693)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1911, file: !1912, line: 210, baseType: !160, size: 16, offset: 864)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1911, file: !1912, line: 211, baseType: !160, size: 16, offset: 880)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1911, file: !1912, line: 215, baseType: !1941, size: 16, offset: 896)
!1941 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1911, file: !1912, line: 222, baseType: !153, size: 64, offset: 960)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !1912, line: 239, baseType: !1944, size: 320, offset: 1024)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1911, file: !1912, line: 239, size: 320, elements: !1945)
!1945 = !{!1946, !1973}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1944, file: !1912, line: 240, baseType: !1947, size: 320)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1912, line: 108, size: 320, elements: !1948)
!1948 = !{!1949, !1950, !1962, !1965, !1972}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1947, file: !1912, line: 110, baseType: !153, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !1912, line: 111, baseType: !1951, size: 64, offset: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1947, file: !1912, line: 111, size: 64, elements: !1952)
!1952 = !{!1953, !1961}
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !1912, line: 112, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1912, line: 112, size: 64, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1954, file: !1912, line: 114, baseType: !969, size: 16)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1954, file: !1912, line: 115, baseType: !1958, size: 48, offset: 16)
!1958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 48, elements: !1959)
!1959 = !{!1960}
!1960 = !DISubrange(count: 6)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1951, file: !1912, line: 121, baseType: !153, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1947, file: !1912, line: 123, baseType: !1963, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1912, line: 96, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1947, file: !1912, line: 124, baseType: !1966, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1912, line: 102, size: 192, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1967, file: !1912, line: 103, baseType: !510, size: 128, align: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1967, file: !1912, line: 104, baseType: !1533, size: 32, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1967, file: !1912, line: 105, baseType: !628, size: 8, offset: 160)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1947, file: !1912, line: 125, baseType: !191, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !1912, line: 241, baseType: !1974, size: 320)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1912, line: 241, size: 320, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1974, file: !1912, line: 242, baseType: !153, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1974, file: !1912, line: 243, baseType: !153, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1974, file: !1912, line: 244, baseType: !1963, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1974, file: !1912, line: 245, baseType: !1966, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1974, file: !1912, line: 246, baseType: !353, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !1912, line: 254, baseType: !1982, size: 256, offset: 1344)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1911, file: !1912, line: 254, size: 256, elements: !1983)
!1983 = !{!1984, !1990}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1982, file: !1912, line: 255, baseType: !1985, size: 256)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1912, line: 128, size: 256, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1985, file: !1912, line: 129, baseType: !268, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1985, file: !1912, line: 130, baseType: !1989, size: 256)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 256, elements: !142)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !1912, line: 256, baseType: !1991, size: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1912, line: 256, size: 256, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1991, file: !1912, line: 258, baseType: !67, size: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1991, file: !1912, line: 259, baseType: !1995, size: 128, offset: 128)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1996, line: 22, size: 128, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !2001}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1995, file: !1996, line: 23, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1996, line: 23, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1995, file: !1996, line: 24, baseType: !153, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1911, file: !1912, line: 274, baseType: !2003, size: 64, offset: 1600)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1912, line: 170, size: 192, elements: !2005)
!2005 = !{!2006, !2015, !2016}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2004, file: !1912, line: 171, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1912, line: 165, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!14, !1910, !2011, !2013, !1910}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1985)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2004, file: !1912, line: 172, baseType: !1910, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2004, file: !1912, line: 173, baseType: !1963, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1884, file: !1885, line: 138, baseType: !1910, size: 64, offset: 768)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1884, file: !1885, line: 139, baseType: !1910, size: 64, offset: 832)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1884, file: !1885, line: 140, baseType: !1910, size: 64, offset: 896)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1884, file: !1885, line: 145, baseType: !2021, size: 64, offset: 960)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2023, line: 13, size: 896, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2022, file: !2023, line: 14, baseType: !1533, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2022, file: !2023, line: 15, baseType: !93, size: 32, offset: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2022, file: !2023, line: 16, baseType: !93, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2022, file: !2023, line: 21, baseType: !38, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2022, file: !2023, line: 27, baseType: !153, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2022, file: !2023, line: 28, baseType: !153, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2022, file: !2023, line: 29, baseType: !38, size: 64, offset: 320)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2022, file: !2023, line: 32, baseType: !298, size: 128, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2022, file: !2023, line: 33, baseType: !573, size: 32, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2022, file: !2023, line: 37, baseType: !38, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2022, file: !2023, line: 44, baseType: !2036, size: 256, offset: 640)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2037, line: 15, size: 256, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2036, file: !2037, line: 16, baseType: !890)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2036, file: !2037, line: 18, baseType: !14, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2036, file: !2037, line: 19, baseType: !14, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2036, file: !2037, line: 20, baseType: !14, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2036, file: !2037, line: 21, baseType: !14, size: 32, offset: 96)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2036, file: !2037, line: 22, baseType: !153, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2037, line: 23, baseType: !153, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1884, file: !1885, line: 146, baseType: !1825, size: 64, offset: 1024)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1884, file: !1885, line: 147, baseType: !2048, size: 64, offset: 1088)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1885, line: 25, size: 64, elements: !2050)
!2050 = !{!2051, !2052, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2049, file: !1885, line: 26, baseType: !93, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2049, file: !1885, line: 27, baseType: !14, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2049, file: !1885, line: 28, baseType: !2054, offset: 64)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, elements: !1216)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !1885, line: 149, baseType: !2056, size: 128, offset: 1152)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1884, file: !1885, line: 149, size: 128, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2056, file: !1885, line: 150, baseType: !14, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2056, file: !1885, line: 151, baseType: !510, size: 128, align: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1521, file: !1442, line: 926, baseType: !1882, size: 64, offset: 8576)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1521, file: !1442, line: 929, baseType: !1882, size: 64, offset: 8640)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1521, file: !1442, line: 933, baseType: !1910, size: 64, offset: 8704)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1521, file: !1442, line: 943, baseType: !148, size: 128, offset: 8768)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1521, file: !1442, line: 945, baseType: !2065, size: 64, offset: 8896)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1442, line: 49, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1521, file: !1442, line: 956, baseType: !2068, size: 64, offset: 8960)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1442, line: 45, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1521, file: !1442, line: 959, baseType: !2071, size: 64, offset: 9024)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1442, line: 959, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1521, file: !1442, line: 962, baseType: !2074, size: 64, offset: 9088)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1442, line: 66, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1521, file: !1442, line: 966, baseType: !2077, size: 64, offset: 9152)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2079, line: 31, size: 576, elements: !2080)
!2079 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2080 = !{!2081, !2082, !2085, !2088, !2091, !2092, !2095, !2098, !2099}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2078, file: !2079, line: 32, baseType: !93, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2078, file: !2079, line: 33, baseType: !2083, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2079, line: 9, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2078, file: !2079, line: 34, baseType: !2086, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2079, line: 10, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2078, file: !2079, line: 35, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2079, line: 8, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2078, file: !2079, line: 36, baseType: !1802, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2078, file: !2079, line: 37, baseType: !2093, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1912, line: 34, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2078, file: !2079, line: 38, baseType: !2096, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2079, line: 38, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2078, file: !2079, line: 39, baseType: !2096, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2078, file: !2079, line: 40, baseType: !2100, size: 64, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2079, line: 12, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1521, file: !1442, line: 969, baseType: !2103, size: 64, offset: 9216)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2105, line: 82, size: 7296, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2142, !2151, !2152, !2154, !2155, !2156, !2159, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2189, !2190, !2197, !2198, !2199, !2200, !2201, !2202}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2104, file: !2105, line: 83, baseType: !1533, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2104, file: !2105, line: 84, baseType: !93, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2104, file: !2105, line: 85, baseType: !14, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2104, file: !2105, line: 86, baseType: !67, size: 128, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2104, file: !2105, line: 88, baseType: !1494, size: 128, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2104, file: !2105, line: 91, baseType: !1520, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2104, file: !2105, line: 94, baseType: !2114, size: 192, offset: 448)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2115, line: 30, size: 192, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2114, file: !2115, line: 31, baseType: !67, size: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2114, file: !2115, line: 32, baseType: !2119, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2120, line: 25, baseType: !2121)
!2120 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2120, line: 23, size: 64, elements: !2122)
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2121, file: !2120, line: 24, baseType: !1676, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2104, file: !2105, line: 97, baseType: !769, size: 64, offset: 640)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2104, file: !2105, line: 100, baseType: !14, size: 32, offset: 704)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2104, file: !2105, line: 106, baseType: !14, size: 32, offset: 736)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2104, file: !2105, line: 107, baseType: !1520, size: 64, offset: 768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2104, file: !2105, line: 110, baseType: !14, size: 32, offset: 832)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2104, file: !2105, line: 111, baseType: !20, size: 32, offset: 864)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2104, file: !2105, line: 122, baseType: !20, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2104, file: !2105, line: 123, baseType: !20, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2104, file: !2105, line: 128, baseType: !14, size: 32, offset: 928)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2104, file: !2105, line: 129, baseType: !67, size: 128, offset: 960)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2104, file: !2105, line: 132, baseType: !1595, size: 512, offset: 1088)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2104, file: !2105, line: 133, baseType: !1604, size: 64, offset: 1600)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2104, file: !2105, line: 140, baseType: !2137, size: 256, offset: 1664)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 256, elements: !170)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2105, line: 38, size: 128, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2138, file: !2105, line: 39, baseType: !489, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2138, file: !2105, line: 40, baseType: !489, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2104, file: !2105, line: 146, baseType: !2143, size: 192, offset: 1920)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2105, line: 66, size: 192, elements: !2144)
!2144 = !{!2145}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2143, file: !2105, line: 67, baseType: !2146, size: 192)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2105, line: 47, size: 192, elements: !2147)
!2147 = !{!2148, !2149, !2150}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2146, file: !2105, line: 48, baseType: !40, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2146, file: !2105, line: 49, baseType: !40, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2146, file: !2105, line: 50, baseType: !40, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2104, file: !2105, line: 150, baseType: !1865, size: 640, offset: 2112)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2104, file: !2105, line: 153, baseType: !2153, size: 256, offset: 2752)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1784, size: 256, elements: !142)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2104, file: !2105, line: 159, baseType: !1784, size: 64, offset: 3008)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2104, file: !2105, line: 162, baseType: !14, size: 32, offset: 3072)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2104, file: !2105, line: 164, baseType: !2157, size: 64, offset: 3136)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2105, line: 164, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2104, file: !2105, line: 175, baseType: !2160, size: 32, offset: 3200)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !533, line: 805, baseType: !2161)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 798, size: 32, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2161, file: !533, line: 803, baseType: !532, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2161, file: !533, line: 804, baseType: !51, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2104, file: !2105, line: 176, baseType: !489, size: 64, offset: 3264)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2104, file: !2105, line: 176, baseType: !489, size: 64, offset: 3328)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2104, file: !2105, line: 176, baseType: !489, size: 64, offset: 3392)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2104, file: !2105, line: 176, baseType: !489, size: 64, offset: 3456)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2104, file: !2105, line: 177, baseType: !489, size: 64, offset: 3520)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2104, file: !2105, line: 178, baseType: !489, size: 64, offset: 3584)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2104, file: !2105, line: 179, baseType: !1853, size: 128, offset: 3648)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2104, file: !2105, line: 180, baseType: !153, size: 64, offset: 3776)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2104, file: !2105, line: 180, baseType: !153, size: 64, offset: 3840)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2104, file: !2105, line: 180, baseType: !153, size: 64, offset: 3904)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2104, file: !2105, line: 180, baseType: !153, size: 64, offset: 3968)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2104, file: !2105, line: 181, baseType: !153, size: 64, offset: 4032)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2104, file: !2105, line: 181, baseType: !153, size: 64, offset: 4096)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2104, file: !2105, line: 181, baseType: !153, size: 64, offset: 4160)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2104, file: !2105, line: 181, baseType: !153, size: 64, offset: 4224)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2104, file: !2105, line: 182, baseType: !153, size: 64, offset: 4288)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2104, file: !2105, line: 182, baseType: !153, size: 64, offset: 4352)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2104, file: !2105, line: 182, baseType: !153, size: 64, offset: 4416)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2104, file: !2105, line: 182, baseType: !153, size: 64, offset: 4480)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2104, file: !2105, line: 183, baseType: !153, size: 64, offset: 4544)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2104, file: !2105, line: 183, baseType: !153, size: 64, offset: 4608)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2104, file: !2105, line: 184, baseType: !2187, offset: 4672)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2188, line: 12, elements: !65)
!2188 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2104, file: !2105, line: 192, baseType: !491, size: 64, offset: 4672)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2104, file: !2105, line: 203, baseType: !2191, size: 2048, offset: 4736)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2192, size: 2048, elements: !150)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2193, line: 43, size: 128, elements: !2194)
!2193 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2194 = !{!2195, !2196}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2192, file: !2193, line: 44, baseType: !356, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2192, file: !2193, line: 45, baseType: !356, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2104, file: !2105, line: 220, baseType: !628, size: 8, offset: 6784)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2104, file: !2105, line: 221, baseType: !1941, size: 16, offset: 6800)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2104, file: !2105, line: 222, baseType: !1941, size: 16, offset: 6816)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2104, file: !2105, line: 224, baseType: !477, size: 64, offset: 6848)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2104, file: !2105, line: 227, baseType: !34, size: 192, offset: 6912)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2104, file: !2105, line: 233, baseType: !34, size: 192, offset: 7104)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1521, file: !1442, line: 970, baseType: !2204, size: 64, offset: 9280)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2105, line: 20, size: 16576, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2205, file: !2105, line: 21, baseType: !51)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2205, file: !2105, line: 22, baseType: !1533, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2205, file: !2105, line: 23, baseType: !1494, size: 128, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2205, file: !2105, line: 24, baseType: !2211, size: 16384, offset: 192)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2212, size: 16384, elements: !2232)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2115, line: 49, size: 256, elements: !2213)
!2213 = !{!2214}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2212, file: !2115, line: 50, baseType: !2215, size: 256)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2115, line: 35, size: 256, elements: !2216)
!2216 = !{!2217, !2224, !2225, !2231}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2215, file: !2115, line: 37, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2219, line: 19, baseType: !2220)
!2219 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2219, line: 18, baseType: !2222)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !14}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2215, file: !2115, line: 38, baseType: !153, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2215, file: !2115, line: 44, baseType: !2226, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2219, line: 22, baseType: !2227)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2219, line: 21, baseType: !2229)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2215, file: !2115, line: 46, baseType: !2119, size: 64, offset: 192)
!2232 = !{!2233}
!2233 = !DISubrange(count: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1521, file: !1442, line: 971, baseType: !2119, size: 64, offset: 9344)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1521, file: !1442, line: 972, baseType: !2119, size: 64, offset: 9408)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1521, file: !1442, line: 974, baseType: !2119, size: 64, offset: 9472)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1521, file: !1442, line: 975, baseType: !2114, size: 192, offset: 9536)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1521, file: !1442, line: 976, baseType: !153, size: 64, offset: 9728)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1521, file: !1442, line: 977, baseType: !354, size: 64, offset: 9792)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1521, file: !1442, line: 978, baseType: !20, size: 32, offset: 9856)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1521, file: !1442, line: 980, baseType: !513, size: 64, offset: 9920)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1521, file: !1442, line: 989, baseType: !2243, size: 128, offset: 9984)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2244, line: 35, size: 128, elements: !2245)
!2244 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2245 = !{!2246, !2247, !2248}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2243, file: !2244, line: 36, baseType: !14, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2243, file: !2244, line: 37, baseType: !93, size: 32, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2243, file: !2244, line: 38, baseType: !2249, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2244, line: 23, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1521, file: !1442, line: 992, baseType: !489, size: 64, offset: 10112)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1521, file: !1442, line: 993, baseType: !489, size: 64, offset: 10176)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1521, file: !1442, line: 996, baseType: !51, offset: 10240)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1521, file: !1442, line: 999, baseType: !890, offset: 10240)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1521, file: !1442, line: 1001, baseType: !2256, size: 64, offset: 10240)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1442, line: 636, size: 64, elements: !2257)
!2257 = !{!2258}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2256, file: !1442, line: 637, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1521, file: !1442, line: 1005, baseType: !879, size: 128, offset: 10304)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1521, file: !1442, line: 1007, baseType: !1520, size: 64, offset: 10432)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1521, file: !1442, line: 1009, baseType: !2263, size: 64, offset: 10496)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1442, line: 1009, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1521, file: !1442, line: 1043, baseType: !268, size: 64, offset: 10560)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1521, file: !1442, line: 1046, baseType: !2267, size: 64, offset: 10624)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1442, line: 41, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1521, file: !1442, line: 1050, baseType: !2270, size: 64, offset: 10688)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1442, line: 42, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1521, file: !1442, line: 1054, baseType: !2273, size: 64, offset: 10752)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1442, line: 55, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1521, file: !1442, line: 1056, baseType: !1440, size: 64, offset: 10816)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1521, file: !1442, line: 1058, baseType: !2277, size: 64, offset: 10880)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2279, line: 99, size: 704, elements: !2280)
!2279 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2306, !2307}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2278, file: !2279, line: 100, baseType: !38, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2278, file: !2279, line: 101, baseType: !93, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2278, file: !2279, line: 102, baseType: !93, size: 32, offset: 96)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2278, file: !2279, line: 105, baseType: !51, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2278, file: !2279, line: 107, baseType: !160, size: 16, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2278, file: !2279, line: 109, baseType: !869, size: 128, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2278, file: !2279, line: 110, baseType: !2288, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2279, line: 73, size: 448, elements: !2290)
!2290 = !{!2291, !2294, !2295, !2300, !2305}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2289, file: !2279, line: 74, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2279, line: 74, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2289, file: !2279, line: 75, baseType: !2277, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !2279, line: 83, baseType: !2296, size: 128, offset: 128)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2289, file: !2279, line: 83, size: 128, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2296, file: !2279, line: 84, baseType: !67, size: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2296, file: !2279, line: 85, baseType: !1051, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !2279, line: 87, baseType: !2301, size: 128, offset: 256)
!2301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2289, file: !2279, line: 87, size: 128, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2301, file: !2279, line: 88, baseType: !298, size: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2301, file: !2279, line: 89, baseType: !510, size: 128, align: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2289, file: !2279, line: 92, baseType: !20, size: 32, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2278, file: !2279, line: 111, baseType: !769, size: 64, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2278, file: !2279, line: 113, baseType: !239, size: 256, offset: 448)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1521, file: !1442, line: 1061, baseType: !2309, size: 64, offset: 10944)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1442, line: 43, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1521, file: !1442, line: 1064, baseType: !153, size: 64, offset: 11008)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1521, file: !1442, line: 1065, baseType: !2313, size: 64, offset: 11072)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2115, line: 14, baseType: !2315)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2115, line: 12, size: 384, elements: !2316)
!2316 = !{!2317}
!2317 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !2115, line: 13, baseType: !2318, size: 384)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2315, file: !2115, line: 13, size: 384, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2318, file: !2115, line: 13, baseType: !14, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2318, file: !2115, line: 13, baseType: !14, size: 32, offset: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2318, file: !2115, line: 13, baseType: !14, size: 32, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2318, file: !2115, line: 13, baseType: !2324, size: 256, offset: 128)
!2324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2325, line: 32, size: 256, elements: !2326)
!2325 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2332, !2345, !2351, !2360, !2380, !2385}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2324, file: !2325, line: 37, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2325, line: 34, size: 64, elements: !2329)
!2329 = !{!2330, !2331}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2328, file: !2325, line: 35, baseType: !1773, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2328, file: !2325, line: 36, baseType: !579, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2324, file: !2325, line: 45, baseType: !2333, size: 192)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2325, line: 40, size: 192, elements: !2334)
!2334 = !{!2335, !2337, !2338, !2344}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2333, file: !2325, line: 41, baseType: !2336, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !350, line: 95, baseType: !14)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2333, file: !2325, line: 42, baseType: !14, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2333, file: !2325, line: 43, baseType: !2339, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2325, line: 11, baseType: !2340)
!2340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2325, line: 8, size: 64, elements: !2341)
!2341 = !{!2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2340, file: !2325, line: 9, baseType: !14, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2340, file: !2325, line: 10, baseType: !268, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2333, file: !2325, line: 44, baseType: !14, size: 32, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2324, file: !2325, line: 52, baseType: !2346, size: 128)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2325, line: 48, size: 128, elements: !2347)
!2347 = !{!2348, !2349, !2350}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2346, file: !2325, line: 49, baseType: !1773, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2346, file: !2325, line: 50, baseType: !579, size: 32, offset: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2346, file: !2325, line: 51, baseType: !2339, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2324, file: !2325, line: 61, baseType: !2352, size: 256)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2325, line: 55, size: 256, elements: !2353)
!2353 = !{!2354, !2355, !2356, !2357, !2359}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2352, file: !2325, line: 56, baseType: !1773, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2352, file: !2325, line: 57, baseType: !579, size: 32, offset: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2352, file: !2325, line: 58, baseType: !14, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2352, file: !2325, line: 59, baseType: !2358, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !350, line: 94, baseType: !351)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2352, file: !2325, line: 60, baseType: !2358, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2324, file: !2325, line: 95, baseType: !2361, size: 256)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2325, line: 64, size: 256, elements: !2362)
!2362 = !{!2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2361, file: !2325, line: 65, baseType: !268, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !2361, file: !2325, line: 77, baseType: !2365, size: 192, offset: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2361, file: !2325, line: 77, size: 192, elements: !2366)
!2366 = !{!2367, !2368, !2375}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2365, file: !2325, line: 82, baseType: !1941, size: 16)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2365, file: !2325, line: 88, baseType: !2369, size: 192)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2365, file: !2325, line: 84, size: 192, elements: !2370)
!2370 = !{!2371, !2373, !2374}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2369, file: !2325, line: 85, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !1638)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2369, file: !2325, line: 86, baseType: !268, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2369, file: !2325, line: 87, baseType: !268, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2365, file: !2325, line: 93, baseType: !2376, size: 96)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2365, file: !2325, line: 90, size: 96, elements: !2377)
!2377 = !{!2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2376, file: !2325, line: 91, baseType: !2372, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2376, file: !2325, line: 92, baseType: !107, size: 32, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2324, file: !2325, line: 101, baseType: !2381, size: 128)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2325, line: 98, size: 128, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2381, file: !2325, line: 99, baseType: !352, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2381, file: !2325, line: 100, baseType: !14, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2324, file: !2325, line: 108, baseType: !2386, size: 128)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2325, line: 104, size: 128, elements: !2387)
!2387 = !{!2388, !2389, !2390}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2386, file: !2325, line: 105, baseType: !268, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2386, file: !2325, line: 106, baseType: !14, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2386, file: !2325, line: 107, baseType: !20, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1521, file: !1442, line: 1067, baseType: !2187, offset: 11136)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1521, file: !1442, line: 1099, baseType: !2393, size: 64, offset: 11136)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1442, line: 56, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1521, file: !1442, line: 1103, baseType: !67, size: 128, offset: 11200)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1521, file: !1442, line: 1104, baseType: !2397, size: 64, offset: 11328)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1442, line: 46, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1521, file: !1442, line: 1105, baseType: !34, size: 192, offset: 11392)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1521, file: !1442, line: 1106, baseType: !20, size: 32, offset: 11584)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1521, file: !1442, line: 1109, baseType: !2402, size: 128, offset: 11648)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2403, size: 128, elements: !170)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1442, line: 51, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1521, file: !1442, line: 1110, baseType: !34, size: 192, offset: 11776)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1521, file: !1442, line: 1111, baseType: !67, size: 128, offset: 11968)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1521, file: !1442, line: 1173, baseType: !2408, size: 64, offset: 12096)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2410, line: 62, size: 256, align: 256, elements: !2411)
!2410 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2411 = !{!2412, !2413, !2414, !2419}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2409, file: !2410, line: 75, baseType: !107, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2409, file: !2410, line: 90, baseType: !107, size: 32, offset: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2409, file: !2410, line: 124, baseType: !2415, size: 64, offset: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2409, file: !2410, line: 109, size: 64, elements: !2416)
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2415, file: !2410, line: 110, baseType: !490, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2415, file: !2410, line: 112, baseType: !490, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2409, file: !2410, line: 144, baseType: !107, size: 32, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1521, file: !1442, line: 1174, baseType: !194, size: 32, offset: 12160)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1521, file: !1442, line: 1179, baseType: !153, size: 64, offset: 12224)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1521, file: !1442, line: 1182, baseType: !2423, size: 128, offset: 12288)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1687, line: 76, size: 128, elements: !2424)
!2424 = !{!2425, !2430, !2431}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2423, file: !1687, line: 85, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2427, line: 7, size: 64, elements: !2428)
!2427 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2428 = !{!2429}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2426, file: !2427, line: 12, baseType: !1673, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2423, file: !1687, line: 88, baseType: !628, size: 8, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2423, file: !1687, line: 95, baseType: !628, size: 8, offset: 72)
!2432 = !DIDerivedType(tag: DW_TAG_member, scope: !1521, file: !1442, line: 1184, baseType: !2433, size: 128, offset: 12416)
!2433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1521, file: !1442, line: 1184, size: 128, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2433, file: !1442, line: 1185, baseType: !1533, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2433, file: !1442, line: 1186, baseType: !510, size: 128, align: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1521, file: !1442, line: 1190, baseType: !2438, size: 64, offset: 12544)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1442, line: 53, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1521, file: !1442, line: 1192, baseType: !2441, size: 128, offset: 12608)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1687, line: 64, size: 128, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2441, file: !1687, line: 65, baseType: !852, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2441, file: !1687, line: 67, baseType: !107, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2441, file: !1687, line: 68, baseType: !107, size: 32, offset: 96)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1521, file: !1442, line: 1206, baseType: !14, size: 32, offset: 12736)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1521, file: !1442, line: 1207, baseType: !14, size: 32, offset: 12768)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1521, file: !1442, line: 1209, baseType: !153, size: 64, offset: 12800)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1521, file: !1442, line: 1219, baseType: !489, size: 64, offset: 12864)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1521, file: !1442, line: 1220, baseType: !489, size: 64, offset: 12928)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1521, file: !1442, line: 1317, baseType: !14, size: 32, offset: 12992)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1521, file: !1442, line: 1319, baseType: !1520, size: 64, offset: 13056)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1521, file: !1442, line: 1322, baseType: !2454, size: 64, offset: 13120)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2456, line: 56, size: 512, elements: !2457)
!2456 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2466}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2455, file: !2456, line: 57, baseType: !2454, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2455, file: !2456, line: 58, baseType: !268, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2455, file: !2456, line: 59, baseType: !153, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2455, file: !2456, line: 60, baseType: !153, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2455, file: !2456, line: 61, baseType: !930, size: 64, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2455, file: !2456, line: 62, baseType: !20, size: 32, offset: 320)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2455, file: !2456, line: 63, baseType: !2465, size: 64, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !41, line: 153, baseType: !489)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2455, file: !2456, line: 64, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1521, file: !1442, line: 1326, baseType: !1533, size: 32, offset: 13184)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1521, file: !1442, line: 1342, baseType: !268, size: 64, offset: 13248)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1521, file: !1442, line: 1343, baseType: !490, size: 64, offset: 13312)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1521, file: !1442, line: 1344, baseType: !489, size: 64, offset: 13376)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1521, file: !1442, line: 1345, baseType: !490, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1521, file: !1442, line: 1346, baseType: !490, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1521, file: !1442, line: 1347, baseType: !490, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1521, file: !1442, line: 1348, baseType: !510, size: 128, align: 64, offset: 13504)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1521, file: !1442, line: 1358, baseType: !2478, size: 34816, offset: 13824)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2479, line: 485, size: 34816, elements: !2480)
!2479 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !{!2481, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2510, !2511, !2512, !2513, !2514, !2515, !2518, !2519, !2520}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2478, file: !2479, line: 487, baseType: !2482, size: 192)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2483, size: 192, elements: !779)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2484, line: 16, size: 64, elements: !2485)
!2484 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2483, file: !2484, line: 17, baseType: !969, size: 16)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2483, file: !2484, line: 18, baseType: !969, size: 16, offset: 16)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2483, file: !2484, line: 19, baseType: !969, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2483, file: !2484, line: 19, baseType: !969, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2483, file: !2484, line: 19, baseType: !969, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2483, file: !2484, line: 19, baseType: !969, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2483, file: !2484, line: 19, baseType: !969, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2483, file: !2484, line: 20, baseType: !969, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2483, file: !2484, line: 20, baseType: !969, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2483, file: !2484, line: 20, baseType: !969, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2483, file: !2484, line: 20, baseType: !969, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2483, file: !2484, line: 20, baseType: !969, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2483, file: !2484, line: 20, baseType: !969, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2478, file: !2479, line: 491, baseType: !153, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2478, file: !2479, line: 495, baseType: !160, size: 16, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2478, file: !2479, line: 496, baseType: !160, size: 16, offset: 272)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2478, file: !2479, line: 497, baseType: !160, size: 16, offset: 288)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2478, file: !2479, line: 498, baseType: !160, size: 16, offset: 304)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2478, file: !2479, line: 502, baseType: !153, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2478, file: !2479, line: 503, baseType: !153, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2478, file: !2479, line: 514, baseType: !2507, size: 256, offset: 448)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2508, size: 256, elements: !142)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2479, line: 483, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2478, file: !2479, line: 516, baseType: !153, size: 64, offset: 704)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2478, file: !2479, line: 518, baseType: !153, size: 64, offset: 768)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2478, file: !2479, line: 520, baseType: !153, size: 64, offset: 832)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2478, file: !2479, line: 521, baseType: !153, size: 64, offset: 896)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2478, file: !2479, line: 522, baseType: !153, size: 64, offset: 960)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2478, file: !2479, line: 528, baseType: !2516, size: 64, offset: 1024)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2479, line: 10, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2478, file: !2479, line: 535, baseType: !153, size: 64, offset: 1088)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2478, file: !2479, line: 537, baseType: !20, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2478, file: !2479, line: 540, baseType: !2521, size: 33280, offset: 1536)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2522, line: 317, size: 33280, elements: !2523)
!2522 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2523 = !{!2524, !2525, !2526}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2521, file: !2522, line: 330, baseType: !20, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2521, file: !2522, line: 337, baseType: !153, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2521, file: !2522, line: 348, baseType: !2527, size: 32768, offset: 512)
!2527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2522, line: 304, size: 32768, elements: !2528)
!2528 = !{!2529, !2544, !2583, !2633, !2646}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2527, file: !2522, line: 305, baseType: !2530, size: 896)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2522, line: 12, size: 896, elements: !2531)
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2543}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2530, file: !2522, line: 13, baseType: !194, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2530, file: !2522, line: 14, baseType: !194, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2530, file: !2522, line: 15, baseType: !194, size: 32, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2530, file: !2522, line: 16, baseType: !194, size: 32, offset: 96)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2530, file: !2522, line: 17, baseType: !194, size: 32, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2530, file: !2522, line: 18, baseType: !194, size: 32, offset: 160)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2530, file: !2522, line: 19, baseType: !194, size: 32, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2530, file: !2522, line: 22, baseType: !2540, size: 640, offset: 224)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 640, elements: !2541)
!2541 = !{!2542}
!2542 = !DISubrange(count: 20)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2530, file: !2522, line: 25, baseType: !194, size: 32, offset: 864)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2527, file: !2522, line: 306, baseType: !2545, size: 4096, align: 128)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2522, line: 34, size: 4096, align: 128, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2566, !2567, !2568, !2572, !2574, !2578}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2545, file: !2522, line: 35, baseType: !969, size: 16)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2545, file: !2522, line: 36, baseType: !969, size: 16, offset: 16)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2545, file: !2522, line: 37, baseType: !969, size: 16, offset: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2545, file: !2522, line: 38, baseType: !969, size: 16, offset: 48)
!2551 = !DIDerivedType(tag: DW_TAG_member, scope: !2545, file: !2522, line: 39, baseType: !2552, size: 128, offset: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2545, file: !2522, line: 39, size: 128, elements: !2553)
!2553 = !{!2554, !2559}
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !2522, line: 40, baseType: !2555, size: 128)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2552, file: !2522, line: 40, size: 128, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2555, file: !2522, line: 41, baseType: !489, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2555, file: !2522, line: 42, baseType: !489, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !2522, line: 44, baseType: !2560, size: 128)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2552, file: !2522, line: 44, size: 128, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2560, file: !2522, line: 45, baseType: !194, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2560, file: !2522, line: 46, baseType: !194, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2560, file: !2522, line: 47, baseType: !194, size: 32, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2560, file: !2522, line: 48, baseType: !194, size: 32, offset: 96)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2545, file: !2522, line: 51, baseType: !194, size: 32, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2545, file: !2522, line: 52, baseType: !194, size: 32, offset: 224)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2545, file: !2522, line: 55, baseType: !2569, size: 1024, offset: 256)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 1024, elements: !2570)
!2570 = !{!2571}
!2571 = !DISubrange(count: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2545, file: !2522, line: 58, baseType: !2573, size: 2048, offset: 1280)
!2573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 2048, elements: !2232)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2545, file: !2522, line: 60, baseType: !2575, size: 384, offset: 3328)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 384, elements: !2576)
!2576 = !{!2577}
!2577 = !DISubrange(count: 12)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !2545, file: !2522, line: 62, baseType: !2579, size: 384, offset: 3712)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2545, file: !2522, line: 62, size: 384, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2579, file: !2522, line: 63, baseType: !2575, size: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2579, file: !2522, line: 64, baseType: !2575, size: 384)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2527, file: !2522, line: 307, baseType: !2584, size: 1088)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2522, line: 79, size: 1088, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2632}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2584, file: !2522, line: 80, baseType: !194, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2584, file: !2522, line: 81, baseType: !194, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2584, file: !2522, line: 82, baseType: !194, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2584, file: !2522, line: 83, baseType: !194, size: 32, offset: 96)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2584, file: !2522, line: 84, baseType: !194, size: 32, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2584, file: !2522, line: 85, baseType: !194, size: 32, offset: 160)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2584, file: !2522, line: 86, baseType: !194, size: 32, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2584, file: !2522, line: 88, baseType: !2540, size: 640, offset: 224)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2584, file: !2522, line: 89, baseType: !255, size: 8, offset: 864)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2584, file: !2522, line: 90, baseType: !255, size: 8, offset: 872)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2584, file: !2522, line: 91, baseType: !255, size: 8, offset: 880)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2584, file: !2522, line: 92, baseType: !255, size: 8, offset: 888)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2584, file: !2522, line: 93, baseType: !255, size: 8, offset: 896)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2584, file: !2522, line: 94, baseType: !255, size: 8, offset: 904)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2584, file: !2522, line: 95, baseType: !2601, size: 64, offset: 960)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2603, line: 11, size: 128, elements: !2604)
!2603 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2604 = !{!2605, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2602, file: !2603, line: 12, baseType: !352, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2602, file: !2603, line: 13, baseType: !2607, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2609, line: 56, size: 1344, elements: !2610)
!2609 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2610 = !{!2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2608, file: !2609, line: 61, baseType: !153, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2608, file: !2609, line: 62, baseType: !153, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2608, file: !2609, line: 63, baseType: !153, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2608, file: !2609, line: 64, baseType: !153, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2608, file: !2609, line: 65, baseType: !153, size: 64, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2608, file: !2609, line: 66, baseType: !153, size: 64, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2608, file: !2609, line: 68, baseType: !153, size: 64, offset: 384)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2608, file: !2609, line: 69, baseType: !153, size: 64, offset: 448)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2608, file: !2609, line: 70, baseType: !153, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2608, file: !2609, line: 71, baseType: !153, size: 64, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2608, file: !2609, line: 72, baseType: !153, size: 64, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2608, file: !2609, line: 73, baseType: !153, size: 64, offset: 704)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2608, file: !2609, line: 74, baseType: !153, size: 64, offset: 768)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2608, file: !2609, line: 75, baseType: !153, size: 64, offset: 832)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2608, file: !2609, line: 76, baseType: !153, size: 64, offset: 896)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2608, file: !2609, line: 81, baseType: !153, size: 64, offset: 960)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2608, file: !2609, line: 83, baseType: !153, size: 64, offset: 1024)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2608, file: !2609, line: 84, baseType: !153, size: 64, offset: 1088)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2608, file: !2609, line: 85, baseType: !153, size: 64, offset: 1152)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2608, file: !2609, line: 86, baseType: !153, size: 64, offset: 1216)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2608, file: !2609, line: 87, baseType: !153, size: 64, offset: 1280)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2584, file: !2522, line: 96, baseType: !194, size: 32, offset: 1024)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2527, file: !2522, line: 308, baseType: !2634, size: 4608, align: 512)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2522, line: 289, size: 4608, align: 512, elements: !2635)
!2635 = !{!2636, !2637, !2644}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2634, file: !2522, line: 290, baseType: !2545, size: 4096, align: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2634, file: !2522, line: 291, baseType: !2638, size: 512, offset: 4096)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2522, line: 268, size: 512, elements: !2639)
!2639 = !{!2640, !2641, !2642}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2638, file: !2522, line: 269, baseType: !489, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2638, file: !2522, line: 270, baseType: !489, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2638, file: !2522, line: 271, baseType: !2643, size: 384, offset: 128)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 384, elements: !1959)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2634, file: !2522, line: 292, baseType: !2645, offset: 4608)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, elements: !1216)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2527, file: !2522, line: 309, baseType: !2647, size: 32768)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 32768, elements: !2648)
!2648 = !{!2649}
!2649 = !DISubrange(count: 4096)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1502, file: !1503, line: 16, baseType: !1494, size: 128, offset: 448)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1502, file: !1503, line: 17, baseType: !93, size: 32, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !734, file: !498, line: 1465, baseType: !268, size: 64, offset: 6400)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !734, file: !498, line: 1468, baseType: !194, size: 32, offset: 6464)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !734, file: !498, line: 1470, baseType: !674, size: 64, offset: 6528)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !734, file: !498, line: 1471, baseType: !674, size: 64, offset: 6592)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !734, file: !498, line: 1473, baseType: !107, size: 32, offset: 6656)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !734, file: !498, line: 1474, baseType: !2658, size: 64, offset: 6720)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !498, line: 603, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !734, file: !498, line: 1477, baseType: !2661, size: 256, offset: 6784)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !2570)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !734, file: !498, line: 1478, baseType: !2663, size: 128, offset: 7040)
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2664, line: 18, baseType: !2665)
!2664 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2664, line: 16, size: 128, elements: !2666)
!2666 = !{!2667}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2665, file: !2664, line: 17, baseType: !2668, size: 128)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !150)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !734, file: !498, line: 1480, baseType: !20, size: 32, offset: 7168)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !734, file: !498, line: 1481, baseType: !2671, size: 32, offset: 7200)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !41, line: 150, baseType: !20)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !734, file: !498, line: 1487, baseType: !34, size: 192, offset: 7232)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !734, file: !498, line: 1493, baseType: !191, size: 64, offset: 7424)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !734, file: !498, line: 1495, baseType: !2675, size: 64, offset: 7488)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2677)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !525, line: 135, size: 1024, align: 512, elements: !2678)
!2678 = !{!2679, !2683, !2684, !2691, !2697, !2701, !2705, !2709, !2710, !2714, !2718, !2723, !2727}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2677, file: !525, line: 136, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!14, !527, !20}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2677, file: !525, line: 137, baseType: !2680, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2677, file: !525, line: 138, baseType: !2685, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!14, !2688, !2690}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2677, file: !525, line: 139, baseType: !2692, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!14, !2688, !20, !191, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2677, file: !525, line: 141, baseType: !2698, size: 64, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!14, !2688}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2677, file: !525, line: 142, baseType: !2702, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!14, !527}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2677, file: !525, line: 143, baseType: !2706, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !527}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2677, file: !525, line: 144, baseType: !2706, size: 64, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2677, file: !525, line: 145, baseType: !2711, size: 64, offset: 512)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{null, !527, !566}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2677, file: !525, line: 146, baseType: !2715, size: 64, offset: 576)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!353, !527, !353, !14}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2677, file: !525, line: 147, baseType: !2719, size: 64, offset: 640)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!523, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2677, file: !525, line: 148, baseType: !2724, size: 64, offset: 704)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!14, !683, !628}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2677, file: !525, line: 149, baseType: !2728, size: 64, offset: 768)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!527, !527, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !734, file: !498, line: 1500, baseType: !14, size: 32, offset: 7552)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !734, file: !498, line: 1502, baseType: !2735, size: 448, offset: 7616)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1234, line: 60, size: 448, elements: !2736)
!2736 = !{!2737, !2742, !2743, !2744, !2745, !2746, !2747}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2735, file: !1234, line: 61, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!153, !2741, !1232}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2735, file: !1234, line: 63, baseType: !2738, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2735, file: !1234, line: 66, baseType: !352, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2735, file: !1234, line: 67, baseType: !14, size: 32, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2735, file: !1234, line: 68, baseType: !20, size: 32, offset: 224)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2735, file: !1234, line: 71, baseType: !67, size: 128, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2735, file: !1234, line: 77, baseType: !2748, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !734, file: !498, line: 1505, baseType: !38, size: 64, offset: 8064)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !734, file: !498, line: 1508, baseType: !38, size: 64, offset: 8128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !734, file: !498, line: 1511, baseType: !14, size: 32, offset: 8192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !734, file: !498, line: 1514, baseType: !1025, size: 32, offset: 8224)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !734, file: !498, line: 1517, baseType: !312, size: 64, offset: 8256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !734, file: !498, line: 1518, baseType: !769, size: 64, offset: 8320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !734, file: !498, line: 1525, baseType: !1825, size: 64, offset: 8384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !734, file: !498, line: 1532, baseType: !2757, size: 64, offset: 8448)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2758, line: 52, size: 64, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2757, file: !2758, line: 53, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2758, line: 40, size: 256, elements: !2763)
!2763 = !{!2764, !2765, !2770}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2762, file: !2758, line: 42, baseType: !51)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2762, file: !2758, line: 44, baseType: !2766, size: 192)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2758, line: 28, size: 192, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2766, file: !2758, line: 29, baseType: !67, size: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2766, file: !2758, line: 31, baseType: !352, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2762, file: !2758, line: 49, baseType: !352, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !734, file: !498, line: 1533, baseType: !2757, size: 64, offset: 8512)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !734, file: !498, line: 1534, baseType: !510, size: 128, align: 64, offset: 8576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !734, file: !498, line: 1535, baseType: !239, size: 256, offset: 8704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !734, file: !498, line: 1537, baseType: !34, size: 192, offset: 8960)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !734, file: !498, line: 1542, baseType: !14, size: 32, offset: 9152)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !734, file: !498, line: 1545, baseType: !51, offset: 9184)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !734, file: !498, line: 1546, baseType: !67, size: 128, offset: 9216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !734, file: !498, line: 1548, baseType: !51, offset: 9344)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !734, file: !498, line: 1549, baseType: !67, size: 128, offset: 9344)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !567, file: !498, line: 624, baseType: !864, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !567, file: !498, line: 631, baseType: !153, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_member, scope: !567, file: !498, line: 639, baseType: !2783, size: 32, offset: 384)
!2783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !567, file: !498, line: 639, size: 32, elements: !2784)
!2784 = !{!2785, !2787}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2783, file: !498, line: 640, baseType: !2786, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2783, file: !498, line: 641, baseType: !20, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !567, file: !498, line: 643, baseType: !651, size: 32, offset: 416)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !567, file: !498, line: 644, baseType: !358, size: 64, offset: 448)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !567, file: !498, line: 645, baseType: !670, size: 128, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !567, file: !498, line: 646, baseType: !670, size: 128, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !567, file: !498, line: 647, baseType: !670, size: 128, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !567, file: !498, line: 648, baseType: !51, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !567, file: !498, line: 649, baseType: !160, size: 16, offset: 896)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !567, file: !498, line: 650, baseType: !255, size: 8, offset: 912)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !567, file: !498, line: 651, baseType: !255, size: 8, offset: 920)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !567, file: !498, line: 652, baseType: !1412, size: 64, offset: 960)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !567, file: !498, line: 659, baseType: !153, size: 64, offset: 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !567, file: !498, line: 660, baseType: !884, size: 256, offset: 1088)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !567, file: !498, line: 662, baseType: !153, size: 64, offset: 1344)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !567, file: !498, line: 663, baseType: !153, size: 64, offset: 1408)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !567, file: !498, line: 665, baseType: !298, size: 128, offset: 1472)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !567, file: !498, line: 666, baseType: !67, size: 128, offset: 1600)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !567, file: !498, line: 675, baseType: !67, size: 128, offset: 1728)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !567, file: !498, line: 676, baseType: !67, size: 128, offset: 1856)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !567, file: !498, line: 677, baseType: !67, size: 128, offset: 1984)
!2807 = !DIDerivedType(tag: DW_TAG_member, scope: !567, file: !498, line: 678, baseType: !2808, size: 128, offset: 2112)
!2808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !567, file: !498, line: 678, size: 128, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2808, file: !498, line: 679, baseType: !769, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2808, file: !498, line: 680, baseType: !510, size: 128, align: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !567, file: !498, line: 682, baseType: !40, size: 64, offset: 2240)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !567, file: !498, line: 683, baseType: !40, size: 64, offset: 2304)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !567, file: !498, line: 684, baseType: !93, size: 32, offset: 2368)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !567, file: !498, line: 685, baseType: !93, size: 32, offset: 2400)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !567, file: !498, line: 686, baseType: !93, size: 32, offset: 2432)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !567, file: !498, line: 688, baseType: !93, size: 32, offset: 2464)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !567, file: !498, line: 690, baseType: !2819, size: 64, offset: 2496)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !567, file: !498, line: 690, size: 64, elements: !2820)
!2820 = !{!2821, !3043}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2819, file: !498, line: 691, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2824)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !498, line: 1822, size: 2048, elements: !2825)
!2825 = !{!2826, !2827, !2831, !2835, !2839, !2840, !2841, !2845, !2858, !2859, !2867, !2871, !2872, !2876, !2877, !2881, !2886, !2887, !2891, !2895, !3003, !3007, !3008, !3012, !3013, !3017, !3021, !3026, !3030, !3034, !3038, !3042}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2824, file: !498, line: 1823, baseType: !336, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2824, file: !498, line: 1824, baseType: !2828, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!358, !496, !358, !14}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2824, file: !498, line: 1825, baseType: !2832, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!348, !496, !353, !354, !357}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2824, file: !498, line: 1826, baseType: !2836, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!348, !496, !191, !354, !357}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2824, file: !498, line: 1827, baseType: !954, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2824, file: !498, line: 1828, baseType: !954, size: 64, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2824, file: !498, line: 1829, baseType: !2842, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!14, !957, !628}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2824, file: !498, line: 1830, baseType: !2846, size: 64, offset: 448)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!14, !496, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !498, line: 1776, size: 128, elements: !2851)
!2851 = !{!2852, !2857}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2850, file: !498, line: 1777, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !498, line: 1773, baseType: !2854)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!14, !2849, !191, !14, !358, !489, !20}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2850, file: !498, line: 1778, baseType: !358, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2824, file: !498, line: 1831, baseType: !2846, size: 64, offset: 512)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2824, file: !498, line: 1832, baseType: !2860, size: 64, offset: 576)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!2863, !496, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2864, line: 52, baseType: !20)
!2864 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !753, line: 27, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2824, file: !498, line: 1833, baseType: !2868, size: 64, offset: 640)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!352, !496, !20, !153}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2824, file: !498, line: 1834, baseType: !2868, size: 64, offset: 704)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2824, file: !498, line: 1835, baseType: !2873, size: 64, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!14, !496, !459}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2824, file: !498, line: 1836, baseType: !153, size: 64, offset: 832)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2824, file: !498, line: 1837, baseType: !2878, size: 64, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!14, !566, !496}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2824, file: !498, line: 1838, baseType: !2882, size: 64, offset: 960)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!14, !496, !2885}
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !498, line: 1007, baseType: !268)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2824, file: !498, line: 1839, baseType: !2878, size: 64, offset: 1024)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2824, file: !498, line: 1840, baseType: !2888, size: 64, offset: 1088)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!14, !496, !358, !358, !14}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2824, file: !498, line: 1841, baseType: !2892, size: 64, offset: 1152)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!14, !14, !496, !14}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2824, file: !498, line: 1842, baseType: !2896, size: 64, offset: 1216)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!14, !496, !14, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !498, line: 1062, size: 1664, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2933, !2934, !2935, !2948, !2979}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2900, file: !498, line: 1063, baseType: !2899, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2900, file: !498, line: 1064, baseType: !67, size: 128, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2900, file: !498, line: 1065, baseType: !298, size: 128, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2900, file: !498, line: 1066, baseType: !67, size: 128, offset: 320)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2900, file: !498, line: 1069, baseType: !67, size: 128, offset: 448)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2900, file: !498, line: 1072, baseType: !2885, size: 64, offset: 576)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2900, file: !498, line: 1073, baseType: !20, size: 32, offset: 640)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2900, file: !498, line: 1074, baseType: !210, size: 8, offset: 672)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2900, file: !498, line: 1075, baseType: !20, size: 32, offset: 704)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2900, file: !498, line: 1076, baseType: !14, size: 32, offset: 736)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2900, file: !498, line: 1077, baseType: !1494, size: 128, offset: 768)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2900, file: !498, line: 1078, baseType: !496, size: 64, offset: 896)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2900, file: !498, line: 1079, baseType: !358, size: 64, offset: 960)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2900, file: !498, line: 1080, baseType: !358, size: 64, offset: 1024)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2900, file: !498, line: 1082, baseType: !2917, size: 64, offset: 1088)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !498, line: 1314, size: 320, elements: !2919)
!2919 = !{!2920, !2928, !2929, !2930, !2931, !2932}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2918, file: !498, line: 1315, baseType: !2921)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2922, line: 20, baseType: !2923)
!2922 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2922, line: 11, elements: !2924)
!2924 = !{!2925}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2923, file: !2922, line: 12, baseType: !2926)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !63, line: 33, baseType: !2927)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 31, elements: !65)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2918, file: !498, line: 1316, baseType: !14, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2918, file: !498, line: 1317, baseType: !14, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2918, file: !498, line: 1318, baseType: !2917, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2918, file: !498, line: 1319, baseType: !496, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2918, file: !498, line: 1320, baseType: !510, size: 128, align: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2900, file: !498, line: 1084, baseType: !153, size: 64, offset: 1152)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2900, file: !498, line: 1085, baseType: !153, size: 64, offset: 1216)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2900, file: !498, line: 1087, baseType: !2936, size: 64, offset: 1280)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2938)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !498, line: 1011, size: 128, elements: !2939)
!2939 = !{!2940, !2944}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2938, file: !498, line: 1012, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2899, !2899}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2938, file: !498, line: 1013, baseType: !2945, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !2899}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2900, file: !498, line: 1088, baseType: !2949, size: 64, offset: 1344)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2951)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !498, line: 1016, size: 512, elements: !2952)
!2952 = !{!2953, !2957, !2961, !2962, !2966, !2970, !2974, !2978}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2951, file: !498, line: 1017, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!2885, !2885}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2951, file: !498, line: 1018, baseType: !2958, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !2885}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2951, file: !498, line: 1019, baseType: !2945, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2951, file: !498, line: 1020, baseType: !2963, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!14, !2899, !14}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2951, file: !498, line: 1021, baseType: !2967, size: 64, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!628, !2899}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2951, file: !498, line: 1022, baseType: !2971, size: 64, offset: 320)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!14, !2899, !14, !70}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2951, file: !498, line: 1023, baseType: !2975, size: 64, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2899, !931}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2951, file: !498, line: 1024, baseType: !2967, size: 64, offset: 448)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2900, file: !498, line: 1097, baseType: !2980, size: 256, offset: 1408)
!2980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2900, file: !498, line: 1089, size: 256, elements: !2981)
!2981 = !{!2982, !2991, !2997}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2980, file: !498, line: 1090, baseType: !2983, size: 256)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2984, line: 10, size: 256, elements: !2985)
!2984 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2985 = !{!2986, !2987, !2990}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2983, file: !2984, line: 11, baseType: !194, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2983, file: !2984, line: 12, baseType: !2988, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2984, line: 5, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2983, file: !2984, line: 13, baseType: !67, size: 128, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2980, file: !498, line: 1091, baseType: !2992, size: 64)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2984, line: 17, size: 64, elements: !2993)
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2992, file: !2984, line: 18, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2984, line: 16, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2980, file: !498, line: 1096, baseType: !2998, size: 192)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2980, file: !498, line: 1092, size: 192, elements: !2999)
!2999 = !{!3000, !3001, !3002}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2998, file: !498, line: 1093, baseType: !67, size: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2998, file: !498, line: 1094, baseType: !14, size: 32, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2998, file: !498, line: 1095, baseType: !20, size: 32, offset: 160)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2824, file: !498, line: 1843, baseType: !3004, size: 64, offset: 1280)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!348, !496, !852, !14, !354, !357, !14}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2824, file: !498, line: 1844, baseType: !493, size: 64, offset: 1344)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2824, file: !498, line: 1845, baseType: !3009, size: 64, offset: 1408)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!14, !14}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2824, file: !498, line: 1846, baseType: !2896, size: 64, offset: 1472)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2824, file: !498, line: 1847, baseType: !3014, size: 64, offset: 1536)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!348, !2438, !496, !357, !354, !20}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2824, file: !498, line: 1848, baseType: !3018, size: 64, offset: 1600)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!348, !496, !357, !2438, !354, !20}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2824, file: !498, line: 1849, baseType: !3022, size: 64, offset: 1664)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!14, !496, !352, !3025, !931}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2824, file: !498, line: 1850, baseType: !3027, size: 64, offset: 1728)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!352, !496, !14, !358, !358}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2824, file: !498, line: 1852, baseType: !3031, size: 64, offset: 1792)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !842, !496}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2824, file: !498, line: 1856, baseType: !3035, size: 64, offset: 1856)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!348, !496, !358, !496, !358, !354, !20}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2824, file: !498, line: 1858, baseType: !3039, size: 64, offset: 1920)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!358, !496, !358, !496, !358, !358, !20}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2824, file: !498, line: 1861, baseType: !2888, size: 64, offset: 1984)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2819, file: !498, line: 692, baseType: !794, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !567, file: !498, line: 694, baseType: !3045, size: 64, offset: 2560)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !498, line: 1100, size: 384, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3051}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3046, file: !498, line: 1101, baseType: !51)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3046, file: !498, line: 1102, baseType: !67, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3046, file: !498, line: 1103, baseType: !67, size: 128, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3046, file: !498, line: 1104, baseType: !67, size: 128, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !567, file: !498, line: 695, baseType: !865, size: 1216, align: 64, offset: 2624)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !567, file: !498, line: 696, baseType: !67, size: 128, offset: 3840)
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !567, file: !498, line: 697, baseType: !3055, size: 64, offset: 3968)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !567, file: !498, line: 697, size: 64, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3062, !3063}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3055, file: !498, line: 698, baseType: !2438, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3055, file: !498, line: 699, baseType: !1437, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3055, file: !498, line: 700, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !498, line: 700, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3055, file: !498, line: 701, baseType: !353, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3055, file: !498, line: 702, baseType: !20, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !567, file: !498, line: 705, baseType: !107, size: 32, offset: 4032)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !567, file: !498, line: 708, baseType: !107, size: 32, offset: 4064)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !567, file: !498, line: 709, baseType: !2658, size: 64, offset: 4096)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !567, file: !498, line: 720, baseType: !268, size: 64, offset: 4160)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !528, file: !525, line: 98, baseType: !3069, size: 256, offset: 448)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !2570)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !528, file: !525, line: 101, baseType: !3071, size: 32, offset: 704)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3072, line: 25, size: 32, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3073 = !{!3074}
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !3071, file: !3072, line: 26, baseType: !3075, size: 32)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3071, file: !3072, line: 26, size: 32, elements: !3076)
!3076 = !{!3077}
!3077 = !DIDerivedType(tag: DW_TAG_member, scope: !3075, file: !3072, line: 30, baseType: !3078, size: 32)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3072, line: 30, size: 32, elements: !3079)
!3079 = !{!3080, !3081}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3078, file: !3072, line: 31, baseType: !51)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3078, file: !3072, line: 32, baseType: !14, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !528, file: !525, line: 102, baseType: !2675, size: 64, offset: 768)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !528, file: !525, line: 103, baseType: !733, size: 64, offset: 832)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !528, file: !525, line: 104, baseType: !153, size: 64, offset: 896)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !528, file: !525, line: 105, baseType: !268, size: 64, offset: 960)
!3086 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !525, line: 107, baseType: !3087, size: 128, offset: 1024)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !525, line: 107, size: 128, elements: !3088)
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3087, file: !525, line: 108, baseType: !67, size: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3087, file: !525, line: 109, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !528, file: !525, line: 111, baseType: !67, size: 128, offset: 1152)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !528, file: !525, line: 112, baseType: !67, size: 128, offset: 1280)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !528, file: !525, line: 120, baseType: !3095, size: 128, offset: 1408)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !525, line: 116, size: 128, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3095, file: !525, line: 117, baseType: !298, size: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3095, file: !525, line: 118, baseType: !542, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3095, file: !525, line: 119, baseType: !510, size: 128, align: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !497, file: !498, line: 922, baseType: !566, size: 64, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !497, file: !498, line: 923, baseType: !2822, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !497, file: !498, line: 929, baseType: !51, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !497, file: !498, line: 930, baseType: !3104, size: 32, offset: 384)
!3104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !498, line: 296, baseType: !20, size: 32, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111}
!3106 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!3107 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!3108 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!3109 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!3110 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!3111 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !497, file: !498, line: 931, baseType: !38, size: 64, offset: 448)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !497, file: !498, line: 932, baseType: !20, size: 32, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !497, file: !498, line: 933, baseType: !2671, size: 32, offset: 544)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !497, file: !498, line: 934, baseType: !34, size: 192, offset: 576)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !497, file: !498, line: 935, baseType: !358, size: 64, offset: 768)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !497, file: !498, line: 936, baseType: !3118, size: 192, offset: 832)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !498, line: 885, size: 192, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3130, !3131, !3132}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3118, file: !498, line: 886, baseType: !2921)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3118, file: !498, line: 887, baseType: !1784, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3118, file: !498, line: 888, baseType: !3123, size: 32, offset: 64)
!3123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1786, line: 9, baseType: !20, size: 32, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129}
!3125 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!3126 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!3127 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!3128 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!3129 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3118, file: !498, line: 889, baseType: !573, size: 32, offset: 96)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3118, file: !498, line: 889, baseType: !573, size: 32, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3118, file: !498, line: 890, baseType: !14, size: 32, offset: 160)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !497, file: !498, line: 937, baseType: !1882, size: 64, offset: 1024)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !497, file: !498, line: 938, baseType: !3135, size: 256, offset: 1088)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !498, line: 896, size: 256, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3135, file: !498, line: 897, baseType: !153, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3135, file: !498, line: 898, baseType: !20, size: 32, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3135, file: !498, line: 899, baseType: !20, size: 32, offset: 96)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3135, file: !498, line: 902, baseType: !20, size: 32, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3135, file: !498, line: 903, baseType: !20, size: 32, offset: 160)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3135, file: !498, line: 904, baseType: !358, size: 64, offset: 192)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !497, file: !498, line: 940, baseType: !489, size: 64, offset: 1344)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !497, file: !498, line: 945, baseType: !268, size: 64, offset: 1408)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !497, file: !498, line: 949, baseType: !67, size: 128, offset: 1472)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !497, file: !498, line: 950, baseType: !67, size: 128, offset: 1600)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !497, file: !498, line: 952, baseType: !864, size: 64, offset: 1728)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !497, file: !498, line: 953, baseType: !1025, size: 32, offset: 1792)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !497, file: !498, line: 954, baseType: !1025, size: 32, offset: 1824)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !481, file: !461, line: 398, baseType: !153, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !481, file: !461, line: 399, baseType: !153, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !481, file: !461, line: 405, baseType: !153, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !481, file: !461, line: 406, baseType: !153, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !481, file: !461, line: 407, baseType: !3155, size: 64, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !844, line: 286, baseType: !3157)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !844, line: 286, size: 64, elements: !3158)
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3157, file: !844, line: 286, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1182, line: 18, baseType: !153)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !481, file: !461, line: 416, baseType: !93, size: 32, offset: 576)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !481, file: !461, line: 428, baseType: !93, size: 32, offset: 608)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !481, file: !461, line: 437, baseType: !93, size: 32, offset: 640)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !481, file: !461, line: 447, baseType: !93, size: 32, offset: 672)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !481, file: !461, line: 450, baseType: !38, size: 64, offset: 704)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !481, file: !461, line: 452, baseType: !14, size: 32, offset: 768)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !481, file: !461, line: 454, baseType: !51, offset: 800)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !481, file: !461, line: 457, baseType: !884, size: 256, offset: 832)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !481, file: !461, line: 459, baseType: !67, size: 128, offset: 1088)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !481, file: !461, line: 466, baseType: !153, size: 64, offset: 1216)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !481, file: !461, line: 467, baseType: !153, size: 64, offset: 1280)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !481, file: !461, line: 469, baseType: !153, size: 64, offset: 1344)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !481, file: !461, line: 470, baseType: !153, size: 64, offset: 1408)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !481, file: !461, line: 471, baseType: !40, size: 64, offset: 1472)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !481, file: !461, line: 472, baseType: !153, size: 64, offset: 1536)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !481, file: !461, line: 473, baseType: !153, size: 64, offset: 1600)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !481, file: !461, line: 474, baseType: !153, size: 64, offset: 1664)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !481, file: !461, line: 475, baseType: !153, size: 64, offset: 1728)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !481, file: !461, line: 477, baseType: !51, offset: 1792)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !481, file: !461, line: 478, baseType: !153, size: 64, offset: 1792)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !481, file: !461, line: 478, baseType: !153, size: 64, offset: 1856)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !481, file: !461, line: 478, baseType: !153, size: 64, offset: 1920)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !481, file: !461, line: 478, baseType: !153, size: 64, offset: 1984)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !481, file: !461, line: 479, baseType: !153, size: 64, offset: 2048)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !481, file: !461, line: 479, baseType: !153, size: 64, offset: 2112)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !481, file: !461, line: 479, baseType: !153, size: 64, offset: 2176)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !481, file: !461, line: 480, baseType: !153, size: 64, offset: 2240)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !481, file: !461, line: 480, baseType: !153, size: 64, offset: 2304)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !481, file: !461, line: 480, baseType: !153, size: 64, offset: 2368)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !481, file: !461, line: 480, baseType: !153, size: 64, offset: 2432)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !481, file: !461, line: 482, baseType: !3192, size: 2816, offset: 2496)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 2816, elements: !3193)
!3193 = !{!3194}
!3194 = !DISubrange(count: 44)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !481, file: !461, line: 488, baseType: !3196, size: 256, offset: 5312)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1687, line: 60, size: 256, elements: !3197)
!3197 = !{!3198}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3196, file: !1687, line: 61, baseType: !3199, size: 256)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !142)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !481, file: !461, line: 490, baseType: !3201, size: 64, offset: 5568)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !461, line: 490, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !481, file: !461, line: 493, baseType: !3204, size: 896, offset: 5632)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3205, line: 53, baseType: !3206)
!3205 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3205, line: 13, size: 896, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3214, !3215, !3216, !3217, !3237, !3238, !3239}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3206, file: !3205, line: 18, baseType: !489, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3206, file: !3205, line: 28, baseType: !40, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3206, file: !3205, line: 31, baseType: !884, size: 256, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3206, file: !3205, line: 32, baseType: !3212, size: 64, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3205, line: 32, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !3206, file: !3205, line: 37, baseType: !160, size: 16, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3206, file: !3205, line: 40, baseType: !34, size: 192, offset: 512)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3206, file: !3205, line: 41, baseType: !268, size: 64, offset: 704)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3206, file: !3205, line: 42, baseType: !3218, size: 64, offset: 768)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3221, line: 13, size: 896, elements: !3222)
!3221 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3220, file: !3221, line: 14, baseType: !268, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3220, file: !3221, line: 15, baseType: !153, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3220, file: !3221, line: 17, baseType: !153, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3220, file: !3221, line: 17, baseType: !153, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3220, file: !3221, line: 19, baseType: !352, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3220, file: !3221, line: 21, baseType: !352, size: 64, offset: 320)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3220, file: !3221, line: 22, baseType: !352, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3220, file: !3221, line: 23, baseType: !352, size: 64, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3220, file: !3221, line: 24, baseType: !352, size: 64, offset: 512)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3220, file: !3221, line: 25, baseType: !352, size: 64, offset: 576)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3220, file: !3221, line: 26, baseType: !352, size: 64, offset: 640)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3220, file: !3221, line: 27, baseType: !352, size: 64, offset: 704)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3220, file: !3221, line: 28, baseType: !352, size: 64, offset: 768)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3220, file: !3221, line: 29, baseType: !352, size: 64, offset: 832)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3206, file: !3205, line: 44, baseType: !93, size: 32, offset: 832)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3206, file: !3205, line: 50, baseType: !969, size: 16, offset: 864)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3206, file: !3205, line: 51, baseType: !3240, size: 16, offset: 880)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !46, line: 18, baseType: !3241)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !48, line: 23, baseType: !1941)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !461, line: 495, baseType: !153, size: 64, offset: 6528)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !481, file: !461, line: 497, baseType: !3244, size: 64, offset: 6592)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !461, line: 381, size: 384, elements: !3246)
!3246 = !{!3247, !3248, !3254}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3245, file: !461, line: 382, baseType: !93, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3245, file: !461, line: 383, baseType: !3249, size: 128, offset: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !461, line: 376, size: 128, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3249, file: !461, line: 377, baseType: !1520, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3249, file: !461, line: 378, baseType: !3253, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3245, file: !461, line: 384, baseType: !1133, size: 192, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !481, file: !461, line: 500, baseType: !51, offset: 6656)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !481, file: !461, line: 501, baseType: !3257, size: 64, offset: 6656)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !461, line: 387, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !481, file: !461, line: 516, baseType: !1825, size: 64, offset: 6720)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !481, file: !461, line: 519, baseType: !496, size: 64, offset: 6784)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !481, file: !461, line: 521, baseType: !3262, size: 64, offset: 6848)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !461, line: 521, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !481, file: !461, line: 545, baseType: !93, size: 32, offset: 6912)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !481, file: !461, line: 548, baseType: !628, size: 8, offset: 6944)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !481, file: !461, line: 550, baseType: !3267, offset: 6952)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3268, line: 142, elements: !65)
!3268 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !481, file: !461, line: 554, baseType: !239, size: 256, offset: 6976)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !481, file: !461, line: 557, baseType: !194, size: 32, offset: 7232)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !478, file: !461, line: 565, baseType: !3272, offset: 7296)
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !3273)
!3273 = !{!3274}
!3274 = !DISubrange(count: -1)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !460, file: !461, line: 333, baseType: !3276, size: 64, offset: 576)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !844, line: 284, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !844, line: 284, size: 64, elements: !3278)
!3278 = !{!3279}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3277, file: !844, line: 284, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1182, line: 19, baseType: !153)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !460, file: !461, line: 334, baseType: !153, size: 64, offset: 640)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !460, file: !461, line: 343, baseType: !3283, size: 256, offset: 704)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !461, line: 340, size: 256, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3283, file: !461, line: 341, baseType: !468, size: 192, align: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3283, file: !461, line: 342, baseType: !153, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !460, file: !461, line: 351, baseType: !67, size: 128, offset: 960)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !460, file: !461, line: 353, baseType: !3289, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !461, line: 353, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !460, file: !461, line: 356, baseType: !3292, size: 64, offset: 1152)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !808, line: 557, size: 832, elements: !3295)
!3295 = !{!3296, !3300, !3301, !3305, !3309, !3310, !3319, !3323, !3327, !3328, !3329, !3333, !3337}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3294, file: !808, line: 558, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !459}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3294, file: !808, line: 559, baseType: !3297, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !3294, file: !808, line: 560, baseType: !3302, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!14, !459, !153}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3294, file: !808, line: 561, baseType: !3306, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!14, !459}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3294, file: !808, line: 562, baseType: !1163, size: 64, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3294, file: !808, line: 563, baseType: !3311, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!1166, !1167, !3314}
!3314 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !808, line: 546, baseType: !20, size: 32, elements: !3315)
!3315 = !{!3316, !3317, !3318}
!3316 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!3317 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!3318 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3294, file: !808, line: 565, baseType: !3320, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !1167, !153, !153}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3294, file: !808, line: 567, baseType: !3324, size: 64, offset: 448)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!153, !459}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3294, file: !808, line: 571, baseType: !1163, size: 64, offset: 512)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3294, file: !808, line: 574, baseType: !1163, size: 64, offset: 576)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3294, file: !808, line: 579, baseType: !3330, size: 64, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!14, !459, !153, !268, !14, !14}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3294, file: !808, line: 585, baseType: !3334, size: 64, offset: 704)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!191, !459}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3294, file: !808, line: 615, baseType: !3338, size: 64, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!852, !459, !153}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !460, file: !461, line: 359, baseType: !153, size: 64, offset: 1216)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !460, file: !461, line: 361, baseType: !496, size: 64, offset: 1280)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !460, file: !461, line: 362, baseType: !268, size: 64, offset: 1344)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !460, file: !461, line: 365, baseType: !38, size: 64, offset: 1408)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !460, file: !461, line: 373, baseType: !3346, offset: 1472)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !461, line: 296, elements: !65)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !333, file: !90, line: 287, baseType: !3348, size: 64, offset: 1216)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{null, !88, !3351, !368}
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !90, line: 144, size: 128, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3352, file: !90, line: 145, baseType: !194, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3352, file: !90, line: 146, baseType: !194, size: 32, offset: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3352, file: !90, line: 147, baseType: !194, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3352, file: !90, line: 148, baseType: !194, size: 32, offset: 96)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !333, file: !90, line: 291, baseType: !323, size: 64, offset: 1280)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !333, file: !90, line: 294, baseType: !370, size: 64, offset: 1344)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !333, file: !90, line: 295, baseType: !370, size: 64, offset: 1408)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !89, file: !90, line: 474, baseType: !3362, size: 64, offset: 7360)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !3364, line: 461, size: 5568, elements: !3365)
!3364 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!3365 = !{!3366, !3659, !3660, !3663, !3664, !3716, !3811, !3812, !3813, !3814, !3815, !3830, !3937, !3950, !4159, !4160, !4164, !4166, !4167, !4168, !4172, !4178, !4179, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4220, !4221, !4222, !4225, !4228, !4229, !4230, !4231}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3363, file: !3364, line: 462, baseType: !3367, size: 512)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3368, line: 64, size: 512, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3369 = !{!3370, !3371, !3372, !3374, !3414, !3520, !3653, !3654, !3655, !3656, !3657, !3658}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3367, file: !3368, line: 65, baseType: !191, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3367, file: !3368, line: 66, baseType: !67, size: 128, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3367, file: !3368, line: 67, baseType: !3373, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3367, file: !3368, line: 68, baseType: !3375, size: 64, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3368, line: 192, size: 704, elements: !3377)
!3377 = !{!3378, !3379, !3380, !3381}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3376, file: !3368, line: 193, baseType: !67, size: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3376, file: !3368, line: 194, baseType: !51, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3376, file: !3368, line: 195, baseType: !3367, size: 512, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3376, file: !3368, line: 196, baseType: !3382, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3368, line: 156, size: 192, elements: !3385)
!3385 = !{!3386, !3391, !3396}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3384, file: !3368, line: 157, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3388)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!14, !3375, !3373}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3384, file: !3368, line: 158, baseType: !3392, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3393)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!191, !3375, !3373}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3384, file: !3368, line: 159, baseType: !3397, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3398)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!14, !3375, !3373, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3368, line: 148, size: 20736, elements: !3403)
!3403 = !{!3404, !3406, !3408, !3409, !3413}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3402, file: !3368, line: 149, baseType: !3405, size: 192)
!3405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !779)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3402, file: !3368, line: 150, baseType: !3407, size: 4096, offset: 192)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 4096, elements: !2232)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3402, file: !3368, line: 151, baseType: !14, size: 32, offset: 4288)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3402, file: !3368, line: 152, baseType: !3410, size: 16384, offset: 4320)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 16384, elements: !3411)
!3411 = !{!3412}
!3412 = !DISubrange(count: 2048)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3402, file: !3368, line: 153, baseType: !14, size: 32, offset: 20704)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3367, file: !3368, line: 69, baseType: !3415, size: 64, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3368, line: 138, size: 448, elements: !3417)
!3417 = !{!3418, !3422, !3441, !3443, !3476, !3510, !3514}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3416, file: !3368, line: 139, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !3373}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3416, file: !3368, line: 140, baseType: !3423, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3426, line: 230, size: 128, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3427 = !{!3428, !3437}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3425, file: !3426, line: 231, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!348, !3373, !3432, !353}
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3426, line: 30, size: 128, elements: !3434)
!3434 = !{!3435, !3436}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3433, file: !3426, line: 31, baseType: !191, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3433, file: !3426, line: 32, baseType: !570, size: 16, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3425, file: !3426, line: 232, baseType: !3438, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!348, !3373, !3432, !191, !354}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3416, file: !3368, line: 141, baseType: !3442, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3416, file: !3368, line: 142, baseType: !3444, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3426, line: 84, size: 320, elements: !3448)
!3448 = !{!3449, !3450, !3454, !3473, !3474}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3447, file: !3426, line: 85, baseType: !191, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3447, file: !3426, line: 86, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!570, !3373, !3432, !14}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3447, file: !3426, line: 88, baseType: !3455, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!570, !3373, !3458, !14}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3426, line: 168, size: 448, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3468, !3469}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3459, file: !3426, line: 169, baseType: !3433, size: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3459, file: !3426, line: 170, baseType: !354, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3459, file: !3426, line: 171, baseType: !268, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3459, file: !3426, line: 172, baseType: !3465, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!348, !496, !3373, !3458, !353, !358, !354}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3459, file: !3426, line: 174, baseType: !3465, size: 64, offset: 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3459, file: !3426, line: 176, baseType: !3470, size: 64, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!14, !496, !3373, !3458, !459}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3447, file: !3426, line: 90, baseType: !3442, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3447, file: !3426, line: 91, baseType: !3475, size: 64, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3416, file: !3368, line: 143, baseType: !3477, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!3480, !3373}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3483, line: 39, size: 384, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3484 = !{!3485, !3491, !3495, !3499, !3505, !3509}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3482, file: !3483, line: 40, baseType: !3486, size: 32)
!3486 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3483, line: 26, baseType: !20, size: 32, elements: !3487)
!3487 = !{!3488, !3489, !3490}
!3488 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3489 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3490 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3482, file: !3483, line: 41, baseType: !3492, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!628}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3482, file: !3483, line: 42, baseType: !3496, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!268}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3482, file: !3483, line: 43, baseType: !3500, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!2467, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3483, line: 19, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3482, file: !3483, line: 44, baseType: !3506, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!2467}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3482, file: !3483, line: 45, baseType: !606, size: 64, offset: 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3416, file: !3368, line: 144, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!2467, !3373}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3416, file: !3368, line: 145, baseType: !3515, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !3373, !3518, !3519}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3367, file: !3368, line: 70, baseType: !3521, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !753, line: 123, size: 1024, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3646, !3647, !3648, !3649, !3650}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3522, file: !753, line: 124, baseType: !93, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3522, file: !753, line: 125, baseType: !93, size: 32, offset: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3522, file: !753, line: 135, baseType: !3521, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3522, file: !753, line: 136, baseType: !191, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3522, file: !753, line: 138, baseType: !468, size: 192, align: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3522, file: !753, line: 140, baseType: !2467, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3522, file: !753, line: 141, baseType: !20, size: 32, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !753, line: 142, baseType: !3532, size: 256, offset: 512)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3522, file: !753, line: 142, size: 256, elements: !3533)
!3533 = !{!3534, !3574, !3578}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3532, file: !753, line: 143, baseType: !3535, size: 192)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !753, line: 91, size: 192, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3535, file: !753, line: 92, baseType: !153, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3535, file: !753, line: 94, baseType: !485, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3535, file: !753, line: 100, baseType: !3540, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !753, line: 180, size: 704, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3572, !3573}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3541, file: !753, line: 182, baseType: !3521, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3541, file: !753, line: 183, baseType: !20, size: 32, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3541, file: !753, line: 186, baseType: !1812, size: 192, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3541, file: !753, line: 187, baseType: !194, size: 32, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3541, file: !753, line: 188, baseType: !194, size: 32, offset: 352)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3541, file: !753, line: 189, baseType: !3549, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !753, line: 168, size: 320, elements: !3551)
!3551 = !{!3552, !3556, !3560, !3564, !3568}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3550, file: !753, line: 169, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!14, !842, !3540}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3550, file: !753, line: 171, baseType: !3557, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!14, !3521, !191, !570}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3550, file: !753, line: 173, baseType: !3561, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!14, !3521}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3550, file: !753, line: 174, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!14, !3521, !3521, !191}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3550, file: !753, line: 176, baseType: !3569, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!14, !842, !3521, !3540}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3541, file: !753, line: 192, baseType: !67, size: 128, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3541, file: !753, line: 194, baseType: !1494, size: 128, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3532, file: !753, line: 144, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !753, line: 103, size: 64, elements: !3576)
!3576 = !{!3577}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3575, file: !753, line: 104, baseType: !3521, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3532, file: !753, line: 145, baseType: !3579, size: 256)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !753, line: 107, size: 256, elements: !3580)
!3580 = !{!3581, !3641, !3644, !3645}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3579, file: !753, line: 108, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3584)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !753, line: 217, size: 768, elements: !3585)
!3585 = !{!3586, !3606, !3610, !3614, !3618, !3622, !3626, !3630, !3631, !3632, !3633, !3637}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3584, file: !753, line: 222, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!14, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !753, line: 197, size: 1088, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3591, file: !753, line: 199, baseType: !3521, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3591, file: !753, line: 200, baseType: !496, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3591, file: !753, line: 201, baseType: !842, size: 64, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3591, file: !753, line: 202, baseType: !268, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3591, file: !753, line: 205, baseType: !34, size: 192, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3591, file: !753, line: 206, baseType: !34, size: 192, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3591, file: !753, line: 207, baseType: !14, size: 32, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3591, file: !753, line: 208, baseType: !67, size: 128, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3591, file: !753, line: 209, baseType: !353, size: 64, offset: 832)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3591, file: !753, line: 211, baseType: !354, size: 64, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3591, file: !753, line: 212, baseType: !628, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3591, file: !753, line: 213, baseType: !628, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3591, file: !753, line: 214, baseType: !3292, size: 64, offset: 1024)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3584, file: !753, line: 223, baseType: !3607, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !3590}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3584, file: !753, line: 236, baseType: !3611, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!14, !842, !268}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3584, file: !753, line: 238, baseType: !3615, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!268, !842, !357}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3584, file: !753, line: 239, baseType: !3619, size: 64, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!268, !842, !268, !357}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3584, file: !753, line: 240, baseType: !3623, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !842, !268}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3584, file: !753, line: 242, baseType: !3627, size: 64, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!348, !3590, !353, !354, !358}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3584, file: !753, line: 252, baseType: !354, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3584, file: !753, line: 259, baseType: !628, size: 8, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3584, file: !753, line: 260, baseType: !3627, size: 64, offset: 576)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3584, file: !753, line: 263, baseType: !3634, size: 64, offset: 640)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!2863, !3590, !2865}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3584, file: !753, line: 266, baseType: !3638, size: 64, offset: 704)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!14, !3590, !459}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3579, file: !753, line: 109, baseType: !3642, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !753, line: 31, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3579, file: !753, line: 110, baseType: !358, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3579, file: !753, line: 111, baseType: !3521, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3522, file: !753, line: 148, baseType: !268, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3522, file: !753, line: 154, baseType: !489, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3522, file: !753, line: 156, baseType: !160, size: 16, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3522, file: !753, line: 157, baseType: !570, size: 16, offset: 912)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3522, file: !753, line: 158, baseType: !3651, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !753, line: 32, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3367, file: !3368, line: 71, baseType: !1807, size: 32, offset: 448)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3367, file: !3368, line: 75, baseType: !20, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3367, file: !3368, line: 76, baseType: !20, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3367, file: !3368, line: 77, baseType: !20, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3367, file: !3368, line: 78, baseType: !20, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3367, file: !3368, line: 79, baseType: !20, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3363, file: !3364, line: 463, baseType: !3362, size: 64, offset: 512)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3363, file: !3364, line: 465, baseType: !3661, size: 64, offset: 576)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !3364, line: 36, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3363, file: !3364, line: 467, baseType: !191, size: 64, offset: 640)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3363, file: !3364, line: 468, baseType: !3665, size: 64, offset: 704)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3667)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !3364, line: 87, size: 384, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3675, !3680, !3684}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3667, file: !3364, line: 88, baseType: !191, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3667, file: !3364, line: 89, baseType: !3444, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3667, file: !3364, line: 90, baseType: !3672, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!14, !3362, !3401}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3667, file: !3364, line: 91, baseType: !3676, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!353, !3362, !3679, !3518, !3519}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3667, file: !3364, line: 93, baseType: !3681, size: 64, offset: 256)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{null, !3362}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3667, file: !3364, line: 95, baseType: !3685, size: 64, offset: 320)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3687)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3688, line: 278, size: 1472, elements: !3689)
!3688 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3689 = !{!3690, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3687, file: !3688, line: 279, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!14, !3362}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3687, file: !3688, line: 280, baseType: !3681, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3687, file: !3688, line: 281, baseType: !3691, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3687, file: !3688, line: 282, baseType: !3691, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3687, file: !3688, line: 283, baseType: !3691, size: 64, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3687, file: !3688, line: 284, baseType: !3691, size: 64, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3687, file: !3688, line: 285, baseType: !3691, size: 64, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3687, file: !3688, line: 286, baseType: !3691, size: 64, offset: 448)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3687, file: !3688, line: 287, baseType: !3691, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3687, file: !3688, line: 288, baseType: !3691, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3687, file: !3688, line: 289, baseType: !3691, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3687, file: !3688, line: 290, baseType: !3691, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3687, file: !3688, line: 291, baseType: !3691, size: 64, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3687, file: !3688, line: 292, baseType: !3691, size: 64, offset: 832)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3687, file: !3688, line: 293, baseType: !3691, size: 64, offset: 896)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3687, file: !3688, line: 294, baseType: !3691, size: 64, offset: 960)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3687, file: !3688, line: 295, baseType: !3691, size: 64, offset: 1024)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3687, file: !3688, line: 296, baseType: !3691, size: 64, offset: 1088)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3687, file: !3688, line: 297, baseType: !3691, size: 64, offset: 1152)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3687, file: !3688, line: 298, baseType: !3691, size: 64, offset: 1216)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3687, file: !3688, line: 299, baseType: !3691, size: 64, offset: 1280)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3687, file: !3688, line: 300, baseType: !3691, size: 64, offset: 1344)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3687, file: !3688, line: 301, baseType: !3691, size: 64, offset: 1408)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3363, file: !3364, line: 470, baseType: !3717, size: 64, offset: 768)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3719, line: 82, size: 1408, elements: !3720)
!3719 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3806, !3809, !3810}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3718, file: !3719, line: 83, baseType: !191, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3718, file: !3719, line: 84, baseType: !191, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3718, file: !3719, line: 85, baseType: !3362, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3718, file: !3719, line: 86, baseType: !3444, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3718, file: !3719, line: 87, baseType: !3444, size: 64, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3718, file: !3719, line: 88, baseType: !3444, size: 64, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3718, file: !3719, line: 90, baseType: !3728, size: 64, offset: 384)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!14, !3362, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3733, line: 95, size: 1152, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3734 = !{!3735, !3736, !3737, !3738, !3739, !3740, !3746, !3757, !3770, !3771, !3772, !3773, !3774, !3782, !3783, !3784, !3785, !3786, !3787}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3732, file: !3733, line: 96, baseType: !191, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3732, file: !3733, line: 97, baseType: !3717, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3732, file: !3733, line: 99, baseType: !336, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3732, file: !3733, line: 100, baseType: !191, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3732, file: !3733, line: 102, baseType: !628, size: 8, offset: 256)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3732, file: !3733, line: 103, baseType: !3741, size: 32, offset: 288)
!3741 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3733, line: 44, baseType: !20, size: 32, elements: !3742)
!3742 = !{!3743, !3744, !3745}
!3743 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3744 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3745 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3732, file: !3733, line: 105, baseType: !3747, size: 64, offset: 320)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3749)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3750, line: 262, size: 1600, elements: !3751)
!3750 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3751 = !{!3752, !3753, !3754, !3756}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3749, file: !3750, line: 263, baseType: !2661, size: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3749, file: !3750, line: 264, baseType: !2661, size: 256, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3749, file: !3750, line: 265, baseType: !3755, size: 1024, offset: 512)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !287)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3749, file: !3750, line: 266, baseType: !2467, size: 64, offset: 1536)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3732, file: !3733, line: 106, baseType: !3758, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3760)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3750, line: 210, size: 256, elements: !3761)
!3761 = !{!3762, !3766, !3768, !3769}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3760, file: !3750, line: 211, baseType: !3763, size: 72)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 72, elements: !3764)
!3764 = !{!3765}
!3765 = !DISubrange(count: 9)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3760, file: !3750, line: 212, baseType: !3767, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3750, line: 14, baseType: !153)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3760, file: !3750, line: 213, baseType: !107, size: 32, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3760, file: !3750, line: 214, baseType: !107, size: 32, offset: 224)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3732, file: !3733, line: 108, baseType: !3691, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3732, file: !3733, line: 109, baseType: !3681, size: 64, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3732, file: !3733, line: 110, baseType: !3691, size: 64, offset: 576)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3732, file: !3733, line: 111, baseType: !3681, size: 64, offset: 640)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3732, file: !3733, line: 112, baseType: !3775, size: 64, offset: 704)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!14, !3362, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3688, line: 52, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3688, line: 50, size: 32, elements: !3780)
!3780 = !{!3781}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3779, file: !3688, line: 51, baseType: !14, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3732, file: !3733, line: 113, baseType: !3691, size: 64, offset: 768)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3732, file: !3733, line: 114, baseType: !3444, size: 64, offset: 832)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3732, file: !3733, line: 115, baseType: !3444, size: 64, offset: 896)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3732, file: !3733, line: 117, baseType: !3685, size: 64, offset: 960)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3732, file: !3733, line: 118, baseType: !3681, size: 64, offset: 1024)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3732, file: !3733, line: 120, baseType: !3788, size: 64, offset: 1088)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3733, line: 120, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3718, file: !3719, line: 91, baseType: !3672, size: 64, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3718, file: !3719, line: 92, baseType: !3691, size: 64, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3718, file: !3719, line: 93, baseType: !3681, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3718, file: !3719, line: 94, baseType: !3691, size: 64, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3718, file: !3719, line: 95, baseType: !3681, size: 64, offset: 704)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3718, file: !3719, line: 97, baseType: !3691, size: 64, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3718, file: !3719, line: 98, baseType: !3691, size: 64, offset: 832)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3718, file: !3719, line: 100, baseType: !3775, size: 64, offset: 896)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3718, file: !3719, line: 101, baseType: !3691, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3718, file: !3719, line: 103, baseType: !3691, size: 64, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3718, file: !3719, line: 105, baseType: !3691, size: 64, offset: 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3718, file: !3719, line: 107, baseType: !3685, size: 64, offset: 1152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3718, file: !3719, line: 109, baseType: !3803, size: 64, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3805)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3719, line: 109, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3718, file: !3719, line: 111, baseType: !3807, size: 64, offset: 1280)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3719, line: 111, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3718, file: !3719, line: 112, baseType: !773, offset: 1344)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3718, file: !3719, line: 114, baseType: !628, size: 8, offset: 1344)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3363, file: !3364, line: 471, baseType: !3731, size: 64, offset: 832)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3363, file: !3364, line: 473, baseType: !268, size: 64, offset: 896)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3363, file: !3364, line: 475, baseType: !268, size: 64, offset: 960)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3363, file: !3364, line: 480, baseType: !34, size: 192, offset: 1024)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3363, file: !3364, line: 484, baseType: !3816, size: 576, offset: 1216)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !3364, line: 361, size: 576, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821, !3822, !3823}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3816, file: !3364, line: 362, baseType: !67, size: 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3816, file: !3364, line: 363, baseType: !67, size: 128, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3816, file: !3364, line: 364, baseType: !67, size: 128, offset: 256)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3816, file: !3364, line: 365, baseType: !67, size: 128, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3816, file: !3364, line: 366, baseType: !628, size: 8, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3816, file: !3364, line: 367, baseType: !3824, size: 32, offset: 544)
!3824 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !3364, line: 343, baseType: !20, size: 32, elements: !3825)
!3825 = !{!3826, !3827, !3828, !3829}
!3826 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3827 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3828 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3829 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3363, file: !3364, line: 485, baseType: !3831, size: 2304, offset: 1792)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3688, line: 565, size: 2304, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3907, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3930, !3934}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3831, file: !3688, line: 566, baseType: !3778, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3831, file: !3688, line: 567, baseType: !20, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3831, file: !3688, line: 568, baseType: !20, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3831, file: !3688, line: 569, baseType: !628, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3831, file: !3688, line: 570, baseType: !628, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3831, file: !3688, line: 571, baseType: !628, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3831, file: !3688, line: 572, baseType: !628, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3831, file: !3688, line: 573, baseType: !628, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3831, file: !3688, line: 574, baseType: !628, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3831, file: !3688, line: 575, baseType: !628, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3831, file: !3688, line: 576, baseType: !628, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3831, file: !3688, line: 577, baseType: !194, size: 32, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3831, file: !3688, line: 578, baseType: !51, offset: 96)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3831, file: !3688, line: 580, baseType: !67, size: 128, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3831, file: !3688, line: 581, baseType: !1133, size: 192, offset: 256)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3831, file: !3688, line: 582, baseType: !3849, size: 64, offset: 448)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3851, line: 43, size: 1472, elements: !3852)
!3851 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3850, file: !3851, line: 44, baseType: !191, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3850, file: !3851, line: 45, baseType: !14, size: 32, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3850, file: !3851, line: 46, baseType: !67, size: 128, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3850, file: !3851, line: 47, baseType: !51, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3850, file: !3851, line: 48, baseType: !3858, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3688, line: 533, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3850, file: !3851, line: 49, baseType: !294, size: 320, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3850, file: !3851, line: 50, baseType: !153, size: 64, offset: 640)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3850, file: !3851, line: 51, baseType: !1604, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3850, file: !3851, line: 52, baseType: !1604, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3850, file: !3851, line: 53, baseType: !1604, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3850, file: !3851, line: 54, baseType: !1604, size: 64, offset: 896)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3850, file: !3851, line: 55, baseType: !1604, size: 64, offset: 960)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3850, file: !3851, line: 56, baseType: !153, size: 64, offset: 1024)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3850, file: !3851, line: 57, baseType: !153, size: 64, offset: 1088)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3850, file: !3851, line: 58, baseType: !153, size: 64, offset: 1152)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3850, file: !3851, line: 59, baseType: !153, size: 64, offset: 1216)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3850, file: !3851, line: 60, baseType: !153, size: 64, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3850, file: !3851, line: 61, baseType: !3362, size: 64, offset: 1344)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3850, file: !3851, line: 62, baseType: !628, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3850, file: !3851, line: 63, baseType: !628, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3831, file: !3688, line: 583, baseType: !628, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3831, file: !3688, line: 584, baseType: !628, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3831, file: !3688, line: 585, baseType: !628, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3831, file: !3688, line: 586, baseType: !20, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3831, file: !3688, line: 587, baseType: !20, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3831, file: !3688, line: 592, baseType: !1595, size: 512, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3831, file: !3688, line: 593, baseType: !489, size: 64, offset: 1088)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3831, file: !3688, line: 594, baseType: !239, size: 256, offset: 1152)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3831, file: !3688, line: 595, baseType: !1494, size: 128, offset: 1408)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3831, file: !3688, line: 596, baseType: !3858, size: 64, offset: 1536)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3831, file: !3688, line: 597, baseType: !93, size: 32, offset: 1600)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3831, file: !3688, line: 598, baseType: !93, size: 32, offset: 1632)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3831, file: !3688, line: 599, baseType: !20, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3831, file: !3688, line: 600, baseType: !20, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3831, file: !3688, line: 601, baseType: !20, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3831, file: !3688, line: 602, baseType: !20, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3831, file: !3688, line: 603, baseType: !20, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3831, file: !3688, line: 604, baseType: !628, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3831, file: !3688, line: 605, baseType: !20, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3831, file: !3688, line: 606, baseType: !20, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3831, file: !3688, line: 607, baseType: !20, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3831, file: !3688, line: 608, baseType: !20, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3831, file: !3688, line: 609, baseType: !20, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3831, file: !3688, line: 610, baseType: !20, size: 32, offset: 1696)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3831, file: !3688, line: 611, baseType: !3900, size: 32, offset: 1728)
!3900 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3688, line: 524, baseType: !20, size: 32, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905, !3906}
!3902 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3903 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3904 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3905 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3906 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3831, file: !3688, line: 612, baseType: !3908, size: 32, offset: 1760)
!3908 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3688, line: 502, baseType: !20, size: 32, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913}
!3910 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3911 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3912 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3913 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3831, file: !3688, line: 613, baseType: !14, size: 32, offset: 1792)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3831, file: !3688, line: 614, baseType: !14, size: 32, offset: 1824)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3831, file: !3688, line: 615, baseType: !489, size: 64, offset: 1856)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3831, file: !3688, line: 616, baseType: !489, size: 64, offset: 1920)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3831, file: !3688, line: 617, baseType: !489, size: 64, offset: 1984)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3831, file: !3688, line: 618, baseType: !489, size: 64, offset: 2048)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3831, file: !3688, line: 620, baseType: !3921, size: 64, offset: 2112)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3688, line: 536, size: 256, elements: !3923)
!3923 = !{!3924, !3925, !3926, !3927}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3922, file: !3688, line: 537, baseType: !51)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3922, file: !3688, line: 538, baseType: !20, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3922, file: !3688, line: 540, baseType: !67, size: 128, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3922, file: !3688, line: 543, baseType: !3928, size: 64, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3688, line: 534, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3831, file: !3688, line: 621, baseType: !3931, size: 64, offset: 2176)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{null, !3362, !1757}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3831, file: !3688, line: 622, baseType: !3935, size: 64, offset: 2240)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3688, line: 622, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3363, file: !3364, line: 486, baseType: !3938, size: 64, offset: 4096)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3688, line: 642, size: 1792, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3947, !3948, !3949}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3939, file: !3688, line: 643, baseType: !3687, size: 1472)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3939, file: !3688, line: 644, baseType: !3691, size: 64, offset: 1472)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3939, file: !3688, line: 645, baseType: !3944, size: 64, offset: 1536)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3362, !628}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3939, file: !3688, line: 646, baseType: !3691, size: 64, offset: 1600)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3939, file: !3688, line: 647, baseType: !3681, size: 64, offset: 1664)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3939, file: !3688, line: 648, baseType: !3681, size: 64, offset: 1728)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3363, file: !3364, line: 493, baseType: !3951, size: 64, offset: 4160)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3953, line: 162, size: 1088, elements: !3954)
!3953 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!3954 = !{!3955, !3956, !3957, !4143, !4144, !4145, !4146, !4147, !4148, !4151, !4152, !4153, !4154, !4155, !4156, !4157}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3952, file: !3953, line: 163, baseType: !67, size: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3952, file: !3953, line: 164, baseType: !191, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3952, file: !3953, line: 165, baseType: !3958, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3960)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !3953, line: 105, size: 640, elements: !3961)
!3961 = !{!3962, !4093, !4104, !4109, !4113, !4120, !4124, !4128, !4135, !4139}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3960, file: !3953, line: 106, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!14, !3951, !3966, !4080}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3968, line: 51, size: 1344, elements: !3969)
!3968 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3969 = !{!3970, !3971, !3973, !3974, !4064, !4073, !4074, !4075, !4076, !4077, !4078, !4079}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3967, file: !3968, line: 52, baseType: !191, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3967, file: !3968, line: 53, baseType: !3972, size: 32, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3968, line: 28, baseType: !194)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3967, file: !3968, line: 54, baseType: !191, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3967, file: !3968, line: 55, baseType: !3975, size: 192, offset: 192)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3976, line: 17, size: 192, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3977 = !{!3978, !3980, !4063}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3975, file: !3976, line: 18, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3975, file: !3976, line: 19, baseType: !3981, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3983)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3976, line: 110, size: 1152, elements: !3984)
!3984 = !{!3985, !3989, !3993, !3999, !4005, !4009, !4013, !4018, !4022, !4023, !4027, !4031, !4035, !4046, !4047, !4048, !4049, !4059}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3983, file: !3976, line: 111, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!3979, !3979}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3983, file: !3976, line: 112, baseType: !3990, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3979}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3983, file: !3976, line: 113, baseType: !3994, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!628, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3975)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3983, file: !3976, line: 114, baseType: !4000, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!2467, !3997, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3363)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3983, file: !3976, line: 116, baseType: !4006, size: 64, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!628, !3997, !191}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3983, file: !3976, line: 118, baseType: !4010, size: 64, offset: 320)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!14, !3997, !191, !20, !268, !354}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3983, file: !3976, line: 123, baseType: !4014, size: 64, offset: 384)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!14, !3997, !191, !4017, !354}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3983, file: !3976, line: 126, baseType: !4019, size: 64, offset: 448)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!191, !3997}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3983, file: !3976, line: 127, baseType: !4019, size: 64, offset: 512)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3983, file: !3976, line: 128, baseType: !4024, size: 64, offset: 576)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!3979, !3997}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3983, file: !3976, line: 130, baseType: !4028, size: 64, offset: 640)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!3979, !3997, !3979}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3983, file: !3976, line: 133, baseType: !4032, size: 64, offset: 704)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!3979, !3997, !191}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3983, file: !3976, line: 135, baseType: !4036, size: 64, offset: 768)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!14, !3997, !191, !191, !20, !20, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3976, line: 43, size: 640, elements: !4041)
!4041 = !{!4042, !4043, !4044}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4040, file: !3976, line: 44, baseType: !3979, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4040, file: !3976, line: 45, baseType: !20, size: 32, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4040, file: !3976, line: 46, baseType: !4045, size: 512, offset: 128)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 512, elements: !1638)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3983, file: !3976, line: 140, baseType: !4028, size: 64, offset: 832)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3983, file: !3976, line: 143, baseType: !4024, size: 64, offset: 896)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3983, file: !3976, line: 145, baseType: !3986, size: 64, offset: 960)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3983, file: !3976, line: 146, baseType: !4050, size: 64, offset: 1024)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!14, !3997, !4053}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3976, line: 29, size: 128, elements: !4055)
!4055 = !{!4056, !4057, !4058}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4054, file: !3976, line: 30, baseType: !20, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4054, file: !3976, line: 31, baseType: !20, size: 32, offset: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4054, file: !3976, line: 32, baseType: !3997, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3983, file: !3976, line: 148, baseType: !4060, size: 64, offset: 1088)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!14, !3997, !3362}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3975, file: !3976, line: 20, baseType: !3362, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3967, file: !3968, line: 57, baseType: !4065, size: 64, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3968, line: 31, size: 704, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071, !4072}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4066, file: !3968, line: 32, baseType: !353, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4066, file: !3968, line: 33, baseType: !14, size: 32, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4066, file: !3968, line: 34, baseType: !268, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4066, file: !3968, line: 35, baseType: !4065, size: 64, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4066, file: !3968, line: 43, baseType: !3459, size: 448, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3967, file: !3968, line: 58, baseType: !4065, size: 64, offset: 448)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3967, file: !3968, line: 59, baseType: !3966, size: 64, offset: 512)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3967, file: !3968, line: 60, baseType: !3966, size: 64, offset: 576)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3967, file: !3968, line: 61, baseType: !3966, size: 64, offset: 640)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3967, file: !3968, line: 63, baseType: !3367, size: 512, offset: 704)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3967, file: !3968, line: 65, baseType: !153, size: 64, offset: 1216)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3967, file: !3968, line: 66, baseType: !268, size: 64, offset: 1280)
!4080 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !3953, line: 76, baseType: !20, size: 32, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092}
!4082 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!4083 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!4084 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!4085 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!4086 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!4087 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!4088 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!4089 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!4090 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!4091 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!4092 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3960, file: !3953, line: 108, baseType: !4094, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!14, !3951, !4097, !4080}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !3953, line: 63, size: 640, elements: !4099)
!4099 = !{!4100, !4101, !4102}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4098, file: !3953, line: 64, baseType: !3979, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4098, file: !3953, line: 65, baseType: !14, size: 32, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4098, file: !3953, line: 66, baseType: !4103, size: 512, offset: 96)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 512, elements: !150)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3960, file: !3953, line: 110, baseType: !4105, size: 64, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!14, !3951, !20, !4108}
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !41, line: 164, baseType: !153)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3960, file: !3953, line: 111, baseType: !4110, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !3951, !20}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3960, file: !3953, line: 112, baseType: !4114, size: 64, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!14, !3951, !3966, !4117, !20, !4119, !1514}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3960, file: !3953, line: 117, baseType: !4121, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!14, !3951, !20, !20, !268}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3960, file: !3953, line: 119, baseType: !4125, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{null, !3951, !20, !20}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3960, file: !3953, line: 121, baseType: !4129, size: 64, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!14, !3951, !4132, !628}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4134, line: 11, flags: DIFlagFwdDecl)
!4134 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3960, file: !3953, line: 122, baseType: !4136, size: 64, offset: 512)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !3951, !4132}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3960, file: !3953, line: 123, baseType: !4140, size: 64, offset: 576)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!14, !3951, !4097, !4119, !1514}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3952, file: !3953, line: 166, baseType: !268, size: 64, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3952, file: !3953, line: 167, baseType: !20, size: 32, offset: 320)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3952, file: !3953, line: 168, baseType: !20, size: 32, offset: 352)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3952, file: !3953, line: 171, baseType: !3979, size: 64, offset: 384)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3952, file: !3953, line: 172, baseType: !4080, size: 32, offset: 448)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3952, file: !3953, line: 173, baseType: !4149, size: 64, offset: 512)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !3953, line: 134, flags: DIFlagFwdDecl)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3952, file: !3953, line: 175, baseType: !3951, size: 64, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3952, file: !3953, line: 182, baseType: !4108, size: 64, offset: 640)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3952, file: !3953, line: 183, baseType: !20, size: 32, offset: 704)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3952, file: !3953, line: 184, baseType: !20, size: 32, offset: 736)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3952, file: !3953, line: 185, baseType: !869, size: 128, offset: 768)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3952, file: !3953, line: 186, baseType: !34, size: 192, offset: 896)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3952, file: !3953, line: 187, baseType: !4158, offset: 1088)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !3273)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3363, file: !3364, line: 499, baseType: !67, size: 128, offset: 4224)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3363, file: !3364, line: 502, baseType: !4161, size: 64, offset: 4352)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4163)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !3364, line: 502, flags: DIFlagFwdDecl)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3363, file: !3364, line: 504, baseType: !4165, size: 64, offset: 4416)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3363, file: !3364, line: 505, baseType: !489, size: 64, offset: 4480)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3363, file: !3364, line: 510, baseType: !489, size: 64, offset: 4544)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3363, file: !3364, line: 511, baseType: !4169, size: 64, offset: 4608)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4171)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !3364, line: 511, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3363, file: !3364, line: 513, baseType: !4173, size: 64, offset: 4672)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !3364, line: 288, size: 128, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4174, file: !3364, line: 293, baseType: !20, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4174, file: !3364, line: 294, baseType: !153, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3363, file: !3364, line: 515, baseType: !67, size: 128, offset: 4736)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3363, file: !3364, line: 526, baseType: !4180, offset: 4864)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4181, line: 5, elements: !65)
!4181 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3363, file: !3364, line: 528, baseType: !3966, size: 64, offset: 4864)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3363, file: !3364, line: 529, baseType: !3979, size: 64, offset: 4928)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3363, file: !3364, line: 534, baseType: !651, size: 32, offset: 4992)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3363, file: !3364, line: 535, baseType: !194, size: 32, offset: 5024)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3363, file: !3364, line: 537, baseType: !51, offset: 5056)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3363, file: !3364, line: 538, baseType: !67, size: 128, offset: 5056)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3363, file: !3364, line: 540, baseType: !4189, size: 64, offset: 5184)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4191, line: 54, size: 960, elements: !4192)
!4191 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4192 = !{!4193, !4194, !4195, !4196, !4197, !4198, !4199, !4203, !4207, !4208, !4209, !4210, !4214, !4218, !4219}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4190, file: !4191, line: 55, baseType: !191, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4190, file: !4191, line: 56, baseType: !336, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4190, file: !4191, line: 58, baseType: !3444, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4190, file: !4191, line: 59, baseType: !3444, size: 64, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4190, file: !4191, line: 60, baseType: !3373, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4190, file: !4191, line: 62, baseType: !3672, size: 64, offset: 320)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4190, file: !4191, line: 63, baseType: !4200, size: 64, offset: 384)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!353, !3362, !3679}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4190, file: !4191, line: 65, baseType: !4204, size: 64, offset: 448)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{null, !4189}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4190, file: !4191, line: 66, baseType: !3681, size: 64, offset: 512)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4190, file: !4191, line: 68, baseType: !3691, size: 64, offset: 576)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4190, file: !4191, line: 70, baseType: !3480, size: 64, offset: 640)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4190, file: !4191, line: 71, baseType: !4211, size: 64, offset: 704)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!2467, !3362}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4190, file: !4191, line: 73, baseType: !4215, size: 64, offset: 768)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !3362, !3518, !3519}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4190, file: !4191, line: 75, baseType: !3685, size: 64, offset: 832)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4190, file: !4191, line: 77, baseType: !3807, size: 64, offset: 896)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3363, file: !3364, line: 541, baseType: !3444, size: 64, offset: 5248)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3363, file: !3364, line: 543, baseType: !3681, size: 64, offset: 5312)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3363, file: !3364, line: 544, baseType: !4223, size: 64, offset: 5376)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !3364, line: 45, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3363, file: !3364, line: 545, baseType: !4226, size: 64, offset: 5440)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !3364, line: 47, flags: DIFlagFwdDecl)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3363, file: !3364, line: 547, baseType: !628, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3363, file: !3364, line: 548, baseType: !628, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3363, file: !3364, line: 549, baseType: !628, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3363, file: !3364, line: 550, baseType: !628, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !89, file: !90, line: 475, baseType: !3362, size: 64, offset: 7424)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !89, file: !90, line: 476, baseType: !14, size: 32, offset: 7488)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !89, file: !90, line: 478, baseType: !4235, size: 64, offset: 7552)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !90, line: 355, size: 384, elements: !4237)
!4237 = !{!4238, !4252, !4265, !4280, !4296, !4309}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4236, file: !90, line: 357, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !88, !4242}
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !90, line: 306, size: 192, elements: !4244)
!4244 = !{!4245, !4246, !4247, !4248, !4249}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4243, file: !90, line: 307, baseType: !107, size: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4243, file: !90, line: 308, baseType: !107, size: 32, offset: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4243, file: !90, line: 309, baseType: !107, size: 32, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4243, file: !90, line: 310, baseType: !107, size: 32, offset: 96)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4243, file: !90, line: 311, baseType: !4250, size: 64, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4236, file: !90, line: 362, baseType: !4253, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !88, !4256}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !90, line: 326, size: 192, elements: !4258)
!4258 = !{!4259, !4260, !4261, !4262, !4263, !4264}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4257, file: !90, line: 327, baseType: !107, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4257, file: !90, line: 328, baseType: !107, size: 32, offset: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4257, file: !90, line: 329, baseType: !107, size: 32, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4257, file: !90, line: 330, baseType: !107, size: 32, offset: 96)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4257, file: !90, line: 331, baseType: !107, size: 32, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4257, file: !90, line: 332, baseType: !107, size: 32, offset: 160)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4236, file: !90, line: 364, baseType: !4266, size: 64, offset: 128)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{null, !88, !4269}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !90, line: 315, size: 256, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4270, file: !90, line: 316, baseType: !107, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4270, file: !90, line: 317, baseType: !107, size: 32, offset: 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4270, file: !90, line: 318, baseType: !107, size: 32, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4270, file: !90, line: 319, baseType: !107, size: 32, offset: 96)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4270, file: !90, line: 320, baseType: !107, size: 32, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4270, file: !90, line: 321, baseType: !107, size: 32, offset: 160)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4270, file: !90, line: 322, baseType: !107, size: 32, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4270, file: !90, line: 323, baseType: !107, size: 32, offset: 224)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4236, file: !90, line: 366, baseType: !4281, size: 64, offset: 192)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{null, !88, !4284}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !90, line: 335, size: 320, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4285, file: !90, line: 336, baseType: !107, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4285, file: !90, line: 337, baseType: !107, size: 32, offset: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4285, file: !90, line: 338, baseType: !107, size: 32, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4285, file: !90, line: 339, baseType: !107, size: 32, offset: 96)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4285, file: !90, line: 340, baseType: !107, size: 32, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4285, file: !90, line: 341, baseType: !107, size: 32, offset: 160)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4285, file: !90, line: 342, baseType: !107, size: 32, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4285, file: !90, line: 343, baseType: !4295, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4236, file: !90, line: 368, baseType: !4297, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !88, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !90, line: 346, size: 192, elements: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4308}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4301, file: !90, line: 347, baseType: !107, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4301, file: !90, line: 348, baseType: !107, size: 32, offset: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4301, file: !90, line: 349, baseType: !107, size: 32, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4301, file: !90, line: 350, baseType: !107, size: 32, offset: 96)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4301, file: !90, line: 351, baseType: !107, size: 32, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4301, file: !90, line: 352, baseType: !107, size: 32, offset: 160)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4236, file: !90, line: 371, baseType: !370, size: 64, offset: 320)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !90, line: 480, baseType: !4311, size: 64, offset: 7616)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !90, line: 480, size: 64, elements: !4312)
!4312 = !{!4313, !4314}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4311, file: !90, line: 481, baseType: !353, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4311, file: !90, line: 482, baseType: !353, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !89, file: !90, line: 484, baseType: !153, size: 64, offset: 7680)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !89, file: !90, line: 485, baseType: !268, size: 64, offset: 7744)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !89, file: !90, line: 488, baseType: !194, size: 32, offset: 7808)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !89, file: !90, line: 489, baseType: !268, size: 64, offset: 7872)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !89, file: !90, line: 491, baseType: !268, size: 64, offset: 7936)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !89, file: !90, line: 501, baseType: !4321, size: 64, offset: 8000)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !90, line: 495, size: 64, elements: !4323)
!4323 = !{!4324, !4325}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4322, file: !90, line: 496, baseType: !20, size: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4322, file: !90, line: 500, baseType: !4326, offset: 64)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4327, elements: !1216)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !90, line: 497, size: 128, elements: !4328)
!4328 = !{!4329, !4331}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4327, file: !90, line: 498, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !41, line: 158, baseType: !2465)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4327, file: !90, line: 499, baseType: !4330, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !89, file: !90, line: 503, baseType: !628, size: 8, offset: 8064)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !7, file: !8, line: 317, baseType: !4334, size: 192, offset: 704)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4335, line: 54, size: 192, elements: !4336)
!4335 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4336 = !{!4337, !4343, !4344}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4334, file: !4335, line: 55, baseType: !4338, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4335, line: 51, baseType: !4339)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!14, !4342, !153, !268}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4334, file: !4335, line: 56, baseType: !4342, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4334, file: !4335, line: 57, baseType: !14, size: 32, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !7, file: !8, line: 322, baseType: !67, size: 128, offset: 896)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !7, file: !8, line: 327, baseType: !3363, size: 5568, offset: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !7, file: !8, line: 335, baseType: !4348, size: 256, offset: 6592)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 256, elements: !2570)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !7, file: !8, line: 340, baseType: !14, size: 32, offset: 6848)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!4352 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4353, retainedTypes: !4391, globals: !4396, splitDebugInlining: false, nameTableKind: None)
!4353 = !{!19, !28, !984, !1144, !1281, !1611, !1734, !3104, !3123, !3314, !3486, !3741, !3824, !3900, !3908, !4080, !4354, !4358, !4362, !4367, !4377, !4384}
!4354 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_update_reason", file: !8, line: 23, baseType: !20, size: 32, elements: !4355)
!4355 = !{!4356, !4357}
!4356 = !DIEnumerator(name: "BACKLIGHT_UPDATE_HOTKEY", value: 0, isUnsigned: true)
!4357 = !DIEnumerator(name: "BACKLIGHT_UPDATE_SYSFS", value: 1, isUnsigned: true)
!4358 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_notification", file: !8, line: 74, baseType: !20, size: 32, elements: !4359)
!4359 = !{!4360, !4361}
!4360 = !DIEnumerator(name: "BACKLIGHT_REGISTERED", value: 0, isUnsigned: true)
!4361 = !DIEnumerator(name: "BACKLIGHT_UNREGISTERED", value: 1, isUnsigned: true)
!4362 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4363, line: 10, baseType: !20, size: 32, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!4364 = !{!4365, !4366}
!4365 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!4366 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!4367 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !3368, line: 53, baseType: !20, size: 32, elements: !4368)
!4368 = !{!4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376}
!4369 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!4370 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!4371 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!4372 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!4373 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!4374 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!4375 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!4376 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!4377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4378, line: 305, baseType: !20, size: 32, elements: !4379)
!4378 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!4379 = !{!4380, !4381, !4382, !4383}
!4380 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!4381 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!4382 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!4383 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!4384 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 303, baseType: !20, size: 32, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4390}
!4386 = !DIEnumerator(name: "FB_BLANK_UNBLANK", value: 0, isUnsigned: true)
!4387 = !DIEnumerator(name: "FB_BLANK_NORMAL", value: 1, isUnsigned: true)
!4388 = !DIEnumerator(name: "FB_BLANK_VSYNC_SUSPEND", value: 2, isUnsigned: true)
!4389 = !DIEnumerator(name: "FB_BLANK_HSYNC_SUSPEND", value: 3, isUnsigned: true)
!4390 = !DIEnumerator(name: "FB_BLANK_POWERDOWN", value: 4, isUnsigned: true)
!4391 = !{!874, !268, !6, !836, !4392, !4394, !153, !336, !352, !4395}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!4396 = !{!0, !4397, !4399, !4401, !4406, !4411, !4416, !4421, !4426, !4428, !4430, !4436, !4438, !4443, !4445, !4447, !4450, !4452, !4457, !4471, !4473, !4475, !4477, !4479, !4483, !4485, !4488}
!4397 = !DIGlobalVariableExpression(var: !4398, expr: !DIExpression())
!4398 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 407, type: !773, isLocal: true, isDefinition: true)
!4399 = !DIGlobalVariableExpression(var: !4400, expr: !DIExpression())
!4400 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_class_init258", scope: !4352, file: !3, line: 770, type: !268, isLocal: true, isDefinition: true)
!4401 = !DIGlobalVariableExpression(var: !4402, expr: !DIExpression())
!4402 = distinct !DIGlobalVariable(name: "__exitcall_backlight_class_exit", scope: !4352, file: !3, line: 771, type: !4403, isLocal: true, isDefinition: true)
!4403 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4404, line: 117, baseType: !4405)
!4404 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file259", scope: !4352, file: !3, line: 773, type: !4408, isLocal: true, isDefinition: true, align: 8)
!4408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 392, elements: !4409)
!4409 = !{!4410}
!4410 = !DISubrange(count: 49)
!4411 = !DIGlobalVariableExpression(var: !4412, expr: !DIExpression())
!4412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license260", scope: !4352, file: !3, line: 773, type: !4413, isLocal: true, isDefinition: true, align: 8)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 176, elements: !4414)
!4414 = !{!4415}
!4415 = !DISubrange(count: 22)
!4416 = !DIGlobalVariableExpression(var: !4417, expr: !DIExpression())
!4417 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author261", scope: !4352, file: !3, line: 774, type: !4418, isLocal: true, isDefinition: true, align: 8)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 688, elements: !4419)
!4419 = !{!4420}
!4420 = !DISubrange(count: 86)
!4421 = !DIGlobalVariableExpression(var: !4422, expr: !DIExpression())
!4422 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description262", scope: !4352, file: !3, line: 775, type: !4423, isLocal: true, isDefinition: true, align: 8)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 488, elements: !4424)
!4424 = !{!4425}
!4425 = !DISubrange(count: 61)
!4426 = !DIGlobalVariableExpression(var: !4427, expr: !DIExpression())
!4427 = distinct !DIGlobalVariable(name: "backlight_dev_list", scope: !4352, file: !3, line: 66, type: !67, isLocal: true, isDefinition: true)
!4428 = !DIGlobalVariableExpression(var: !4429, expr: !DIExpression())
!4429 = distinct !DIGlobalVariable(name: "backlight_dev_list_mutex", scope: !4352, file: !3, line: 67, type: !34, isLocal: true, isDefinition: true)
!4430 = !DIGlobalVariableExpression(var: !4431, expr: !DIExpression())
!4431 = distinct !DIGlobalVariable(name: "backlight_notifier", scope: !4352, file: !3, line: 68, type: !4432, isLocal: true, isDefinition: true)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4335, line: 65, size: 320, elements: !4433)
!4433 = !{!4434, !4435}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4432, file: !4335, line: 66, baseType: !884, size: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4432, file: !4335, line: 67, baseType: !4342, size: 64, offset: 256)
!4436 = !DIGlobalVariableExpression(var: !4437, expr: !DIExpression())
!4437 = distinct !DIGlobalVariable(name: "backlight_class", scope: !4352, file: !3, line: 317, type: !4189, isLocal: true, isDefinition: true)
!4438 = !DIGlobalVariableExpression(var: !4439, expr: !DIExpression())
!4439 = distinct !DIGlobalVariable(name: "__key", scope: !4440, file: !3, line: 750, type: !773, isLocal: true, isDefinition: true)
!4440 = distinct !DISubprogram(name: "backlight_class_init", scope: !3, file: !3, line: 748, type: !4441, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!14}
!4443 = !DIGlobalVariableExpression(var: !4444, expr: !DIExpression())
!4444 = distinct !DIGlobalVariable(name: "__key", scope: !4440, file: !3, line: 760, type: !773, isLocal: true, isDefinition: true)
!4445 = !DIGlobalVariableExpression(var: !4446, expr: !DIExpression())
!4446 = distinct !DIGlobalVariable(name: "__key", scope: !4440, file: !3, line: 761, type: !773, isLocal: true, isDefinition: true)
!4447 = !DIGlobalVariableExpression(var: !4448, expr: !DIExpression())
!4448 = distinct !DIGlobalVariable(name: "bl_device_groups", scope: !4352, file: !3, line: 367, type: !4449, isLocal: true, isDefinition: true)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3445, size: 128, elements: !170)
!4450 = !DIGlobalVariableExpression(var: !4451, expr: !DIExpression())
!4451 = distinct !DIGlobalVariable(name: "bl_device_group", scope: !4352, file: !3, line: 367, type: !3446, isLocal: true, isDefinition: true)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(name: "bl_device_attrs", scope: !4352, file: !3, line: 358, type: !4454, isLocal: true, isDefinition: true)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3432, size: 448, elements: !4455)
!4455 = !{!4456}
!4456 = !DISubrange(count: 7)
!4457 = !DIGlobalVariableExpression(var: !4458, expr: !DIExpression())
!4458 = distinct !DIGlobalVariable(name: "dev_attr_bl_power", scope: !4352, file: !3, line: 220, type: !4459, isLocal: true, isDefinition: true)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !3364, line: 99, size: 256, elements: !4460)
!4460 = !{!4461, !4462, !4467}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4459, file: !3364, line: 100, baseType: !3433, size: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4459, file: !3364, line: 101, baseType: !4463, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!348, !3362, !4466, !353}
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4459, file: !3364, line: 103, baseType: !4468, size: 64, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!348, !3362, !4466, !191, !354}
!4471 = !DIGlobalVariableExpression(var: !4472, expr: !DIExpression())
!4472 = distinct !DIGlobalVariable(name: "dev_attr_brightness", scope: !4352, file: !3, line: 268, type: !4459, isLocal: true, isDefinition: true)
!4473 = !DIGlobalVariableExpression(var: !4474, expr: !DIExpression())
!4474 = distinct !DIGlobalVariable(name: "dev_attr_actual_brightness", scope: !4352, file: !3, line: 303, type: !4459, isLocal: true, isDefinition: true)
!4475 = !DIGlobalVariableExpression(var: !4476, expr: !DIExpression())
!4476 = distinct !DIGlobalVariable(name: "dev_attr_max_brightness", scope: !4352, file: !3, line: 286, type: !4459, isLocal: true, isDefinition: true)
!4477 = !DIGlobalVariableExpression(var: !4478, expr: !DIExpression())
!4478 = distinct !DIGlobalVariable(name: "dev_attr_scale", scope: !4352, file: !3, line: 315, type: !4459, isLocal: true, isDefinition: true)
!4479 = !DIGlobalVariableExpression(var: !4480, expr: !DIExpression())
!4480 = distinct !DIGlobalVariable(name: "backlight_scale_types", scope: !4352, file: !3, line: 76, type: !4481, isLocal: true, isDefinition: true)
!4481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4482, size: 192, elements: !779)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!4483 = !DIGlobalVariableExpression(var: !4484, expr: !DIExpression())
!4484 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !4352, file: !3, line: 277, type: !4459, isLocal: true, isDefinition: true)
!4485 = !DIGlobalVariableExpression(var: !4486, expr: !DIExpression())
!4486 = distinct !DIGlobalVariable(name: "backlight_types", scope: !4352, file: !3, line: 70, type: !4487, isLocal: true, isDefinition: true)
!4487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4482, size: 256, elements: !142)
!4488 = !DIGlobalVariableExpression(var: !4489, expr: !DIExpression())
!4489 = distinct !DIGlobalVariable(name: "backlight_class_dev_pm_ops", scope: !4352, file: !3, line: 349, type: !3686, isLocal: true, isDefinition: true)
!4490 = !{i32 7, !"Dwarf Version", i32 4}
!4491 = !{i32 2, !"Debug Info Version", i32 3}
!4492 = !{i32 1, !"wchar_size", i32 2}
!4493 = !{i32 1, !"Code Model", i32 2}
!4494 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4495 = distinct !DISubprogram(name: "backlight_device_set_brightness", scope: !3, file: !3, line: 230, type: !4496, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!14, !6, !153}
!4498 = !DILocalVariable(name: "bd", arg: 1, scope: !4495, file: !3, line: 230, type: !6)
!4499 = !DILocation(line: 230, column: 62, scope: !4495)
!4500 = !DILocalVariable(name: "brightness", arg: 2, scope: !4495, file: !3, line: 231, type: !153)
!4501 = !DILocation(line: 231, column: 23, scope: !4495)
!4502 = !DILocalVariable(name: "rc", scope: !4495, file: !3, line: 233, type: !14)
!4503 = !DILocation(line: 233, column: 6, scope: !4495)
!4504 = !DILocation(line: 235, column: 14, scope: !4495)
!4505 = !DILocation(line: 235, column: 18, scope: !4495)
!4506 = !DILocation(line: 235, column: 2, scope: !4495)
!4507 = !DILocation(line: 236, column: 6, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 236, column: 6)
!4509 = !DILocation(line: 236, column: 10, scope: !4508)
!4510 = !DILocation(line: 236, column: 6, scope: !4495)
!4511 = !DILocation(line: 237, column: 7, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 237, column: 7)
!4513 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 236, column: 15)
!4514 = !DILocation(line: 237, column: 20, scope: !4512)
!4515 = !DILocation(line: 237, column: 24, scope: !4512)
!4516 = !DILocation(line: 237, column: 30, scope: !4512)
!4517 = !DILocation(line: 237, column: 18, scope: !4512)
!4518 = !DILocation(line: 237, column: 7, scope: !4513)
!4519 = !DILocation(line: 238, column: 7, scope: !4512)
!4520 = !DILocation(line: 238, column: 4, scope: !4512)
!4521 = !DILocation(line: 240, column: 4, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 240, column: 4)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 240, column: 4)
!4524 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 239, column: 8)
!4525 = !DILocation(line: 240, column: 4, scope: !4523)
!4526 = !DILocation(line: 241, column: 27, scope: !4524)
!4527 = !DILocation(line: 241, column: 4, scope: !4524)
!4528 = !DILocation(line: 241, column: 8, scope: !4524)
!4529 = !DILocation(line: 241, column: 14, scope: !4524)
!4530 = !DILocation(line: 241, column: 25, scope: !4524)
!4531 = !DILocation(line: 242, column: 33, scope: !4524)
!4532 = !DILocation(line: 242, column: 9, scope: !4524)
!4533 = !DILocation(line: 242, column: 7, scope: !4524)
!4534 = !DILocation(line: 244, column: 2, scope: !4513)
!4535 = !DILocation(line: 245, column: 16, scope: !4495)
!4536 = !DILocation(line: 245, column: 20, scope: !4495)
!4537 = !DILocation(line: 245, column: 2, scope: !4495)
!4538 = !DILocation(line: 247, column: 27, scope: !4495)
!4539 = !DILocation(line: 247, column: 2, scope: !4495)
!4540 = !DILocation(line: 249, column: 9, scope: !4495)
!4541 = !DILocation(line: 249, column: 2, scope: !4495)
!4542 = distinct !DISubprogram(name: "backlight_update_status", scope: !8, file: !8, line: 347, type: !81, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4543 = !DILocalVariable(name: "bd", arg: 1, scope: !4542, file: !8, line: 347, type: !6)
!4544 = !DILocation(line: 347, column: 68, scope: !4542)
!4545 = !DILocalVariable(name: "ret", scope: !4542, file: !8, line: 349, type: !14)
!4546 = !DILocation(line: 349, column: 6, scope: !4542)
!4547 = !DILocation(line: 351, column: 14, scope: !4542)
!4548 = !DILocation(line: 351, column: 18, scope: !4542)
!4549 = !DILocation(line: 351, column: 2, scope: !4542)
!4550 = !DILocation(line: 352, column: 6, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4542, file: !8, line: 352, column: 6)
!4552 = !DILocation(line: 352, column: 10, scope: !4551)
!4553 = !DILocation(line: 352, column: 14, scope: !4551)
!4554 = !DILocation(line: 352, column: 17, scope: !4551)
!4555 = !DILocation(line: 352, column: 21, scope: !4551)
!4556 = !DILocation(line: 352, column: 26, scope: !4551)
!4557 = !DILocation(line: 352, column: 6, scope: !4542)
!4558 = !DILocation(line: 353, column: 9, scope: !4551)
!4559 = !DILocation(line: 353, column: 13, scope: !4551)
!4560 = !DILocation(line: 353, column: 18, scope: !4551)
!4561 = !DILocation(line: 353, column: 32, scope: !4551)
!4562 = !DILocation(line: 353, column: 7, scope: !4551)
!4563 = !DILocation(line: 353, column: 3, scope: !4551)
!4564 = !DILocation(line: 354, column: 16, scope: !4542)
!4565 = !DILocation(line: 354, column: 20, scope: !4542)
!4566 = !DILocation(line: 354, column: 2, scope: !4542)
!4567 = !DILocation(line: 356, column: 9, scope: !4542)
!4568 = !DILocation(line: 356, column: 2, scope: !4542)
!4569 = distinct !DISubprogram(name: "backlight_generate_event", scope: !3, file: !3, line: 160, type: !4570, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{null, !6, !4354}
!4572 = !DILocalVariable(name: "bd", arg: 1, scope: !4569, file: !3, line: 160, type: !6)
!4573 = !DILocation(line: 160, column: 63, scope: !4569)
!4574 = !DILocalVariable(name: "reason", arg: 2, scope: !4569, file: !3, line: 161, type: !4354)
!4575 = !DILocation(line: 161, column: 39, scope: !4569)
!4576 = !DILocalVariable(name: "envp", scope: !4569, file: !3, line: 163, type: !4577)
!4577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 128, elements: !170)
!4578 = !DILocation(line: 163, column: 8, scope: !4569)
!4579 = !DILocation(line: 165, column: 10, scope: !4569)
!4580 = !DILocation(line: 165, column: 2, scope: !4569)
!4581 = !DILocation(line: 167, column: 3, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 165, column: 18)
!4583 = !DILocation(line: 167, column: 11, scope: !4582)
!4584 = !DILocation(line: 168, column: 3, scope: !4582)
!4585 = !DILocation(line: 170, column: 3, scope: !4582)
!4586 = !DILocation(line: 170, column: 11, scope: !4582)
!4587 = !DILocation(line: 171, column: 3, scope: !4582)
!4588 = !DILocation(line: 173, column: 3, scope: !4582)
!4589 = !DILocation(line: 173, column: 11, scope: !4582)
!4590 = !DILocation(line: 174, column: 3, scope: !4582)
!4591 = !DILocation(line: 176, column: 2, scope: !4569)
!4592 = !DILocation(line: 176, column: 10, scope: !4569)
!4593 = !DILocation(line: 177, column: 22, scope: !4569)
!4594 = !DILocation(line: 177, column: 26, scope: !4569)
!4595 = !DILocation(line: 177, column: 30, scope: !4569)
!4596 = !DILocation(line: 177, column: 49, scope: !4569)
!4597 = !DILocation(line: 177, column: 2, scope: !4569)
!4598 = !DILocation(line: 178, column: 16, scope: !4569)
!4599 = !DILocation(line: 178, column: 20, scope: !4569)
!4600 = !DILocation(line: 178, column: 24, scope: !4569)
!4601 = !DILocation(line: 178, column: 2, scope: !4569)
!4602 = !DILocation(line: 179, column: 1, scope: !4569)
!4603 = distinct !DISubprogram(name: "backlight_force_update", scope: !3, file: !3, line: 381, type: !4570, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4604 = !DILocalVariable(name: "bd", arg: 1, scope: !4603, file: !3, line: 381, type: !6)
!4605 = !DILocation(line: 381, column: 54, scope: !4603)
!4606 = !DILocalVariable(name: "reason", arg: 2, scope: !4603, file: !3, line: 382, type: !4354)
!4607 = !DILocation(line: 382, column: 37, scope: !4603)
!4608 = !DILocation(line: 384, column: 14, scope: !4603)
!4609 = !DILocation(line: 384, column: 18, scope: !4603)
!4610 = !DILocation(line: 384, column: 2, scope: !4603)
!4611 = !DILocation(line: 385, column: 6, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 385, column: 6)
!4613 = !DILocation(line: 385, column: 10, scope: !4612)
!4614 = !DILocation(line: 385, column: 14, scope: !4612)
!4615 = !DILocation(line: 385, column: 17, scope: !4612)
!4616 = !DILocation(line: 385, column: 21, scope: !4612)
!4617 = !DILocation(line: 385, column: 26, scope: !4612)
!4618 = !DILocation(line: 385, column: 6, scope: !4603)
!4619 = !DILocation(line: 386, column: 26, scope: !4612)
!4620 = !DILocation(line: 386, column: 30, scope: !4612)
!4621 = !DILocation(line: 386, column: 35, scope: !4612)
!4622 = !DILocation(line: 386, column: 50, scope: !4612)
!4623 = !DILocation(line: 386, column: 3, scope: !4612)
!4624 = !DILocation(line: 386, column: 7, scope: !4612)
!4625 = !DILocation(line: 386, column: 13, scope: !4612)
!4626 = !DILocation(line: 386, column: 24, scope: !4612)
!4627 = !DILocation(line: 387, column: 16, scope: !4603)
!4628 = !DILocation(line: 387, column: 20, scope: !4603)
!4629 = !DILocation(line: 387, column: 2, scope: !4603)
!4630 = !DILocation(line: 388, column: 27, scope: !4603)
!4631 = !DILocation(line: 388, column: 31, scope: !4603)
!4632 = !DILocation(line: 388, column: 2, scope: !4603)
!4633 = !DILocation(line: 389, column: 1, scope: !4603)
!4634 = !DILocalVariable(name: "name", arg: 1, scope: !2, file: !3, line: 393, type: !191)
!4635 = !DILocation(line: 393, column: 64, scope: !2)
!4636 = !DILocalVariable(name: "parent", arg: 2, scope: !2, file: !3, line: 394, type: !3362)
!4637 = !DILocation(line: 394, column: 17, scope: !2)
!4638 = !DILocalVariable(name: "devdata", arg: 3, scope: !2, file: !3, line: 394, type: !268)
!4639 = !DILocation(line: 394, column: 31, scope: !2)
!4640 = !DILocalVariable(name: "ops", arg: 4, scope: !2, file: !3, line: 394, type: !74)
!4641 = !DILocation(line: 394, column: 68, scope: !2)
!4642 = !DILocalVariable(name: "props", arg: 5, scope: !2, file: !3, line: 395, type: !4350)
!4643 = !DILocation(line: 395, column: 37, scope: !2)
!4644 = !DILocalVariable(name: "new_bd", scope: !2, file: !3, line: 397, type: !6)
!4645 = !DILocation(line: 397, column: 27, scope: !2)
!4646 = !DILocalVariable(name: "rc", scope: !2, file: !3, line: 398, type: !14)
!4647 = !DILocation(line: 398, column: 6, scope: !2)
!4648 = !DILocation(line: 400, column: 2, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 400, column: 2)
!4650 = distinct !DILexicalBlock(scope: !2, file: !3, line: 400, column: 2)
!4651 = !DILocation(line: 400, column: 2, scope: !4650)
!4652 = !DILocation(line: 402, column: 11, scope: !2)
!4653 = !DILocation(line: 402, column: 9, scope: !2)
!4654 = !DILocation(line: 403, column: 7, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !2, file: !3, line: 403, column: 6)
!4656 = !DILocation(line: 403, column: 6, scope: !2)
!4657 = !DILocation(line: 404, column: 10, scope: !4655)
!4658 = !DILocation(line: 404, column: 3, scope: !4655)
!4659 = !DILocation(line: 406, column: 2, scope: !2)
!4660 = !DILocation(line: 406, column: 2, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !2, file: !3, line: 406, column: 2)
!4662 = !DILocation(line: 407, column: 2, scope: !2)
!4663 = !DILocation(line: 407, column: 2, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !2, file: !3, line: 407, column: 2)
!4665 = !DILocation(line: 409, column: 22, scope: !2)
!4666 = !DILocation(line: 409, column: 2, scope: !2)
!4667 = !DILocation(line: 409, column: 10, scope: !2)
!4668 = !DILocation(line: 409, column: 14, scope: !2)
!4669 = !DILocation(line: 409, column: 20, scope: !2)
!4670 = !DILocation(line: 410, column: 23, scope: !2)
!4671 = !DILocation(line: 410, column: 2, scope: !2)
!4672 = !DILocation(line: 410, column: 10, scope: !2)
!4673 = !DILocation(line: 410, column: 14, scope: !2)
!4674 = !DILocation(line: 410, column: 21, scope: !2)
!4675 = !DILocation(line: 411, column: 2, scope: !2)
!4676 = !DILocation(line: 411, column: 10, scope: !2)
!4677 = !DILocation(line: 411, column: 14, scope: !2)
!4678 = !DILocation(line: 411, column: 22, scope: !2)
!4679 = !DILocation(line: 412, column: 16, scope: !2)
!4680 = !DILocation(line: 412, column: 24, scope: !2)
!4681 = !DILocation(line: 412, column: 35, scope: !2)
!4682 = !DILocation(line: 412, column: 2, scope: !2)
!4683 = !DILocation(line: 413, column: 19, scope: !2)
!4684 = !DILocation(line: 413, column: 27, scope: !2)
!4685 = !DILocation(line: 413, column: 32, scope: !2)
!4686 = !DILocation(line: 413, column: 2, scope: !2)
!4687 = !DILocation(line: 416, column: 6, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !2, file: !3, line: 416, column: 6)
!4689 = !DILocation(line: 416, column: 6, scope: !2)
!4690 = !DILocation(line: 417, column: 11, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 416, column: 13)
!4692 = !DILocation(line: 417, column: 19, scope: !4691)
!4693 = !DILocation(line: 417, column: 3, scope: !4691)
!4694 = !DILocation(line: 417, column: 26, scope: !4691)
!4695 = !DILocation(line: 419, column: 7, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4691, file: !3, line: 419, column: 7)
!4697 = !DILocation(line: 419, column: 14, scope: !4696)
!4698 = !DILocation(line: 419, column: 19, scope: !4696)
!4699 = !DILocation(line: 419, column: 24, scope: !4696)
!4700 = !DILocation(line: 419, column: 27, scope: !4696)
!4701 = !DILocation(line: 419, column: 34, scope: !4696)
!4702 = !DILocation(line: 419, column: 39, scope: !4696)
!4703 = !DILocation(line: 419, column: 7, scope: !4691)
!4704 = !DILocalVariable(name: "__ret_warn_on", scope: !4705, file: !3, line: 420, type: !14)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 420, column: 4)
!4706 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 419, column: 62)
!4707 = !DILocation(line: 420, column: 4, scope: !4705)
!4708 = !DILocation(line: 420, column: 4, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 420, column: 4)
!4710 = !DILocation(line: 420, column: 4, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 420, column: 4)
!4712 = !DILocation(line: 420, column: 4, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 420, column: 4)
!4714 = !DILocation(line: 420, column: 4, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 420, column: 4)
!4716 = !DILocation(line: 420, column: 4, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 420, column: 4)
!4718 = !DILocation(line: 420, column: 4, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 420, column: 4)
!4720 = !{i32 -2141271051, i32 -2141271022, i32 -2141270976, i32 -2141270918, i32 -2141270864, i32 -2141270810, i32 -2141270755, i32 -2141270724}
!4721 = !DILocation(line: 420, column: 4, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 420, column: 4)
!4723 = !{i32 -2141270296, i32 -2141270289, i32 -2141270237, i32 -2141270206, i32 -2141270176}
!4724 = !DILocation(line: 420, column: 4, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 420, column: 4)
!4726 = !DILocation(line: 420, column: 4, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 420, column: 4)
!4728 = !DILocation(line: 421, column: 4, scope: !4706)
!4729 = !DILocation(line: 421, column: 12, scope: !4706)
!4730 = !DILocation(line: 421, column: 18, scope: !4706)
!4731 = !DILocation(line: 421, column: 23, scope: !4706)
!4732 = !DILocation(line: 422, column: 3, scope: !4706)
!4733 = !DILocation(line: 423, column: 2, scope: !4691)
!4734 = !DILocation(line: 424, column: 3, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 423, column: 9)
!4736 = !DILocation(line: 424, column: 11, scope: !4735)
!4737 = !DILocation(line: 424, column: 17, scope: !4735)
!4738 = !DILocation(line: 424, column: 22, scope: !4735)
!4739 = !DILocation(line: 427, column: 24, scope: !2)
!4740 = !DILocation(line: 427, column: 32, scope: !2)
!4741 = !DILocation(line: 427, column: 7, scope: !2)
!4742 = !DILocation(line: 427, column: 5, scope: !2)
!4743 = !DILocation(line: 428, column: 6, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !2, file: !3, line: 428, column: 6)
!4745 = !DILocation(line: 428, column: 6, scope: !2)
!4746 = !DILocation(line: 429, column: 15, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 428, column: 10)
!4748 = !DILocation(line: 429, column: 23, scope: !4747)
!4749 = !DILocation(line: 429, column: 3, scope: !4747)
!4750 = !DILocation(line: 430, column: 18, scope: !4747)
!4751 = !DILocation(line: 430, column: 10, scope: !4747)
!4752 = !DILocation(line: 430, column: 3, scope: !4747)
!4753 = !DILocation(line: 433, column: 29, scope: !2)
!4754 = !DILocation(line: 433, column: 7, scope: !2)
!4755 = !DILocation(line: 433, column: 5, scope: !2)
!4756 = !DILocation(line: 434, column: 6, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !2, file: !3, line: 434, column: 6)
!4758 = !DILocation(line: 434, column: 6, scope: !2)
!4759 = !DILocation(line: 435, column: 22, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 434, column: 10)
!4761 = !DILocation(line: 435, column: 30, scope: !4760)
!4762 = !DILocation(line: 435, column: 3, scope: !4760)
!4763 = !DILocation(line: 436, column: 18, scope: !4760)
!4764 = !DILocation(line: 436, column: 10, scope: !4760)
!4765 = !DILocation(line: 436, column: 3, scope: !4760)
!4766 = !DILocation(line: 439, column: 16, scope: !2)
!4767 = !DILocation(line: 439, column: 2, scope: !2)
!4768 = !DILocation(line: 439, column: 10, scope: !2)
!4769 = !DILocation(line: 439, column: 14, scope: !2)
!4770 = !DILocation(line: 448, column: 2, scope: !2)
!4771 = !DILocation(line: 449, column: 12, scope: !2)
!4772 = !DILocation(line: 449, column: 20, scope: !2)
!4773 = !DILocation(line: 449, column: 2, scope: !2)
!4774 = !DILocation(line: 450, column: 2, scope: !2)
!4775 = !DILocation(line: 453, column: 32, scope: !2)
!4776 = !DILocation(line: 452, column: 2, scope: !2)
!4777 = !DILocation(line: 455, column: 9, scope: !2)
!4778 = !DILocation(line: 455, column: 2, scope: !2)
!4779 = !DILocation(line: 456, column: 1, scope: !2)
!4780 = distinct !DISubprogram(name: "kzalloc", scope: !4378, file: !4378, line: 662, type: !4781, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!268, !354, !874}
!4783 = !DILocalVariable(name: "s", arg: 1, scope: !4784, file: !4378, line: 445, type: !1051)
!4784 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4378, file: !4378, line: 445, type: !4785, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!268, !1051, !874, !354}
!4787 = !DILocation(line: 445, column: 72, scope: !4784, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 552, column: 10, scope: !4789, inlinedAt: !4792)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !4378, line: 540, column: 34)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !4378, line: 540, column: 6)
!4791 = distinct !DISubprogram(name: "kmalloc", scope: !4378, file: !4378, line: 538, type: !4781, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4792 = distinct !DILocation(line: 664, column: 9, scope: !4780)
!4793 = !DILocalVariable(name: "flags", arg: 2, scope: !4784, file: !4378, line: 446, type: !874)
!4794 = !DILocation(line: 446, column: 9, scope: !4784, inlinedAt: !4788)
!4795 = !DILocalVariable(name: "size", arg: 3, scope: !4784, file: !4378, line: 446, type: !354)
!4796 = !DILocation(line: 446, column: 23, scope: !4784, inlinedAt: !4788)
!4797 = !DILocalVariable(name: "ret", scope: !4784, file: !4378, line: 448, type: !268)
!4798 = !DILocation(line: 448, column: 8, scope: !4784, inlinedAt: !4788)
!4799 = !DILocalVariable(name: "flags", arg: 1, scope: !4800, file: !4378, line: 318, type: !874)
!4800 = distinct !DISubprogram(name: "kmalloc_type", scope: !4378, file: !4378, line: 318, type: !4801, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!4377, !874}
!4803 = !DILocation(line: 318, column: 67, scope: !4800, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 553, column: 20, scope: !4789, inlinedAt: !4792)
!4805 = !DILocalVariable(name: "size", arg: 1, scope: !4806, file: !4378, line: 346, type: !354)
!4806 = distinct !DISubprogram(name: "kmalloc_index", scope: !4378, file: !4378, line: 346, type: !4807, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!20, !354}
!4809 = !DILocation(line: 346, column: 58, scope: !4806, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 547, column: 11, scope: !4789, inlinedAt: !4792)
!4811 = !DILocalVariable(name: "size", arg: 1, scope: !4812, file: !4378, line: 472, type: !354)
!4812 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4378, file: !4378, line: 472, type: !4813, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!268, !354, !874, !20}
!4815 = !DILocation(line: 472, column: 28, scope: !4812, inlinedAt: !4816)
!4816 = distinct !DILocation(line: 481, column: 9, scope: !4817, inlinedAt: !4818)
!4817 = distinct !DISubprogram(name: "kmalloc_large", scope: !4378, file: !4378, line: 478, type: !4781, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!4818 = distinct !DILocation(line: 545, column: 11, scope: !4819, inlinedAt: !4792)
!4819 = distinct !DILexicalBlock(scope: !4789, file: !4378, line: 544, column: 7)
!4820 = !DILocalVariable(name: "flags", arg: 2, scope: !4812, file: !4378, line: 472, type: !874)
!4821 = !DILocation(line: 472, column: 40, scope: !4812, inlinedAt: !4816)
!4822 = !DILocalVariable(name: "order", arg: 3, scope: !4812, file: !4378, line: 472, type: !20)
!4823 = !DILocation(line: 472, column: 60, scope: !4812, inlinedAt: !4816)
!4824 = !DILocalVariable(name: "size", arg: 1, scope: !4817, file: !4378, line: 478, type: !354)
!4825 = !DILocation(line: 478, column: 51, scope: !4817, inlinedAt: !4818)
!4826 = !DILocalVariable(name: "flags", arg: 2, scope: !4817, file: !4378, line: 478, type: !874)
!4827 = !DILocation(line: 478, column: 63, scope: !4817, inlinedAt: !4818)
!4828 = !DILocalVariable(name: "order", scope: !4817, file: !4378, line: 480, type: !20)
!4829 = !DILocation(line: 480, column: 15, scope: !4817, inlinedAt: !4818)
!4830 = !DILocalVariable(name: "size", arg: 1, scope: !4791, file: !4378, line: 538, type: !354)
!4831 = !DILocation(line: 538, column: 45, scope: !4791, inlinedAt: !4792)
!4832 = !DILocalVariable(name: "flags", arg: 2, scope: !4791, file: !4378, line: 538, type: !874)
!4833 = !DILocation(line: 538, column: 57, scope: !4791, inlinedAt: !4792)
!4834 = !DILocalVariable(name: "index", scope: !4789, file: !4378, line: 542, type: !20)
!4835 = !DILocation(line: 542, column: 16, scope: !4789, inlinedAt: !4792)
!4836 = !DILocalVariable(name: "size", arg: 1, scope: !4780, file: !4378, line: 662, type: !354)
!4837 = !DILocation(line: 662, column: 36, scope: !4780)
!4838 = !DILocalVariable(name: "flags", arg: 2, scope: !4780, file: !4378, line: 662, type: !874)
!4839 = !DILocation(line: 662, column: 48, scope: !4780)
!4840 = !DILocation(line: 664, column: 17, scope: !4780)
!4841 = !DILocation(line: 664, column: 23, scope: !4780)
!4842 = !DILocation(line: 664, column: 29, scope: !4780)
!4843 = !DILocation(line: 540, column: 27, scope: !4790, inlinedAt: !4792)
!4844 = !DILocation(line: 540, column: 6, scope: !4790, inlinedAt: !4792)
!4845 = !DILocation(line: 540, column: 6, scope: !4791, inlinedAt: !4792)
!4846 = !DILocation(line: 544, column: 7, scope: !4819, inlinedAt: !4792)
!4847 = !DILocation(line: 544, column: 12, scope: !4819, inlinedAt: !4792)
!4848 = !DILocation(line: 544, column: 7, scope: !4789, inlinedAt: !4792)
!4849 = !DILocation(line: 545, column: 25, scope: !4819, inlinedAt: !4792)
!4850 = !DILocation(line: 545, column: 31, scope: !4819, inlinedAt: !4792)
!4851 = !DILocation(line: 480, column: 33, scope: !4817, inlinedAt: !4818)
!4852 = !DILocation(line: 480, column: 23, scope: !4817, inlinedAt: !4818)
!4853 = !DILocation(line: 481, column: 29, scope: !4817, inlinedAt: !4818)
!4854 = !DILocation(line: 481, column: 35, scope: !4817, inlinedAt: !4818)
!4855 = !DILocation(line: 481, column: 42, scope: !4817, inlinedAt: !4818)
!4856 = !DILocation(line: 474, column: 23, scope: !4812, inlinedAt: !4816)
!4857 = !DILocation(line: 474, column: 29, scope: !4812, inlinedAt: !4816)
!4858 = !DILocation(line: 474, column: 36, scope: !4812, inlinedAt: !4816)
!4859 = !DILocation(line: 474, column: 9, scope: !4812, inlinedAt: !4816)
!4860 = !DILocation(line: 545, column: 4, scope: !4819, inlinedAt: !4792)
!4861 = !DILocation(line: 547, column: 25, scope: !4789, inlinedAt: !4792)
!4862 = !DILocation(line: 348, column: 7, scope: !4863, inlinedAt: !4810)
!4863 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 348, column: 6)
!4864 = !DILocation(line: 348, column: 6, scope: !4806, inlinedAt: !4810)
!4865 = !DILocation(line: 349, column: 3, scope: !4863, inlinedAt: !4810)
!4866 = !DILocation(line: 351, column: 6, scope: !4867, inlinedAt: !4810)
!4867 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 351, column: 6)
!4868 = !DILocation(line: 351, column: 11, scope: !4867, inlinedAt: !4810)
!4869 = !DILocation(line: 351, column: 6, scope: !4806, inlinedAt: !4810)
!4870 = !DILocation(line: 352, column: 3, scope: !4867, inlinedAt: !4810)
!4871 = !DILocation(line: 354, column: 32, scope: !4872, inlinedAt: !4810)
!4872 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 354, column: 6)
!4873 = !DILocation(line: 354, column: 37, scope: !4872, inlinedAt: !4810)
!4874 = !DILocation(line: 354, column: 42, scope: !4872, inlinedAt: !4810)
!4875 = !DILocation(line: 354, column: 45, scope: !4872, inlinedAt: !4810)
!4876 = !DILocation(line: 354, column: 50, scope: !4872, inlinedAt: !4810)
!4877 = !DILocation(line: 354, column: 6, scope: !4806, inlinedAt: !4810)
!4878 = !DILocation(line: 355, column: 3, scope: !4872, inlinedAt: !4810)
!4879 = !DILocation(line: 356, column: 32, scope: !4880, inlinedAt: !4810)
!4880 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 356, column: 6)
!4881 = !DILocation(line: 356, column: 37, scope: !4880, inlinedAt: !4810)
!4882 = !DILocation(line: 356, column: 43, scope: !4880, inlinedAt: !4810)
!4883 = !DILocation(line: 356, column: 46, scope: !4880, inlinedAt: !4810)
!4884 = !DILocation(line: 356, column: 51, scope: !4880, inlinedAt: !4810)
!4885 = !DILocation(line: 356, column: 6, scope: !4806, inlinedAt: !4810)
!4886 = !DILocation(line: 357, column: 3, scope: !4880, inlinedAt: !4810)
!4887 = !DILocation(line: 358, column: 6, scope: !4888, inlinedAt: !4810)
!4888 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 358, column: 6)
!4889 = !DILocation(line: 358, column: 11, scope: !4888, inlinedAt: !4810)
!4890 = !DILocation(line: 358, column: 6, scope: !4806, inlinedAt: !4810)
!4891 = !DILocation(line: 358, column: 26, scope: !4888, inlinedAt: !4810)
!4892 = !DILocation(line: 359, column: 6, scope: !4893, inlinedAt: !4810)
!4893 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 359, column: 6)
!4894 = !DILocation(line: 359, column: 11, scope: !4893, inlinedAt: !4810)
!4895 = !DILocation(line: 359, column: 6, scope: !4806, inlinedAt: !4810)
!4896 = !DILocation(line: 359, column: 26, scope: !4893, inlinedAt: !4810)
!4897 = !DILocation(line: 360, column: 6, scope: !4898, inlinedAt: !4810)
!4898 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 360, column: 6)
!4899 = !DILocation(line: 360, column: 11, scope: !4898, inlinedAt: !4810)
!4900 = !DILocation(line: 360, column: 6, scope: !4806, inlinedAt: !4810)
!4901 = !DILocation(line: 360, column: 26, scope: !4898, inlinedAt: !4810)
!4902 = !DILocation(line: 361, column: 6, scope: !4903, inlinedAt: !4810)
!4903 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 361, column: 6)
!4904 = !DILocation(line: 361, column: 11, scope: !4903, inlinedAt: !4810)
!4905 = !DILocation(line: 361, column: 6, scope: !4806, inlinedAt: !4810)
!4906 = !DILocation(line: 361, column: 26, scope: !4903, inlinedAt: !4810)
!4907 = !DILocation(line: 362, column: 6, scope: !4908, inlinedAt: !4810)
!4908 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 362, column: 6)
!4909 = !DILocation(line: 362, column: 11, scope: !4908, inlinedAt: !4810)
!4910 = !DILocation(line: 362, column: 6, scope: !4806, inlinedAt: !4810)
!4911 = !DILocation(line: 362, column: 26, scope: !4908, inlinedAt: !4810)
!4912 = !DILocation(line: 363, column: 6, scope: !4913, inlinedAt: !4810)
!4913 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 363, column: 6)
!4914 = !DILocation(line: 363, column: 11, scope: !4913, inlinedAt: !4810)
!4915 = !DILocation(line: 363, column: 6, scope: !4806, inlinedAt: !4810)
!4916 = !DILocation(line: 363, column: 26, scope: !4913, inlinedAt: !4810)
!4917 = !DILocation(line: 364, column: 6, scope: !4918, inlinedAt: !4810)
!4918 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 364, column: 6)
!4919 = !DILocation(line: 364, column: 11, scope: !4918, inlinedAt: !4810)
!4920 = !DILocation(line: 364, column: 6, scope: !4806, inlinedAt: !4810)
!4921 = !DILocation(line: 364, column: 26, scope: !4918, inlinedAt: !4810)
!4922 = !DILocation(line: 365, column: 6, scope: !4923, inlinedAt: !4810)
!4923 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 365, column: 6)
!4924 = !DILocation(line: 365, column: 11, scope: !4923, inlinedAt: !4810)
!4925 = !DILocation(line: 365, column: 6, scope: !4806, inlinedAt: !4810)
!4926 = !DILocation(line: 365, column: 26, scope: !4923, inlinedAt: !4810)
!4927 = !DILocation(line: 366, column: 6, scope: !4928, inlinedAt: !4810)
!4928 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 366, column: 6)
!4929 = !DILocation(line: 366, column: 11, scope: !4928, inlinedAt: !4810)
!4930 = !DILocation(line: 366, column: 6, scope: !4806, inlinedAt: !4810)
!4931 = !DILocation(line: 366, column: 26, scope: !4928, inlinedAt: !4810)
!4932 = !DILocation(line: 367, column: 6, scope: !4933, inlinedAt: !4810)
!4933 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 367, column: 6)
!4934 = !DILocation(line: 367, column: 11, scope: !4933, inlinedAt: !4810)
!4935 = !DILocation(line: 367, column: 6, scope: !4806, inlinedAt: !4810)
!4936 = !DILocation(line: 367, column: 26, scope: !4933, inlinedAt: !4810)
!4937 = !DILocation(line: 368, column: 6, scope: !4938, inlinedAt: !4810)
!4938 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 368, column: 6)
!4939 = !DILocation(line: 368, column: 11, scope: !4938, inlinedAt: !4810)
!4940 = !DILocation(line: 368, column: 6, scope: !4806, inlinedAt: !4810)
!4941 = !DILocation(line: 368, column: 26, scope: !4938, inlinedAt: !4810)
!4942 = !DILocation(line: 369, column: 6, scope: !4943, inlinedAt: !4810)
!4943 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 369, column: 6)
!4944 = !DILocation(line: 369, column: 11, scope: !4943, inlinedAt: !4810)
!4945 = !DILocation(line: 369, column: 6, scope: !4806, inlinedAt: !4810)
!4946 = !DILocation(line: 369, column: 26, scope: !4943, inlinedAt: !4810)
!4947 = !DILocation(line: 370, column: 6, scope: !4948, inlinedAt: !4810)
!4948 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 370, column: 6)
!4949 = !DILocation(line: 370, column: 11, scope: !4948, inlinedAt: !4810)
!4950 = !DILocation(line: 370, column: 6, scope: !4806, inlinedAt: !4810)
!4951 = !DILocation(line: 370, column: 26, scope: !4948, inlinedAt: !4810)
!4952 = !DILocation(line: 371, column: 6, scope: !4953, inlinedAt: !4810)
!4953 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 371, column: 6)
!4954 = !DILocation(line: 371, column: 11, scope: !4953, inlinedAt: !4810)
!4955 = !DILocation(line: 371, column: 6, scope: !4806, inlinedAt: !4810)
!4956 = !DILocation(line: 371, column: 26, scope: !4953, inlinedAt: !4810)
!4957 = !DILocation(line: 372, column: 6, scope: !4958, inlinedAt: !4810)
!4958 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 372, column: 6)
!4959 = !DILocation(line: 372, column: 11, scope: !4958, inlinedAt: !4810)
!4960 = !DILocation(line: 372, column: 6, scope: !4806, inlinedAt: !4810)
!4961 = !DILocation(line: 372, column: 26, scope: !4958, inlinedAt: !4810)
!4962 = !DILocation(line: 373, column: 6, scope: !4963, inlinedAt: !4810)
!4963 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 373, column: 6)
!4964 = !DILocation(line: 373, column: 11, scope: !4963, inlinedAt: !4810)
!4965 = !DILocation(line: 373, column: 6, scope: !4806, inlinedAt: !4810)
!4966 = !DILocation(line: 373, column: 26, scope: !4963, inlinedAt: !4810)
!4967 = !DILocation(line: 374, column: 6, scope: !4968, inlinedAt: !4810)
!4968 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 374, column: 6)
!4969 = !DILocation(line: 374, column: 11, scope: !4968, inlinedAt: !4810)
!4970 = !DILocation(line: 374, column: 6, scope: !4806, inlinedAt: !4810)
!4971 = !DILocation(line: 374, column: 26, scope: !4968, inlinedAt: !4810)
!4972 = !DILocation(line: 375, column: 6, scope: !4973, inlinedAt: !4810)
!4973 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 375, column: 6)
!4974 = !DILocation(line: 375, column: 11, scope: !4973, inlinedAt: !4810)
!4975 = !DILocation(line: 375, column: 6, scope: !4806, inlinedAt: !4810)
!4976 = !DILocation(line: 375, column: 27, scope: !4973, inlinedAt: !4810)
!4977 = !DILocation(line: 376, column: 6, scope: !4978, inlinedAt: !4810)
!4978 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 376, column: 6)
!4979 = !DILocation(line: 376, column: 11, scope: !4978, inlinedAt: !4810)
!4980 = !DILocation(line: 376, column: 6, scope: !4806, inlinedAt: !4810)
!4981 = !DILocation(line: 376, column: 32, scope: !4978, inlinedAt: !4810)
!4982 = !DILocation(line: 377, column: 6, scope: !4983, inlinedAt: !4810)
!4983 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 377, column: 6)
!4984 = !DILocation(line: 377, column: 11, scope: !4983, inlinedAt: !4810)
!4985 = !DILocation(line: 377, column: 6, scope: !4806, inlinedAt: !4810)
!4986 = !DILocation(line: 377, column: 32, scope: !4983, inlinedAt: !4810)
!4987 = !DILocation(line: 378, column: 6, scope: !4988, inlinedAt: !4810)
!4988 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 378, column: 6)
!4989 = !DILocation(line: 378, column: 11, scope: !4988, inlinedAt: !4810)
!4990 = !DILocation(line: 378, column: 6, scope: !4806, inlinedAt: !4810)
!4991 = !DILocation(line: 378, column: 32, scope: !4988, inlinedAt: !4810)
!4992 = !DILocation(line: 379, column: 6, scope: !4993, inlinedAt: !4810)
!4993 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 379, column: 6)
!4994 = !DILocation(line: 379, column: 11, scope: !4993, inlinedAt: !4810)
!4995 = !DILocation(line: 379, column: 6, scope: !4806, inlinedAt: !4810)
!4996 = !DILocation(line: 379, column: 33, scope: !4993, inlinedAt: !4810)
!4997 = !DILocation(line: 380, column: 6, scope: !4998, inlinedAt: !4810)
!4998 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 380, column: 6)
!4999 = !DILocation(line: 380, column: 11, scope: !4998, inlinedAt: !4810)
!5000 = !DILocation(line: 380, column: 6, scope: !4806, inlinedAt: !4810)
!5001 = !DILocation(line: 380, column: 33, scope: !4998, inlinedAt: !4810)
!5002 = !DILocation(line: 381, column: 6, scope: !5003, inlinedAt: !4810)
!5003 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 381, column: 6)
!5004 = !DILocation(line: 381, column: 11, scope: !5003, inlinedAt: !4810)
!5005 = !DILocation(line: 381, column: 6, scope: !4806, inlinedAt: !4810)
!5006 = !DILocation(line: 381, column: 33, scope: !5003, inlinedAt: !4810)
!5007 = !DILocation(line: 382, column: 2, scope: !5008, inlinedAt: !4810)
!5008 = distinct !DILexicalBlock(scope: !5009, file: !4378, line: 382, column: 2)
!5009 = distinct !DILexicalBlock(scope: !4806, file: !4378, line: 382, column: 2)
!5010 = !{i32 -2141873802, i32 -2141873773, i32 -2141873727, i32 -2141873669, i32 -2141873615, i32 -2141873561, i32 -2141873506, i32 -2141873475}
!5011 = !DILocation(line: 382, column: 2, scope: !5012, inlinedAt: !4810)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !4378, line: 382, column: 2)
!5013 = distinct !DILexicalBlock(scope: !5009, file: !4378, line: 382, column: 2)
!5014 = !{i32 -2141873032, i32 -2141873025, i32 -2141872971, i32 -2141872940, i32 -2141872910}
!5015 = !DILocation(line: 382, column: 2, scope: !5013, inlinedAt: !4810)
!5016 = !DILocation(line: 386, column: 1, scope: !4806, inlinedAt: !4810)
!5017 = !DILocation(line: 547, column: 9, scope: !4789, inlinedAt: !4792)
!5018 = !DILocation(line: 549, column: 8, scope: !5019, inlinedAt: !4792)
!5019 = distinct !DILexicalBlock(scope: !4789, file: !4378, line: 549, column: 7)
!5020 = !DILocation(line: 549, column: 7, scope: !4789, inlinedAt: !4792)
!5021 = !DILocation(line: 550, column: 4, scope: !5019, inlinedAt: !4792)
!5022 = !DILocation(line: 553, column: 33, scope: !4789, inlinedAt: !4792)
!5023 = !DILocation(line: 325, column: 6, scope: !5024, inlinedAt: !4804)
!5024 = distinct !DILexicalBlock(scope: !4800, file: !4378, line: 325, column: 6)
!5025 = !DILocation(line: 325, column: 6, scope: !4800, inlinedAt: !4804)
!5026 = !DILocation(line: 326, column: 3, scope: !5024, inlinedAt: !4804)
!5027 = !DILocation(line: 332, column: 9, scope: !4800, inlinedAt: !4804)
!5028 = !DILocation(line: 332, column: 15, scope: !4800, inlinedAt: !4804)
!5029 = !DILocation(line: 332, column: 2, scope: !4800, inlinedAt: !4804)
!5030 = !DILocation(line: 336, column: 1, scope: !4800, inlinedAt: !4804)
!5031 = !DILocation(line: 553, column: 5, scope: !4789, inlinedAt: !4792)
!5032 = !DILocation(line: 553, column: 41, scope: !4789, inlinedAt: !4792)
!5033 = !DILocation(line: 554, column: 5, scope: !4789, inlinedAt: !4792)
!5034 = !DILocation(line: 554, column: 12, scope: !4789, inlinedAt: !4792)
!5035 = !DILocation(line: 448, column: 31, scope: !4784, inlinedAt: !4788)
!5036 = !DILocation(line: 448, column: 34, scope: !4784, inlinedAt: !4788)
!5037 = !DILocation(line: 448, column: 14, scope: !4784, inlinedAt: !4788)
!5038 = !DILocation(line: 450, column: 22, scope: !4784, inlinedAt: !4788)
!5039 = !DILocation(line: 450, column: 25, scope: !4784, inlinedAt: !4788)
!5040 = !DILocation(line: 450, column: 30, scope: !4784, inlinedAt: !4788)
!5041 = !DILocation(line: 450, column: 36, scope: !4784, inlinedAt: !4788)
!5042 = !DILocation(line: 450, column: 8, scope: !4784, inlinedAt: !4788)
!5043 = !DILocation(line: 450, column: 6, scope: !4784, inlinedAt: !4788)
!5044 = !DILocation(line: 451, column: 9, scope: !4784, inlinedAt: !4788)
!5045 = !DILocation(line: 552, column: 3, scope: !4789, inlinedAt: !4792)
!5046 = !DILocation(line: 557, column: 19, scope: !4791, inlinedAt: !4792)
!5047 = !DILocation(line: 557, column: 25, scope: !4791, inlinedAt: !4792)
!5048 = !DILocation(line: 557, column: 9, scope: !4791, inlinedAt: !4792)
!5049 = !DILocation(line: 557, column: 2, scope: !4791, inlinedAt: !4792)
!5050 = !DILocation(line: 558, column: 1, scope: !4791, inlinedAt: !4792)
!5051 = !DILocation(line: 664, column: 2, scope: !4780)
!5052 = distinct !DISubprogram(name: "ERR_PTR", scope: !5053, file: !5053, line: 24, type: !5054, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5053 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!268, !352}
!5056 = !DILocalVariable(name: "error", arg: 1, scope: !5052, file: !5053, line: 24, type: !352)
!5057 = !DILocation(line: 24, column: 48, scope: !5052)
!5058 = !DILocation(line: 26, column: 18, scope: !5052)
!5059 = !DILocation(line: 26, column: 9, scope: !5052)
!5060 = !DILocation(line: 26, column: 2, scope: !5052)
!5061 = distinct !DISubprogram(name: "bl_device_release", scope: !3, file: !3, line: 352, type: !3682, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5062 = !DILocalVariable(name: "dev", arg: 1, scope: !5061, file: !3, line: 352, type: !3362)
!5063 = !DILocation(line: 352, column: 46, scope: !5061)
!5064 = !DILocalVariable(name: "bd", scope: !5061, file: !3, line: 354, type: !6)
!5065 = !DILocation(line: 354, column: 27, scope: !5061)
!5066 = !DILocalVariable(name: "__mptr", scope: !5067, file: !3, line: 354, type: !268)
!5067 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 354, column: 32)
!5068 = !DILocation(line: 354, column: 32, scope: !5067)
!5069 = !DILocation(line: 354, column: 32, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 354, column: 32)
!5071 = !DILocation(line: 355, column: 8, scope: !5061)
!5072 = !DILocation(line: 355, column: 2, scope: !5061)
!5073 = !DILocation(line: 356, column: 1, scope: !5061)
!5074 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !3364, file: !3364, line: 660, type: !5075, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !3362, !268}
!5077 = !DILocalVariable(name: "dev", arg: 1, scope: !5074, file: !3364, line: 660, type: !3362)
!5078 = !DILocation(line: 660, column: 51, scope: !5074)
!5079 = !DILocalVariable(name: "data", arg: 2, scope: !5074, file: !3364, line: 660, type: !268)
!5080 = !DILocation(line: 660, column: 62, scope: !5074)
!5081 = !DILocation(line: 662, column: 21, scope: !5074)
!5082 = !DILocation(line: 662, column: 2, scope: !5074)
!5083 = !DILocation(line: 662, column: 7, scope: !5074)
!5084 = !DILocation(line: 662, column: 19, scope: !5074)
!5085 = !DILocation(line: 663, column: 1, scope: !5074)
!5086 = distinct !DISubprogram(name: "backlight_register_fb", scope: !3, file: !3, line: 137, type: !81, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5087 = !DILocalVariable(name: "bd", arg: 1, scope: !5086, file: !3, line: 137, type: !6)
!5088 = !DILocation(line: 137, column: 59, scope: !5086)
!5089 = !DILocation(line: 139, column: 10, scope: !5086)
!5090 = !DILocation(line: 139, column: 14, scope: !5086)
!5091 = !DILocation(line: 139, column: 2, scope: !5086)
!5092 = !DILocation(line: 140, column: 2, scope: !5086)
!5093 = !DILocation(line: 140, column: 6, scope: !5086)
!5094 = !DILocation(line: 140, column: 15, scope: !5086)
!5095 = !DILocation(line: 140, column: 29, scope: !5086)
!5096 = !DILocation(line: 142, column: 29, scope: !5086)
!5097 = !DILocation(line: 142, column: 33, scope: !5086)
!5098 = !DILocation(line: 142, column: 9, scope: !5086)
!5099 = !DILocation(line: 142, column: 2, scope: !5086)
!5100 = distinct !DISubprogram(name: "list_add", scope: !5101, file: !5101, line: 84, type: !5102, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5101 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !70, !70}
!5104 = !DILocalVariable(name: "new", arg: 1, scope: !5100, file: !5101, line: 84, type: !70)
!5105 = !DILocation(line: 84, column: 47, scope: !5100)
!5106 = !DILocalVariable(name: "head", arg: 2, scope: !5100, file: !5101, line: 84, type: !70)
!5107 = !DILocation(line: 84, column: 70, scope: !5100)
!5108 = !DILocation(line: 86, column: 13, scope: !5100)
!5109 = !DILocation(line: 86, column: 18, scope: !5100)
!5110 = !DILocation(line: 86, column: 24, scope: !5100)
!5111 = !DILocation(line: 86, column: 30, scope: !5100)
!5112 = !DILocation(line: 86, column: 2, scope: !5100)
!5113 = !DILocation(line: 87, column: 1, scope: !5100)
!5114 = distinct !DISubprogram(name: "backlight_device_get_by_type", scope: !3, file: !3, line: 468, type: !5115, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!6, !19}
!5117 = !DILocalVariable(name: "type", arg: 1, scope: !5114, file: !3, line: 468, type: !19)
!5118 = !DILocation(line: 468, column: 75, scope: !5114)
!5119 = !DILocalVariable(name: "found", scope: !5114, file: !3, line: 470, type: !628)
!5120 = !DILocation(line: 470, column: 7, scope: !5114)
!5121 = !DILocalVariable(name: "bd", scope: !5114, file: !3, line: 471, type: !6)
!5122 = !DILocation(line: 471, column: 27, scope: !5114)
!5123 = !DILocation(line: 473, column: 2, scope: !5114)
!5124 = !DILocalVariable(name: "__mptr", scope: !5125, file: !3, line: 474, type: !268)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 474, column: 2)
!5126 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 474, column: 2)
!5127 = !DILocation(line: 474, column: 2, scope: !5125)
!5128 = !DILocation(line: 474, column: 2, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 474, column: 2)
!5130 = !DILocation(line: 474, column: 2, scope: !5126)
!5131 = !DILocation(line: 474, column: 2, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 474, column: 2)
!5133 = !DILocation(line: 475, column: 7, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5135, file: !3, line: 475, column: 7)
!5135 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 474, column: 54)
!5136 = !DILocation(line: 475, column: 11, scope: !5134)
!5137 = !DILocation(line: 475, column: 17, scope: !5134)
!5138 = !DILocation(line: 475, column: 25, scope: !5134)
!5139 = !DILocation(line: 475, column: 22, scope: !5134)
!5140 = !DILocation(line: 475, column: 7, scope: !5135)
!5141 = !DILocation(line: 476, column: 10, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 475, column: 31)
!5143 = !DILocation(line: 477, column: 4, scope: !5142)
!5144 = !DILocation(line: 479, column: 2, scope: !5135)
!5145 = !DILocalVariable(name: "__mptr", scope: !5146, file: !3, line: 474, type: !268)
!5146 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 474, column: 2)
!5147 = !DILocation(line: 474, column: 2, scope: !5146)
!5148 = !DILocation(line: 474, column: 2, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 474, column: 2)
!5150 = distinct !{!5150, !5130, !5151}
!5151 = !DILocation(line: 479, column: 2, scope: !5126)
!5152 = !DILocation(line: 480, column: 2, scope: !5114)
!5153 = !DILocation(line: 482, column: 9, scope: !5114)
!5154 = !DILocation(line: 482, column: 17, scope: !5114)
!5155 = !DILocation(line: 482, column: 2, scope: !5114)
!5156 = distinct !DISubprogram(name: "backlight_device_get_by_name", scope: !3, file: !3, line: 497, type: !5157, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!6, !191}
!5159 = !DILocalVariable(name: "name", arg: 1, scope: !5156, file: !3, line: 497, type: !191)
!5160 = !DILocation(line: 497, column: 67, scope: !5156)
!5161 = !DILocalVariable(name: "dev", scope: !5156, file: !3, line: 499, type: !3362)
!5162 = !DILocation(line: 499, column: 17, scope: !5156)
!5163 = !DILocation(line: 501, column: 34, scope: !5156)
!5164 = !DILocation(line: 501, column: 51, scope: !5156)
!5165 = !DILocation(line: 501, column: 8, scope: !5156)
!5166 = !DILocation(line: 501, column: 6, scope: !5156)
!5167 = !DILocation(line: 503, column: 9, scope: !5156)
!5168 = !DILocalVariable(name: "__mptr", scope: !5169, file: !3, line: 503, type: !268)
!5169 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 503, column: 15)
!5170 = !DILocation(line: 503, column: 15, scope: !5169)
!5171 = !DILocation(line: 503, column: 15, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 503, column: 15)
!5173 = !DILocation(line: 503, column: 2, scope: !5156)
!5174 = distinct !DISubprogram(name: "class_find_device_by_name", scope: !4191, file: !4191, line: 127, type: !5175, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!3362, !4189, !191}
!5177 = !DILocalVariable(name: "class", arg: 1, scope: !5174, file: !4191, line: 127, type: !4189)
!5178 = !DILocation(line: 127, column: 70, scope: !5174)
!5179 = !DILocalVariable(name: "name", arg: 2, scope: !5174, file: !4191, line: 128, type: !191)
!5180 = !DILocation(line: 128, column: 26, scope: !5174)
!5181 = !DILocation(line: 130, column: 27, scope: !5174)
!5182 = !DILocation(line: 130, column: 40, scope: !5174)
!5183 = !DILocation(line: 130, column: 9, scope: !5174)
!5184 = !DILocation(line: 130, column: 2, scope: !5174)
!5185 = distinct !DISubprogram(name: "backlight_device_unregister", scope: !3, file: !3, line: 508, type: !5186, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{null, !6}
!5188 = !DILocalVariable(name: "bd", arg: 1, scope: !5185, file: !3, line: 508, type: !6)
!5189 = !DILocation(line: 508, column: 59, scope: !5185)
!5190 = !DILocation(line: 510, column: 7, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 510, column: 6)
!5192 = !DILocation(line: 510, column: 6, scope: !5185)
!5193 = !DILocation(line: 511, column: 3, scope: !5191)
!5194 = !DILocation(line: 513, column: 2, scope: !5185)
!5195 = !DILocation(line: 514, column: 12, scope: !5185)
!5196 = !DILocation(line: 514, column: 16, scope: !5185)
!5197 = !DILocation(line: 514, column: 2, scope: !5185)
!5198 = !DILocation(line: 515, column: 2, scope: !5185)
!5199 = !DILocation(line: 525, column: 34, scope: !5185)
!5200 = !DILocation(line: 524, column: 2, scope: !5185)
!5201 = !DILocation(line: 527, column: 14, scope: !5185)
!5202 = !DILocation(line: 527, column: 18, scope: !5185)
!5203 = !DILocation(line: 527, column: 2, scope: !5185)
!5204 = !DILocation(line: 528, column: 2, scope: !5185)
!5205 = !DILocation(line: 528, column: 6, scope: !5185)
!5206 = !DILocation(line: 528, column: 10, scope: !5185)
!5207 = !DILocation(line: 529, column: 16, scope: !5185)
!5208 = !DILocation(line: 529, column: 20, scope: !5185)
!5209 = !DILocation(line: 529, column: 2, scope: !5185)
!5210 = !DILocation(line: 531, column: 26, scope: !5185)
!5211 = !DILocation(line: 531, column: 2, scope: !5185)
!5212 = !DILocation(line: 532, column: 21, scope: !5185)
!5213 = !DILocation(line: 532, column: 25, scope: !5185)
!5214 = !DILocation(line: 532, column: 2, scope: !5185)
!5215 = !DILocation(line: 533, column: 1, scope: !5185)
!5216 = distinct !DISubprogram(name: "list_del", scope: !5101, file: !5101, line: 144, type: !5217, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{null, !70}
!5219 = !DILocalVariable(name: "entry", arg: 1, scope: !5216, file: !5101, line: 144, type: !70)
!5220 = !DILocation(line: 144, column: 47, scope: !5216)
!5221 = !DILocation(line: 146, column: 19, scope: !5216)
!5222 = !DILocation(line: 146, column: 2, scope: !5216)
!5223 = !DILocation(line: 147, column: 2, scope: !5216)
!5224 = !DILocation(line: 147, column: 9, scope: !5216)
!5225 = !DILocation(line: 147, column: 14, scope: !5216)
!5226 = !DILocation(line: 148, column: 2, scope: !5216)
!5227 = !DILocation(line: 148, column: 9, scope: !5216)
!5228 = !DILocation(line: 148, column: 14, scope: !5216)
!5229 = !DILocation(line: 149, column: 1, scope: !5216)
!5230 = distinct !DISubprogram(name: "backlight_unregister_fb", scope: !3, file: !3, line: 145, type: !5186, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5231 = !DILocalVariable(name: "bd", arg: 1, scope: !5230, file: !3, line: 145, type: !6)
!5232 = !DILocation(line: 145, column: 62, scope: !5230)
!5233 = !DILocation(line: 147, column: 24, scope: !5230)
!5234 = !DILocation(line: 147, column: 28, scope: !5230)
!5235 = !DILocation(line: 147, column: 2, scope: !5230)
!5236 = !DILocation(line: 148, column: 1, scope: !5230)
!5237 = distinct !DISubprogram(name: "backlight_register_notifier", scope: !3, file: !3, line: 562, type: !5238, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!14, !4342}
!5240 = !DILocalVariable(name: "nb", arg: 1, scope: !5237, file: !3, line: 562, type: !4342)
!5241 = !DILocation(line: 562, column: 56, scope: !5237)
!5242 = !DILocation(line: 564, column: 63, scope: !5237)
!5243 = !DILocation(line: 564, column: 9, scope: !5237)
!5244 = !DILocation(line: 564, column: 2, scope: !5237)
!5245 = distinct !DISubprogram(name: "backlight_unregister_notifier", scope: !3, file: !3, line: 579, type: !5238, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5246 = !DILocalVariable(name: "nb", arg: 1, scope: !5245, file: !3, line: 579, type: !4342)
!5247 = !DILocation(line: 579, column: 58, scope: !5245)
!5248 = !DILocation(line: 581, column: 65, scope: !5245)
!5249 = !DILocation(line: 581, column: 9, scope: !5245)
!5250 = !DILocation(line: 581, column: 2, scope: !5245)
!5251 = distinct !DISubprogram(name: "devm_backlight_device_register", scope: !3, file: !3, line: 602, type: !5252, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{!6, !3362, !191, !3362, !268, !74, !4350}
!5254 = !DILocalVariable(name: "dev", arg: 1, scope: !5251, file: !3, line: 602, type: !3362)
!5255 = !DILocation(line: 602, column: 72, scope: !5251)
!5256 = !DILocalVariable(name: "name", arg: 2, scope: !5251, file: !3, line: 603, type: !191)
!5257 = !DILocation(line: 603, column: 14, scope: !5251)
!5258 = !DILocalVariable(name: "parent", arg: 3, scope: !5251, file: !3, line: 603, type: !3362)
!5259 = !DILocation(line: 603, column: 35, scope: !5251)
!5260 = !DILocalVariable(name: "devdata", arg: 4, scope: !5251, file: !3, line: 603, type: !268)
!5261 = !DILocation(line: 603, column: 49, scope: !5251)
!5262 = !DILocalVariable(name: "ops", arg: 5, scope: !5251, file: !3, line: 604, type: !74)
!5263 = !DILocation(line: 604, column: 30, scope: !5251)
!5264 = !DILocalVariable(name: "props", arg: 6, scope: !5251, file: !3, line: 605, type: !4350)
!5265 = !DILocation(line: 605, column: 37, scope: !5251)
!5266 = !DILocalVariable(name: "ptr", scope: !5251, file: !3, line: 607, type: !4394)
!5267 = !DILocation(line: 607, column: 28, scope: !5251)
!5268 = !DILocalVariable(name: "backlight", scope: !5251, file: !3, line: 607, type: !6)
!5269 = !DILocation(line: 607, column: 34, scope: !5251)
!5270 = !DILocation(line: 609, column: 8, scope: !5251)
!5271 = !DILocation(line: 609, column: 6, scope: !5251)
!5272 = !DILocation(line: 611, column: 7, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 611, column: 6)
!5274 = !DILocation(line: 611, column: 6, scope: !5251)
!5275 = !DILocation(line: 612, column: 10, scope: !5273)
!5276 = !DILocation(line: 612, column: 3, scope: !5273)
!5277 = !DILocation(line: 614, column: 40, scope: !5251)
!5278 = !DILocation(line: 614, column: 46, scope: !5251)
!5279 = !DILocation(line: 614, column: 54, scope: !5251)
!5280 = !DILocation(line: 614, column: 63, scope: !5251)
!5281 = !DILocation(line: 615, column: 7, scope: !5251)
!5282 = !DILocation(line: 614, column: 14, scope: !5251)
!5283 = !DILocation(line: 614, column: 12, scope: !5251)
!5284 = !DILocation(line: 616, column: 14, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 616, column: 6)
!5286 = !DILocation(line: 616, column: 7, scope: !5285)
!5287 = !DILocation(line: 616, column: 6, scope: !5251)
!5288 = !DILocation(line: 617, column: 10, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 616, column: 26)
!5290 = !DILocation(line: 617, column: 4, scope: !5289)
!5291 = !DILocation(line: 617, column: 8, scope: !5289)
!5292 = !DILocation(line: 618, column: 14, scope: !5289)
!5293 = !DILocation(line: 618, column: 19, scope: !5289)
!5294 = !DILocation(line: 618, column: 3, scope: !5289)
!5295 = !DILocation(line: 619, column: 2, scope: !5289)
!5296 = !DILocation(line: 620, column: 15, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 619, column: 9)
!5298 = !DILocation(line: 620, column: 3, scope: !5297)
!5299 = !DILocation(line: 623, column: 9, scope: !5251)
!5300 = !DILocation(line: 623, column: 2, scope: !5251)
!5301 = !DILocation(line: 624, column: 1, scope: !5251)
!5302 = distinct !DISubprogram(name: "devres_alloc", scope: !3364, file: !3364, line: 178, type: !5303, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!268, !5305, !354, !874}
!5305 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !3364, line: 165, baseType: !5306)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5307 = !DILocalVariable(name: "release", arg: 1, scope: !5302, file: !3364, line: 178, type: !5305)
!5308 = !DILocation(line: 178, column: 47, scope: !5302)
!5309 = !DILocalVariable(name: "size", arg: 2, scope: !5302, file: !3364, line: 178, type: !354)
!5310 = !DILocation(line: 178, column: 63, scope: !5302)
!5311 = !DILocalVariable(name: "gfp", arg: 3, scope: !5302, file: !3364, line: 178, type: !874)
!5312 = !DILocation(line: 178, column: 75, scope: !5302)
!5313 = !DILocation(line: 180, column: 27, scope: !5302)
!5314 = !DILocation(line: 180, column: 36, scope: !5302)
!5315 = !DILocation(line: 180, column: 42, scope: !5302)
!5316 = !DILocation(line: 180, column: 9, scope: !5302)
!5317 = !DILocation(line: 180, column: 2, scope: !5302)
!5318 = distinct !DISubprogram(name: "devm_backlight_device_release", scope: !3, file: !3, line: 536, type: !5075, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5319 = !DILocalVariable(name: "dev", arg: 1, scope: !5318, file: !3, line: 536, type: !3362)
!5320 = !DILocation(line: 536, column: 58, scope: !5318)
!5321 = !DILocalVariable(name: "res", arg: 2, scope: !5318, file: !3, line: 536, type: !268)
!5322 = !DILocation(line: 536, column: 69, scope: !5318)
!5323 = !DILocalVariable(name: "backlight", scope: !5318, file: !3, line: 538, type: !6)
!5324 = !DILocation(line: 538, column: 27, scope: !5318)
!5325 = !DILocation(line: 538, column: 68, scope: !5318)
!5326 = !DILocation(line: 538, column: 40, scope: !5318)
!5327 = !DILocation(line: 538, column: 39, scope: !5318)
!5328 = !DILocation(line: 540, column: 30, scope: !5318)
!5329 = !DILocation(line: 540, column: 2, scope: !5318)
!5330 = !DILocation(line: 541, column: 1, scope: !5318)
!5331 = distinct !DISubprogram(name: "IS_ERR", scope: !5053, file: !5053, line: 34, type: !5332, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!628, !2467}
!5334 = !DILocalVariable(name: "ptr", arg: 1, scope: !5331, file: !5053, line: 34, type: !2467)
!5335 = !DILocation(line: 34, column: 60, scope: !5331)
!5336 = !DILocation(line: 36, column: 9, scope: !5331)
!5337 = !DILocation(line: 36, column: 2, scope: !5331)
!5338 = distinct !DISubprogram(name: "devm_backlight_device_unregister", scope: !3, file: !3, line: 636, type: !5339, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{null, !3362, !6}
!5341 = !DILocalVariable(name: "dev", arg: 1, scope: !5338, file: !3, line: 636, type: !3362)
!5342 = !DILocation(line: 636, column: 54, scope: !5338)
!5343 = !DILocalVariable(name: "bd", arg: 2, scope: !5338, file: !3, line: 637, type: !6)
!5344 = !DILocation(line: 637, column: 30, scope: !5338)
!5345 = !DILocalVariable(name: "rc", scope: !5338, file: !3, line: 639, type: !14)
!5346 = !DILocation(line: 639, column: 6, scope: !5338)
!5347 = !DILocation(line: 641, column: 22, scope: !5338)
!5348 = !DILocation(line: 642, column: 34, scope: !5338)
!5349 = !DILocation(line: 641, column: 7, scope: !5338)
!5350 = !DILocation(line: 641, column: 5, scope: !5338)
!5351 = !DILocalVariable(name: "__ret_warn_on", scope: !5352, file: !3, line: 643, type: !14)
!5352 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 643, column: 2)
!5353 = !DILocation(line: 643, column: 2, scope: !5352)
!5354 = !DILocation(line: 643, column: 2, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 643, column: 2)
!5356 = !DILocation(line: 643, column: 2, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 643, column: 2)
!5358 = !DILocation(line: 643, column: 2, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 643, column: 2)
!5360 = !DILocation(line: 643, column: 2, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 643, column: 2)
!5362 = !{i32 -2141263132, i32 -2141263103, i32 -2141263057, i32 -2141262999, i32 -2141262945, i32 -2141262891, i32 -2141262836, i32 -2141262805}
!5363 = !DILocation(line: 643, column: 2, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 643, column: 2)
!5365 = !{i32 -2141262388, i32 -2141262381, i32 -2141262329, i32 -2141262298, i32 -2141262268}
!5366 = !DILocation(line: 643, column: 2, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 643, column: 2)
!5368 = !DILocation(line: 644, column: 1, scope: !5338)
!5369 = distinct !DISubprogram(name: "devm_backlight_device_match", scope: !3, file: !3, line: 543, type: !5370, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{!14, !3362, !268, !268}
!5372 = !DILocalVariable(name: "dev", arg: 1, scope: !5369, file: !3, line: 543, type: !3362)
!5373 = !DILocation(line: 543, column: 55, scope: !5369)
!5374 = !DILocalVariable(name: "res", arg: 2, scope: !5369, file: !3, line: 543, type: !268)
!5375 = !DILocation(line: 543, column: 66, scope: !5369)
!5376 = !DILocalVariable(name: "data", arg: 3, scope: !5369, file: !3, line: 544, type: !268)
!5377 = !DILocation(line: 544, column: 12, scope: !5369)
!5378 = !DILocalVariable(name: "r", scope: !5369, file: !3, line: 546, type: !4394)
!5379 = !DILocation(line: 546, column: 28, scope: !5369)
!5380 = !DILocation(line: 546, column: 32, scope: !5369)
!5381 = !DILocation(line: 548, column: 10, scope: !5369)
!5382 = !DILocation(line: 548, column: 9, scope: !5369)
!5383 = !DILocation(line: 548, column: 15, scope: !5369)
!5384 = !DILocation(line: 548, column: 12, scope: !5369)
!5385 = !DILocation(line: 548, column: 2, scope: !5369)
!5386 = distinct !DISubprogram(name: "of_find_backlight_by_node", scope: !3, file: !3, line: 665, type: !5387, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!6, !3966}
!5389 = !DILocalVariable(name: "node", arg: 1, scope: !5386, file: !3, line: 665, type: !3966)
!5390 = !DILocation(line: 665, column: 72, scope: !5386)
!5391 = !DILocalVariable(name: "dev", scope: !5386, file: !3, line: 667, type: !3362)
!5392 = !DILocation(line: 667, column: 17, scope: !5386)
!5393 = !DILocation(line: 669, column: 26, scope: !5386)
!5394 = !DILocation(line: 669, column: 49, scope: !5386)
!5395 = !DILocation(line: 669, column: 8, scope: !5386)
!5396 = !DILocation(line: 669, column: 6, scope: !5386)
!5397 = !DILocation(line: 671, column: 9, scope: !5386)
!5398 = !DILocalVariable(name: "__mptr", scope: !5399, file: !3, line: 671, type: !268)
!5399 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 671, column: 15)
!5400 = !DILocation(line: 671, column: 15, scope: !5399)
!5401 = !DILocation(line: 671, column: 15, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 671, column: 15)
!5403 = !DILocation(line: 671, column: 2, scope: !5386)
!5404 = distinct !DISubprogram(name: "of_parent_match", scope: !3, file: !3, line: 648, type: !5405, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!14, !3362, !2467}
!5407 = !DILocalVariable(name: "dev", arg: 1, scope: !5404, file: !3, line: 648, type: !3362)
!5408 = !DILocation(line: 648, column: 43, scope: !5404)
!5409 = !DILocalVariable(name: "data", arg: 2, scope: !5404, file: !3, line: 648, type: !2467)
!5410 = !DILocation(line: 648, column: 60, scope: !5404)
!5411 = !DILocation(line: 650, column: 9, scope: !5404)
!5412 = !DILocation(line: 650, column: 14, scope: !5404)
!5413 = !DILocation(line: 650, column: 21, scope: !5404)
!5414 = !DILocation(line: 650, column: 24, scope: !5404)
!5415 = !DILocation(line: 650, column: 29, scope: !5404)
!5416 = !DILocation(line: 650, column: 37, scope: !5404)
!5417 = !DILocation(line: 650, column: 48, scope: !5404)
!5418 = !DILocation(line: 650, column: 45, scope: !5404)
!5419 = !DILocation(line: 0, scope: !5404)
!5420 = !DILocation(line: 650, column: 2, scope: !5404)
!5421 = distinct !DISubprogram(name: "devm_of_find_backlight", scope: !3, file: !3, line: 726, type: !5422, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!6, !3362}
!5424 = !DILocalVariable(name: "dev", arg: 1, scope: !5421, file: !3, line: 726, type: !3362)
!5425 = !DILocation(line: 726, column: 64, scope: !5421)
!5426 = !DILocalVariable(name: "bd", scope: !5421, file: !3, line: 728, type: !6)
!5427 = !DILocation(line: 728, column: 27, scope: !5421)
!5428 = !DILocalVariable(name: "ret", scope: !5421, file: !3, line: 729, type: !14)
!5429 = !DILocation(line: 729, column: 6, scope: !5421)
!5430 = !DILocation(line: 731, column: 25, scope: !5421)
!5431 = !DILocation(line: 731, column: 7, scope: !5421)
!5432 = !DILocation(line: 731, column: 5, scope: !5421)
!5433 = !DILocation(line: 732, column: 21, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 732, column: 6)
!5435 = !DILocation(line: 732, column: 6, scope: !5434)
!5436 = !DILocation(line: 732, column: 6, scope: !5421)
!5437 = !DILocation(line: 733, column: 10, scope: !5434)
!5438 = !DILocation(line: 733, column: 3, scope: !5434)
!5439 = !DILocation(line: 734, column: 24, scope: !5421)
!5440 = !DILocation(line: 734, column: 53, scope: !5421)
!5441 = !DILocation(line: 734, column: 8, scope: !5421)
!5442 = !DILocation(line: 734, column: 6, scope: !5421)
!5443 = !DILocation(line: 735, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 735, column: 6)
!5445 = !DILocation(line: 735, column: 6, scope: !5421)
!5446 = !DILocation(line: 736, column: 15, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 735, column: 11)
!5448 = !DILocation(line: 736, column: 19, scope: !5447)
!5449 = !DILocation(line: 736, column: 3, scope: !5447)
!5450 = !DILocation(line: 737, column: 18, scope: !5447)
!5451 = !DILocation(line: 737, column: 10, scope: !5447)
!5452 = !DILocation(line: 737, column: 3, scope: !5447)
!5453 = !DILocation(line: 739, column: 9, scope: !5421)
!5454 = !DILocation(line: 739, column: 2, scope: !5421)
!5455 = !DILocation(line: 740, column: 1, scope: !5421)
!5456 = distinct !DISubprogram(name: "of_find_backlight", scope: !3, file: !3, line: 676, type: !5422, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5457 = !DILocalVariable(name: "dev", arg: 1, scope: !5456, file: !3, line: 676, type: !3362)
!5458 = !DILocation(line: 676, column: 66, scope: !5456)
!5459 = !DILocalVariable(name: "bd", scope: !5456, file: !3, line: 678, type: !6)
!5460 = !DILocation(line: 678, column: 27, scope: !5456)
!5461 = !DILocalVariable(name: "np", scope: !5456, file: !3, line: 679, type: !3966)
!5462 = !DILocation(line: 679, column: 22, scope: !5456)
!5463 = !DILocation(line: 681, column: 7, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 681, column: 6)
!5465 = !DILocation(line: 681, column: 6, scope: !5456)
!5466 = !DILocation(line: 682, column: 3, scope: !5464)
!5467 = !DILocation(line: 684, column: 31, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 684, column: 6)
!5469 = !DILocation(line: 684, column: 36, scope: !5468)
!5470 = !DILocation(line: 684, column: 6, scope: !5456)
!5471 = !DILocation(line: 685, column: 25, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 684, column: 45)
!5473 = !DILocation(line: 685, column: 30, scope: !5472)
!5474 = !DILocation(line: 685, column: 8, scope: !5472)
!5475 = !DILocation(line: 685, column: 6, scope: !5472)
!5476 = !DILocation(line: 686, column: 7, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 686, column: 7)
!5478 = !DILocation(line: 686, column: 7, scope: !5472)
!5479 = !DILocation(line: 687, column: 35, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 686, column: 11)
!5481 = !DILocation(line: 687, column: 9, scope: !5480)
!5482 = !DILocation(line: 687, column: 7, scope: !5480)
!5483 = !DILocation(line: 688, column: 16, scope: !5480)
!5484 = !DILocation(line: 688, column: 4, scope: !5480)
!5485 = !DILocation(line: 689, column: 9, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 689, column: 8)
!5487 = !DILocation(line: 689, column: 8, scope: !5480)
!5488 = !DILocation(line: 690, column: 12, scope: !5486)
!5489 = !DILocation(line: 690, column: 5, scope: !5486)
!5490 = !DILocation(line: 695, column: 9, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 695, column: 8)
!5492 = !DILocation(line: 695, column: 13, scope: !5491)
!5493 = !DILocation(line: 695, column: 19, scope: !5491)
!5494 = !DILocation(line: 695, column: 8, scope: !5480)
!5495 = !DILocation(line: 696, column: 28, scope: !5491)
!5496 = !DILocation(line: 696, column: 32, scope: !5491)
!5497 = !DILocation(line: 696, column: 38, scope: !5491)
!5498 = !DILocation(line: 696, column: 5, scope: !5491)
!5499 = !DILocation(line: 696, column: 9, scope: !5491)
!5500 = !DILocation(line: 696, column: 15, scope: !5491)
!5501 = !DILocation(line: 696, column: 26, scope: !5491)
!5502 = !DILocation(line: 697, column: 3, scope: !5480)
!5503 = !DILocation(line: 698, column: 2, scope: !5472)
!5504 = !DILocation(line: 700, column: 9, scope: !5456)
!5505 = !DILocation(line: 700, column: 2, scope: !5456)
!5506 = !DILocation(line: 701, column: 1, scope: !5456)
!5507 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !5053, file: !5053, line: 39, type: !5332, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5508 = !DILocalVariable(name: "ptr", arg: 1, scope: !5507, file: !5053, line: 39, type: !2467)
!5509 = !DILocation(line: 39, column: 68, scope: !5507)
!5510 = !DILocation(line: 41, column: 9, scope: !5507)
!5511 = !DILocation(line: 41, column: 24, scope: !5507)
!5512 = !DILocation(line: 41, column: 27, scope: !5507)
!5513 = !DILocation(line: 41, column: 2, scope: !5507)
!5514 = distinct !DISubprogram(name: "devm_backlight_release", scope: !3, file: !3, line: 703, type: !607, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5515 = !DILocalVariable(name: "data", arg: 1, scope: !5514, file: !3, line: 703, type: !268)
!5516 = !DILocation(line: 703, column: 42, scope: !5514)
!5517 = !DILocalVariable(name: "bd", scope: !5514, file: !3, line: 705, type: !6)
!5518 = !DILocation(line: 705, column: 27, scope: !5514)
!5519 = !DILocation(line: 705, column: 32, scope: !5514)
!5520 = !DILocation(line: 707, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 707, column: 6)
!5522 = !DILocation(line: 707, column: 6, scope: !5514)
!5523 = !DILocation(line: 708, column: 15, scope: !5521)
!5524 = !DILocation(line: 708, column: 19, scope: !5521)
!5525 = !DILocation(line: 708, column: 3, scope: !5521)
!5526 = !DILocation(line: 709, column: 1, scope: !5514)
!5527 = distinct !DISubprogram(name: "backlight_class_exit", scope: !3, file: !3, line: 743, type: !2229, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5528 = !DILocation(line: 745, column: 16, scope: !5527)
!5529 = !DILocation(line: 745, column: 2, scope: !5527)
!5530 = !DILocation(line: 746, column: 1, scope: !5527)
!5531 = !DILocation(line: 750, column: 20, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 750, column: 20)
!5533 = !DILocation(line: 750, column: 18, scope: !4440)
!5534 = !DILocation(line: 751, column: 13, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 751, column: 6)
!5536 = !DILocation(line: 751, column: 6, scope: !5535)
!5537 = !DILocation(line: 751, column: 6, scope: !4440)
!5538 = !DILocation(line: 752, column: 3, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 751, column: 31)
!5540 = !DILocation(line: 754, column: 18, scope: !5539)
!5541 = !DILocation(line: 754, column: 10, scope: !5539)
!5542 = !DILocation(line: 754, column: 3, scope: !5539)
!5543 = !DILocation(line: 757, column: 2, scope: !4440)
!5544 = !DILocation(line: 757, column: 19, scope: !4440)
!5545 = !DILocation(line: 757, column: 30, scope: !4440)
!5546 = !DILocation(line: 758, column: 2, scope: !4440)
!5547 = !DILocation(line: 758, column: 19, scope: !4440)
!5548 = !DILocation(line: 758, column: 22, scope: !4440)
!5549 = !DILocation(line: 759, column: 2, scope: !4440)
!5550 = !DILocation(line: 760, column: 2, scope: !4440)
!5551 = !DILocation(line: 760, column: 2, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 760, column: 2)
!5553 = !DILocation(line: 761, column: 2, scope: !4440)
!5554 = !DILocation(line: 761, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 761, column: 2)
!5556 = !DILocation(line: 761, column: 2, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 761, column: 2)
!5558 = !DILocation(line: 763, column: 2, scope: !4440)
!5559 = !DILocation(line: 764, column: 1, scope: !4440)
!5560 = distinct !DISubprogram(name: "get_order", scope: !5561, file: !5561, line: 29, type: !5562, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5561 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!14, !153}
!5564 = !DILocalVariable(name: "x", arg: 1, scope: !5565, file: !5566, line: 366, type: !490)
!5565 = distinct !DISubprogram(name: "fls64", scope: !5566, file: !5566, line: 366, type: !5567, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5566 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!14, !490}
!5569 = !DILocation(line: 366, column: 40, scope: !5565, inlinedAt: !5570)
!5570 = distinct !DILocation(line: 46, column: 9, scope: !5560)
!5571 = !DILocalVariable(name: "bitpos", scope: !5565, file: !5566, line: 368, type: !14)
!5572 = !DILocation(line: 368, column: 6, scope: !5565, inlinedAt: !5570)
!5573 = !DILocalVariable(name: "size", arg: 1, scope: !5560, file: !5561, line: 29, type: !153)
!5574 = !DILocation(line: 29, column: 63, scope: !5560)
!5575 = !DILocation(line: 31, column: 27, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5560, file: !5561, line: 31, column: 6)
!5577 = !DILocation(line: 31, column: 6, scope: !5576)
!5578 = !DILocation(line: 31, column: 6, scope: !5560)
!5579 = !DILocation(line: 32, column: 8, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !5561, line: 32, column: 7)
!5581 = distinct !DILexicalBlock(scope: !5576, file: !5561, line: 31, column: 34)
!5582 = !DILocation(line: 32, column: 7, scope: !5581)
!5583 = !DILocation(line: 33, column: 4, scope: !5580)
!5584 = !DILocation(line: 35, column: 7, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !5561, line: 35, column: 7)
!5586 = !DILocation(line: 35, column: 12, scope: !5585)
!5587 = !DILocation(line: 35, column: 7, scope: !5581)
!5588 = !DILocation(line: 36, column: 4, scope: !5585)
!5589 = !DILocation(line: 38, column: 10, scope: !5581)
!5590 = !DILocation(line: 38, column: 28, scope: !5581)
!5591 = !DILocation(line: 38, column: 41, scope: !5581)
!5592 = !DILocation(line: 38, column: 3, scope: !5581)
!5593 = !DILocation(line: 41, column: 6, scope: !5560)
!5594 = !DILocation(line: 42, column: 7, scope: !5560)
!5595 = !DILocation(line: 46, column: 15, scope: !5560)
!5596 = !DILocation(line: 374, column: 2, scope: !5565, inlinedAt: !5570)
!5597 = !DILocation(line: 376, column: 14, scope: !5565, inlinedAt: !5570)
!5598 = !{i32 317752}
!5599 = !DILocation(line: 377, column: 9, scope: !5565, inlinedAt: !5570)
!5600 = !DILocation(line: 377, column: 16, scope: !5565, inlinedAt: !5570)
!5601 = !DILocation(line: 46, column: 2, scope: !5560)
!5602 = !DILocation(line: 48, column: 1, scope: !5560)
!5603 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5604, file: !5604, line: 30, type: !5605, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5604 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!14, !489}
!5607 = !DILocation(line: 366, column: 40, scope: !5565, inlinedAt: !5608)
!5608 = distinct !DILocation(line: 32, column: 9, scope: !5603)
!5609 = !DILocation(line: 368, column: 6, scope: !5565, inlinedAt: !5608)
!5610 = !DILocalVariable(name: "n", arg: 1, scope: !5603, file: !5604, line: 30, type: !489)
!5611 = !DILocation(line: 30, column: 21, scope: !5603)
!5612 = !DILocation(line: 32, column: 15, scope: !5603)
!5613 = !DILocation(line: 374, column: 2, scope: !5565, inlinedAt: !5608)
!5614 = !DILocation(line: 376, column: 14, scope: !5565, inlinedAt: !5608)
!5615 = !DILocation(line: 377, column: 9, scope: !5565, inlinedAt: !5608)
!5616 = !DILocation(line: 377, column: 16, scope: !5565, inlinedAt: !5608)
!5617 = !DILocation(line: 32, column: 18, scope: !5603)
!5618 = !DILocation(line: 32, column: 2, scope: !5603)
!5619 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5620, file: !5620, line: 137, type: !5621, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5620 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!268, !1051, !2467, !354, !874}
!5623 = !DILocalVariable(name: "s", arg: 1, scope: !5619, file: !5620, line: 137, type: !1051)
!5624 = !DILocation(line: 137, column: 54, scope: !5619)
!5625 = !DILocalVariable(name: "object", arg: 2, scope: !5619, file: !5620, line: 137, type: !2467)
!5626 = !DILocation(line: 137, column: 69, scope: !5619)
!5627 = !DILocalVariable(name: "size", arg: 3, scope: !5619, file: !5620, line: 138, type: !354)
!5628 = !DILocation(line: 138, column: 12, scope: !5619)
!5629 = !DILocalVariable(name: "flags", arg: 4, scope: !5619, file: !5620, line: 138, type: !874)
!5630 = !DILocation(line: 138, column: 24, scope: !5619)
!5631 = !DILocation(line: 140, column: 17, scope: !5619)
!5632 = !DILocation(line: 140, column: 2, scope: !5619)
!5633 = distinct !DISubprogram(name: "fb_notifier_callback", scope: !3, file: !3, line: 96, type: !4340, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5634 = !DILocalVariable(name: "self", arg: 1, scope: !5633, file: !3, line: 96, type: !4342)
!5635 = !DILocation(line: 96, column: 56, scope: !5633)
!5636 = !DILocalVariable(name: "event", arg: 2, scope: !5633, file: !3, line: 97, type: !153)
!5637 = !DILocation(line: 97, column: 19, scope: !5633)
!5638 = !DILocalVariable(name: "data", arg: 3, scope: !5633, file: !3, line: 97, type: !268)
!5639 = !DILocation(line: 97, column: 32, scope: !5633)
!5640 = !DILocalVariable(name: "bd", scope: !5633, file: !3, line: 99, type: !6)
!5641 = !DILocation(line: 99, column: 27, scope: !5633)
!5642 = !DILocalVariable(name: "evdata", scope: !5633, file: !3, line: 100, type: !5643)
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_event", file: !90, line: 139, size: 128, elements: !5645)
!5645 = !{!5646, !5647}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5644, file: !90, line: 140, baseType: !88, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5644, file: !90, line: 141, baseType: !268, size: 64, offset: 64)
!5648 = !DILocation(line: 100, column: 19, scope: !5633)
!5649 = !DILocation(line: 100, column: 28, scope: !5633)
!5650 = !DILocalVariable(name: "node", scope: !5633, file: !3, line: 101, type: !14)
!5651 = !DILocation(line: 101, column: 6, scope: !5633)
!5652 = !DILocation(line: 101, column: 13, scope: !5633)
!5653 = !DILocation(line: 101, column: 21, scope: !5633)
!5654 = !DILocation(line: 101, column: 27, scope: !5633)
!5655 = !DILocalVariable(name: "fb_blank", scope: !5633, file: !3, line: 102, type: !14)
!5656 = !DILocation(line: 102, column: 6, scope: !5633)
!5657 = !DILocation(line: 105, column: 6, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 105, column: 6)
!5659 = !DILocation(line: 105, column: 12, scope: !5658)
!5660 = !DILocation(line: 105, column: 6, scope: !5633)
!5661 = !DILocation(line: 106, column: 3, scope: !5658)
!5662 = !DILocalVariable(name: "__mptr", scope: !5663, file: !3, line: 108, type: !268)
!5663 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 108, column: 7)
!5664 = !DILocation(line: 108, column: 7, scope: !5663)
!5665 = !DILocation(line: 108, column: 7, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 108, column: 7)
!5667 = !DILocation(line: 108, column: 5, scope: !5633)
!5668 = !DILocation(line: 109, column: 14, scope: !5633)
!5669 = !DILocation(line: 109, column: 18, scope: !5633)
!5670 = !DILocation(line: 109, column: 2, scope: !5633)
!5671 = !DILocation(line: 111, column: 7, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 111, column: 6)
!5673 = !DILocation(line: 111, column: 11, scope: !5672)
!5674 = !DILocation(line: 111, column: 6, scope: !5633)
!5675 = !DILocation(line: 112, column: 3, scope: !5672)
!5676 = !DILocation(line: 113, column: 6, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 113, column: 6)
!5678 = !DILocation(line: 113, column: 10, scope: !5677)
!5679 = !DILocation(line: 113, column: 15, scope: !5677)
!5680 = !DILocation(line: 113, column: 24, scope: !5677)
!5681 = !DILocation(line: 113, column: 28, scope: !5677)
!5682 = !DILocation(line: 113, column: 32, scope: !5677)
!5683 = !DILocation(line: 113, column: 37, scope: !5677)
!5684 = !DILocation(line: 113, column: 46, scope: !5677)
!5685 = !DILocation(line: 113, column: 50, scope: !5677)
!5686 = !DILocation(line: 113, column: 58, scope: !5677)
!5687 = !DILocation(line: 113, column: 6, scope: !5633)
!5688 = !DILocation(line: 114, column: 3, scope: !5677)
!5689 = !DILocation(line: 116, column: 21, scope: !5633)
!5690 = !DILocation(line: 116, column: 29, scope: !5633)
!5691 = !DILocation(line: 116, column: 14, scope: !5633)
!5692 = !DILocation(line: 116, column: 13, scope: !5633)
!5693 = !DILocation(line: 116, column: 11, scope: !5633)
!5694 = !DILocation(line: 117, column: 6, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 117, column: 6)
!5696 = !DILocation(line: 117, column: 15, scope: !5695)
!5697 = !DILocation(line: 117, column: 35, scope: !5695)
!5698 = !DILocation(line: 117, column: 39, scope: !5695)
!5699 = !DILocation(line: 117, column: 43, scope: !5695)
!5700 = !DILocation(line: 117, column: 52, scope: !5695)
!5701 = !DILocation(line: 117, column: 6, scope: !5633)
!5702 = !DILocation(line: 118, column: 3, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 117, column: 59)
!5704 = !DILocation(line: 118, column: 7, scope: !5703)
!5705 = !DILocation(line: 118, column: 16, scope: !5703)
!5706 = !DILocation(line: 118, column: 22, scope: !5703)
!5707 = !DILocation(line: 119, column: 8, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 119, column: 7)
!5709 = !DILocation(line: 119, column: 12, scope: !5708)
!5710 = !DILocation(line: 119, column: 21, scope: !5708)
!5711 = !DILocation(line: 119, column: 7, scope: !5703)
!5712 = !DILocation(line: 120, column: 4, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 119, column: 25)
!5714 = !DILocation(line: 120, column: 8, scope: !5713)
!5715 = !DILocation(line: 120, column: 14, scope: !5713)
!5716 = !DILocation(line: 120, column: 20, scope: !5713)
!5717 = !DILocation(line: 121, column: 4, scope: !5713)
!5718 = !DILocation(line: 121, column: 8, scope: !5713)
!5719 = !DILocation(line: 121, column: 14, scope: !5713)
!5720 = !DILocation(line: 121, column: 23, scope: !5713)
!5721 = !DILocation(line: 122, column: 28, scope: !5713)
!5722 = !DILocation(line: 122, column: 4, scope: !5713)
!5723 = !DILocation(line: 123, column: 3, scope: !5713)
!5724 = !DILocation(line: 124, column: 2, scope: !5703)
!5725 = !DILocation(line: 124, column: 13, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 124, column: 13)
!5727 = !DILocation(line: 124, column: 22, scope: !5726)
!5728 = !DILocation(line: 124, column: 42, scope: !5726)
!5729 = !DILocation(line: 124, column: 45, scope: !5726)
!5730 = !DILocation(line: 124, column: 49, scope: !5726)
!5731 = !DILocation(line: 124, column: 58, scope: !5726)
!5732 = !DILocation(line: 124, column: 13, scope: !5695)
!5733 = !DILocation(line: 125, column: 3, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 124, column: 65)
!5735 = !DILocation(line: 125, column: 7, scope: !5734)
!5736 = !DILocation(line: 125, column: 16, scope: !5734)
!5737 = !DILocation(line: 125, column: 22, scope: !5734)
!5738 = !DILocation(line: 126, column: 11, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 126, column: 7)
!5740 = !DILocation(line: 126, column: 15, scope: !5739)
!5741 = !DILocation(line: 126, column: 9, scope: !5739)
!5742 = !DILocation(line: 126, column: 7, scope: !5734)
!5743 = !DILocation(line: 127, column: 4, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 126, column: 27)
!5745 = !DILocation(line: 127, column: 8, scope: !5744)
!5746 = !DILocation(line: 127, column: 14, scope: !5744)
!5747 = !DILocation(line: 127, column: 20, scope: !5744)
!5748 = !DILocation(line: 128, column: 25, scope: !5744)
!5749 = !DILocation(line: 128, column: 4, scope: !5744)
!5750 = !DILocation(line: 128, column: 8, scope: !5744)
!5751 = !DILocation(line: 128, column: 14, scope: !5744)
!5752 = !DILocation(line: 128, column: 23, scope: !5744)
!5753 = !DILocation(line: 129, column: 28, scope: !5744)
!5754 = !DILocation(line: 129, column: 4, scope: !5744)
!5755 = !DILocation(line: 130, column: 3, scope: !5744)
!5756 = !DILocation(line: 131, column: 2, scope: !5734)
!5757 = !DILocation(line: 117, column: 56, scope: !5695)
!5758 = !DILabel(scope: !5633, name: "out", file: !3, line: 132)
!5759 = !DILocation(line: 132, column: 1, scope: !5633)
!5760 = !DILocation(line: 133, column: 16, scope: !5633)
!5761 = !DILocation(line: 133, column: 20, scope: !5633)
!5762 = !DILocation(line: 133, column: 2, scope: !5633)
!5763 = !DILocation(line: 134, column: 2, scope: !5633)
!5764 = !DILocation(line: 135, column: 1, scope: !5633)
!5765 = distinct !DISubprogram(name: "__list_add", scope: !5101, file: !5101, line: 63, type: !5766, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{null, !70, !70, !70}
!5768 = !DILocalVariable(name: "new", arg: 1, scope: !5765, file: !5101, line: 63, type: !70)
!5769 = !DILocation(line: 63, column: 49, scope: !5765)
!5770 = !DILocalVariable(name: "prev", arg: 2, scope: !5765, file: !5101, line: 64, type: !70)
!5771 = !DILocation(line: 64, column: 28, scope: !5765)
!5772 = !DILocalVariable(name: "next", arg: 3, scope: !5765, file: !5101, line: 65, type: !70)
!5773 = !DILocation(line: 65, column: 28, scope: !5765)
!5774 = !DILocation(line: 67, column: 24, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5765, file: !5101, line: 67, column: 6)
!5776 = !DILocation(line: 67, column: 29, scope: !5775)
!5777 = !DILocation(line: 67, column: 35, scope: !5775)
!5778 = !DILocation(line: 67, column: 7, scope: !5775)
!5779 = !DILocation(line: 67, column: 6, scope: !5765)
!5780 = !DILocation(line: 68, column: 3, scope: !5775)
!5781 = !DILocation(line: 70, column: 15, scope: !5765)
!5782 = !DILocation(line: 70, column: 2, scope: !5765)
!5783 = !DILocation(line: 70, column: 8, scope: !5765)
!5784 = !DILocation(line: 70, column: 13, scope: !5765)
!5785 = !DILocation(line: 71, column: 14, scope: !5765)
!5786 = !DILocation(line: 71, column: 2, scope: !5765)
!5787 = !DILocation(line: 71, column: 7, scope: !5765)
!5788 = !DILocation(line: 71, column: 12, scope: !5765)
!5789 = !DILocation(line: 72, column: 14, scope: !5765)
!5790 = !DILocation(line: 72, column: 2, scope: !5765)
!5791 = !DILocation(line: 72, column: 7, scope: !5765)
!5792 = !DILocation(line: 72, column: 12, scope: !5765)
!5793 = !DILocation(line: 73, column: 2, scope: !5765)
!5794 = !DILocation(line: 73, column: 2, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5765, file: !5101, line: 73, column: 2)
!5796 = !DILocation(line: 73, column: 2, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5795, file: !5101, line: 73, column: 2)
!5798 = !DILocation(line: 73, column: 2, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5795, file: !5101, line: 73, column: 2)
!5800 = !DILocation(line: 74, column: 1, scope: !5765)
!5801 = distinct !DISubprogram(name: "__list_add_valid", scope: !5101, file: !5101, line: 45, type: !5802, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!628, !70, !70, !70}
!5804 = !DILocalVariable(name: "new", arg: 1, scope: !5801, file: !5101, line: 45, type: !70)
!5805 = !DILocation(line: 45, column: 55, scope: !5801)
!5806 = !DILocalVariable(name: "prev", arg: 2, scope: !5801, file: !5101, line: 46, type: !70)
!5807 = !DILocation(line: 46, column: 23, scope: !5801)
!5808 = !DILocalVariable(name: "next", arg: 3, scope: !5801, file: !5101, line: 47, type: !70)
!5809 = !DILocation(line: 47, column: 23, scope: !5801)
!5810 = !DILocation(line: 49, column: 2, scope: !5801)
!5811 = distinct !DISubprogram(name: "__list_del_entry", scope: !5101, file: !5101, line: 130, type: !5217, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5812 = !DILocalVariable(name: "entry", arg: 1, scope: !5811, file: !5101, line: 130, type: !70)
!5813 = !DILocation(line: 130, column: 55, scope: !5811)
!5814 = !DILocation(line: 132, column: 30, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5811, file: !5101, line: 132, column: 6)
!5816 = !DILocation(line: 132, column: 7, scope: !5815)
!5817 = !DILocation(line: 132, column: 6, scope: !5811)
!5818 = !DILocation(line: 133, column: 3, scope: !5815)
!5819 = !DILocation(line: 135, column: 13, scope: !5811)
!5820 = !DILocation(line: 135, column: 20, scope: !5811)
!5821 = !DILocation(line: 135, column: 26, scope: !5811)
!5822 = !DILocation(line: 135, column: 33, scope: !5811)
!5823 = !DILocation(line: 135, column: 2, scope: !5811)
!5824 = !DILocation(line: 136, column: 1, scope: !5811)
!5825 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5101, file: !5101, line: 51, type: !5826, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!628, !70}
!5828 = !DILocalVariable(name: "entry", arg: 1, scope: !5825, file: !5101, line: 51, type: !70)
!5829 = !DILocation(line: 51, column: 61, scope: !5825)
!5830 = !DILocation(line: 53, column: 2, scope: !5825)
!5831 = distinct !DISubprogram(name: "__list_del", scope: !5101, file: !5101, line: 110, type: !5102, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5832 = !DILocalVariable(name: "prev", arg: 1, scope: !5831, file: !5101, line: 110, type: !70)
!5833 = !DILocation(line: 110, column: 50, scope: !5831)
!5834 = !DILocalVariable(name: "next", arg: 2, scope: !5831, file: !5101, line: 110, type: !70)
!5835 = !DILocation(line: 110, column: 75, scope: !5831)
!5836 = !DILocation(line: 112, column: 15, scope: !5831)
!5837 = !DILocation(line: 112, column: 2, scope: !5831)
!5838 = !DILocation(line: 112, column: 8, scope: !5831)
!5839 = !DILocation(line: 112, column: 13, scope: !5831)
!5840 = !DILocation(line: 113, column: 2, scope: !5831)
!5841 = !DILocation(line: 113, column: 2, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5831, file: !5101, line: 113, column: 2)
!5843 = !DILocation(line: 113, column: 2, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5842, file: !5101, line: 113, column: 2)
!5845 = !DILocation(line: 113, column: 2, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5842, file: !5101, line: 113, column: 2)
!5847 = !DILocation(line: 114, column: 1, scope: !5831)
!5848 = distinct !DISubprogram(name: "of_node_put", scope: !3968, file: !3968, line: 129, type: !5849, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{null, !3966}
!5851 = !DILocalVariable(name: "node", arg: 1, scope: !5848, file: !3968, line: 129, type: !3966)
!5852 = !DILocation(line: 129, column: 52, scope: !5848)
!5853 = !DILocation(line: 129, column: 60, scope: !5848)
!5854 = distinct !DISubprogram(name: "PTR_ERR", scope: !5053, file: !5053, line: 29, type: !5855, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!352, !2467}
!5857 = !DILocalVariable(name: "ptr", arg: 1, scope: !5854, file: !5053, line: 29, type: !2467)
!5858 = !DILocation(line: 29, column: 61, scope: !5854)
!5859 = !DILocation(line: 31, column: 16, scope: !5854)
!5860 = !DILocation(line: 31, column: 9, scope: !5854)
!5861 = !DILocation(line: 31, column: 2, scope: !5854)
!5862 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5101, file: !5101, line: 33, type: !5217, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5863 = !DILocalVariable(name: "list", arg: 1, scope: !5862, file: !5101, line: 33, type: !70)
!5864 = !DILocation(line: 33, column: 53, scope: !5862)
!5865 = !DILocation(line: 35, column: 2, scope: !5862)
!5866 = !DILocation(line: 35, column: 2, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5862, file: !5101, line: 35, column: 2)
!5868 = !DILocation(line: 35, column: 2, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5867, file: !5101, line: 35, column: 2)
!5870 = !DILocation(line: 35, column: 2, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5867, file: !5101, line: 35, column: 2)
!5872 = !DILocation(line: 36, column: 15, scope: !5862)
!5873 = !DILocation(line: 36, column: 2, scope: !5862)
!5874 = !DILocation(line: 36, column: 8, scope: !5862)
!5875 = !DILocation(line: 36, column: 13, scope: !5862)
!5876 = !DILocation(line: 37, column: 1, scope: !5862)
!5877 = distinct !DISubprogram(name: "bl_power_show", scope: !3, file: !3, line: 181, type: !4464, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5878 = !DILocalVariable(name: "dev", arg: 1, scope: !5877, file: !3, line: 181, type: !3362)
!5879 = !DILocation(line: 181, column: 45, scope: !5877)
!5880 = !DILocalVariable(name: "attr", arg: 2, scope: !5877, file: !3, line: 181, type: !4466)
!5881 = !DILocation(line: 181, column: 75, scope: !5877)
!5882 = !DILocalVariable(name: "buf", arg: 3, scope: !5877, file: !3, line: 182, type: !353)
!5883 = !DILocation(line: 182, column: 9, scope: !5877)
!5884 = !DILocalVariable(name: "bd", scope: !5877, file: !3, line: 184, type: !6)
!5885 = !DILocation(line: 184, column: 27, scope: !5877)
!5886 = !DILocalVariable(name: "__mptr", scope: !5887, file: !3, line: 184, type: !268)
!5887 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 184, column: 32)
!5888 = !DILocation(line: 184, column: 32, scope: !5887)
!5889 = !DILocation(line: 184, column: 32, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 184, column: 32)
!5891 = !DILocation(line: 186, column: 17, scope: !5877)
!5892 = !DILocation(line: 186, column: 30, scope: !5877)
!5893 = !DILocation(line: 186, column: 34, scope: !5877)
!5894 = !DILocation(line: 186, column: 40, scope: !5877)
!5895 = !DILocation(line: 186, column: 9, scope: !5877)
!5896 = !DILocation(line: 186, column: 2, scope: !5877)
!5897 = distinct !DISubprogram(name: "bl_power_store", scope: !3, file: !3, line: 189, type: !4469, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5898 = !DILocalVariable(name: "dev", arg: 1, scope: !5897, file: !3, line: 189, type: !3362)
!5899 = !DILocation(line: 189, column: 46, scope: !5897)
!5900 = !DILocalVariable(name: "attr", arg: 2, scope: !5897, file: !3, line: 189, type: !4466)
!5901 = !DILocation(line: 189, column: 76, scope: !5897)
!5902 = !DILocalVariable(name: "buf", arg: 3, scope: !5897, file: !3, line: 190, type: !191)
!5903 = !DILocation(line: 190, column: 15, scope: !5897)
!5904 = !DILocalVariable(name: "count", arg: 4, scope: !5897, file: !3, line: 190, type: !354)
!5905 = !DILocation(line: 190, column: 27, scope: !5897)
!5906 = !DILocalVariable(name: "rc", scope: !5897, file: !3, line: 192, type: !14)
!5907 = !DILocation(line: 192, column: 6, scope: !5897)
!5908 = !DILocalVariable(name: "bd", scope: !5897, file: !3, line: 193, type: !6)
!5909 = !DILocation(line: 193, column: 27, scope: !5897)
!5910 = !DILocalVariable(name: "__mptr", scope: !5911, file: !3, line: 193, type: !268)
!5911 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 193, column: 32)
!5912 = !DILocation(line: 193, column: 32, scope: !5911)
!5913 = !DILocation(line: 193, column: 32, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 193, column: 32)
!5915 = !DILocalVariable(name: "power", scope: !5897, file: !3, line: 194, type: !153)
!5916 = !DILocation(line: 194, column: 16, scope: !5897)
!5917 = !DILocalVariable(name: "old_power", scope: !5897, file: !3, line: 194, type: !153)
!5918 = !DILocation(line: 194, column: 23, scope: !5897)
!5919 = !DILocation(line: 196, column: 16, scope: !5897)
!5920 = !DILocation(line: 196, column: 7, scope: !5897)
!5921 = !DILocation(line: 196, column: 5, scope: !5897)
!5922 = !DILocation(line: 197, column: 6, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 197, column: 6)
!5924 = !DILocation(line: 197, column: 6, scope: !5897)
!5925 = !DILocation(line: 198, column: 10, scope: !5923)
!5926 = !DILocation(line: 198, column: 3, scope: !5923)
!5927 = !DILocation(line: 200, column: 5, scope: !5897)
!5928 = !DILocation(line: 201, column: 14, scope: !5897)
!5929 = !DILocation(line: 201, column: 18, scope: !5897)
!5930 = !DILocation(line: 201, column: 2, scope: !5897)
!5931 = !DILocation(line: 202, column: 6, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 202, column: 6)
!5933 = !DILocation(line: 202, column: 10, scope: !5932)
!5934 = !DILocation(line: 202, column: 6, scope: !5897)
!5935 = !DILocation(line: 203, column: 3, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 203, column: 3)
!5937 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 203, column: 3)
!5938 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 202, column: 15)
!5939 = !DILocation(line: 203, column: 3, scope: !5937)
!5940 = !DILocation(line: 204, column: 7, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 204, column: 7)
!5942 = !DILocation(line: 204, column: 11, scope: !5941)
!5943 = !DILocation(line: 204, column: 17, scope: !5941)
!5944 = !DILocation(line: 204, column: 26, scope: !5941)
!5945 = !DILocation(line: 204, column: 23, scope: !5941)
!5946 = !DILocation(line: 204, column: 7, scope: !5938)
!5947 = !DILocation(line: 205, column: 16, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 204, column: 33)
!5949 = !DILocation(line: 205, column: 20, scope: !5948)
!5950 = !DILocation(line: 205, column: 26, scope: !5948)
!5951 = !DILocation(line: 205, column: 14, scope: !5948)
!5952 = !DILocation(line: 206, column: 22, scope: !5948)
!5953 = !DILocation(line: 206, column: 4, scope: !5948)
!5954 = !DILocation(line: 206, column: 8, scope: !5948)
!5955 = !DILocation(line: 206, column: 14, scope: !5948)
!5956 = !DILocation(line: 206, column: 20, scope: !5948)
!5957 = !DILocation(line: 207, column: 33, scope: !5948)
!5958 = !DILocation(line: 207, column: 9, scope: !5948)
!5959 = !DILocation(line: 207, column: 7, scope: !5948)
!5960 = !DILocation(line: 208, column: 8, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 208, column: 8)
!5962 = !DILocation(line: 208, column: 8, scope: !5948)
!5963 = !DILocation(line: 209, column: 23, scope: !5961)
!5964 = !DILocation(line: 209, column: 5, scope: !5961)
!5965 = !DILocation(line: 209, column: 9, scope: !5961)
!5966 = !DILocation(line: 209, column: 15, scope: !5961)
!5967 = !DILocation(line: 209, column: 21, scope: !5961)
!5968 = !DILocation(line: 211, column: 10, scope: !5961)
!5969 = !DILocation(line: 211, column: 8, scope: !5961)
!5970 = !DILocation(line: 212, column: 3, scope: !5948)
!5971 = !DILocation(line: 213, column: 9, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 212, column: 10)
!5973 = !DILocation(line: 213, column: 7, scope: !5972)
!5974 = !DILocation(line: 215, column: 2, scope: !5938)
!5975 = !DILocation(line: 216, column: 16, scope: !5897)
!5976 = !DILocation(line: 216, column: 20, scope: !5897)
!5977 = !DILocation(line: 216, column: 2, scope: !5897)
!5978 = !DILocation(line: 218, column: 9, scope: !5897)
!5979 = !DILocation(line: 218, column: 2, scope: !5897)
!5980 = !DILocation(line: 219, column: 1, scope: !5897)
!5981 = distinct !DISubprogram(name: "kstrtoul", scope: !5982, file: !5982, line: 351, type: !5983, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5982 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5983 = !DISubroutineType(types: !5984)
!5984 = !{!14, !191, !20, !4119}
!5985 = !DILocalVariable(name: "s", arg: 1, scope: !5981, file: !5982, line: 351, type: !191)
!5986 = !DILocation(line: 351, column: 53, scope: !5981)
!5987 = !DILocalVariable(name: "base", arg: 2, scope: !5981, file: !5982, line: 351, type: !20)
!5988 = !DILocation(line: 351, column: 69, scope: !5981)
!5989 = !DILocalVariable(name: "res", arg: 3, scope: !5981, file: !5982, line: 351, type: !4119)
!5990 = !DILocation(line: 351, column: 90, scope: !5981)
!5991 = !DILocation(line: 359, column: 20, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5981, file: !5982, line: 357, column: 6)
!5993 = !DILocation(line: 359, column: 23, scope: !5992)
!5994 = !DILocation(line: 359, column: 51, scope: !5992)
!5995 = !DILocation(line: 359, column: 10, scope: !5992)
!5996 = !DILocation(line: 359, column: 3, scope: !5992)
!5997 = distinct !DISubprogram(name: "brightness_show", scope: !3, file: !3, line: 222, type: !4464, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!5998 = !DILocalVariable(name: "dev", arg: 1, scope: !5997, file: !3, line: 222, type: !3362)
!5999 = !DILocation(line: 222, column: 47, scope: !5997)
!6000 = !DILocalVariable(name: "attr", arg: 2, scope: !5997, file: !3, line: 223, type: !4466)
!6001 = !DILocation(line: 223, column: 28, scope: !5997)
!6002 = !DILocalVariable(name: "buf", arg: 3, scope: !5997, file: !3, line: 223, type: !353)
!6003 = !DILocation(line: 223, column: 40, scope: !5997)
!6004 = !DILocalVariable(name: "bd", scope: !5997, file: !3, line: 225, type: !6)
!6005 = !DILocation(line: 225, column: 27, scope: !5997)
!6006 = !DILocalVariable(name: "__mptr", scope: !6007, file: !3, line: 225, type: !268)
!6007 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 225, column: 32)
!6008 = !DILocation(line: 225, column: 32, scope: !6007)
!6009 = !DILocation(line: 225, column: 32, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6007, file: !3, line: 225, column: 32)
!6011 = !DILocation(line: 227, column: 17, scope: !5997)
!6012 = !DILocation(line: 227, column: 30, scope: !5997)
!6013 = !DILocation(line: 227, column: 34, scope: !5997)
!6014 = !DILocation(line: 227, column: 40, scope: !5997)
!6015 = !DILocation(line: 227, column: 9, scope: !5997)
!6016 = !DILocation(line: 227, column: 2, scope: !5997)
!6017 = distinct !DISubprogram(name: "brightness_store", scope: !3, file: !3, line: 253, type: !4469, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!6018 = !DILocalVariable(name: "dev", arg: 1, scope: !6017, file: !3, line: 253, type: !3362)
!6019 = !DILocation(line: 253, column: 48, scope: !6017)
!6020 = !DILocalVariable(name: "attr", arg: 2, scope: !6017, file: !3, line: 254, type: !4466)
!6021 = !DILocation(line: 254, column: 28, scope: !6017)
!6022 = !DILocalVariable(name: "buf", arg: 3, scope: !6017, file: !3, line: 254, type: !191)
!6023 = !DILocation(line: 254, column: 46, scope: !6017)
!6024 = !DILocalVariable(name: "count", arg: 4, scope: !6017, file: !3, line: 254, type: !354)
!6025 = !DILocation(line: 254, column: 58, scope: !6017)
!6026 = !DILocalVariable(name: "rc", scope: !6017, file: !3, line: 256, type: !14)
!6027 = !DILocation(line: 256, column: 6, scope: !6017)
!6028 = !DILocalVariable(name: "bd", scope: !6017, file: !3, line: 257, type: !6)
!6029 = !DILocation(line: 257, column: 27, scope: !6017)
!6030 = !DILocalVariable(name: "__mptr", scope: !6031, file: !3, line: 257, type: !268)
!6031 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 257, column: 32)
!6032 = !DILocation(line: 257, column: 32, scope: !6031)
!6033 = !DILocation(line: 257, column: 32, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 257, column: 32)
!6035 = !DILocalVariable(name: "brightness", scope: !6017, file: !3, line: 258, type: !153)
!6036 = !DILocation(line: 258, column: 16, scope: !6017)
!6037 = !DILocation(line: 260, column: 16, scope: !6017)
!6038 = !DILocation(line: 260, column: 7, scope: !6017)
!6039 = !DILocation(line: 260, column: 5, scope: !6017)
!6040 = !DILocation(line: 261, column: 6, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 261, column: 6)
!6042 = !DILocation(line: 261, column: 6, scope: !6017)
!6043 = !DILocation(line: 262, column: 10, scope: !6041)
!6044 = !DILocation(line: 262, column: 3, scope: !6041)
!6045 = !DILocation(line: 264, column: 39, scope: !6017)
!6046 = !DILocation(line: 264, column: 43, scope: !6017)
!6047 = !DILocation(line: 264, column: 7, scope: !6017)
!6048 = !DILocation(line: 264, column: 5, scope: !6017)
!6049 = !DILocation(line: 266, column: 9, scope: !6017)
!6050 = !DILocation(line: 266, column: 14, scope: !6017)
!6051 = !DILocation(line: 266, column: 19, scope: !6017)
!6052 = !DILocation(line: 266, column: 2, scope: !6017)
!6053 = !DILocation(line: 267, column: 1, scope: !6017)
!6054 = distinct !DISubprogram(name: "actual_brightness_show", scope: !3, file: !3, line: 288, type: !4464, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!6055 = !DILocalVariable(name: "dev", arg: 1, scope: !6054, file: !3, line: 288, type: !3362)
!6056 = !DILocation(line: 288, column: 54, scope: !6054)
!6057 = !DILocalVariable(name: "attr", arg: 2, scope: !6054, file: !3, line: 289, type: !4466)
!6058 = !DILocation(line: 289, column: 28, scope: !6054)
!6059 = !DILocalVariable(name: "buf", arg: 3, scope: !6054, file: !3, line: 289, type: !353)
!6060 = !DILocation(line: 289, column: 40, scope: !6054)
!6061 = !DILocalVariable(name: "rc", scope: !6054, file: !3, line: 291, type: !14)
!6062 = !DILocation(line: 291, column: 6, scope: !6054)
!6063 = !DILocalVariable(name: "bd", scope: !6054, file: !3, line: 292, type: !6)
!6064 = !DILocation(line: 292, column: 27, scope: !6054)
!6065 = !DILocalVariable(name: "__mptr", scope: !6066, file: !3, line: 292, type: !268)
!6066 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 292, column: 32)
!6067 = !DILocation(line: 292, column: 32, scope: !6066)
!6068 = !DILocation(line: 292, column: 32, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 292, column: 32)
!6070 = !DILocation(line: 294, column: 14, scope: !6054)
!6071 = !DILocation(line: 294, column: 18, scope: !6054)
!6072 = !DILocation(line: 294, column: 2, scope: !6054)
!6073 = !DILocation(line: 295, column: 6, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 295, column: 6)
!6075 = !DILocation(line: 295, column: 10, scope: !6074)
!6076 = !DILocation(line: 295, column: 14, scope: !6074)
!6077 = !DILocation(line: 295, column: 17, scope: !6074)
!6078 = !DILocation(line: 295, column: 21, scope: !6074)
!6079 = !DILocation(line: 295, column: 26, scope: !6074)
!6080 = !DILocation(line: 295, column: 6, scope: !6054)
!6081 = !DILocation(line: 296, column: 16, scope: !6074)
!6082 = !DILocation(line: 296, column: 29, scope: !6074)
!6083 = !DILocation(line: 296, column: 33, scope: !6074)
!6084 = !DILocation(line: 296, column: 38, scope: !6074)
!6085 = !DILocation(line: 296, column: 53, scope: !6074)
!6086 = !DILocation(line: 296, column: 8, scope: !6074)
!6087 = !DILocation(line: 296, column: 6, scope: !6074)
!6088 = !DILocation(line: 296, column: 3, scope: !6074)
!6089 = !DILocation(line: 298, column: 16, scope: !6074)
!6090 = !DILocation(line: 298, column: 29, scope: !6074)
!6091 = !DILocation(line: 298, column: 33, scope: !6074)
!6092 = !DILocation(line: 298, column: 39, scope: !6074)
!6093 = !DILocation(line: 298, column: 8, scope: !6074)
!6094 = !DILocation(line: 298, column: 6, scope: !6074)
!6095 = !DILocation(line: 299, column: 16, scope: !6054)
!6096 = !DILocation(line: 299, column: 20, scope: !6054)
!6097 = !DILocation(line: 299, column: 2, scope: !6054)
!6098 = !DILocation(line: 301, column: 9, scope: !6054)
!6099 = !DILocation(line: 301, column: 2, scope: !6054)
!6100 = distinct !DISubprogram(name: "max_brightness_show", scope: !3, file: !3, line: 279, type: !4464, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!6101 = !DILocalVariable(name: "dev", arg: 1, scope: !6100, file: !3, line: 279, type: !3362)
!6102 = !DILocation(line: 279, column: 51, scope: !6100)
!6103 = !DILocalVariable(name: "attr", arg: 2, scope: !6100, file: !3, line: 280, type: !4466)
!6104 = !DILocation(line: 280, column: 28, scope: !6100)
!6105 = !DILocalVariable(name: "buf", arg: 3, scope: !6100, file: !3, line: 280, type: !353)
!6106 = !DILocation(line: 280, column: 40, scope: !6100)
!6107 = !DILocalVariable(name: "bd", scope: !6100, file: !3, line: 282, type: !6)
!6108 = !DILocation(line: 282, column: 27, scope: !6100)
!6109 = !DILocalVariable(name: "__mptr", scope: !6110, file: !3, line: 282, type: !268)
!6110 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 282, column: 32)
!6111 = !DILocation(line: 282, column: 32, scope: !6110)
!6112 = !DILocation(line: 282, column: 32, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 282, column: 32)
!6114 = !DILocation(line: 284, column: 17, scope: !6100)
!6115 = !DILocation(line: 284, column: 30, scope: !6100)
!6116 = !DILocation(line: 284, column: 34, scope: !6100)
!6117 = !DILocation(line: 284, column: 40, scope: !6100)
!6118 = !DILocation(line: 284, column: 9, scope: !6100)
!6119 = !DILocation(line: 284, column: 2, scope: !6100)
!6120 = distinct !DISubprogram(name: "scale_show", scope: !3, file: !3, line: 305, type: !4464, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!6121 = !DILocalVariable(name: "dev", arg: 1, scope: !6120, file: !3, line: 305, type: !3362)
!6122 = !DILocation(line: 305, column: 42, scope: !6120)
!6123 = !DILocalVariable(name: "attr", arg: 2, scope: !6120, file: !3, line: 306, type: !4466)
!6124 = !DILocation(line: 306, column: 28, scope: !6120)
!6125 = !DILocalVariable(name: "buf", arg: 3, scope: !6120, file: !3, line: 306, type: !353)
!6126 = !DILocation(line: 306, column: 40, scope: !6120)
!6127 = !DILocalVariable(name: "bd", scope: !6120, file: !3, line: 308, type: !6)
!6128 = !DILocation(line: 308, column: 27, scope: !6120)
!6129 = !DILocalVariable(name: "__mptr", scope: !6130, file: !3, line: 308, type: !268)
!6130 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 308, column: 32)
!6131 = !DILocation(line: 308, column: 32, scope: !6130)
!6132 = !DILocation(line: 308, column: 32, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 308, column: 32)
!6134 = !DILocalVariable(name: "__ret_warn_on", scope: !6135, file: !3, line: 310, type: !14)
!6135 = distinct !DILexicalBlock(scope: !6136, file: !3, line: 310, column: 6)
!6136 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 310, column: 6)
!6137 = !DILocation(line: 310, column: 6, scope: !6135)
!6138 = !DILocation(line: 310, column: 6, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6135, file: !3, line: 310, column: 6)
!6140 = !DILocation(line: 310, column: 6, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 310, column: 6)
!6142 = !DILocation(line: 310, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 310, column: 6)
!6144 = !DILocation(line: 310, column: 6, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 310, column: 6)
!6146 = !{i32 -2141279412, i32 -2141279383, i32 -2141279337, i32 -2141279279, i32 -2141279225, i32 -2141279171, i32 -2141279116, i32 -2141279085}
!6147 = !DILocation(line: 310, column: 6, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 310, column: 6)
!6149 = !{i32 -2141278668, i32 -2141278661, i32 -2141278609, i32 -2141278578, i32 -2141278548}
!6150 = !DILocation(line: 310, column: 6, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 310, column: 6)
!6152 = !DILocation(line: 310, column: 6, scope: !6136)
!6153 = !DILocation(line: 310, column: 6, scope: !6120)
!6154 = !DILocation(line: 311, column: 18, scope: !6136)
!6155 = !DILocation(line: 311, column: 10, scope: !6136)
!6156 = !DILocation(line: 311, column: 3, scope: !6136)
!6157 = !DILocation(line: 313, column: 17, scope: !6120)
!6158 = !DILocation(line: 313, column: 52, scope: !6120)
!6159 = !DILocation(line: 313, column: 56, scope: !6120)
!6160 = !DILocation(line: 313, column: 62, scope: !6120)
!6161 = !DILocation(line: 313, column: 30, scope: !6120)
!6162 = !DILocation(line: 313, column: 9, scope: !6120)
!6163 = !DILocation(line: 313, column: 2, scope: !6120)
!6164 = !DILocation(line: 314, column: 1, scope: !6120)
!6165 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 270, type: !4464, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!6166 = !DILocalVariable(name: "dev", arg: 1, scope: !6165, file: !3, line: 270, type: !3362)
!6167 = !DILocation(line: 270, column: 41, scope: !6165)
!6168 = !DILocalVariable(name: "attr", arg: 2, scope: !6165, file: !3, line: 270, type: !4466)
!6169 = !DILocation(line: 270, column: 71, scope: !6165)
!6170 = !DILocalVariable(name: "buf", arg: 3, scope: !6165, file: !3, line: 271, type: !353)
!6171 = !DILocation(line: 271, column: 9, scope: !6165)
!6172 = !DILocalVariable(name: "bd", scope: !6165, file: !3, line: 273, type: !6)
!6173 = !DILocation(line: 273, column: 27, scope: !6165)
!6174 = !DILocalVariable(name: "__mptr", scope: !6175, file: !3, line: 273, type: !268)
!6175 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 273, column: 32)
!6176 = !DILocation(line: 273, column: 32, scope: !6175)
!6177 = !DILocation(line: 273, column: 32, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 273, column: 32)
!6179 = !DILocation(line: 275, column: 17, scope: !6165)
!6180 = !DILocation(line: 275, column: 46, scope: !6165)
!6181 = !DILocation(line: 275, column: 50, scope: !6165)
!6182 = !DILocation(line: 275, column: 56, scope: !6165)
!6183 = !DILocation(line: 275, column: 30, scope: !6165)
!6184 = !DILocation(line: 275, column: 9, scope: !6165)
!6185 = !DILocation(line: 275, column: 2, scope: !6165)
!6186 = distinct !DISubprogram(name: "backlight_suspend", scope: !3, file: !3, line: 320, type: !3692, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!6187 = !DILocalVariable(name: "dev", arg: 1, scope: !6186, file: !3, line: 320, type: !3362)
!6188 = !DILocation(line: 320, column: 45, scope: !6186)
!6189 = !DILocalVariable(name: "bd", scope: !6186, file: !3, line: 322, type: !6)
!6190 = !DILocation(line: 322, column: 27, scope: !6186)
!6191 = !DILocalVariable(name: "__mptr", scope: !6192, file: !3, line: 322, type: !268)
!6192 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 322, column: 32)
!6193 = !DILocation(line: 322, column: 32, scope: !6192)
!6194 = !DILocation(line: 322, column: 32, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 322, column: 32)
!6196 = !DILocation(line: 324, column: 14, scope: !6186)
!6197 = !DILocation(line: 324, column: 18, scope: !6186)
!6198 = !DILocation(line: 324, column: 2, scope: !6186)
!6199 = !DILocation(line: 325, column: 6, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 325, column: 6)
!6201 = !DILocation(line: 325, column: 10, scope: !6200)
!6202 = !DILocation(line: 325, column: 14, scope: !6200)
!6203 = !DILocation(line: 325, column: 17, scope: !6200)
!6204 = !DILocation(line: 325, column: 21, scope: !6200)
!6205 = !DILocation(line: 325, column: 26, scope: !6200)
!6206 = !DILocation(line: 325, column: 34, scope: !6200)
!6207 = !DILocation(line: 325, column: 6, scope: !6186)
!6208 = !DILocation(line: 326, column: 3, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 325, column: 59)
!6210 = !DILocation(line: 326, column: 7, scope: !6209)
!6211 = !DILocation(line: 326, column: 13, scope: !6209)
!6212 = !DILocation(line: 326, column: 19, scope: !6209)
!6213 = !DILocation(line: 327, column: 27, scope: !6209)
!6214 = !DILocation(line: 327, column: 3, scope: !6209)
!6215 = !DILocation(line: 328, column: 2, scope: !6209)
!6216 = !DILocation(line: 329, column: 16, scope: !6186)
!6217 = !DILocation(line: 329, column: 20, scope: !6186)
!6218 = !DILocation(line: 329, column: 2, scope: !6186)
!6219 = !DILocation(line: 331, column: 2, scope: !6186)
!6220 = distinct !DISubprogram(name: "backlight_resume", scope: !3, file: !3, line: 334, type: !3692, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4352, retainedNodes: !65)
!6221 = !DILocalVariable(name: "dev", arg: 1, scope: !6220, file: !3, line: 334, type: !3362)
!6222 = !DILocation(line: 334, column: 44, scope: !6220)
!6223 = !DILocalVariable(name: "bd", scope: !6220, file: !3, line: 336, type: !6)
!6224 = !DILocation(line: 336, column: 27, scope: !6220)
!6225 = !DILocalVariable(name: "__mptr", scope: !6226, file: !3, line: 336, type: !268)
!6226 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 336, column: 32)
!6227 = !DILocation(line: 336, column: 32, scope: !6226)
!6228 = !DILocation(line: 336, column: 32, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 336, column: 32)
!6230 = !DILocation(line: 338, column: 14, scope: !6220)
!6231 = !DILocation(line: 338, column: 18, scope: !6220)
!6232 = !DILocation(line: 338, column: 2, scope: !6220)
!6233 = !DILocation(line: 339, column: 6, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 339, column: 6)
!6235 = !DILocation(line: 339, column: 10, scope: !6234)
!6236 = !DILocation(line: 339, column: 14, scope: !6234)
!6237 = !DILocation(line: 339, column: 17, scope: !6234)
!6238 = !DILocation(line: 339, column: 21, scope: !6234)
!6239 = !DILocation(line: 339, column: 26, scope: !6234)
!6240 = !DILocation(line: 339, column: 34, scope: !6234)
!6241 = !DILocation(line: 339, column: 6, scope: !6220)
!6242 = !DILocation(line: 340, column: 3, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 339, column: 59)
!6244 = !DILocation(line: 340, column: 7, scope: !6243)
!6245 = !DILocation(line: 340, column: 13, scope: !6243)
!6246 = !DILocation(line: 340, column: 19, scope: !6243)
!6247 = !DILocation(line: 341, column: 27, scope: !6243)
!6248 = !DILocation(line: 341, column: 3, scope: !6243)
!6249 = !DILocation(line: 342, column: 2, scope: !6243)
!6250 = !DILocation(line: 343, column: 16, scope: !6220)
!6251 = !DILocation(line: 343, column: 20, scope: !6220)
!6252 = !DILocation(line: 343, column: 2, scope: !6220)
!6253 = !DILocation(line: 345, column: 2, scope: !6220)
