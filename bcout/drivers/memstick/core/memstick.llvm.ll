; ModuleID = '../bcout/drivers/memstick/core/memstick.llvm.bc'
source_filename = "drivers/memstick/core/memstick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_memstick_init6:\09\09\09"
module asm ".long\09memstick_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.workqueue_struct = type opaque
%struct.lock_class_key = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.46, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.26, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.26 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.29 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.45, i32, [12 x i8] }
%union.anon.45 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.46 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.47, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.50 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i64, i64 }
%union.anon.50 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.56 = type { %struct.callback_head }
%union.anon.57 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, %struct.xa_node* }
%struct.local_lock_t = type {}
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.68, [64 x i8*], %union.anon.69 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { [3 x [1 x i64]] }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.memstick_host = type { %struct.mutex, i32, i32, %struct.work_struct, %struct.device, %struct.memstick_dev*, i32, i8, {}*, i32 (%struct.memstick_host*, i32, i32)*, [40 x i8], [0 x i64] }
%struct.memstick_dev = type { %struct.memstick_device_id, %struct.memstick_host*, %struct.ms_register_addr, %struct.completion, %struct.memstick_request, i32 (%struct.memstick_dev*)*, i32 (%struct.memstick_dev*, %struct.memstick_request**)*, void (%struct.memstick_dev*)*, void (%struct.memstick_dev*)*, %struct.device }
%struct.memstick_device_id = type { i8, i8, i8, i8 }
%struct.ms_register_addr = type { i8, i8, i8, i8 }
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.66 }
%union.anon.66 = type { %struct.scatterlist }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.anon.67 = type { i8, [15 x i8] }
%struct.memstick_driver = type { %struct.memstick_device_id*, i32 (%struct.memstick_dev*)*, void (%struct.memstick_dev*)*, i32 (%struct.memstick_dev*, i32)*, i32 (%struct.memstick_dev*)*, %struct.device_driver }
%struct.ms_id_register = type { i8, i8, i8, i8 }

@__param_str_cmd_retries = internal constant [21 x i8] c"memstick.cmd_retries\00", align 16, !dbg !0
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@cmd_retries = internal global i32 3, align 4, !dbg !3973
@__param_cmd_retries = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_cmd_retries, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @cmd_retries to i8*) } }, section "__param", align 8, !dbg !3882
@__UNIQUE_ID_cmd_retriestype229 = internal constant [35 x i8] c"memstick.parmtype=cmd_retries:uint\00", section ".modinfo", align 1, !dbg !3934
@workqueue = internal global %struct.workqueue_struct* null, align 8, !dbg !3971
@memstick_alloc_host.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3939
@.str = private unnamed_addr constant [12 x i8] c"&host->lock\00", align 1
@memstick_host_class = internal global %struct.class { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct.module* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.kobject* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*)* null, void (%struct.class*)* null, void (%struct.device*)* @memstick_free, i32 (%struct.device*)* null, %struct.kobj_ns_type_operations* null, i8* (%struct.device*)* null, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* null, %struct.dev_pm_ops* null, %struct.subsys_private* null }, align 8, !dbg !3980
@memstick_host_lock = internal global %struct.spinlock undef, align 1, !dbg !3982
@memstick_host_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock undef, i32 8388612, i8* null }, i32 0, i32 0 }, align 8, !dbg !3984
@.str.1 = private unnamed_addr constant [11 x i8] c"memstick%u\00", align 1
@memstick_bus_type = internal global %struct.bus_type { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @memstick_dev_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @memstick_bus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @memstick_uevent, i32 (%struct.device*)* @memstick_device_probe, void (%struct.device*)* null, i32 (%struct.device*)* @memstick_device_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* @memstick_device_suspend, i32 (%struct.device*)* @memstick_device_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !3986
@__UNIQUE_ID___addressable_memstick_init247 = internal global i8* bitcast (i32 ()* @memstick_init to i8*), section ".discard.addressable", align 8, !dbg !3944
@__exitcall_memstick_exit = internal global void ()* @memstick_exit, section ".exitcall.exit", align 8, !dbg !3946
@__UNIQUE_ID_author248 = internal constant [27 x i8] c"memstick.author=Alex Dubov\00", section ".modinfo", align 1, !dbg !3951
@__UNIQUE_ID_file249 = internal constant [45 x i8] c"memstick.file=drivers/memstick/core/memstick\00", section ".modinfo", align 1, !dbg !3956
@__UNIQUE_ID_license250 = internal constant [21 x i8] c"memstick.license=GPL\00", section ".modinfo", align 1, !dbg !3961
@__UNIQUE_ID_description251 = internal constant [50 x i8] c"memstick.description=Sony MemoryStick core driver\00", section ".modinfo", align 1, !dbg !3966
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3975
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"memstick_host\00", align 1
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data", align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"memstick\00", align 1
@memstick_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @memstick_dev_group, %struct.attribute_group* null], align 16, !dbg !3988
@memstick_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @memstick_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !3991
@memstick_dev_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_category, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_class, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3993
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3996
@dev_attr_category = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @category_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4010
@dev_attr_class = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @class_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4012
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"category\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"MEMSTICK_TYPE=%02X\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"MEMSTICK_CATEGORY=%02X\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"MEMSTICK_CLASS=%02X\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"kmemstick\00", align 1
@memstick_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4014
@llvm.used = appending global [9 x i8*] [i8* bitcast (%struct.kernel_param* @__param_cmd_retries to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_cmd_retriestype229, i32 0, i32 0), i8* bitcast (void ()* @memstick_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_memstick_init247 to i8*), i8* bitcast (void ()** @__exitcall_memstick_exit to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_author248, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file249, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license250, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_description251, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_detect_change(%struct.memstick_host* %host) #0 !dbg !4024 {
entry:
  %host.addr = alloca %struct.memstick_host*, align 8
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4025, metadata !DIExpression()), !dbg !4026
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @workqueue, align 8, !dbg !4027
  %1 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4028
  %media_checker = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %1, i32 0, i32 3, !dbg !4029
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %media_checker) #8, !dbg !4030
  ret void, !dbg !4031
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !4032 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4037, metadata !DIExpression()), !dbg !4038
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !4039
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4040
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #8, !dbg !4041
  ret i1 %call, !dbg !4042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @memstick_next_req(%struct.memstick_host* %host, %struct.memstick_request** %mrq) #0 !dbg !4043 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.memstick_host*, align 8
  %mrq.addr = alloca %struct.memstick_request**, align 8
  %rc = alloca i32, align 4
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4046, metadata !DIExpression()), !dbg !4047
  store %struct.memstick_request** %mrq, %struct.memstick_request*** %mrq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_request*** %mrq.addr, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4050, metadata !DIExpression()), !dbg !4051
  store i32 -6, i32* %rc, align 4, !dbg !4051
  %0 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !4052
  %1 = load %struct.memstick_request*, %struct.memstick_request** %0, align 8, !dbg !4054
  %tobool = icmp ne %struct.memstick_request* %1, null, !dbg !4055
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4056

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !4057
  %3 = load %struct.memstick_request*, %struct.memstick_request** %2, align 8, !dbg !4058
  %error = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %3, i32 0, i32 3, !dbg !4059
  %4 = load i32, i32* %error, align 4, !dbg !4059
  %tobool1 = icmp ne i32 %4, 0, !dbg !4060
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !4061

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4062
  %retries = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %5, i32 0, i32 6, !dbg !4063
  %6 = load i32, i32* %retries, align 64, !dbg !4063
  %tobool3 = icmp ne i32 %6, 0, !dbg !4062
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4064

if.then:                                          ; preds = %land.lhs.true2
  %7 = load i32, i32* %rc, align 4, !dbg !4065
  %8 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !4067
  %9 = load %struct.memstick_request*, %struct.memstick_request** %8, align 8, !dbg !4068
  %error4 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %9, i32 0, i32 3, !dbg !4069
  store i32 %7, i32* %error4, align 4, !dbg !4070
  %10 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4071
  %retries5 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %10, i32 0, i32 6, !dbg !4072
  %11 = load i32, i32* %retries5, align 64, !dbg !4073
  %dec = add i32 %11, -1, !dbg !4073
  store i32 %dec, i32* %retries5, align 64, !dbg !4073
  store i32 0, i32* %retval, align 4, !dbg !4074
  br label %return, !dbg !4074

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %12 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4075
  %card = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %12, i32 0, i32 5, !dbg !4077
  %13 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4077
  %tobool6 = icmp ne %struct.memstick_dev* %13, null, !dbg !4075
  br i1 %tobool6, label %land.lhs.true7, label %if.end14, !dbg !4078

land.lhs.true7:                                   ; preds = %if.end
  %14 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4079
  %card8 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %14, i32 0, i32 5, !dbg !4080
  %15 = load %struct.memstick_dev*, %struct.memstick_dev** %card8, align 8, !dbg !4080
  %next_request = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %15, i32 0, i32 6, !dbg !4081
  %16 = load i32 (%struct.memstick_dev*, %struct.memstick_request**)*, i32 (%struct.memstick_dev*, %struct.memstick_request**)** %next_request, align 8, !dbg !4081
  %tobool9 = icmp ne i32 (%struct.memstick_dev*, %struct.memstick_request**)* %16, null, !dbg !4079
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !4082

if.then10:                                        ; preds = %land.lhs.true7
  %17 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4083
  %card11 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %17, i32 0, i32 5, !dbg !4084
  %18 = load %struct.memstick_dev*, %struct.memstick_dev** %card11, align 8, !dbg !4084
  %next_request12 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %18, i32 0, i32 6, !dbg !4085
  %19 = load i32 (%struct.memstick_dev*, %struct.memstick_request**)*, i32 (%struct.memstick_dev*, %struct.memstick_request**)** %next_request12, align 8, !dbg !4085
  %20 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4086
  %card13 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %20, i32 0, i32 5, !dbg !4087
  %21 = load %struct.memstick_dev*, %struct.memstick_dev** %card13, align 8, !dbg !4087
  %22 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !4088
  %call = call i32 %19(%struct.memstick_dev* %21, %struct.memstick_request** %22) #8, !dbg !4083
  store i32 %call, i32* %rc, align 4, !dbg !4089
  br label %if.end14, !dbg !4090

if.end14:                                         ; preds = %if.then10, %land.lhs.true7, %if.end
  %23 = load i32, i32* %rc, align 4, !dbg !4091
  %tobool15 = icmp ne i32 %23, 0, !dbg !4091
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !4093

if.then16:                                        ; preds = %if.end14
  %24 = load i32, i32* @cmd_retries, align 4, !dbg !4094
  %cmp = icmp ugt i32 %24, 1, !dbg !4095
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4094

cond.true:                                        ; preds = %if.then16
  %25 = load i32, i32* @cmd_retries, align 4, !dbg !4096
  %sub = sub i32 %25, 1, !dbg !4097
  br label %cond.end, !dbg !4094

cond.false:                                       ; preds = %if.then16
  br label %cond.end, !dbg !4094

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 1, %cond.false ], !dbg !4094
  %26 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4098
  %retries17 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %26, i32 0, i32 6, !dbg !4099
  store i32 %cond, i32* %retries17, align 64, !dbg !4100
  br label %if.end18, !dbg !4098

if.else:                                          ; preds = %if.end14
  %27 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !4101
  store %struct.memstick_request* null, %struct.memstick_request** %27, align 8, !dbg !4102
  br label %if.end18

if.end18:                                         ; preds = %if.else, %cond.end
  %28 = load i32, i32* %rc, align 4, !dbg !4103
  store i32 %28, i32* %retval, align 4, !dbg !4104
  br label %return, !dbg !4104

return:                                           ; preds = %if.end18, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !4105
  ret i32 %29, !dbg !4105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_new_req(%struct.memstick_host* %host) #0 !dbg !4106 {
entry:
  %host.addr = alloca %struct.memstick_host*, align 8
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4107, metadata !DIExpression()), !dbg !4108
  %0 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4109
  %card = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %0, i32 0, i32 5, !dbg !4111
  %1 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4111
  %tobool = icmp ne %struct.memstick_dev* %1, null, !dbg !4109
  br i1 %tobool, label %if.then, label %if.end, !dbg !4112

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @cmd_retries, align 4, !dbg !4113
  %3 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4115
  %retries = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %3, i32 0, i32 6, !dbg !4116
  store i32 %2, i32* %retries, align 64, !dbg !4117
  %4 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4118
  %card1 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %4, i32 0, i32 5, !dbg !4119
  %5 = load %struct.memstick_dev*, %struct.memstick_dev** %card1, align 8, !dbg !4119
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %5, i32 0, i32 3, !dbg !4120
  call void @reinit_completion(%struct.completion* %mrq_complete) #8, !dbg !4121
  %6 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4122
  %request = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %6, i32 0, i32 8, !dbg !4123
  %request2 = bitcast {}** %request to void (%struct.memstick_host*)**, !dbg !4123
  %7 = load void (%struct.memstick_host*)*, void (%struct.memstick_host*)** %request2, align 8, !dbg !4123
  %8 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4124
  call void %7(%struct.memstick_host* %8) #8, !dbg !4122
  br label %if.end, !dbg !4125

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4126
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reinit_completion(%struct.completion* %x) #0 !dbg !4127 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !4128, metadata !DIExpression()), !dbg !4129
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4130
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !4131
  store i32 0, i32* %done, align 8, !dbg !4132
  ret void, !dbg !4133
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_init_req_sg(%struct.memstick_request* %mrq, i8 zeroext %tpc, %struct.scatterlist* %sg) #0 !dbg !4134 {
entry:
  %mrq.addr = alloca %struct.memstick_request*, align 8
  %tpc.addr = alloca i8, align 1
  %sg.addr = alloca %struct.scatterlist*, align 8
  store %struct.memstick_request* %mrq, %struct.memstick_request** %mrq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_request** %mrq.addr, metadata !4139, metadata !DIExpression()), !dbg !4140
  store i8 %tpc, i8* %tpc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tpc.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !4143, metadata !DIExpression()), !dbg !4144
  %0 = load i8, i8* %tpc.addr, align 1, !dbg !4145
  %1 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4146
  %tpc1 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %1, i32 0, i32 0, !dbg !4147
  store i8 %0, i8* %tpc1, align 8, !dbg !4148
  %2 = load i8, i8* %tpc.addr, align 1, !dbg !4149
  %conv = zext i8 %2 to i32, !dbg !4149
  %and = and i32 %conv, 8, !dbg !4151
  %tobool = icmp ne i32 %and, 0, !dbg !4151
  br i1 %tobool, label %if.then, label %if.else, !dbg !4152

if.then:                                          ; preds = %entry
  %3 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4153
  %data_dir = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %3, i32 0, i32 1, !dbg !4154
  %bf.load = load i8, i8* %data_dir, align 1, !dbg !4155
  %bf.clear = and i8 %bf.load, -2, !dbg !4155
  %bf.set = or i8 %bf.clear, 1, !dbg !4155
  store i8 %bf.set, i8* %data_dir, align 1, !dbg !4155
  br label %if.end, !dbg !4153

if.else:                                          ; preds = %entry
  %4 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4156
  %data_dir2 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %4, i32 0, i32 1, !dbg !4157
  %bf.load3 = load i8, i8* %data_dir2, align 1, !dbg !4158
  %bf.clear4 = and i8 %bf.load3, -2, !dbg !4158
  store i8 %bf.clear4, i8* %data_dir2, align 1, !dbg !4158
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4159
  %6 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %5, i32 0, i32 4, !dbg !4160
  %sg5 = bitcast %union.anon.66* %6 to %struct.scatterlist*, !dbg !4160
  %7 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !4161
  %8 = bitcast %struct.scatterlist* %sg5 to i8*, !dbg !4162
  %9 = bitcast %struct.scatterlist* %7 to i8*, !dbg !4162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false), !dbg !4162
  %10 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4163
  %long_data = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %10, i32 0, i32 1, !dbg !4164
  %bf.load6 = load i8, i8* %long_data, align 1, !dbg !4165
  %bf.clear7 = and i8 %bf.load6, -5, !dbg !4165
  %bf.set8 = or i8 %bf.clear7, 4, !dbg !4165
  store i8 %bf.set8, i8* %long_data, align 1, !dbg !4165
  %11 = load i8, i8* %tpc.addr, align 1, !dbg !4166
  %conv9 = zext i8 %11 to i32, !dbg !4166
  %cmp = icmp eq i32 %conv9, 14, !dbg !4168
  br i1 %cmp, label %if.then14, label %lor.lhs.false, !dbg !4169

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i8, i8* %tpc.addr, align 1, !dbg !4170
  %conv11 = zext i8 %12 to i32, !dbg !4170
  %cmp12 = icmp eq i32 %conv11, 9, !dbg !4171
  br i1 %cmp12, label %if.then14, label %if.else18, !dbg !4172

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4173
  %need_card_int = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %13, i32 0, i32 1, !dbg !4174
  %bf.load15 = load i8, i8* %need_card_int, align 1, !dbg !4175
  %bf.clear16 = and i8 %bf.load15, -3, !dbg !4175
  %bf.set17 = or i8 %bf.clear16, 2, !dbg !4175
  store i8 %bf.set17, i8* %need_card_int, align 1, !dbg !4175
  br label %if.end22, !dbg !4173

if.else18:                                        ; preds = %lor.lhs.false
  %14 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4176
  %need_card_int19 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %14, i32 0, i32 1, !dbg !4177
  %bf.load20 = load i8, i8* %need_card_int19, align 1, !dbg !4178
  %bf.clear21 = and i8 %bf.load20, -3, !dbg !4178
  store i8 %bf.clear21, i8* %need_card_int19, align 1, !dbg !4178
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then14
  ret void, !dbg !4179
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_init_req(%struct.memstick_request* %mrq, i8 zeroext %tpc, i8* %buf, i64 %length) #0 !dbg !4180 {
entry:
  %mrq.addr = alloca %struct.memstick_request*, align 8
  %tpc.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  store %struct.memstick_request* %mrq, %struct.memstick_request** %mrq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_request** %mrq.addr, metadata !4183, metadata !DIExpression()), !dbg !4184
  store i8 %tpc, i8* %tpc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tpc.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4187, metadata !DIExpression()), !dbg !4188
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  %0 = load i8, i8* %tpc.addr, align 1, !dbg !4191
  %1 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4192
  %tpc1 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %1, i32 0, i32 0, !dbg !4193
  store i8 %0, i8* %tpc1, align 8, !dbg !4194
  %2 = load i8, i8* %tpc.addr, align 1, !dbg !4195
  %conv = zext i8 %2 to i32, !dbg !4195
  %and = and i32 %conv, 8, !dbg !4197
  %tobool = icmp ne i32 %and, 0, !dbg !4197
  br i1 %tobool, label %if.then, label %if.else, !dbg !4198

if.then:                                          ; preds = %entry
  %3 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4199
  %data_dir = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %3, i32 0, i32 1, !dbg !4200
  %bf.load = load i8, i8* %data_dir, align 1, !dbg !4201
  %bf.clear = and i8 %bf.load, -2, !dbg !4201
  %bf.set = or i8 %bf.clear, 1, !dbg !4201
  store i8 %bf.set, i8* %data_dir, align 1, !dbg !4201
  br label %if.end, !dbg !4199

if.else:                                          ; preds = %entry
  %4 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4202
  %data_dir2 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %4, i32 0, i32 1, !dbg !4203
  %bf.load3 = load i8, i8* %data_dir2, align 1, !dbg !4204
  %bf.clear4 = and i8 %bf.load3, -2, !dbg !4204
  store i8 %bf.clear4, i8* %data_dir2, align 1, !dbg !4204
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, i64* %length.addr, align 8, !dbg !4205
  %cmp = icmp ugt i64 %5, 15, !dbg !4206
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4205

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !4205

cond.false:                                       ; preds = %if.end
  %6 = load i64, i64* %length.addr, align 8, !dbg !4207
  br label %cond.end, !dbg !4205

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 15, %cond.true ], [ %6, %cond.false ], !dbg !4205
  %conv6 = trunc i64 %cond to i8, !dbg !4205
  %7 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4208
  %8 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %7, i32 0, i32 4, !dbg !4209
  %9 = bitcast %union.anon.66* %8 to %struct.anon.67*, !dbg !4209
  %data_len = getelementptr inbounds %struct.anon.67, %struct.anon.67* %9, i32 0, i32 0, !dbg !4209
  store i8 %conv6, i8* %data_len, align 8, !dbg !4210
  %10 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4211
  %data_dir7 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %10, i32 0, i32 1, !dbg !4213
  %bf.load8 = load i8, i8* %data_dir7, align 1, !dbg !4213
  %bf.clear9 = and i8 %bf.load8, 1, !dbg !4213
  %conv10 = zext i8 %bf.clear9 to i32, !dbg !4211
  %cmp11 = icmp eq i32 %conv10, 1, !dbg !4214
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !4215

if.then13:                                        ; preds = %cond.end
  %11 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4216
  %12 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %11, i32 0, i32 4, !dbg !4217
  %13 = bitcast %union.anon.66* %12 to %struct.anon.67*, !dbg !4217
  %data = getelementptr inbounds %struct.anon.67, %struct.anon.67* %13, i32 0, i32 1, !dbg !4217
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %data, i64 0, i64 0, !dbg !4218
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !4219
  %15 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4220
  %16 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %15, i32 0, i32 4, !dbg !4221
  %17 = bitcast %union.anon.66* %16 to %struct.anon.67*, !dbg !4221
  %data_len14 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %17, i32 0, i32 0, !dbg !4221
  %18 = load i8, i8* %data_len14, align 8, !dbg !4221
  %conv15 = zext i8 %18 to i64, !dbg !4220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay, i8* align 1 %14, i64 %conv15, i1 false), !dbg !4218
  br label %if.end16, !dbg !4218

if.end16:                                         ; preds = %if.then13, %cond.end
  %19 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4222
  %long_data = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %19, i32 0, i32 1, !dbg !4223
  %bf.load17 = load i8, i8* %long_data, align 1, !dbg !4224
  %bf.clear18 = and i8 %bf.load17, -5, !dbg !4224
  store i8 %bf.clear18, i8* %long_data, align 1, !dbg !4224
  %20 = load i8, i8* %tpc.addr, align 1, !dbg !4225
  %conv19 = zext i8 %20 to i32, !dbg !4225
  %cmp20 = icmp eq i32 %conv19, 14, !dbg !4227
  br i1 %cmp20, label %if.then25, label %lor.lhs.false, !dbg !4228

lor.lhs.false:                                    ; preds = %if.end16
  %21 = load i8, i8* %tpc.addr, align 1, !dbg !4229
  %conv22 = zext i8 %21 to i32, !dbg !4229
  %cmp23 = icmp eq i32 %conv22, 9, !dbg !4230
  br i1 %cmp23, label %if.then25, label %if.else29, !dbg !4231

if.then25:                                        ; preds = %lor.lhs.false, %if.end16
  %22 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4232
  %need_card_int = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %22, i32 0, i32 1, !dbg !4233
  %bf.load26 = load i8, i8* %need_card_int, align 1, !dbg !4234
  %bf.clear27 = and i8 %bf.load26, -3, !dbg !4234
  %bf.set28 = or i8 %bf.clear27, 2, !dbg !4234
  store i8 %bf.set28, i8* %need_card_int, align 1, !dbg !4234
  br label %if.end33, !dbg !4232

if.else29:                                        ; preds = %lor.lhs.false
  %23 = load %struct.memstick_request*, %struct.memstick_request** %mrq.addr, align 8, !dbg !4235
  %need_card_int30 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %23, i32 0, i32 1, !dbg !4236
  %bf.load31 = load i8, i8* %need_card_int30, align 1, !dbg !4237
  %bf.clear32 = and i8 %bf.load31, -3, !dbg !4237
  store i8 %bf.clear32, i8* %need_card_int30, align 1, !dbg !4237
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then25
  ret void, !dbg !4238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @memstick_set_rw_addr(%struct.memstick_dev* %card) #0 !dbg !4239 {
entry:
  %card.addr = alloca %struct.memstick_dev*, align 8
  store %struct.memstick_dev* %card, %struct.memstick_dev** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card.addr, metadata !4240, metadata !DIExpression()), !dbg !4241
  %0 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !4242
  %next_request = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %0, i32 0, i32 6, !dbg !4243
  store i32 (%struct.memstick_dev*, %struct.memstick_request**)* @h_memstick_set_rw_addr, i32 (%struct.memstick_dev*, %struct.memstick_request**)** %next_request, align 8, !dbg !4244
  %1 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !4245
  %host = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %1, i32 0, i32 1, !dbg !4246
  %2 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4246
  call void @memstick_new_req(%struct.memstick_host* %2) #8, !dbg !4247
  %3 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !4248
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %3, i32 0, i32 3, !dbg !4249
  call void @wait_for_completion(%struct.completion* %mrq_complete) #8, !dbg !4250
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !4251
  %current_mrq = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %4, i32 0, i32 4, !dbg !4252
  %error = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %current_mrq, i32 0, i32 3, !dbg !4253
  %5 = load i32, i32* %error, align 4, !dbg !4253
  ret i32 %5, !dbg !4254
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @h_memstick_set_rw_addr(%struct.memstick_dev* %card, %struct.memstick_request** %mrq) #0 !dbg !4255 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.memstick_dev*, align 8
  %mrq.addr = alloca %struct.memstick_request**, align 8
  store %struct.memstick_dev* %card, %struct.memstick_dev** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card.addr, metadata !4256, metadata !DIExpression()), !dbg !4257
  store %struct.memstick_request** %mrq, %struct.memstick_request*** %mrq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_request*** %mrq.addr, metadata !4258, metadata !DIExpression()), !dbg !4259
  %0 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !4260
  %1 = load %struct.memstick_request*, %struct.memstick_request** %0, align 8, !dbg !4262
  %tobool = icmp ne %struct.memstick_request* %1, null, !dbg !4263
  br i1 %tobool, label %if.else, label %if.then, !dbg !4264

if.then:                                          ; preds = %entry
  %2 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !4265
  %current_mrq = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %2, i32 0, i32 4, !dbg !4267
  %3 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !4268
  %reg_addr = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %3, i32 0, i32 2, !dbg !4269
  %4 = bitcast %struct.ms_register_addr* %reg_addr to i8*, !dbg !4270
  call void @memstick_init_req(%struct.memstick_request* %current_mrq, i8 zeroext 8, i8* %4, i64 4) #8, !dbg !4271
  %5 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !4272
  %current_mrq1 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %5, i32 0, i32 4, !dbg !4273
  %6 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !4274
  store %struct.memstick_request* %current_mrq1, %struct.memstick_request** %6, align 8, !dbg !4275
  store i32 0, i32* %retval, align 4, !dbg !4276
  br label %return, !dbg !4276

if.else:                                          ; preds = %entry
  %7 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !4277
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %7, i32 0, i32 3, !dbg !4279
  call void @complete(%struct.completion* %mrq_complete) #8, !dbg !4280
  store i32 -11, i32* %retval, align 4, !dbg !4281
  br label %return, !dbg !4281

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4282
  ret i32 %8, !dbg !4282
}

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.memstick_host* @memstick_alloc_host(i32 %extra, %struct.device* %dev) #0 !dbg !3941 {
entry:
  %extra.addr = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %host = alloca %struct.memstick_host*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store i32 %extra, i32* %extra.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %extra.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host, metadata !4287, metadata !DIExpression()), !dbg !4288
  %0 = load i32, i32* %extra.addr, align 4, !dbg !4289
  %conv = zext i32 %0 to i64, !dbg !4289
  %add = add i64 832, %conv, !dbg !4290
  %call = call i8* @kzalloc(i64 %add, i32 3264) #8, !dbg !4291
  %1 = bitcast i8* %call to %struct.memstick_host*, !dbg !4291
  store %struct.memstick_host* %1, %struct.memstick_host** %host, align 8, !dbg !4292
  %2 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4293
  %tobool = icmp ne %struct.memstick_host* %2, null, !dbg !4293
  br i1 %tobool, label %if.then, label %if.end, !dbg !4295

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4296

do.body:                                          ; preds = %if.then
  %3 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4298
  %lock = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %3, i32 0, i32 0, !dbg !4298
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @memstick_alloc_host.__key) #8, !dbg !4298
  br label %do.end, !dbg !4298

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4300

do.body1:                                         ; preds = %do.end
  %4 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4301
  %media_checker = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %4, i32 0, i32 3, !dbg !4301
  call void @__init_work(%struct.work_struct* %media_checker, i32 0) #8, !dbg !4301
  %5 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4301
  %media_checker2 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %5, i32 0, i32 3, !dbg !4301
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %media_checker2, i32 0, i32 0, !dbg !4301
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4301
  store i64 68719476704, i64* %counter, align 8, !dbg !4301
  %6 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4301
  %7 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 32 %6, i8* align 8 %7, i64 8, i1 false), !dbg !4301
  %8 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4301
  %media_checker3 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %8, i32 0, i32 3, !dbg !4301
  %entry4 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %media_checker3, i32 0, i32 1, !dbg !4301
  call void @INIT_LIST_HEAD(%struct.list_head* %entry4) #8, !dbg !4301
  %9 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4301
  %media_checker5 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %9, i32 0, i32 3, !dbg !4301
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %media_checker5, i32 0, i32 2, !dbg !4301
  store void (%struct.work_struct*)* @memstick_check, void (%struct.work_struct*)** %func, align 8, !dbg !4301
  br label %do.end6, !dbg !4301

do.end6:                                          ; preds = %do.body1
  %10 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4303
  %dev7 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %10, i32 0, i32 4, !dbg !4304
  %class = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 29, !dbg !4305
  store %struct.class* @memstick_host_class, %struct.class** %class, align 8, !dbg !4306
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4307
  %12 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4308
  %dev8 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %12, i32 0, i32 4, !dbg !4309
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 1, !dbg !4310
  store %struct.device* %11, %struct.device** %parent, align 64, !dbg !4311
  %13 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4312
  %dev9 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %13, i32 0, i32 4, !dbg !4313
  call void @device_initialize(%struct.device* %dev9) #8, !dbg !4314
  br label %if.end, !dbg !4315

if.end:                                           ; preds = %do.end6, %entry
  %14 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4316
  ret %struct.memstick_host* %14, !dbg !4317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4318 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4321, metadata !DIExpression()), !dbg !4325
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4331, metadata !DIExpression()), !dbg !4332
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4333, metadata !DIExpression()), !dbg !4334
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4335, metadata !DIExpression()), !dbg !4336
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4337, metadata !DIExpression()), !dbg !4341
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4343, metadata !DIExpression()), !dbg !4347
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4349, metadata !DIExpression()), !dbg !4353
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4358, metadata !DIExpression()), !dbg !4359
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4360, metadata !DIExpression()), !dbg !4361
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4362, metadata !DIExpression()), !dbg !4363
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4364, metadata !DIExpression()), !dbg !4365
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4366, metadata !DIExpression()), !dbg !4367
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4368, metadata !DIExpression()), !dbg !4369
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4370, metadata !DIExpression()), !dbg !4371
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4372, metadata !DIExpression()), !dbg !4373
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4374, metadata !DIExpression()), !dbg !4375
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4376, metadata !DIExpression()), !dbg !4377
  %0 = load i64, i64* %size.addr, align 8, !dbg !4378
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4379
  %or = or i32 %1, 256, !dbg !4380
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4381
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4382
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4383

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4384
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4385
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4386

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4387
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4388
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4389
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4390
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4367
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4391
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4392
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4393
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4394
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4395
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4396
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4397
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4397
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4397
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4397
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4397
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4398
  br label %kmalloc.exit, !dbg !4398

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4399
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4400
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4400
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4402

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4403
  br label %kmalloc_index.exit.i, !dbg !4403

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4404
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4406
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4407

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4408
  br label %kmalloc_index.exit.i, !dbg !4408

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4409
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4411
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4412

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4413
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4414
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4415

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4416
  br label %kmalloc_index.exit.i, !dbg !4416

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4417
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4419
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4420

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4421
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4422
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4423

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4424
  br label %kmalloc_index.exit.i, !dbg !4424

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4425
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4427
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4428

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4429
  br label %kmalloc_index.exit.i, !dbg !4429

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4430
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4432
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4433

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4434
  br label %kmalloc_index.exit.i, !dbg !4434

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4435
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4437
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4438

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4439
  br label %kmalloc_index.exit.i, !dbg !4439

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4440
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4442
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4443

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4444
  br label %kmalloc_index.exit.i, !dbg !4444

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4445
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4447
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4448

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4449
  br label %kmalloc_index.exit.i, !dbg !4449

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4450
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4452
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4453

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4454
  br label %kmalloc_index.exit.i, !dbg !4454

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4455
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4457
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4458

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4459
  br label %kmalloc_index.exit.i, !dbg !4459

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4460
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4462
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4463

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4464
  br label %kmalloc_index.exit.i, !dbg !4464

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4465
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4467
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4468

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4469
  br label %kmalloc_index.exit.i, !dbg !4469

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4470
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4472
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4473

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4474
  br label %kmalloc_index.exit.i, !dbg !4474

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4475
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4477
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4478

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4479
  br label %kmalloc_index.exit.i, !dbg !4479

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4480
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4482
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4483

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4484
  br label %kmalloc_index.exit.i, !dbg !4484

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4485
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4487
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4488

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4489
  br label %kmalloc_index.exit.i, !dbg !4489

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4490
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4492
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4493

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4494
  br label %kmalloc_index.exit.i, !dbg !4494

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4495
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4497
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4498

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4499
  br label %kmalloc_index.exit.i, !dbg !4499

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4500
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4502
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4503

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4504
  br label %kmalloc_index.exit.i, !dbg !4504

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4505
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4507
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4508

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4509
  br label %kmalloc_index.exit.i, !dbg !4509

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4510
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4512
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4513

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4514
  br label %kmalloc_index.exit.i, !dbg !4514

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4515
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4517
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4518

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4519
  br label %kmalloc_index.exit.i, !dbg !4519

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4520
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4522
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4523

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4524
  br label %kmalloc_index.exit.i, !dbg !4524

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4525
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4527
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4528

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4529
  br label %kmalloc_index.exit.i, !dbg !4529

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4530
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4532
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4533

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4534
  br label %kmalloc_index.exit.i, !dbg !4534

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4535
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4537
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4538

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4539
  br label %kmalloc_index.exit.i, !dbg !4539

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4540
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4542
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4543

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4544
  br label %kmalloc_index.exit.i, !dbg !4544

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4545, !srcloc !4548
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 223) #9, !dbg !4549, !srcloc !4552
  unreachable, !dbg !4553

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4554
  store i32 %45, i32* %index.i, align 4, !dbg !4555
  %46 = load i32, i32* %index.i, align 4, !dbg !4556
  %tobool.i = icmp ne i32 %46, 0, !dbg !4556
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4558

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4559
  br label %kmalloc.exit, !dbg !4559

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4560
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4561
  %and.i.i = and i32 %48, 17, !dbg !4561
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4561
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4561
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4561
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4561
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4563

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4564
  br label %kmalloc_type.exit.i, !dbg !4564

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4565
  %and2.i.i = and i32 %49, 1, !dbg !4566
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4565
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4565
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4565
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4567
  br label %kmalloc_type.exit.i, !dbg !4567

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4568
  %idxprom.i = zext i32 %51 to i64, !dbg !4569
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4569
  %52 = load i32, i32* %index.i, align 4, !dbg !4570
  %idxprom6.i = zext i32 %52 to i64, !dbg !4569
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4569
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4569
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4571
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4572
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4573
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4574
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4575
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4575
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4575
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4575
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4575
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4336
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4576
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4577
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4578
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4579
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4580
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4581
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4582
  store i8* %62, i8** %retval.i, align 8, !dbg !4583
  br label %kmalloc.exit, !dbg !4583

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4584
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4585
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4586
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4586
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4586
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4586
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4586
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4587
  br label %kmalloc.exit, !dbg !4587

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4588
  ret i8* %65, !dbg !4589
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !4590 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  ret void, !dbg !4597
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4598 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  br label %do.body, !dbg !4604

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4605

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4607

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4605

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4609
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4609
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4609
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4609
  br label %do.end3, !dbg !4609

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4605

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4611
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4612
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4613
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4614
  ret void, !dbg !4615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @memstick_check(%struct.work_struct* %work) #0 !dbg !4616 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %host = alloca %struct.memstick_host*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_host*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4621, metadata !DIExpression()), !dbg !4623
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4623
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !4623
  store i8* %1, i8** %__mptr, align 8, !dbg !4623
  br label %do.body, !dbg !4623

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4624

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4623
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !4623
  %3 = bitcast i8* %add.ptr to %struct.memstick_host*, !dbg !4623
  store %struct.memstick_host* %3, %struct.memstick_host** %tmp, align 8, !dbg !4624
  %4 = load %struct.memstick_host*, %struct.memstick_host** %tmp, align 8, !dbg !4623
  store %struct.memstick_host* %4, %struct.memstick_host** %host, align 8, !dbg !4620
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !4626, metadata !DIExpression()), !dbg !4627
  %5 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4628
  %dev = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %5, i32 0, i32 4, !dbg !4629
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4630
  %6 = load %struct.device*, %struct.device** %parent, align 64, !dbg !4630
  call void @pm_runtime_get_noresume(%struct.device* %6) #8, !dbg !4631
  %7 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4632
  %lock = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %7, i32 0, i32 0, !dbg !4633
  call void @mutex_lock(%struct.mutex* %lock) #8, !dbg !4634
  %8 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4635
  %card1 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %8, i32 0, i32 5, !dbg !4637
  %9 = load %struct.memstick_dev*, %struct.memstick_dev** %card1, align 8, !dbg !4637
  %tobool = icmp ne %struct.memstick_dev* %9, null, !dbg !4635
  br i1 %tobool, label %if.else, label %if.then, !dbg !4638

if.then:                                          ; preds = %do.end
  %10 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4639
  %call = call i32 @memstick_power_on(%struct.memstick_host* %10) #8, !dbg !4642
  %tobool2 = icmp ne i32 %call, 0, !dbg !4642
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !4643

if.then3:                                         ; preds = %if.then
  br label %out_power_off, !dbg !4644

if.end:                                           ; preds = %if.then
  br label %if.end11, !dbg !4645

if.else:                                          ; preds = %do.end
  %11 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4646
  %card4 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %11, i32 0, i32 5, !dbg !4648
  %12 = load %struct.memstick_dev*, %struct.memstick_dev** %card4, align 8, !dbg !4648
  %stop = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %12, i32 0, i32 7, !dbg !4649
  %13 = load void (%struct.memstick_dev*)*, void (%struct.memstick_dev*)** %stop, align 8, !dbg !4649
  %tobool5 = icmp ne void (%struct.memstick_dev*)* %13, null, !dbg !4646
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !4650

if.then6:                                         ; preds = %if.else
  %14 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4651
  %card7 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %14, i32 0, i32 5, !dbg !4652
  %15 = load %struct.memstick_dev*, %struct.memstick_dev** %card7, align 8, !dbg !4652
  %stop8 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %15, i32 0, i32 7, !dbg !4653
  %16 = load void (%struct.memstick_dev*)*, void (%struct.memstick_dev*)** %stop8, align 8, !dbg !4653
  %17 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4654
  %card9 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %17, i32 0, i32 5, !dbg !4655
  %18 = load %struct.memstick_dev*, %struct.memstick_dev** %card9, align 8, !dbg !4655
  call void %16(%struct.memstick_dev* %18) #8, !dbg !4651
  br label %if.end10, !dbg !4651

if.end10:                                         ; preds = %if.then6, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %19 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4656
  %removing = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %19, i32 0, i32 7, !dbg !4658
  %20 = load i8, i8* %removing, align 4, !dbg !4658
  %tobool12 = trunc i8 %20 to i1, !dbg !4658
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4659

if.then13:                                        ; preds = %if.end11
  br label %out_power_off, !dbg !4660

if.end14:                                         ; preds = %if.end11
  %21 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4661
  %call15 = call %struct.memstick_dev* @memstick_alloc_card(%struct.memstick_host* %21) #8, !dbg !4662
  store %struct.memstick_dev* %call15, %struct.memstick_dev** %card, align 8, !dbg !4663
  %22 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4664
  %tobool16 = icmp ne %struct.memstick_dev* %22, null, !dbg !4664
  br i1 %tobool16, label %if.else25, label %if.then17, !dbg !4666

if.then17:                                        ; preds = %if.end14
  %23 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4667
  %card18 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %23, i32 0, i32 5, !dbg !4670
  %24 = load %struct.memstick_dev*, %struct.memstick_dev** %card18, align 8, !dbg !4670
  %tobool19 = icmp ne %struct.memstick_dev* %24, null, !dbg !4667
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !4671

if.then20:                                        ; preds = %if.then17
  %25 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4672
  %card21 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %25, i32 0, i32 5, !dbg !4674
  %26 = load %struct.memstick_dev*, %struct.memstick_dev** %card21, align 8, !dbg !4674
  %dev22 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %26, i32 0, i32 9, !dbg !4675
  call void @device_unregister(%struct.device* %dev22) #8, !dbg !4676
  %27 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4677
  %card23 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %27, i32 0, i32 5, !dbg !4678
  store %struct.memstick_dev* null, %struct.memstick_dev** %card23, align 8, !dbg !4679
  br label %if.end24, !dbg !4680

if.end24:                                         ; preds = %if.then20, %if.then17
  br label %if.end68, !dbg !4681

if.else25:                                        ; preds = %if.end14
  %28 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4682
  %card26 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %28, i32 0, i32 5, !dbg !4685
  %29 = load %struct.memstick_dev*, %struct.memstick_dev** %card26, align 8, !dbg !4685
  %tobool27 = icmp ne %struct.memstick_dev* %29, null, !dbg !4682
  br i1 %tobool27, label %if.then28, label %if.end53, !dbg !4686

if.then28:                                        ; preds = %if.else25
  %30 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4687
  %card29 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %30, i32 0, i32 5, !dbg !4690
  %31 = load %struct.memstick_dev*, %struct.memstick_dev** %card29, align 8, !dbg !4690
  %call30 = call i32 @memstick_set_rw_addr(%struct.memstick_dev* %31) #8, !dbg !4691
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4691
  br i1 %tobool31, label %if.then40, label %lor.lhs.false, !dbg !4692

lor.lhs.false:                                    ; preds = %if.then28
  %32 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4693
  %card32 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %32, i32 0, i32 5, !dbg !4694
  %33 = load %struct.memstick_dev*, %struct.memstick_dev** %card32, align 8, !dbg !4694
  %34 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4695
  %id = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %34, i32 0, i32 0, !dbg !4696
  %call33 = call i32 @memstick_dev_match(%struct.memstick_dev* %33, %struct.memstick_device_id* %id) #8, !dbg !4697
  %tobool34 = icmp ne i32 %call33, 0, !dbg !4697
  br i1 %tobool34, label %lor.lhs.false35, label %if.then40, !dbg !4698

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %35 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4699
  %card36 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %35, i32 0, i32 5, !dbg !4700
  %36 = load %struct.memstick_dev*, %struct.memstick_dev** %card36, align 8, !dbg !4700
  %check = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %36, i32 0, i32 5, !dbg !4701
  %37 = load i32 (%struct.memstick_dev*)*, i32 (%struct.memstick_dev*)** %check, align 8, !dbg !4701
  %38 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4702
  %card37 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %38, i32 0, i32 5, !dbg !4703
  %39 = load %struct.memstick_dev*, %struct.memstick_dev** %card37, align 8, !dbg !4703
  %call38 = call i32 %37(%struct.memstick_dev* %39) #8, !dbg !4699
  %tobool39 = icmp ne i32 %call38, 0, !dbg !4699
  br i1 %tobool39, label %if.else44, label %if.then40, !dbg !4704

if.then40:                                        ; preds = %lor.lhs.false35, %lor.lhs.false, %if.then28
  %40 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4705
  %card41 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %40, i32 0, i32 5, !dbg !4707
  %41 = load %struct.memstick_dev*, %struct.memstick_dev** %card41, align 8, !dbg !4707
  %dev42 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %41, i32 0, i32 9, !dbg !4708
  call void @device_unregister(%struct.device* %dev42) #8, !dbg !4709
  %42 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4710
  %card43 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %42, i32 0, i32 5, !dbg !4711
  store %struct.memstick_dev* null, %struct.memstick_dev** %card43, align 8, !dbg !4712
  br label %if.end52, !dbg !4713

if.else44:                                        ; preds = %lor.lhs.false35
  %43 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4714
  %card45 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %43, i32 0, i32 5, !dbg !4716
  %44 = load %struct.memstick_dev*, %struct.memstick_dev** %card45, align 8, !dbg !4716
  %start = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %44, i32 0, i32 8, !dbg !4717
  %45 = load void (%struct.memstick_dev*)*, void (%struct.memstick_dev*)** %start, align 8, !dbg !4717
  %tobool46 = icmp ne void (%struct.memstick_dev*)* %45, null, !dbg !4714
  br i1 %tobool46, label %if.then47, label %if.end51, !dbg !4718

if.then47:                                        ; preds = %if.else44
  %46 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4719
  %card48 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %46, i32 0, i32 5, !dbg !4720
  %47 = load %struct.memstick_dev*, %struct.memstick_dev** %card48, align 8, !dbg !4720
  %start49 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %47, i32 0, i32 8, !dbg !4721
  %48 = load void (%struct.memstick_dev*)*, void (%struct.memstick_dev*)** %start49, align 8, !dbg !4721
  %49 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4722
  %card50 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %49, i32 0, i32 5, !dbg !4723
  %50 = load %struct.memstick_dev*, %struct.memstick_dev** %card50, align 8, !dbg !4723
  call void %48(%struct.memstick_dev* %50) #8, !dbg !4719
  br label %if.end51, !dbg !4719

if.end51:                                         ; preds = %if.then47, %if.else44
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then40
  br label %if.end53, !dbg !4724

if.end53:                                         ; preds = %if.end52, %if.else25
  %51 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4725
  %card54 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %51, i32 0, i32 5, !dbg !4727
  %52 = load %struct.memstick_dev*, %struct.memstick_dev** %card54, align 8, !dbg !4727
  %tobool55 = icmp ne %struct.memstick_dev* %52, null, !dbg !4725
  br i1 %tobool55, label %if.else66, label %if.then56, !dbg !4728

if.then56:                                        ; preds = %if.end53
  %53 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4729
  %54 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4731
  %card57 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %54, i32 0, i32 5, !dbg !4732
  store %struct.memstick_dev* %53, %struct.memstick_dev** %card57, align 8, !dbg !4733
  %55 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4734
  %dev58 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %55, i32 0, i32 9, !dbg !4736
  %call59 = call i32 @device_register(%struct.device* %dev58) #8, !dbg !4737
  %tobool60 = icmp ne i32 %call59, 0, !dbg !4737
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !4738

if.then61:                                        ; preds = %if.then56
  %56 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4739
  %dev62 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %56, i32 0, i32 9, !dbg !4741
  call void @put_device(%struct.device* %dev62) #8, !dbg !4742
  %57 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4743
  %card63 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %57, i32 0, i32 5, !dbg !4744
  %58 = load %struct.memstick_dev*, %struct.memstick_dev** %card63, align 8, !dbg !4744
  %59 = bitcast %struct.memstick_dev* %58 to i8*, !dbg !4743
  call void @kfree(i8* %59) #8, !dbg !4745
  %60 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4746
  %card64 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %60, i32 0, i32 5, !dbg !4747
  store %struct.memstick_dev* null, %struct.memstick_dev** %card64, align 8, !dbg !4748
  br label %if.end65, !dbg !4749

if.end65:                                         ; preds = %if.then61, %if.then56
  br label %if.end67, !dbg !4750

if.else66:                                        ; preds = %if.end53
  %61 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4751
  %62 = bitcast %struct.memstick_dev* %61 to i8*, !dbg !4751
  call void @kfree(i8* %62) #8, !dbg !4752
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.end65
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end24
  br label %out_power_off, !dbg !4664

out_power_off:                                    ; preds = %if.end68, %if.then13, %if.then3
  call void @llvm.dbg.label(metadata !4753), !dbg !4754
  %63 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4755
  %card69 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %63, i32 0, i32 5, !dbg !4757
  %64 = load %struct.memstick_dev*, %struct.memstick_dev** %card69, align 8, !dbg !4757
  %tobool70 = icmp ne %struct.memstick_dev* %64, null, !dbg !4755
  br i1 %tobool70, label %if.end73, label %if.then71, !dbg !4758

if.then71:                                        ; preds = %out_power_off
  %65 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4759
  %set_param = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %65, i32 0, i32 9, !dbg !4760
  %66 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %set_param, align 16, !dbg !4760
  %67 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4761
  %call72 = call i32 %66(%struct.memstick_host* %67, i32 1, i32 0) #8, !dbg !4759
  br label %if.end73, !dbg !4759

if.end73:                                         ; preds = %if.then71, %out_power_off
  %68 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4762
  %lock74 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %68, i32 0, i32 0, !dbg !4763
  call void @mutex_unlock(%struct.mutex* %lock74) #8, !dbg !4764
  %69 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !4765
  %dev75 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %69, i32 0, i32 4, !dbg !4766
  %parent76 = getelementptr inbounds %struct.device, %struct.device* %dev75, i32 0, i32 1, !dbg !4767
  %70 = load %struct.device*, %struct.device** %parent76, align 64, !dbg !4767
  %call77 = call i32 @pm_runtime_put(%struct.device* %70) #8, !dbg !4768
  ret void, !dbg !4769
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @memstick_add_host(%struct.memstick_host* %host) #0 !dbg !4770 {
entry:
  %lock.addr.i17 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i17, metadata !4773, metadata !DIExpression()), !dbg !4778
  %lock.addr.i15 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i15, metadata !4782, metadata !DIExpression()), !dbg !4784
  %lock.addr.i13 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i13, metadata !4773, metadata !DIExpression()), !dbg !4786
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4782, metadata !DIExpression()), !dbg !4788
  %retval = alloca i32, align 4
  %host.addr = alloca %struct.memstick_host*, align 8
  %rc = alloca i32, align 4
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4790, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4792, metadata !DIExpression()), !dbg !4793
  call void @idr_preload(i32 3264) #8, !dbg !4794
  store %struct.spinlock* @memstick_host_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4795, !srcloc !4797
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4798
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !4798
  %rlock.i = bitcast %union.anon.0* %1 to %struct.raw_spinlock*, !dbg !4798
  %2 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4800
  %3 = bitcast %struct.memstick_host* %2 to i8*, !dbg !4800
  %call = call i32 @idr_alloc(%struct.idr* @memstick_host_idr, i8* %3, i32 0, i32 0, i32 2048) #8, !dbg !4801
  store i32 %call, i32* %rc, align 4, !dbg !4802
  %4 = load i32, i32* %rc, align 4, !dbg !4803
  %cmp = icmp sge i32 %4, 0, !dbg !4805
  br i1 %cmp, label %if.then, label %if.end, !dbg !4806

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %rc, align 4, !dbg !4807
  %6 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4808
  %id = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %6, i32 0, i32 1, !dbg !4809
  store i32 %5, i32* %id, align 8, !dbg !4810
  br label %if.end, !dbg !4808

if.end:                                           ; preds = %if.then, %entry
  store %struct.spinlock* @memstick_host_lock, %struct.spinlock** %lock.addr.i13, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4811, !srcloc !4813
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i13, align 8, !dbg !4814
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !4814
  %rlock.i14 = bitcast %union.anon.0* %8 to %struct.raw_spinlock*, !dbg !4814
  call void @idr_preload_end() #8, !dbg !4816
  %9 = load i32, i32* %rc, align 4, !dbg !4817
  %cmp1 = icmp slt i32 %9, 0, !dbg !4819
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4820

if.then2:                                         ; preds = %if.end
  %10 = load i32, i32* %rc, align 4, !dbg !4821
  store i32 %10, i32* %retval, align 4, !dbg !4822
  br label %return, !dbg !4822

if.end3:                                          ; preds = %if.end
  %11 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4823
  %dev = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %11, i32 0, i32 4, !dbg !4824
  %12 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4825
  %id4 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %12, i32 0, i32 1, !dbg !4826
  %13 = load i32, i32* %id4, align 8, !dbg !4826
  %call5 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %13) #8, !dbg !4827
  %14 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4828
  %dev6 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %14, i32 0, i32 4, !dbg !4829
  %call7 = call i32 @device_add(%struct.device* %dev6) #8, !dbg !4830
  store i32 %call7, i32* %rc, align 4, !dbg !4831
  %15 = load i32, i32* %rc, align 4, !dbg !4832
  %tobool = icmp ne i32 %15, 0, !dbg !4832
  br i1 %tobool, label %if.then8, label %if.end11, !dbg !4833

if.then8:                                         ; preds = %if.end3
  store %struct.spinlock* @memstick_host_lock, %struct.spinlock** %lock.addr.i15, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4834, !srcloc !4797
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i15, align 8, !dbg !4835
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !4835
  %rlock.i16 = bitcast %union.anon.0* %17 to %struct.raw_spinlock*, !dbg !4835
  %18 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4836
  %id9 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %18, i32 0, i32 1, !dbg !4837
  %19 = load i32, i32* %id9, align 8, !dbg !4837
  %conv = zext i32 %19 to i64, !dbg !4836
  %call10 = call i8* @idr_remove(%struct.idr* @memstick_host_idr, i64 %conv) #8, !dbg !4838
  store %struct.spinlock* @memstick_host_lock, %struct.spinlock** %lock.addr.i17, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4839, !srcloc !4813
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i17, align 8, !dbg !4840
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !4840
  %rlock.i18 = bitcast %union.anon.0* %21 to %struct.raw_spinlock*, !dbg !4840
  %22 = load i32, i32* %rc, align 4, !dbg !4841
  store i32 %22, i32* %retval, align 4, !dbg !4842
  br label %return, !dbg !4842

if.end11:                                         ; preds = %if.end3
  %23 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4843
  %set_param = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %23, i32 0, i32 9, !dbg !4844
  %24 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %set_param, align 16, !dbg !4844
  %25 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4845
  %call12 = call i32 %24(%struct.memstick_host* %25, i32 1, i32 0) #8, !dbg !4843
  %26 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4846
  call void @memstick_detect_change(%struct.memstick_host* %26) #8, !dbg !4847
  store i32 0, i32* %retval, align 4, !dbg !4848
  br label %return, !dbg !4848

return:                                           ; preds = %if.end11, %if.then8, %if.then2
  %27 = load i32, i32* %retval, align 4, !dbg !4849
  ret i32 %27, !dbg !4849
}

; Function Attrs: noredzone
declare dso_local void @idr_preload(i32) #3

; Function Attrs: noredzone
declare dso_local i32 @idr_alloc(%struct.idr*, i8*, i32, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @idr_preload_end() #0 !dbg !4850 {
entry:
  %tmp = alloca %struct.local_lock_t*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp2 = alloca %struct.local_lock_t*, align 8
  br label %do.body, !dbg !4851

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4852

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !4856, metadata !DIExpression()), !dbg !4858
  store i8* null, i8** %__vpp_verify, align 8, !dbg !4858
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !4858
  br label %do.end, !dbg !4858

do.end:                                           ; preds = %do.body1
  store %struct.local_lock_t* getelementptr inbounds (%struct.radix_tree_preload, %struct.radix_tree_preload* @radix_tree_preloads, i32 0, i32 0), %struct.local_lock_t** %tmp2, align 8, !dbg !4858
  %1 = load %struct.local_lock_t*, %struct.local_lock_t** %tmp2, align 8, !dbg !4852
  store %struct.local_lock_t* %1, %struct.local_lock_t** %tmp, align 8, !dbg !4859
  %2 = load %struct.local_lock_t*, %struct.local_lock_t** %tmp, align 8, !dbg !4859
  call void @local_lock_release(%struct.local_lock_t* %2) #8, !dbg !4860
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4860, !srcloc !4861
  br label %do.end3, !dbg !4860

do.end3:                                          ; preds = %do.end
  ret void, !dbg !4862
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local i8* @idr_remove(%struct.idr*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_remove_host(%struct.memstick_host* %host) #0 !dbg !4863 {
entry:
  %lock.addr.i6 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i6, metadata !4773, metadata !DIExpression()), !dbg !4864
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4782, metadata !DIExpression()), !dbg !4866
  %host.addr = alloca %struct.memstick_host*, align 8
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  %0 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4870
  %removing = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %0, i32 0, i32 7, !dbg !4871
  store i8 1, i8* %removing, align 4, !dbg !4872
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** @workqueue, align 8, !dbg !4873
  call void @flush_workqueue(%struct.workqueue_struct* %1) #8, !dbg !4874
  %2 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4875
  %lock = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %2, i32 0, i32 0, !dbg !4876
  call void @mutex_lock(%struct.mutex* %lock) #8, !dbg !4877
  %3 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4878
  %card = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %3, i32 0, i32 5, !dbg !4880
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4880
  %tobool = icmp ne %struct.memstick_dev* %4, null, !dbg !4878
  br i1 %tobool, label %if.then, label %if.end, !dbg !4881

if.then:                                          ; preds = %entry
  %5 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4882
  %card1 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %5, i32 0, i32 5, !dbg !4883
  %6 = load %struct.memstick_dev*, %struct.memstick_dev** %card1, align 8, !dbg !4883
  %dev = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %6, i32 0, i32 9, !dbg !4884
  call void @device_unregister(%struct.device* %dev) #8, !dbg !4885
  br label %if.end, !dbg !4885

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4886
  %card2 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %7, i32 0, i32 5, !dbg !4887
  store %struct.memstick_dev* null, %struct.memstick_dev** %card2, align 8, !dbg !4888
  %8 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4889
  %set_param = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %8, i32 0, i32 9, !dbg !4890
  %9 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %set_param, align 16, !dbg !4890
  %10 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4891
  %call = call i32 %9(%struct.memstick_host* %10, i32 1, i32 0) #8, !dbg !4889
  %11 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4892
  %lock3 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %11, i32 0, i32 0, !dbg !4893
  call void @mutex_unlock(%struct.mutex* %lock3) #8, !dbg !4894
  store %struct.spinlock* @memstick_host_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4895, !srcloc !4797
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4896
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !4896
  %rlock.i = bitcast %union.anon.0* %13 to %struct.raw_spinlock*, !dbg !4896
  %14 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4897
  %id = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %14, i32 0, i32 1, !dbg !4898
  %15 = load i32, i32* %id, align 8, !dbg !4898
  %conv = zext i32 %15 to i64, !dbg !4897
  %call4 = call i8* @idr_remove(%struct.idr* @memstick_host_idr, i64 %conv) #8, !dbg !4899
  store %struct.spinlock* @memstick_host_lock, %struct.spinlock** %lock.addr.i6, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4900, !srcloc !4813
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i6, align 8, !dbg !4901
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !4901
  %rlock.i7 = bitcast %union.anon.0* %17 to %struct.raw_spinlock*, !dbg !4901
  %18 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4902
  %dev5 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %18, i32 0, i32 4, !dbg !4903
  call void @device_del(%struct.device* %dev5) #8, !dbg !4904
  ret void, !dbg !4905
}

; Function Attrs: noredzone
declare dso_local void @flush_workqueue(%struct.workqueue_struct*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_free_host(%struct.memstick_host* %host) #0 !dbg !4906 {
entry:
  %host.addr = alloca %struct.memstick_host*, align 8
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  %0 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4909
  %lock = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %0, i32 0, i32 0, !dbg !4910
  call void @mutex_destroy(%struct.mutex* %lock) #8, !dbg !4911
  %1 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4912
  %dev = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %1, i32 0, i32 4, !dbg !4913
  call void @put_device(%struct.device* %dev) #8, !dbg !4914
  ret void, !dbg !4915
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mutex_destroy(%struct.mutex* %lock) #0 !dbg !4916 {
entry:
  %lock.addr = alloca %struct.mutex*, align 8
  store %struct.mutex* %lock, %struct.mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock.addr, metadata !4920, metadata !DIExpression()), !dbg !4921
  ret void, !dbg !4922
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_suspend_host(%struct.memstick_host* %host) #0 !dbg !4923 {
entry:
  %host.addr = alloca %struct.memstick_host*, align 8
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  %0 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4926
  %lock = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %0, i32 0, i32 0, !dbg !4927
  call void @mutex_lock(%struct.mutex* %lock) #8, !dbg !4928
  %1 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4929
  %set_param = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %1, i32 0, i32 9, !dbg !4930
  %2 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %set_param, align 16, !dbg !4930
  %3 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4931
  %call = call i32 %2(%struct.memstick_host* %3, i32 1, i32 0) #8, !dbg !4929
  %4 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4932
  %lock1 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %4, i32 0, i32 0, !dbg !4933
  call void @mutex_unlock(%struct.mutex* %lock1) #8, !dbg !4934
  ret void, !dbg !4935
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_resume_host(%struct.memstick_host* %host) #0 !dbg !4936 {
entry:
  %host.addr = alloca %struct.memstick_host*, align 8
  %rc = alloca i32, align 4
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4939, metadata !DIExpression()), !dbg !4940
  store i32 0, i32* %rc, align 4, !dbg !4940
  %0 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4941
  %lock = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %0, i32 0, i32 0, !dbg !4942
  call void @mutex_lock(%struct.mutex* %lock) #8, !dbg !4943
  %1 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4944
  %card = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %1, i32 0, i32 5, !dbg !4946
  %2 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !4946
  %tobool = icmp ne %struct.memstick_dev* %2, null, !dbg !4944
  br i1 %tobool, label %if.then, label %if.end, !dbg !4947

if.then:                                          ; preds = %entry
  %3 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4948
  %call = call i32 @memstick_power_on(%struct.memstick_host* %3) #8, !dbg !4949
  store i32 %call, i32* %rc, align 4, !dbg !4950
  br label %if.end, !dbg !4951

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4952
  %lock1 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %4, i32 0, i32 0, !dbg !4953
  call void @mutex_unlock(%struct.mutex* %lock1) #8, !dbg !4954
  %5 = load i32, i32* %rc, align 4, !dbg !4955
  %tobool2 = icmp ne i32 %5, 0, !dbg !4955
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4957

if.then3:                                         ; preds = %if.end
  %6 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4958
  call void @memstick_detect_change(%struct.memstick_host* %6) #8, !dbg !4959
  br label %if.end4, !dbg !4959

if.end4:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !4960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_power_on(%struct.memstick_host* %host) #0 !dbg !4961 {
entry:
  %host.addr = alloca %struct.memstick_host*, align 8
  %rc = alloca i32, align 4
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4964, metadata !DIExpression()), !dbg !4965
  %0 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4966
  %set_param = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %0, i32 0, i32 9, !dbg !4967
  %1 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %set_param, align 16, !dbg !4967
  %2 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4968
  %call = call i32 %1(%struct.memstick_host* %2, i32 1, i32 1) #8, !dbg !4966
  store i32 %call, i32* %rc, align 4, !dbg !4965
  %3 = load i32, i32* %rc, align 4, !dbg !4969
  %tobool = icmp ne i32 %3, 0, !dbg !4969
  br i1 %tobool, label %if.end, label %if.then, !dbg !4971

if.then:                                          ; preds = %entry
  %4 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4972
  %set_param1 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %4, i32 0, i32 9, !dbg !4973
  %5 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %set_param1, align 16, !dbg !4973
  %6 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !4974
  %call2 = call i32 %5(%struct.memstick_host* %6, i32 2, i32 0) #8, !dbg !4972
  store i32 %call2, i32* %rc, align 4, !dbg !4975
  br label %if.end, !dbg !4976

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %rc, align 4, !dbg !4977
  ret i32 %7, !dbg !4978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @memstick_register_driver(%struct.memstick_driver* %drv) #0 !dbg !4979 {
entry:
  %drv.addr = alloca %struct.memstick_driver*, align 8
  store %struct.memstick_driver* %drv, %struct.memstick_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_driver** %drv.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  %0 = load %struct.memstick_driver*, %struct.memstick_driver** %drv.addr, align 8, !dbg !4984
  %driver = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %0, i32 0, i32 5, !dbg !4985
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 1, !dbg !4986
  store %struct.bus_type* @memstick_bus_type, %struct.bus_type** %bus, align 8, !dbg !4987
  %1 = load %struct.memstick_driver*, %struct.memstick_driver** %drv.addr, align 8, !dbg !4988
  %driver1 = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %1, i32 0, i32 5, !dbg !4989
  %call = call i32 @driver_register(%struct.device_driver* %driver1) #8, !dbg !4990
  ret i32 %call, !dbg !4991
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @memstick_unregister_driver(%struct.memstick_driver* %drv) #0 !dbg !4992 {
entry:
  %drv.addr = alloca %struct.memstick_driver*, align 8
  store %struct.memstick_driver* %drv, %struct.memstick_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_driver** %drv.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load %struct.memstick_driver*, %struct.memstick_driver** %drv.addr, align 8, !dbg !4997
  %driver = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %0, i32 0, i32 5, !dbg !4998
  call void @driver_unregister(%struct.device_driver* %driver) #8, !dbg !4999
  ret void, !dbg !5000
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @memstick_exit() #4 section ".exit.text" !dbg !5001 {
entry:
  call void @class_unregister(%struct.class* @memstick_host_class) #8, !dbg !5002
  call void @bus_unregister(%struct.bus_type* @memstick_bus_type) #8, !dbg !5003
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @workqueue, align 8, !dbg !5004
  call void @destroy_workqueue(%struct.workqueue_struct* %0) #8, !dbg !5005
  call void @idr_destroy(%struct.idr* @memstick_host_idr) #8, !dbg !5006
  ret void, !dbg !5007
}

; Function Attrs: noredzone
declare dso_local void @class_unregister(%struct.class*) #3

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #3

; Function Attrs: noredzone
declare dso_local void @destroy_workqueue(%struct.workqueue_struct*) #3

; Function Attrs: noredzone
declare dso_local void @idr_destroy(%struct.idr*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_init() #4 section ".init.text" !dbg !4016 {
entry:
  %retval = alloca i32, align 4
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5008, metadata !DIExpression()), !dbg !5009
  %call = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 262158, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !5010
  store %struct.workqueue_struct* %call, %struct.workqueue_struct** @workqueue, align 8, !dbg !5011
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @workqueue, align 8, !dbg !5012
  %tobool = icmp ne %struct.workqueue_struct* %0, null, !dbg !5012
  br i1 %tobool, label %if.end, label %if.then, !dbg !5014

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5015
  br label %return, !dbg !5015

if.end:                                           ; preds = %entry
  %call1 = call i32 @bus_register(%struct.bus_type* @memstick_bus_type) #8, !dbg !5016
  store i32 %call1, i32* %rc, align 4, !dbg !5017
  %1 = load i32, i32* %rc, align 4, !dbg !5018
  %tobool2 = icmp ne i32 %1, 0, !dbg !5018
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5020

if.then3:                                         ; preds = %if.end
  br label %error_destroy_workqueue, !dbg !5021

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @__class_register(%struct.class* @memstick_host_class, %struct.lock_class_key* @memstick_init.__key) #8, !dbg !5022
  store i32 %call5, i32* %tmp, align 4, !dbg !5022
  %2 = load i32, i32* %tmp, align 4, !dbg !5022
  store i32 %2, i32* %rc, align 4, !dbg !5024
  %3 = load i32, i32* %rc, align 4, !dbg !5025
  %tobool6 = icmp ne i32 %3, 0, !dbg !5025
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5027

if.then7:                                         ; preds = %if.end4
  br label %error_bus_unregister, !dbg !5028

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !5029
  br label %return, !dbg !5029

error_bus_unregister:                             ; preds = %if.then7
  call void @llvm.dbg.label(metadata !5030), !dbg !5031
  call void @bus_unregister(%struct.bus_type* @memstick_bus_type) #8, !dbg !5032
  br label %error_destroy_workqueue, !dbg !5032

error_destroy_workqueue:                          ; preds = %error_bus_unregister, %if.then3
  call void @llvm.dbg.label(metadata !5033), !dbg !5034
  %4 = load %struct.workqueue_struct*, %struct.workqueue_struct** @workqueue, align 8, !dbg !5035
  call void @destroy_workqueue(%struct.workqueue_struct* %4) #8, !dbg !5036
  %5 = load i32, i32* %rc, align 4, !dbg !5037
  store i32 %5, i32* %retval, align 4, !dbg !5038
  br label %return, !dbg !5038

return:                                           ; preds = %error_destroy_workqueue, %if.end8, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5039
  ret i32 %6, !dbg !5039
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #3

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5040 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5044, metadata !DIExpression()), !dbg !5049
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5051, metadata !DIExpression()), !dbg !5052
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  %0 = load i64, i64* %size.addr, align 8, !dbg !5055
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5057
  br i1 %1, label %if.then, label %if.end447, !dbg !5058

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5059
  %tobool = icmp ne i64 %2, 0, !dbg !5059
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5062

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5063
  br label %return, !dbg !5063

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5064
  %cmp = icmp ult i64 %3, 4096, !dbg !5066
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5067

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5068
  br label %return, !dbg !5068

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub = sub i64 %4, 1, !dbg !5069
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5069
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5069

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub4 = sub i64 %6, 1, !dbg !5069
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5069
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5069

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub6 = sub i64 %8, 1, !dbg !5069
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5069
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5069

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5069

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub9 = sub i64 %9, 1, !dbg !5069
  %and = and i64 %sub9, -9223372036854775808, !dbg !5069
  %tobool10 = icmp ne i64 %and, 0, !dbg !5069
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5069

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5069

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub13 = sub i64 %10, 1, !dbg !5069
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5069
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5069
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5069

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5069

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub18 = sub i64 %11, 1, !dbg !5069
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5069
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5069
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5069

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5069

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub23 = sub i64 %12, 1, !dbg !5069
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5069
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5069
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5069

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5069

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub28 = sub i64 %13, 1, !dbg !5069
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5069
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5069
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5069

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5069

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub33 = sub i64 %14, 1, !dbg !5069
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5069
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5069
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5069

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5069

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub38 = sub i64 %15, 1, !dbg !5069
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5069
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5069
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5069

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5069

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub43 = sub i64 %16, 1, !dbg !5069
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5069
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5069
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5069

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5069

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub48 = sub i64 %17, 1, !dbg !5069
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5069
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5069
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5069

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5069

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub53 = sub i64 %18, 1, !dbg !5069
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5069
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5069
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5069

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5069

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub58 = sub i64 %19, 1, !dbg !5069
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5069
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5069
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5069

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5069

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub63 = sub i64 %20, 1, !dbg !5069
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5069
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5069
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5069

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5069

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub68 = sub i64 %21, 1, !dbg !5069
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5069
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5069
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5069

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5069

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub73 = sub i64 %22, 1, !dbg !5069
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5069
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5069
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5069

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5069

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub78 = sub i64 %23, 1, !dbg !5069
  %and79 = and i64 %sub78, 562949953421312, !dbg !5069
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5069
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5069

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5069

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub83 = sub i64 %24, 1, !dbg !5069
  %and84 = and i64 %sub83, 281474976710656, !dbg !5069
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5069
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5069

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5069

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub88 = sub i64 %25, 1, !dbg !5069
  %and89 = and i64 %sub88, 140737488355328, !dbg !5069
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5069
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5069

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5069

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub93 = sub i64 %26, 1, !dbg !5069
  %and94 = and i64 %sub93, 70368744177664, !dbg !5069
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5069
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5069

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5069

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub98 = sub i64 %27, 1, !dbg !5069
  %and99 = and i64 %sub98, 35184372088832, !dbg !5069
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5069
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5069

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5069

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub103 = sub i64 %28, 1, !dbg !5069
  %and104 = and i64 %sub103, 17592186044416, !dbg !5069
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5069
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5069

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5069

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub108 = sub i64 %29, 1, !dbg !5069
  %and109 = and i64 %sub108, 8796093022208, !dbg !5069
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5069
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5069

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5069

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub113 = sub i64 %30, 1, !dbg !5069
  %and114 = and i64 %sub113, 4398046511104, !dbg !5069
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5069
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5069

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5069

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub118 = sub i64 %31, 1, !dbg !5069
  %and119 = and i64 %sub118, 2199023255552, !dbg !5069
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5069
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5069

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5069

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub123 = sub i64 %32, 1, !dbg !5069
  %and124 = and i64 %sub123, 1099511627776, !dbg !5069
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5069
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5069

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5069

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub128 = sub i64 %33, 1, !dbg !5069
  %and129 = and i64 %sub128, 549755813888, !dbg !5069
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5069
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5069

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5069

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub133 = sub i64 %34, 1, !dbg !5069
  %and134 = and i64 %sub133, 274877906944, !dbg !5069
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5069
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5069

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5069

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub138 = sub i64 %35, 1, !dbg !5069
  %and139 = and i64 %sub138, 137438953472, !dbg !5069
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5069
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5069

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5069

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub143 = sub i64 %36, 1, !dbg !5069
  %and144 = and i64 %sub143, 68719476736, !dbg !5069
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5069
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5069

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5069

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub148 = sub i64 %37, 1, !dbg !5069
  %and149 = and i64 %sub148, 34359738368, !dbg !5069
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5069
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5069

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5069

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub153 = sub i64 %38, 1, !dbg !5069
  %and154 = and i64 %sub153, 17179869184, !dbg !5069
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5069
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5069

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5069

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub158 = sub i64 %39, 1, !dbg !5069
  %and159 = and i64 %sub158, 8589934592, !dbg !5069
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5069
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5069

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5069

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub163 = sub i64 %40, 1, !dbg !5069
  %and164 = and i64 %sub163, 4294967296, !dbg !5069
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5069
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5069

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5069

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub168 = sub i64 %41, 1, !dbg !5069
  %and169 = and i64 %sub168, 2147483648, !dbg !5069
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5069
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5069

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5069

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub173 = sub i64 %42, 1, !dbg !5069
  %and174 = and i64 %sub173, 1073741824, !dbg !5069
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5069
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5069

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5069

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub178 = sub i64 %43, 1, !dbg !5069
  %and179 = and i64 %sub178, 536870912, !dbg !5069
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5069
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5069

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5069

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub183 = sub i64 %44, 1, !dbg !5069
  %and184 = and i64 %sub183, 268435456, !dbg !5069
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5069
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5069

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5069

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub188 = sub i64 %45, 1, !dbg !5069
  %and189 = and i64 %sub188, 134217728, !dbg !5069
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5069
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5069

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5069

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub193 = sub i64 %46, 1, !dbg !5069
  %and194 = and i64 %sub193, 67108864, !dbg !5069
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5069
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5069

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5069

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub198 = sub i64 %47, 1, !dbg !5069
  %and199 = and i64 %sub198, 33554432, !dbg !5069
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5069
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5069

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5069

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub203 = sub i64 %48, 1, !dbg !5069
  %and204 = and i64 %sub203, 16777216, !dbg !5069
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5069
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5069

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5069

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub208 = sub i64 %49, 1, !dbg !5069
  %and209 = and i64 %sub208, 8388608, !dbg !5069
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5069
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5069

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5069

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub213 = sub i64 %50, 1, !dbg !5069
  %and214 = and i64 %sub213, 4194304, !dbg !5069
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5069
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5069

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5069

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub218 = sub i64 %51, 1, !dbg !5069
  %and219 = and i64 %sub218, 2097152, !dbg !5069
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5069
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5069

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5069

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub223 = sub i64 %52, 1, !dbg !5069
  %and224 = and i64 %sub223, 1048576, !dbg !5069
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5069
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5069

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5069

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub228 = sub i64 %53, 1, !dbg !5069
  %and229 = and i64 %sub228, 524288, !dbg !5069
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5069
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5069

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5069

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub233 = sub i64 %54, 1, !dbg !5069
  %and234 = and i64 %sub233, 262144, !dbg !5069
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5069
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5069

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5069

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub238 = sub i64 %55, 1, !dbg !5069
  %and239 = and i64 %sub238, 131072, !dbg !5069
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5069
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5069

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5069

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub243 = sub i64 %56, 1, !dbg !5069
  %and244 = and i64 %sub243, 65536, !dbg !5069
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5069
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5069

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5069

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub248 = sub i64 %57, 1, !dbg !5069
  %and249 = and i64 %sub248, 32768, !dbg !5069
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5069
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5069

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5069

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub253 = sub i64 %58, 1, !dbg !5069
  %and254 = and i64 %sub253, 16384, !dbg !5069
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5069
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5069

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5069

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub258 = sub i64 %59, 1, !dbg !5069
  %and259 = and i64 %sub258, 8192, !dbg !5069
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5069
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5069

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5069

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub263 = sub i64 %60, 1, !dbg !5069
  %and264 = and i64 %sub263, 4096, !dbg !5069
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5069
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5069

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5069

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub268 = sub i64 %61, 1, !dbg !5069
  %and269 = and i64 %sub268, 2048, !dbg !5069
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5069
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5069

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5069

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub273 = sub i64 %62, 1, !dbg !5069
  %and274 = and i64 %sub273, 1024, !dbg !5069
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5069
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5069

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5069

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub278 = sub i64 %63, 1, !dbg !5069
  %and279 = and i64 %sub278, 512, !dbg !5069
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5069
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5069

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5069

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub283 = sub i64 %64, 1, !dbg !5069
  %and284 = and i64 %sub283, 256, !dbg !5069
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5069
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5069

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5069

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub288 = sub i64 %65, 1, !dbg !5069
  %and289 = and i64 %sub288, 128, !dbg !5069
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5069
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5069

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5069

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub293 = sub i64 %66, 1, !dbg !5069
  %and294 = and i64 %sub293, 64, !dbg !5069
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5069
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5069

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5069

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub298 = sub i64 %67, 1, !dbg !5069
  %and299 = and i64 %sub298, 32, !dbg !5069
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5069
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5069

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5069

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub303 = sub i64 %68, 1, !dbg !5069
  %and304 = and i64 %sub303, 16, !dbg !5069
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5069
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5069

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5069

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub308 = sub i64 %69, 1, !dbg !5069
  %and309 = and i64 %sub308, 8, !dbg !5069
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5069
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5069

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5069

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub313 = sub i64 %70, 1, !dbg !5069
  %and314 = and i64 %sub313, 4, !dbg !5069
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5069
  %71 = zext i1 %tobool315 to i64, !dbg !5069
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5069
  br label %cond.end, !dbg !5069

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5069
  br label %cond.end317, !dbg !5069

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5069
  br label %cond.end319, !dbg !5069

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5069
  br label %cond.end321, !dbg !5069

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5069
  br label %cond.end323, !dbg !5069

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5069
  br label %cond.end325, !dbg !5069

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5069
  br label %cond.end327, !dbg !5069

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5069
  br label %cond.end329, !dbg !5069

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5069
  br label %cond.end331, !dbg !5069

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5069
  br label %cond.end333, !dbg !5069

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5069
  br label %cond.end335, !dbg !5069

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5069
  br label %cond.end337, !dbg !5069

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5069
  br label %cond.end339, !dbg !5069

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5069
  br label %cond.end341, !dbg !5069

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5069
  br label %cond.end343, !dbg !5069

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5069
  br label %cond.end345, !dbg !5069

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5069
  br label %cond.end347, !dbg !5069

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5069
  br label %cond.end349, !dbg !5069

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5069
  br label %cond.end351, !dbg !5069

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5069
  br label %cond.end353, !dbg !5069

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5069
  br label %cond.end355, !dbg !5069

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5069
  br label %cond.end357, !dbg !5069

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5069
  br label %cond.end359, !dbg !5069

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5069
  br label %cond.end361, !dbg !5069

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5069
  br label %cond.end363, !dbg !5069

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5069
  br label %cond.end365, !dbg !5069

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5069
  br label %cond.end367, !dbg !5069

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5069
  br label %cond.end369, !dbg !5069

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5069
  br label %cond.end371, !dbg !5069

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5069
  br label %cond.end373, !dbg !5069

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5069
  br label %cond.end375, !dbg !5069

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5069
  br label %cond.end377, !dbg !5069

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5069
  br label %cond.end379, !dbg !5069

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5069
  br label %cond.end381, !dbg !5069

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5069
  br label %cond.end383, !dbg !5069

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5069
  br label %cond.end385, !dbg !5069

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5069
  br label %cond.end387, !dbg !5069

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5069
  br label %cond.end389, !dbg !5069

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5069
  br label %cond.end391, !dbg !5069

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5069
  br label %cond.end393, !dbg !5069

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5069
  br label %cond.end395, !dbg !5069

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5069
  br label %cond.end397, !dbg !5069

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5069
  br label %cond.end399, !dbg !5069

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5069
  br label %cond.end401, !dbg !5069

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5069
  br label %cond.end403, !dbg !5069

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5069
  br label %cond.end405, !dbg !5069

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5069
  br label %cond.end407, !dbg !5069

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5069
  br label %cond.end409, !dbg !5069

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5069
  br label %cond.end411, !dbg !5069

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5069
  br label %cond.end413, !dbg !5069

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5069
  br label %cond.end415, !dbg !5069

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5069
  br label %cond.end417, !dbg !5069

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5069
  br label %cond.end419, !dbg !5069

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5069
  br label %cond.end421, !dbg !5069

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5069
  br label %cond.end423, !dbg !5069

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5069
  br label %cond.end425, !dbg !5069

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5069
  br label %cond.end427, !dbg !5069

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5069
  br label %cond.end429, !dbg !5069

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5069
  br label %cond.end431, !dbg !5069

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5069
  br label %cond.end433, !dbg !5069

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5069
  br label %cond.end435, !dbg !5069

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5069
  br label %cond.end437, !dbg !5069

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5069
  br label %cond.end440, !dbg !5069

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5069

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5069
  br label %cond.end444, !dbg !5069

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5069
  %sub443 = sub i64 %72, 1, !dbg !5069
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5069
  br label %cond.end444, !dbg !5069

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5069
  %sub446 = sub i32 %cond445, 12, !dbg !5070
  %add = add i32 %sub446, 1, !dbg !5071
  store i32 %add, i32* %retval, align 4, !dbg !5072
  br label %return, !dbg !5072

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5073
  %dec = add i64 %73, -1, !dbg !5073
  store i64 %dec, i64* %size.addr, align 8, !dbg !5073
  %74 = load i64, i64* %size.addr, align 8, !dbg !5074
  %shr = lshr i64 %74, 12, !dbg !5074
  store i64 %shr, i64* %size.addr, align 8, !dbg !5074
  %75 = load i64, i64* %size.addr, align 8, !dbg !5075
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5052
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5076
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5077
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5076, !srcloc !5078
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5076
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5079
  %add.i = add i32 %79, 1, !dbg !5080
  store i32 %add.i, i32* %retval, align 4, !dbg !5081
  br label %return, !dbg !5081

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5082
  ret i32 %80, !dbg !5082
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5083 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5044, metadata !DIExpression()), !dbg !5087
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5051, metadata !DIExpression()), !dbg !5089
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  %0 = load i64, i64* %n.addr, align 8, !dbg !5092
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5089
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5093
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5094
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5093, !srcloc !5078
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5093
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5095
  %add.i = add i32 %4, 1, !dbg !5096
  %sub = sub i32 %add.i, 1, !dbg !5097
  ret i32 %sub, !dbg !5098
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5099 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5107, metadata !DIExpression()), !dbg !5108
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5109, metadata !DIExpression()), !dbg !5110
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5111
  ret i8* %0, !dbg !5112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_get_noresume(%struct.device* %dev) #0 !dbg !5113 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5115, metadata !DIExpression()), !dbg !5121
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5126, metadata !DIExpression()), !dbg !5134
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5136, metadata !DIExpression()), !dbg !5137
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5138, metadata !DIExpression()), !dbg !5139
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5142
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5143
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !5144
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5145
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5145
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5146
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5147
  %conv.i.i = trunc i64 %4 to i32, !dbg !5147
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #11, !dbg !5148
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5149
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5149
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #11, !dbg !5149
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5150
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5151
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5152
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !5153, !srcloc !5154
  ret void, !dbg !5155
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.memstick_dev* @memstick_alloc_card(%struct.memstick_host* %host) #0 !dbg !5156 {
entry:
  %retval = alloca %struct.memstick_dev*, align 8
  %host.addr = alloca %struct.memstick_host*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %old_card = alloca %struct.memstick_dev*, align 8
  %id_reg = alloca %struct.ms_id_register, align 1
  store %struct.memstick_host* %host, %struct.memstick_host** %host.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host.addr, metadata !5159, metadata !DIExpression()), !dbg !5160
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5161, metadata !DIExpression()), !dbg !5162
  %call = call i8* @kzalloc(i64 816, i32 3264) #8, !dbg !5163
  %0 = bitcast i8* %call to %struct.memstick_dev*, !dbg !5163
  store %struct.memstick_dev* %0, %struct.memstick_dev** %card, align 8, !dbg !5162
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %old_card, metadata !5164, metadata !DIExpression()), !dbg !5165
  %1 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !5166
  %card1 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %1, i32 0, i32 5, !dbg !5167
  %2 = load %struct.memstick_dev*, %struct.memstick_dev** %card1, align 8, !dbg !5167
  store %struct.memstick_dev* %2, %struct.memstick_dev** %old_card, align 8, !dbg !5165
  call void @llvm.dbg.declare(metadata %struct.ms_id_register* %id_reg, metadata !5168, metadata !DIExpression()), !dbg !5175
  %3 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5176
  %tobool = icmp ne %struct.memstick_dev* %3, null, !dbg !5176
  br i1 %tobool, label %if.then, label %if.end21, !dbg !5178

if.then:                                          ; preds = %entry
  %4 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !5179
  %5 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5181
  %host2 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %5, i32 0, i32 1, !dbg !5182
  store %struct.memstick_host* %4, %struct.memstick_host** %host2, align 8, !dbg !5183
  %6 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5184
  %dev = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %6, i32 0, i32 9, !dbg !5185
  %7 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !5186
  %dev3 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %7, i32 0, i32 4, !dbg !5187
  %call4 = call i8* @dev_name(%struct.device* %dev3) #8, !dbg !5188
  %call5 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %call4) #8, !dbg !5189
  %8 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !5190
  %dev6 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %8, i32 0, i32 4, !dbg !5191
  %9 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5192
  %dev7 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %9, i32 0, i32 9, !dbg !5193
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 1, !dbg !5194
  store %struct.device* %dev6, %struct.device** %parent, align 8, !dbg !5195
  %10 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5196
  %dev8 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %10, i32 0, i32 9, !dbg !5197
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 5, !dbg !5198
  store %struct.bus_type* @memstick_bus_type, %struct.bus_type** %bus, align 8, !dbg !5199
  %11 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5200
  %dev9 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %11, i32 0, i32 9, !dbg !5201
  %release = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 31, !dbg !5202
  store void (%struct.device*)* @memstick_free_card, void (%struct.device*)** %release, align 8, !dbg !5203
  %12 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5204
  %check = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %12, i32 0, i32 5, !dbg !5205
  store i32 (%struct.memstick_dev*)* @memstick_dummy_check, i32 (%struct.memstick_dev*)** %check, align 8, !dbg !5206
  %13 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5207
  %reg_addr = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %13, i32 0, i32 2, !dbg !5208
  %r_offset = getelementptr inbounds %struct.ms_register_addr, %struct.ms_register_addr* %reg_addr, i32 0, i32 0, !dbg !5209
  store i8 4, i8* %r_offset, align 8, !dbg !5210
  %14 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5211
  %reg_addr10 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %14, i32 0, i32 2, !dbg !5212
  %r_length = getelementptr inbounds %struct.ms_register_addr, %struct.ms_register_addr* %reg_addr10, i32 0, i32 1, !dbg !5213
  store i8 4, i8* %r_length, align 1, !dbg !5214
  %15 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5215
  %reg_addr11 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %15, i32 0, i32 2, !dbg !5216
  %w_offset = getelementptr inbounds %struct.ms_register_addr, %struct.ms_register_addr* %reg_addr11, i32 0, i32 2, !dbg !5217
  store i8 4, i8* %w_offset, align 2, !dbg !5218
  %16 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5219
  %reg_addr12 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %16, i32 0, i32 2, !dbg !5220
  %w_length = getelementptr inbounds %struct.ms_register_addr, %struct.ms_register_addr* %reg_addr12, i32 0, i32 3, !dbg !5221
  store i8 4, i8* %w_length, align 1, !dbg !5222
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5223
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %17, i32 0, i32 3, !dbg !5223
  call void @__init_completion(%struct.completion* %mrq_complete) #8, !dbg !5223
  %18 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5224
  %19 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !5225
  %card13 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %19, i32 0, i32 5, !dbg !5226
  store %struct.memstick_dev* %18, %struct.memstick_dev** %card13, align 8, !dbg !5227
  %20 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5228
  %call14 = call i32 @memstick_set_rw_addr(%struct.memstick_dev* %20) #8, !dbg !5230
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5230
  br i1 %tobool15, label %if.then16, label %if.end, !dbg !5231

if.then16:                                        ; preds = %if.then
  br label %err_out, !dbg !5232

if.end:                                           ; preds = %if.then
  %21 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5233
  %next_request = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %21, i32 0, i32 6, !dbg !5234
  store i32 (%struct.memstick_dev*, %struct.memstick_request**)* @h_memstick_read_dev_id, i32 (%struct.memstick_dev*, %struct.memstick_request**)** %next_request, align 8, !dbg !5235
  %22 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !5236
  call void @memstick_new_req(%struct.memstick_host* %22) #8, !dbg !5237
  %23 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5238
  %mrq_complete17 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %23, i32 0, i32 3, !dbg !5239
  call void @wait_for_completion(%struct.completion* %mrq_complete17) #8, !dbg !5240
  %24 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5241
  %current_mrq = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %24, i32 0, i32 4, !dbg !5243
  %error = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %current_mrq, i32 0, i32 3, !dbg !5244
  %25 = load i32, i32* %error, align 4, !dbg !5244
  %tobool18 = icmp ne i32 %25, 0, !dbg !5241
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5245

if.then19:                                        ; preds = %if.end
  br label %err_out, !dbg !5246

if.end20:                                         ; preds = %if.end
  br label %if.end21, !dbg !5247

if.end21:                                         ; preds = %if.end20, %entry
  %26 = load %struct.memstick_dev*, %struct.memstick_dev** %old_card, align 8, !dbg !5248
  %27 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !5249
  %card22 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %27, i32 0, i32 5, !dbg !5250
  store %struct.memstick_dev* %26, %struct.memstick_dev** %card22, align 8, !dbg !5251
  %28 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5252
  store %struct.memstick_dev* %28, %struct.memstick_dev** %retval, align 8, !dbg !5253
  br label %return, !dbg !5253

err_out:                                          ; preds = %if.then19, %if.then16
  call void @llvm.dbg.label(metadata !5254), !dbg !5255
  %29 = load %struct.memstick_dev*, %struct.memstick_dev** %old_card, align 8, !dbg !5256
  %30 = load %struct.memstick_host*, %struct.memstick_host** %host.addr, align 8, !dbg !5257
  %card23 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %30, i32 0, i32 5, !dbg !5258
  store %struct.memstick_dev* %29, %struct.memstick_dev** %card23, align 8, !dbg !5259
  %31 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5260
  %32 = bitcast %struct.memstick_dev* %31 to i8*, !dbg !5260
  call void @kfree(i8* %32) #8, !dbg !5261
  store %struct.memstick_dev* null, %struct.memstick_dev** %retval, align 8, !dbg !5262
  br label %return, !dbg !5262

return:                                           ; preds = %err_out, %if.end21
  %33 = load %struct.memstick_dev*, %struct.memstick_dev** %retval, align 8, !dbg !5263
  ret %struct.memstick_dev* %33, !dbg !5263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_dev_match(%struct.memstick_dev* %card, %struct.memstick_device_id* %id) #0 !dbg !5264 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.memstick_dev*, align 8
  %id.addr = alloca %struct.memstick_device_id*, align 8
  store %struct.memstick_dev* %card, %struct.memstick_dev** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  store %struct.memstick_device_id* %id, %struct.memstick_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_device_id** %id.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  %0 = load %struct.memstick_device_id*, %struct.memstick_device_id** %id.addr, align 8, !dbg !5271
  %match_flags = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %0, i32 0, i32 0, !dbg !5273
  %1 = load i8, i8* %match_flags, align 1, !dbg !5273
  %conv = zext i8 %1 to i32, !dbg !5271
  %and = and i32 %conv, 1, !dbg !5274
  %tobool = icmp ne i32 %and, 0, !dbg !5274
  br i1 %tobool, label %if.then, label %if.end20, !dbg !5275

if.then:                                          ; preds = %entry
  %2 = load %struct.memstick_device_id*, %struct.memstick_device_id** %id.addr, align 8, !dbg !5276
  %type = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %2, i32 0, i32 1, !dbg !5279
  %3 = load i8, i8* %type, align 1, !dbg !5279
  %conv1 = zext i8 %3 to i32, !dbg !5276
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5280
  %id2 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %4, i32 0, i32 0, !dbg !5281
  %type3 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id2, i32 0, i32 1, !dbg !5282
  %5 = load i8, i8* %type3, align 1, !dbg !5282
  %conv4 = zext i8 %5 to i32, !dbg !5280
  %cmp = icmp eq i32 %conv1, %conv4, !dbg !5283
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5284

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.memstick_device_id*, %struct.memstick_device_id** %id.addr, align 8, !dbg !5285
  %category = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %6, i32 0, i32 2, !dbg !5286
  %7 = load i8, i8* %category, align 1, !dbg !5286
  %conv6 = zext i8 %7 to i32, !dbg !5285
  %8 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5287
  %id7 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %8, i32 0, i32 0, !dbg !5288
  %category8 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id7, i32 0, i32 2, !dbg !5289
  %9 = load i8, i8* %category8, align 2, !dbg !5289
  %conv9 = zext i8 %9 to i32, !dbg !5287
  %cmp10 = icmp eq i32 %conv6, %conv9, !dbg !5290
  br i1 %cmp10, label %land.lhs.true12, label %if.end, !dbg !5291

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = load %struct.memstick_device_id*, %struct.memstick_device_id** %id.addr, align 8, !dbg !5292
  %class = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %10, i32 0, i32 3, !dbg !5293
  %11 = load i8, i8* %class, align 1, !dbg !5293
  %conv13 = zext i8 %11 to i32, !dbg !5292
  %12 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5294
  %id14 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %12, i32 0, i32 0, !dbg !5295
  %class15 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id14, i32 0, i32 3, !dbg !5296
  %13 = load i8, i8* %class15, align 1, !dbg !5296
  %conv16 = zext i8 %13 to i32, !dbg !5294
  %cmp17 = icmp eq i32 %conv13, %conv16, !dbg !5297
  br i1 %cmp17, label %if.then19, label %if.end, !dbg !5298

if.then19:                                        ; preds = %land.lhs.true12
  store i32 1, i32* %retval, align 4, !dbg !5299
  br label %return, !dbg !5299

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true, %if.then
  br label %if.end20, !dbg !5300

if.end20:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !5301
  br label %return, !dbg !5301

return:                                           ; preds = %if.end20, %if.then19
  %14 = load i32, i32* %retval, align 4, !dbg !5302
  ret i32 %14, !dbg !5302
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put(%struct.device* %dev) #0 !dbg !5303 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5306
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) #8, !dbg !5307
  ret i32 %call, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5309 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  ret i1 true, !dbg !5317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5318 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  ret void, !dbg !5328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !5329 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5334
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5336
  %1 = load i8*, i8** %init_name, align 8, !dbg !5336
  %tobool = icmp ne i8* %1, null, !dbg !5334
  br i1 %tobool, label %if.then, label %if.end, !dbg !5337

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5338
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5339
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5339
  store i8* %3, i8** %retval, align 8, !dbg !5340
  br label %return, !dbg !5340

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5341
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5342
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !5343
  store i8* %call, i8** %retval, align 8, !dbg !5344
  br label %return, !dbg !5344

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5345
  ret i8* %5, !dbg !5345
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @memstick_free_card(%struct.device* %dev) #0 !dbg !5346 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5351, metadata !DIExpression()), !dbg !5353
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5353
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5353
  store i8* %1, i8** %__mptr, align 8, !dbg !5353
  br label %do.body, !dbg !5353

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5354

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5353
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5353
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5353
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5354
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5353
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5350
  %5 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5356
  %6 = bitcast %struct.memstick_dev* %5 to i8*, !dbg !5356
  call void @kfree(i8* %6) #8, !dbg !5357
  ret void, !dbg !5358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_dummy_check(%struct.memstick_dev* %card) #0 !dbg !5359 {
entry:
  %card.addr = alloca %struct.memstick_dev*, align 8
  store %struct.memstick_dev* %card, %struct.memstick_dev** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  ret i32 0, !dbg !5362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !3977 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5365
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !5366
  store i32 0, i32* %done, align 8, !dbg !5367
  br label %do.body, !dbg !5368

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5369
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !5369
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #8, !dbg !5369
  br label %do.end, !dbg !5369

do.end:                                           ; preds = %do.body
  ret void, !dbg !5371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @h_memstick_read_dev_id(%struct.memstick_dev* %card, %struct.memstick_request** %mrq) #0 !dbg !5372 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca %struct.memstick_dev*, align 8
  %mrq.addr = alloca %struct.memstick_request**, align 8
  %id_reg = alloca %struct.ms_id_register, align 1
  store %struct.memstick_dev* %card, %struct.memstick_dev** %card.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  store %struct.memstick_request** %mrq, %struct.memstick_request*** %mrq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.memstick_request*** %mrq.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  call void @llvm.dbg.declare(metadata %struct.ms_id_register* %id_reg, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !5379
  %1 = load %struct.memstick_request*, %struct.memstick_request** %0, align 8, !dbg !5381
  %tobool = icmp ne %struct.memstick_request* %1, null, !dbg !5382
  br i1 %tobool, label %if.else, label %if.then, !dbg !5383

if.then:                                          ; preds = %entry
  %2 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5384
  %current_mrq = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %2, i32 0, i32 4, !dbg !5386
  %3 = bitcast %struct.ms_id_register* %id_reg to i8*, !dbg !5387
  call void @memstick_init_req(%struct.memstick_request* %current_mrq, i8 zeroext 4, i8* %3, i64 4) #8, !dbg !5388
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5389
  %current_mrq1 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %4, i32 0, i32 4, !dbg !5390
  %5 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !5391
  store %struct.memstick_request* %current_mrq1, %struct.memstick_request** %5, align 8, !dbg !5392
  store i32 0, i32* %retval, align 4, !dbg !5393
  br label %return, !dbg !5393

if.else:                                          ; preds = %entry
  %6 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !5394
  %7 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8, !dbg !5397
  %error = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %7, i32 0, i32 3, !dbg !5398
  %8 = load i32, i32* %error, align 4, !dbg !5398
  %tobool2 = icmp ne i32 %8, 0, !dbg !5399
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5400

if.then3:                                         ; preds = %if.else
  %9 = bitcast %struct.ms_id_register* %id_reg to i8*, !dbg !5401
  %10 = load %struct.memstick_request**, %struct.memstick_request*** %mrq.addr, align 8, !dbg !5403
  %11 = load %struct.memstick_request*, %struct.memstick_request** %10, align 8, !dbg !5404
  %12 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %11, i32 0, i32 4, !dbg !5405
  %13 = bitcast %union.anon.66* %12 to %struct.anon.67*, !dbg !5405
  %data = getelementptr inbounds %struct.anon.67, %struct.anon.67* %13, i32 0, i32 1, !dbg !5405
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %data, i64 0, i64 0, !dbg !5401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %arraydecay, i64 4, i1 false), !dbg !5401
  %14 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5406
  %id = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %14, i32 0, i32 0, !dbg !5407
  %match_flags = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id, i32 0, i32 0, !dbg !5408
  store i8 1, i8* %match_flags, align 8, !dbg !5409
  %type = getelementptr inbounds %struct.ms_id_register, %struct.ms_id_register* %id_reg, i32 0, i32 0, !dbg !5410
  %15 = load i8, i8* %type, align 1, !dbg !5410
  %16 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5411
  %id4 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %16, i32 0, i32 0, !dbg !5412
  %type5 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id4, i32 0, i32 1, !dbg !5413
  store i8 %15, i8* %type5, align 1, !dbg !5414
  %category = getelementptr inbounds %struct.ms_id_register, %struct.ms_id_register* %id_reg, i32 0, i32 2, !dbg !5415
  %17 = load i8, i8* %category, align 1, !dbg !5415
  %18 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5416
  %id6 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %18, i32 0, i32 0, !dbg !5417
  %category7 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id6, i32 0, i32 2, !dbg !5418
  store i8 %17, i8* %category7, align 2, !dbg !5419
  %class = getelementptr inbounds %struct.ms_id_register, %struct.ms_id_register* %id_reg, i32 0, i32 3, !dbg !5420
  %19 = load i8, i8* %class, align 1, !dbg !5420
  %20 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5421
  %id8 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %20, i32 0, i32 0, !dbg !5422
  %class9 = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id8, i32 0, i32 3, !dbg !5423
  store i8 %19, i8* %class9, align 1, !dbg !5424
  br label %if.end, !dbg !5425

if.end:                                           ; preds = %if.then3, %if.else
  %21 = load %struct.memstick_dev*, %struct.memstick_dev** %card.addr, align 8, !dbg !5426
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %21, i32 0, i32 3, !dbg !5427
  call void @complete(%struct.completion* %mrq_complete) #8, !dbg !5428
  store i32 -11, i32* %retval, align 4, !dbg !5429
  br label %return, !dbg !5429

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !5430
  ret i32 %22, !dbg !5430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5431 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5438
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5439
  %1 = load i8*, i8** %name, align 8, !dbg !5439
  ret i8* %1, !dbg !5440
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @memstick_free(%struct.device* %dev) #0 !dbg !5441 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %host = alloca %struct.memstick_host*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_host*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  call void @llvm.dbg.declare(metadata %struct.memstick_host** %host, metadata !5444, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5446, metadata !DIExpression()), !dbg !5448
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5448
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5448
  store i8* %1, i8** %__mptr, align 8, !dbg !5448
  br label %do.body, !dbg !5448

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5449

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5448
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !5448
  %3 = bitcast i8* %add.ptr to %struct.memstick_host*, !dbg !5448
  store %struct.memstick_host* %3, %struct.memstick_host** %tmp, align 8, !dbg !5449
  %4 = load %struct.memstick_host*, %struct.memstick_host** %tmp, align 8, !dbg !5448
  store %struct.memstick_host* %4, %struct.memstick_host** %host, align 8, !dbg !5445
  %5 = load %struct.memstick_host*, %struct.memstick_host** %host, align 8, !dbg !5451
  %6 = bitcast %struct.memstick_host* %5 to i8*, !dbg !5451
  call void @kfree(i8* %6) #8, !dbg !5452
  ret void, !dbg !5453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @local_lock_release(%struct.local_lock_t* %l) #0 !dbg !5454 {
entry:
  %l.addr = alloca %struct.local_lock_t*, align 8
  store %struct.local_lock_t* %l, %struct.local_lock_t** %l.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.local_lock_t** %l.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  ret void, !dbg !5459
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_bus_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !5460 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  %ms_drv = alloca %struct.memstick_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.memstick_driver*, align 8
  %ids = alloca %struct.memstick_device_id*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5461, metadata !DIExpression()), !dbg !5462
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !5463, metadata !DIExpression()), !dbg !5464
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5465, metadata !DIExpression()), !dbg !5466
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5467, metadata !DIExpression()), !dbg !5469
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5469
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5469
  store i8* %1, i8** %__mptr, align 8, !dbg !5469
  br label %do.body, !dbg !5469

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5470

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5469
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5469
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5469
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5470
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5469
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5466
  call void @llvm.dbg.declare(metadata %struct.memstick_driver** %ms_drv, metadata !5472, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5474, metadata !DIExpression()), !dbg !5476
  %5 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !5476
  %6 = bitcast %struct.device_driver* %5 to i8*, !dbg !5476
  store i8* %6, i8** %__mptr1, align 8, !dbg !5476
  br label %do.body2, !dbg !5476

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5477

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !5476
  %add.ptr5 = getelementptr i8, i8* %7, i64 -40, !dbg !5476
  %8 = bitcast i8* %add.ptr5 to %struct.memstick_driver*, !dbg !5476
  store %struct.memstick_driver* %8, %struct.memstick_driver** %tmp4, align 8, !dbg !5477
  %9 = load %struct.memstick_driver*, %struct.memstick_driver** %tmp4, align 8, !dbg !5476
  store %struct.memstick_driver* %9, %struct.memstick_driver** %ms_drv, align 8, !dbg !5473
  call void @llvm.dbg.declare(metadata %struct.memstick_device_id** %ids, metadata !5479, metadata !DIExpression()), !dbg !5480
  %10 = load %struct.memstick_driver*, %struct.memstick_driver** %ms_drv, align 8, !dbg !5481
  %id_table = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %10, i32 0, i32 0, !dbg !5482
  %11 = load %struct.memstick_device_id*, %struct.memstick_device_id** %id_table, align 8, !dbg !5482
  store %struct.memstick_device_id* %11, %struct.memstick_device_id** %ids, align 8, !dbg !5480
  %12 = load %struct.memstick_device_id*, %struct.memstick_device_id** %ids, align 8, !dbg !5483
  %tobool = icmp ne %struct.memstick_device_id* %12, null, !dbg !5483
  br i1 %tobool, label %if.then, label %if.end9, !dbg !5485

if.then:                                          ; preds = %do.end3
  br label %while.cond, !dbg !5486

while.cond:                                       ; preds = %if.end, %if.then
  %13 = load %struct.memstick_device_id*, %struct.memstick_device_id** %ids, align 8, !dbg !5488
  %match_flags = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %13, i32 0, i32 0, !dbg !5489
  %14 = load i8, i8* %match_flags, align 1, !dbg !5489
  %tobool6 = icmp ne i8 %14, 0, !dbg !5486
  br i1 %tobool6, label %while.body, label %while.end, !dbg !5486

while.body:                                       ; preds = %while.cond
  %15 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5490
  %16 = load %struct.memstick_device_id*, %struct.memstick_device_id** %ids, align 8, !dbg !5493
  %call = call i32 @memstick_dev_match(%struct.memstick_dev* %15, %struct.memstick_device_id* %16) #8, !dbg !5494
  %tobool7 = icmp ne i32 %call, 0, !dbg !5494
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !5495

if.then8:                                         ; preds = %while.body
  store i32 1, i32* %retval, align 4, !dbg !5496
  br label %return, !dbg !5496

if.end:                                           ; preds = %while.body
  %17 = load %struct.memstick_device_id*, %struct.memstick_device_id** %ids, align 8, !dbg !5497
  %incdec.ptr = getelementptr %struct.memstick_device_id, %struct.memstick_device_id* %17, i32 1, !dbg !5497
  store %struct.memstick_device_id* %incdec.ptr, %struct.memstick_device_id** %ids, align 8, !dbg !5497
  br label %while.cond, !dbg !5486, !llvm.loop !5498

while.end:                                        ; preds = %while.cond
  br label %if.end9, !dbg !5500

if.end9:                                          ; preds = %while.end, %do.end3
  store i32 0, i32* %retval, align 4, !dbg !5501
  br label %return, !dbg !5501

return:                                           ; preds = %if.end9, %if.then8
  %18 = load i32, i32* %retval, align 4, !dbg !5502
  ret i32 %18, !dbg !5502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !5503 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5508, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5510, metadata !DIExpression()), !dbg !5512
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5512
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5512
  store i8* %1, i8** %__mptr, align 8, !dbg !5512
  br label %do.body, !dbg !5512

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5513

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5512
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5512
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5512
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5513
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5512
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5509
  %5 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !5515
  %6 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5517
  %id = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %6, i32 0, i32 0, !dbg !5518
  %type = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id, i32 0, i32 1, !dbg !5519
  %7 = load i8, i8* %type, align 1, !dbg !5519
  %conv = zext i8 %7 to i32, !dbg !5517
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %conv) #8, !dbg !5520
  %tobool = icmp ne i32 %call, 0, !dbg !5520
  br i1 %tobool, label %if.then, label %if.end, !dbg !5521

if.then:                                          ; preds = %do.end
  store i32 -12, i32* %retval, align 4, !dbg !5522
  br label %return, !dbg !5522

if.end:                                           ; preds = %do.end
  %8 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !5523
  %9 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5525
  %id1 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %9, i32 0, i32 0, !dbg !5526
  %category = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id1, i32 0, i32 2, !dbg !5527
  %10 = load i8, i8* %category, align 2, !dbg !5527
  %conv2 = zext i8 %10 to i32, !dbg !5525
  %call3 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %conv2) #8, !dbg !5528
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5528
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5529

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end6:                                          ; preds = %if.end
  %11 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !5531
  %12 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5533
  %id7 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %12, i32 0, i32 0, !dbg !5534
  %class = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id7, i32 0, i32 3, !dbg !5535
  %13 = load i8, i8* %class, align 1, !dbg !5535
  %conv8 = zext i8 %13 to i32, !dbg !5533
  %call9 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %conv8) #8, !dbg !5536
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5536
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5537

if.then11:                                        ; preds = %if.end6
  store i32 -12, i32* %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

if.end12:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4, !dbg !5539
  br label %return, !dbg !5539

return:                                           ; preds = %if.end12, %if.then11, %if.then5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5540
  ret i32 %14, !dbg !5540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_device_probe(%struct.device* %dev) #0 !dbg !5541 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  %drv = alloca %struct.memstick_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.memstick_driver*, align 8
  %rc = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5544, metadata !DIExpression()), !dbg !5545
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5546, metadata !DIExpression()), !dbg !5548
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5548
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5548
  store i8* %1, i8** %__mptr, align 8, !dbg !5548
  br label %do.body, !dbg !5548

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5549

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5548
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5548
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5548
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5549
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5548
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5545
  call void @llvm.dbg.declare(metadata %struct.memstick_driver** %drv, metadata !5551, metadata !DIExpression()), !dbg !5552
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5553, metadata !DIExpression()), !dbg !5555
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5555
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !5555
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5555
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !5555
  store i8* %7, i8** %__mptr1, align 8, !dbg !5555
  br label %do.body2, !dbg !5555

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5556

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !5555
  %add.ptr5 = getelementptr i8, i8* %8, i64 -40, !dbg !5555
  %9 = bitcast i8* %add.ptr5 to %struct.memstick_driver*, !dbg !5555
  store %struct.memstick_driver* %9, %struct.memstick_driver** %tmp4, align 8, !dbg !5556
  %10 = load %struct.memstick_driver*, %struct.memstick_driver** %tmp4, align 8, !dbg !5555
  store %struct.memstick_driver* %10, %struct.memstick_driver** %drv, align 8, !dbg !5552
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5558, metadata !DIExpression()), !dbg !5559
  store i32 -19, i32* %rc, align 4, !dbg !5559
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5560
  %driver6 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 6, !dbg !5562
  %12 = load %struct.device_driver*, %struct.device_driver** %driver6, align 8, !dbg !5562
  %tobool = icmp ne %struct.device_driver* %12, null, !dbg !5560
  br i1 %tobool, label %land.lhs.true, label %if.end12, !dbg !5563

land.lhs.true:                                    ; preds = %do.end3
  %13 = load %struct.memstick_driver*, %struct.memstick_driver** %drv, align 8, !dbg !5564
  %probe = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %13, i32 0, i32 1, !dbg !5565
  %14 = load i32 (%struct.memstick_dev*)*, i32 (%struct.memstick_dev*)** %probe, align 8, !dbg !5565
  %tobool7 = icmp ne i32 (%struct.memstick_dev*)* %14, null, !dbg !5564
  br i1 %tobool7, label %if.then, label %if.end12, !dbg !5566

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.memstick_driver*, %struct.memstick_driver** %drv, align 8, !dbg !5567
  %probe8 = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %15, i32 0, i32 1, !dbg !5569
  %16 = load i32 (%struct.memstick_dev*)*, i32 (%struct.memstick_dev*)** %probe8, align 8, !dbg !5569
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5570
  %call = call i32 %16(%struct.memstick_dev* %17) #8, !dbg !5567
  store i32 %call, i32* %rc, align 4, !dbg !5571
  %18 = load i32, i32* %rc, align 4, !dbg !5572
  %tobool9 = icmp ne i32 %18, 0, !dbg !5572
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !5574

if.then10:                                        ; preds = %if.then
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5575
  %call11 = call %struct.device* @get_device(%struct.device* %19) #8, !dbg !5576
  br label %if.end, !dbg !5576

if.end:                                           ; preds = %if.then10, %if.then
  br label %if.end12, !dbg !5577

if.end12:                                         ; preds = %if.end, %land.lhs.true, %do.end3
  %20 = load i32, i32* %rc, align 4, !dbg !5578
  ret i32 %20, !dbg !5579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_device_remove(%struct.device* %dev) #0 !dbg !5580 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  %drv = alloca %struct.memstick_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.memstick_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5583, metadata !DIExpression()), !dbg !5584
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5585, metadata !DIExpression()), !dbg !5587
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5587
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5587
  store i8* %1, i8** %__mptr, align 8, !dbg !5587
  br label %do.body, !dbg !5587

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5588

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5587
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5587
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5587
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5588
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5587
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata %struct.memstick_driver** %drv, metadata !5590, metadata !DIExpression()), !dbg !5591
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5592, metadata !DIExpression()), !dbg !5594
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5594
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !5594
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5594
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !5594
  store i8* %7, i8** %__mptr1, align 8, !dbg !5594
  br label %do.body2, !dbg !5594

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5595

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !5594
  %add.ptr5 = getelementptr i8, i8* %8, i64 -40, !dbg !5594
  %9 = bitcast i8* %add.ptr5 to %struct.memstick_driver*, !dbg !5594
  store %struct.memstick_driver* %9, %struct.memstick_driver** %tmp4, align 8, !dbg !5595
  %10 = load %struct.memstick_driver*, %struct.memstick_driver** %tmp4, align 8, !dbg !5594
  store %struct.memstick_driver* %10, %struct.memstick_driver** %drv, align 8, !dbg !5591
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5597
  %driver6 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 6, !dbg !5599
  %12 = load %struct.device_driver*, %struct.device_driver** %driver6, align 8, !dbg !5599
  %tobool = icmp ne %struct.device_driver* %12, null, !dbg !5597
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5600

land.lhs.true:                                    ; preds = %do.end3
  %13 = load %struct.memstick_driver*, %struct.memstick_driver** %drv, align 8, !dbg !5601
  %remove = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %13, i32 0, i32 2, !dbg !5602
  %14 = load void (%struct.memstick_dev*)*, void (%struct.memstick_dev*)** %remove, align 8, !dbg !5602
  %tobool7 = icmp ne void (%struct.memstick_dev*)* %14, null, !dbg !5601
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5603

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.memstick_driver*, %struct.memstick_driver** %drv, align 8, !dbg !5604
  %remove8 = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %15, i32 0, i32 2, !dbg !5606
  %16 = load void (%struct.memstick_dev*)*, void (%struct.memstick_dev*)** %remove8, align 8, !dbg !5606
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5607
  call void %16(%struct.memstick_dev* %17) #8, !dbg !5604
  %18 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5608
  %dev9 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %18, i32 0, i32 9, !dbg !5609
  %driver10 = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 6, !dbg !5610
  store %struct.device_driver* null, %struct.device_driver** %driver10, align 8, !dbg !5611
  br label %if.end, !dbg !5612

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end3
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5613
  call void @put_device(%struct.device* %19) #8, !dbg !5614
  ret i32 0, !dbg !5615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_device_suspend(%struct.device* %dev, i32 %state.coerce) #0 !dbg !5616 {
entry:
  %retval = alloca i32, align 4
  %state = alloca %struct.pm_message, align 4
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  %drv = alloca %struct.memstick_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.memstick_driver*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0
  store i32 %state.coerce, i32* %coerce.dive, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata %struct.pm_message* %state, metadata !5619, metadata !DIExpression()), !dbg !5620
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5621, metadata !DIExpression()), !dbg !5622
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5623, metadata !DIExpression()), !dbg !5625
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5625
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5625
  store i8* %1, i8** %__mptr, align 8, !dbg !5625
  br label %do.body, !dbg !5625

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5626

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5625
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5625
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5625
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5626
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5625
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5622
  call void @llvm.dbg.declare(metadata %struct.memstick_driver** %drv, metadata !5628, metadata !DIExpression()), !dbg !5629
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5630, metadata !DIExpression()), !dbg !5632
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5632
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !5632
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5632
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !5632
  store i8* %7, i8** %__mptr1, align 8, !dbg !5632
  br label %do.body2, !dbg !5632

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5633

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !5632
  %add.ptr5 = getelementptr i8, i8* %8, i64 -40, !dbg !5632
  %9 = bitcast i8* %add.ptr5 to %struct.memstick_driver*, !dbg !5632
  store %struct.memstick_driver* %9, %struct.memstick_driver** %tmp4, align 8, !dbg !5633
  %10 = load %struct.memstick_driver*, %struct.memstick_driver** %tmp4, align 8, !dbg !5632
  store %struct.memstick_driver* %10, %struct.memstick_driver** %drv, align 8, !dbg !5629
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5635
  %driver6 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 6, !dbg !5637
  %12 = load %struct.device_driver*, %struct.device_driver** %driver6, align 8, !dbg !5637
  %tobool = icmp ne %struct.device_driver* %12, null, !dbg !5635
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5638

land.lhs.true:                                    ; preds = %do.end3
  %13 = load %struct.memstick_driver*, %struct.memstick_driver** %drv, align 8, !dbg !5639
  %suspend = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %13, i32 0, i32 3, !dbg !5640
  %14 = load i32 (%struct.memstick_dev*, i32)*, i32 (%struct.memstick_dev*, i32)** %suspend, align 8, !dbg !5640
  %tobool7 = icmp ne i32 (%struct.memstick_dev*, i32)* %14, null, !dbg !5639
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5641

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.memstick_driver*, %struct.memstick_driver** %drv, align 8, !dbg !5642
  %suspend8 = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %15, i32 0, i32 3, !dbg !5643
  %16 = load i32 (%struct.memstick_dev*, i32)*, i32 (%struct.memstick_dev*, i32)** %suspend8, align 8, !dbg !5643
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5644
  %coerce.dive9 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0, !dbg !5642
  %18 = load i32, i32* %coerce.dive9, align 4, !dbg !5642
  %call = call i32 %16(%struct.memstick_dev* %17, i32 %18) #8, !dbg !5642
  store i32 %call, i32* %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

if.end:                                           ; preds = %land.lhs.true, %do.end3
  store i32 0, i32* %retval, align 4, !dbg !5646
  br label %return, !dbg !5646

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5647
  ret i32 %19, !dbg !5647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @memstick_device_resume(%struct.device* %dev) #0 !dbg !5648 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  %drv = alloca %struct.memstick_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.memstick_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5651, metadata !DIExpression()), !dbg !5652
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5653, metadata !DIExpression()), !dbg !5655
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5655
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5655
  store i8* %1, i8** %__mptr, align 8, !dbg !5655
  br label %do.body, !dbg !5655

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5656

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5655
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5655
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5655
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5656
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5655
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5652
  call void @llvm.dbg.declare(metadata %struct.memstick_driver** %drv, metadata !5658, metadata !DIExpression()), !dbg !5659
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5660, metadata !DIExpression()), !dbg !5662
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5662
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !5662
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5662
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !5662
  store i8* %7, i8** %__mptr1, align 8, !dbg !5662
  br label %do.body2, !dbg !5662

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5663

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !5662
  %add.ptr5 = getelementptr i8, i8* %8, i64 -40, !dbg !5662
  %9 = bitcast i8* %add.ptr5 to %struct.memstick_driver*, !dbg !5662
  store %struct.memstick_driver* %9, %struct.memstick_driver** %tmp4, align 8, !dbg !5663
  %10 = load %struct.memstick_driver*, %struct.memstick_driver** %tmp4, align 8, !dbg !5662
  store %struct.memstick_driver* %10, %struct.memstick_driver** %drv, align 8, !dbg !5659
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5665
  %driver6 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 6, !dbg !5667
  %12 = load %struct.device_driver*, %struct.device_driver** %driver6, align 8, !dbg !5667
  %tobool = icmp ne %struct.device_driver* %12, null, !dbg !5665
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5668

land.lhs.true:                                    ; preds = %do.end3
  %13 = load %struct.memstick_driver*, %struct.memstick_driver** %drv, align 8, !dbg !5669
  %resume = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %13, i32 0, i32 4, !dbg !5670
  %14 = load i32 (%struct.memstick_dev*)*, i32 (%struct.memstick_dev*)** %resume, align 8, !dbg !5670
  %tobool7 = icmp ne i32 (%struct.memstick_dev*)* %14, null, !dbg !5669
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5671

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.memstick_driver*, %struct.memstick_driver** %drv, align 8, !dbg !5672
  %resume8 = getelementptr inbounds %struct.memstick_driver, %struct.memstick_driver* %15, i32 0, i32 4, !dbg !5673
  %16 = load i32 (%struct.memstick_dev*)*, i32 (%struct.memstick_dev*)** %resume8, align 8, !dbg !5673
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5674
  %call = call i32 %16(%struct.memstick_dev* %17) #8, !dbg !5672
  store i32 %call, i32* %retval, align 4, !dbg !5675
  br label %return, !dbg !5675

if.end:                                           ; preds = %land.lhs.true, %do.end3
  store i32 0, i32* %retval, align 4, !dbg !5676
  br label %return, !dbg !5676

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5677
  ret i32 %18, !dbg !5677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5678 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5681, metadata !DIExpression()), !dbg !5680
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5682, metadata !DIExpression()), !dbg !5680
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5683, metadata !DIExpression()), !dbg !5680
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5684, metadata !DIExpression()), !dbg !5686
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5686
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5686
  store i8* %1, i8** %__mptr, align 8, !dbg !5686
  br label %do.body, !dbg !5686

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5687

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5686
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5686
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5686
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5687
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5686
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5680
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5680
  %6 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5680
  %id = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %6, i32 0, i32 0, !dbg !5680
  %type = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id, i32 0, i32 1, !dbg !5680
  %7 = load i8, i8* %type, align 1, !dbg !5680
  %conv = zext i8 %7 to i32, !dbg !5680
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %conv) #8, !dbg !5680
  %conv1 = sext i32 %call to i64, !dbg !5680
  ret i64 %conv1, !dbg !5680
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @category_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5689 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5692, metadata !DIExpression()), !dbg !5691
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5693, metadata !DIExpression()), !dbg !5691
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5694, metadata !DIExpression()), !dbg !5691
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5695, metadata !DIExpression()), !dbg !5697
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5697
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5697
  store i8* %1, i8** %__mptr, align 8, !dbg !5697
  br label %do.body, !dbg !5697

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5698

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5697
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5697
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5697
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5698
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5697
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5691
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5691
  %6 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5691
  %id = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %6, i32 0, i32 0, !dbg !5691
  %category = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id, i32 0, i32 2, !dbg !5691
  %7 = load i8, i8* %category, align 2, !dbg !5691
  %conv = zext i8 %7 to i32, !dbg !5691
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %conv) #8, !dbg !5691
  %conv1 = sext i32 %call to i64, !dbg !5691
  ret i64 %conv1, !dbg !5691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @class_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5700 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %card = alloca %struct.memstick_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.memstick_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5703, metadata !DIExpression()), !dbg !5702
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5704, metadata !DIExpression()), !dbg !5702
  call void @llvm.dbg.declare(metadata %struct.memstick_dev** %card, metadata !5705, metadata !DIExpression()), !dbg !5702
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5706, metadata !DIExpression()), !dbg !5708
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5708
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5708
  store i8* %1, i8** %__mptr, align 8, !dbg !5708
  br label %do.body, !dbg !5708

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5709

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5708
  %add.ptr = getelementptr i8, i8* %2, i64 -120, !dbg !5708
  %3 = bitcast i8* %add.ptr to %struct.memstick_dev*, !dbg !5708
  store %struct.memstick_dev* %3, %struct.memstick_dev** %tmp, align 8, !dbg !5709
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %tmp, align 8, !dbg !5708
  store %struct.memstick_dev* %4, %struct.memstick_dev** %card, align 8, !dbg !5702
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5702
  %6 = load %struct.memstick_dev*, %struct.memstick_dev** %card, align 8, !dbg !5702
  %id = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %6, i32 0, i32 0, !dbg !5702
  %class = getelementptr inbounds %struct.memstick_device_id, %struct.memstick_device_id* %id, i32 0, i32 3, !dbg !5702
  %7 = load i8, i8* %class, align 1, !dbg !5702
  %conv = zext i8 %7 to i32, !dbg !5702
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %conv) #8, !dbg !5702
  %conv1 = sext i32 %call to i64, !dbg !5702
  ret i64 %conv1, !dbg !5702
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8*, i32, i32, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #3

; Function Attrs: noredzone
declare dso_local i32 @__class_register(%struct.class*, %struct.lock_class_key*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4019, !4020, !4021, !4022}
!llvm.ident = !{!4023}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_cmd_retries", scope: !2, file: !3, line: 22, type: !3963, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !178, globals: !3881, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/memstick/core/memstick.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !98, !117, !150, !157, !162}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !67, line: 44, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !73, line: 343, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !80, line: 524, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !80, line: 502, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memstick_param", file: !94, line: 200, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/memstick.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "MEMSTICK_POWER", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "MEMSTICK_INTERFACE", value: 2, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memstick_tpc", file: !94, line: 146, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!100 = !DIEnumerator(name: "MS_TPC_READ_MG_STATUS", value: 1, isUnsigned: true)
!101 = !DIEnumerator(name: "MS_TPC_READ_LONG_DATA", value: 2, isUnsigned: true)
!102 = !DIEnumerator(name: "MS_TPC_READ_SHORT_DATA", value: 3, isUnsigned: true)
!103 = !DIEnumerator(name: "MS_TPC_READ_MG_DATA", value: 3, isUnsigned: true)
!104 = !DIEnumerator(name: "MS_TPC_READ_REG", value: 4, isUnsigned: true)
!105 = !DIEnumerator(name: "MS_TPC_READ_QUAD_DATA", value: 5, isUnsigned: true)
!106 = !DIEnumerator(name: "MS_TPC_READ_IO_DATA", value: 5, isUnsigned: true)
!107 = !DIEnumerator(name: "MS_TPC_GET_INT", value: 7, isUnsigned: true)
!108 = !DIEnumerator(name: "MS_TPC_SET_RW_REG_ADRS", value: 8, isUnsigned: true)
!109 = !DIEnumerator(name: "MS_TPC_EX_SET_CMD", value: 9, isUnsigned: true)
!110 = !DIEnumerator(name: "MS_TPC_WRITE_QUAD_DATA", value: 10, isUnsigned: true)
!111 = !DIEnumerator(name: "MS_TPC_WRITE_IO_DATA", value: 10, isUnsigned: true)
!112 = !DIEnumerator(name: "MS_TPC_WRITE_REG", value: 11, isUnsigned: true)
!113 = !DIEnumerator(name: "MS_TPC_WRITE_SHORT_DATA", value: 12, isUnsigned: true)
!114 = !DIEnumerator(name: "MS_TPC_WRITE_MG_DATA", value: 12, isUnsigned: true)
!115 = !DIEnumerator(name: "MS_TPC_WRITE_LONG_DATA", value: 13, isUnsigned: true)
!116 = !DIEnumerator(name: "MS_TPC_SET_CMD", value: 14, isUnsigned: true)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 30, baseType: !119, size: 64, elements: !120)
!118 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!121 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!122 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!123 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!124 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!125 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!126 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!127 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!128 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!129 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!130 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!131 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!132 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!133 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!134 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!135 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!136 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!137 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!138 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!139 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!140 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!141 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!142 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!143 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!144 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!145 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!146 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!147 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!148 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!149 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !151, line: 305, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 10, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 308, baseType: !7, size: 32, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!164 = !DIEnumerator(name: "WQ_UNBOUND", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "WQ_FREEZABLE", value: 4, isUnsigned: true)
!166 = !DIEnumerator(name: "WQ_MEM_RECLAIM", value: 8, isUnsigned: true)
!167 = !DIEnumerator(name: "WQ_HIGHPRI", value: 16, isUnsigned: true)
!168 = !DIEnumerator(name: "WQ_CPU_INTENSIVE", value: 32, isUnsigned: true)
!169 = !DIEnumerator(name: "WQ_SYSFS", value: 64, isUnsigned: true)
!170 = !DIEnumerator(name: "WQ_POWER_EFFICIENT", value: 128, isUnsigned: true)
!171 = !DIEnumerator(name: "__WQ_DRAINING", value: 65536, isUnsigned: true)
!172 = !DIEnumerator(name: "__WQ_ORDERED", value: 131072, isUnsigned: true)
!173 = !DIEnumerator(name: "__WQ_LEGACY", value: 262144, isUnsigned: true)
!174 = !DIEnumerator(name: "__WQ_ORDERED_EXPLICIT", value: 524288, isUnsigned: true)
!175 = !DIEnumerator(name: "WQ_MAX_ACTIVE", value: 512, isUnsigned: true)
!176 = !DIEnumerator(name: "WQ_MAX_UNBOUND_PER_CPU", value: 4, isUnsigned: true)
!177 = !DIEnumerator(name: "WQ_DFL_ACTIVE", value: 256, isUnsigned: true)
!178 = !{!179, !181, !182, !184, !185, !192, !3789, !3864, !3868}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !180, line: 148, baseType: !7)
!180 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!181 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !180, line: 178, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !180, line: 179, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !188, file: !180, line: 179, baseType: !187, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memstick_host", file: !94, line: 271, size: 6656, elements: !194)
!194 = !{!195, !228, !229, !230, !241, !3788, !3853, !3854, !3855, !3859, !3863}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !193, file: !94, line: 272, baseType: !196, size: 192)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !197, line: 53, size: 192, elements: !198)
!197 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !211, !227}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !196, file: !197, line: 54, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !201, line: 13, baseType: !202)
!201 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !180, line: 175, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 173, size: 64, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !203, file: !180, line: 174, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !207, line: 22, baseType: !208)
!207 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !209, line: 30, baseType: !210)
!209 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !196, file: !197, line: 55, baseType: !212, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !213, line: 83, baseType: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !213, line: 71, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !213, line: 72, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !213, line: 72, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !217, file: !213, line: 73, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !213, line: 20, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !220, file: !213, line: 21, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !224, line: 25, baseType: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 25, elements: !226)
!226 = !{}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !196, file: !197, line: 59, baseType: !188, size: 128, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !193, file: !94, line: 273, baseType: !7, size: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !193, file: !94, line: 274, baseType: !7, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "media_checker", scope: !193, file: !94, line: 279, baseType: !231, size: 256, offset: 256)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !118, line: 102, size: 256, elements: !232)
!232 = !{!233, !234, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !118, line: 103, baseType: !200, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !231, file: !118, line: 104, baseType: !188, size: 128, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !231, file: !118, line: 105, baseType: !236, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !118, line: 21, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !193, file: !94, line: 280, baseType: !242, size: 5568, offset: 512)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !243)
!243 = !{!244, !3358, !3360, !3363, !3364, !3415, !3488, !3489, !3490, !3491, !3492, !3501, !3606, !3619, !3623, !3624, !3628, !3630, !3631, !3632, !3636, !3642, !3643, !3646, !3650, !3740, !3741, !3742, !3743, !3744, !3776, !3777, !3778, !3781, !3784, !3785, !3786, !3787}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !242, file: !73, line: 462, baseType: !245, size: 512)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !246, line: 64, size: 512, elements: !247)
!246 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!247 = !{!248, !251, !252, !254, !299, !3208, !3348, !3353, !3354, !3355, !3356, !3357}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !246, line: 65, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !245, file: !246, line: 66, baseType: !188, size: 128, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !246, line: 67, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !245, file: !246, line: 68, baseType: !255, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !246, line: 192, size: 704, elements: !257)
!257 = !{!258, !259, !260, !261}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !256, file: !246, line: 193, baseType: !188, size: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !256, file: !246, line: 194, baseType: !212, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !256, file: !246, line: 195, baseType: !245, size: 512, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !256, file: !246, line: 196, baseType: !262, size: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !246, line: 156, size: 192, elements: !265)
!265 = !{!266, !272, !277}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !264, file: !246, line: 157, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !255, !253}
!271 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !246, line: 158, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!249, !255, !253}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !264, file: !246, line: 159, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!271, !255, !253, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !246, line: 148, size: 20736, elements: !284)
!284 = !{!285, !289, !293, !294, !298}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !283, file: !246, line: 149, baseType: !286, size: 192)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 192, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 3)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !283, file: !246, line: 150, baseType: !290, size: 4096, offset: 192)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 4096, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !283, file: !246, line: 151, baseType: !271, size: 32, offset: 4288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !283, file: !246, line: 152, baseType: !295, size: 16384, offset: 4320)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 16384, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 2048)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !283, file: !246, line: 153, baseType: !271, size: 32, offset: 20704)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !245, file: !246, line: 69, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !246, line: 138, size: 448, elements: !302)
!302 = !{!303, !307, !335, !337, !3170, !3198, !3202}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !301, file: !246, line: 139, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !253}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !301, file: !246, line: 140, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !311, line: 230, size: 128, elements: !312)
!311 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!312 = !{!313, !328}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !310, file: !311, line: 231, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !253, !321, !182}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !180, line: 60, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !319, line: 73, baseType: !320)
!319 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !319, line: 15, baseType: !119)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !311, line: 30, size: 128, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !311, line: 31, baseType: !249, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !322, file: !311, line: 32, baseType: !326, size: 16, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !180, line: 19, baseType: !327)
!327 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !310, file: !311, line: 232, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!317, !253, !321, !249, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 55, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !319, line: 72, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !319, line: 16, baseType: !181)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !301, file: !246, line: 141, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !301, file: !246, line: 142, baseType: !338, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !311, line: 84, size: 320, elements: !342)
!342 = !{!343, !344, !348, !3167, !3168}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !311, line: 85, baseType: !249, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !341, file: !311, line: 86, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!326, !253, !321, !271}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !341, file: !311, line: 88, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!326, !253, !352, !271}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !311, line: 168, size: 448, elements: !354)
!354 = !{!355, !356, !357, !358, !3162, !3163}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !353, file: !311, line: 169, baseType: !322, size: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !353, file: !311, line: 170, baseType: !332, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !353, file: !311, line: 171, baseType: !184, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !353, file: !311, line: 172, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!317, !362, !253, !352, !182, !539, !332}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !364)
!364 = !{!365, !383, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3145, !3146, !3155, !3156, !3157, !3158, !3159, !3160, !3161}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !363, file: !44, line: 920, baseType: !366, size: 128)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !44, line: 917, size: 128, elements: !367)
!367 = !{!368, !374}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !366, file: !44, line: 918, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !370, line: 58, size: 64, elements: !371)
!370 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !370, line: 59, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !366, file: !44, line: 919, baseType: !375, size: 128, align: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !180, line: 216, size: 128, align: 64, elements: !376)
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !180, line: 217, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !375, file: !180, line: 218, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !378}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !363, file: !44, line: 921, baseType: !384, size: 128, offset: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !385, line: 8, size: 128, elements: !386)
!385 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!386 = !{!387, !391}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !384, file: !385, line: 9, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !390, line: 18, flags: DIFlagFwdDecl)
!390 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !384, file: !385, line: 10, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !390, line: 89, size: 1536, elements: !394)
!394 = !{!395, !396, !406, !414, !415, !436, !3095, !3097, !3109, !3110, !3111, !3112, !3113, !3119, !3120, !3121}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !393, file: !390, line: 91, baseType: !7, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !393, file: !390, line: 92, baseType: !397, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !398, line: 277, baseType: !399)
!398 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !398, line: 277, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !399, file: !398, line: 277, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !398, line: 70, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !398, line: 65, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !403, file: !398, line: 66, baseType: !7, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !393, file: !390, line: 93, baseType: !407, size: 128, offset: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !408, line: 38, size: 128, elements: !409)
!408 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !408, line: 39, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !407, file: !408, line: 39, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !393, file: !390, line: 94, baseType: !392, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !393, file: !390, line: 95, baseType: !416, size: 128, offset: 256)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !390, line: 47, size: 128, elements: !417)
!417 = !{!418, !432}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !390, line: 48, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !390, line: 48, size: 64, elements: !420)
!420 = !{!421, !428}
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !390, line: 49, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !419, file: !390, line: 49, size: 64, elements: !423)
!423 = !{!424, !427}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !422, file: !390, line: 50, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !207, line: 21, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !209, line: 27, baseType: !7)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !422, file: !390, line: 50, baseType: !425, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !419, file: !390, line: 52, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !207, line: 23, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !209, line: 31, baseType: !431)
!431 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !416, file: !390, line: 54, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !393, file: !390, line: 96, baseType: !437, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !439)
!439 = !{!440, !441, !442, !450, !457, !458, !604, !2806, !2807, !2808, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !3071, !3079, !3080, !3081, !3091, !3092, !3093, !3094}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !438, file: !44, line: 611, baseType: !326, size: 16)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !438, file: !44, line: 612, baseType: !327, size: 16, offset: 16)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !438, file: !44, line: 613, baseType: !443, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !444, line: 23, baseType: !445)
!444 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 21, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !444, line: 22, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !180, line: 32, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !319, line: 49, baseType: !7)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !438, file: !44, line: 614, baseType: !451, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !444, line: 28, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 26, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !452, file: !444, line: 27, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !180, line: 33, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !319, line: 50, baseType: !7)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !438, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !438, file: !44, line: 622, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !462)
!462 = !{!463, !467, !480, !484, !490, !494, !500, !504, !508, !512, !516, !517, !523, !527, !551, !580, !584, !590, !595, !599, !600}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !461, file: !44, line: 1865, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!392, !437, !392, !7}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !461, file: !44, line: 1866, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!249, !392, !437, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !473, line: 10, size: 128, elements: !474)
!473 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!474 = !{!475, !479}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !472, file: !473, line: 11, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !184}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !472, file: !473, line: 12, baseType: !184, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !461, file: !44, line: 1867, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!271, !437, !271}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !461, file: !44, line: 1868, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !437, !271}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !461, file: !44, line: 1870, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!271, !392, !182, !271}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !461, file: !44, line: 1872, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!271, !437, !392, !326, !498}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !180, line: 30, baseType: !499)
!499 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !461, file: !44, line: 1873, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!271, !392, !437, !392}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !461, file: !44, line: 1874, baseType: !505, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!271, !437, !392}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !461, file: !44, line: 1875, baseType: !509, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!271, !437, !392, !249}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !461, file: !44, line: 1876, baseType: !513, size: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!271, !437, !392, !326}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !461, file: !44, line: 1877, baseType: !505, size: 64, offset: 640)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !461, file: !44, line: 1878, baseType: !518, size: 64, offset: 704)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!271, !437, !392, !326, !521}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !180, line: 16, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !180, line: 13, baseType: !425)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !461, file: !44, line: 1879, baseType: !524, size: 64, offset: 768)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!271, !437, !392, !437, !392, !7}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !461, file: !44, line: 1881, baseType: !528, size: 64, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!271, !392, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !541, !548, !549, !550}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !532, file: !44, line: 220, baseType: !7, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !532, file: !44, line: 221, baseType: !326, size: 16, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !532, file: !44, line: 222, baseType: !443, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !532, file: !44, line: 223, baseType: !451, size: 32, offset: 96)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !532, file: !44, line: 224, baseType: !539, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !180, line: 46, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !319, line: 88, baseType: !210)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !532, file: !44, line: 225, baseType: !542, size: 128, offset: 192)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !543, line: 13, size: 128, elements: !544)
!543 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!544 = !{!545, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !542, file: !543, line: 14, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !543, line: 8, baseType: !208)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !542, file: !543, line: 15, baseType: !119, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !532, file: !44, line: 226, baseType: !542, size: 128, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !532, file: !44, line: 227, baseType: !542, size: 128, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !532, file: !44, line: 234, baseType: !362, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !461, file: !44, line: 1882, baseType: !552, size: 64, offset: 896)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!271, !555, !557, !425, !7}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !559, line: 22, size: 1152, elements: !560)
!559 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !562, !563, !564, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !558, file: !559, line: 23, baseType: !425, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !558, file: !559, line: 24, baseType: !326, size: 16, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !558, file: !559, line: 25, baseType: !7, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !558, file: !559, line: 26, baseType: !565, size: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !180, line: 104, baseType: !425)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !558, file: !559, line: 27, baseType: !429, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !558, file: !559, line: 28, baseType: !429, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !558, file: !559, line: 37, baseType: !429, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !558, file: !559, line: 38, baseType: !521, size: 32, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !558, file: !559, line: 39, baseType: !521, size: 32, offset: 352)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !558, file: !559, line: 40, baseType: !443, size: 32, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !558, file: !559, line: 41, baseType: !451, size: 32, offset: 416)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !558, file: !559, line: 42, baseType: !539, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !558, file: !559, line: 43, baseType: !542, size: 128, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !558, file: !559, line: 44, baseType: !542, size: 128, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !558, file: !559, line: 45, baseType: !542, size: 128, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !558, file: !559, line: 46, baseType: !542, size: 128, offset: 896)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !558, file: !559, line: 47, baseType: !429, size: 64, offset: 1024)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !558, file: !559, line: 48, baseType: !429, size: 64, offset: 1088)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !461, file: !44, line: 1883, baseType: !581, size: 64, offset: 960)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!317, !392, !182, !332}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !461, file: !44, line: 1884, baseType: !585, size: 64, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!271, !437, !588, !429, !429}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !461, file: !44, line: 1886, baseType: !591, size: 64, offset: 1088)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!271, !437, !594, !271}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !461, file: !44, line: 1887, baseType: !596, size: 64, offset: 1152)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!271, !437, !392, !362, !7, !326}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !461, file: !44, line: 1890, baseType: !513, size: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !461, file: !44, line: 1891, baseType: !601, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!271, !437, !488, !271}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !438, file: !44, line: 623, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !662, !2413, !2495, !2578, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2594, !2598, !2599, !2602, !2603, !2606, !2607, !2608, !2649, !2676, !2677, !2678, !2679, !2680, !2681, !2684, !2686, !2693, !2694, !2696, !2697, !2698, !2757, !2758, !2773, !2774, !2775, !2776, !2777, !2780, !2781, !2782, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !606, file: !44, line: 1417, baseType: !188, size: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !606, file: !44, line: 1418, baseType: !521, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !606, file: !44, line: 1419, baseType: !435, size: 8, offset: 160)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !606, file: !44, line: 1420, baseType: !181, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !606, file: !44, line: 1421, baseType: !539, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !606, file: !44, line: 1422, baseType: !614, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !616)
!616 = !{!617, !618, !619, !625, !629, !633, !637, !641, !642, !652, !655, !656, !657, !659, !660, !661}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !615, file: !44, line: 2229, baseType: !249, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !615, file: !44, line: 2230, baseType: !271, size: 32, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !615, file: !44, line: 2238, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!271, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !615, file: !44, line: 2239, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !615, file: !44, line: 2240, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!392, !614, !271, !249, !184}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !615, file: !44, line: 2242, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !605}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !615, file: !44, line: 2243, baseType: !638, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !640, line: 76, flags: DIFlagFwdDecl)
!640 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !44, line: 2244, baseType: !614, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !615, file: !44, line: 2245, baseType: !643, size: 64, offset: 512)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !180, line: 182, size: 64, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !643, file: !180, line: 183, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !180, line: 186, size: 128, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !647, file: !180, line: 187, baseType: !646, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !647, file: !180, line: 187, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !615, file: !44, line: 2247, baseType: !653, offset: 576)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !654, line: 187, elements: !226)
!654 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !615, file: !44, line: 2248, baseType: !653, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !615, file: !44, line: 2249, baseType: !653, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !615, file: !44, line: 2250, baseType: !658, offset: 576)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, elements: !287)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !615, file: !44, line: 2252, baseType: !653, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !615, file: !44, line: 2253, baseType: !653, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !615, file: !44, line: 2254, baseType: !653, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !606, file: !44, line: 1423, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !666)
!666 = !{!667, !671, !675, !676, !680, !686, !690, !691, !692, !696, !700, !701, !702, !703, !709, !714, !715, !722, !723, !724, !725, !2397, !2412}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !665, file: !44, line: 1936, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!437, !605}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !665, file: !44, line: 1937, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !437}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !665, file: !44, line: 1938, baseType: !672, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !665, file: !44, line: 1940, baseType: !677, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !437, !271}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !665, file: !44, line: 1941, baseType: !681, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!271, !437, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !665, file: !44, line: 1942, baseType: !687, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!271, !437}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !665, file: !44, line: 1943, baseType: !672, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !665, file: !44, line: 1944, baseType: !634, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !665, file: !44, line: 1945, baseType: !693, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!271, !605, !271}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !665, file: !44, line: 1946, baseType: !697, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!271, !605}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !665, file: !44, line: 1947, baseType: !697, size: 64, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !665, file: !44, line: 1948, baseType: !697, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !665, file: !44, line: 1949, baseType: !697, size: 64, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !665, file: !44, line: 1950, baseType: !704, size: 64, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!271, !392, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !665, file: !44, line: 1951, baseType: !710, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!271, !605, !713, !182}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !665, file: !44, line: 1952, baseType: !634, size: 64, offset: 960)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !665, file: !44, line: 1954, baseType: !716, size: 64, offset: 1024)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!271, !719, !392}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !721, line: 539, flags: DIFlagFwdDecl)
!721 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!722 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !665, file: !44, line: 1955, baseType: !716, size: 64, offset: 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !665, file: !44, line: 1956, baseType: !716, size: 64, offset: 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !665, file: !44, line: 1957, baseType: !716, size: 64, offset: 1216)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !665, file: !44, line: 1963, baseType: !726, size: 64, offset: 1280)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!271, !605, !729, !179}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !731, line: 68, size: 512, align: 128, elements: !732)
!731 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!732 = !{!733, !734, !2389, !2396}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !731, line: 69, baseType: !181, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !731, line: 77, baseType: !735, size: 320, offset: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !730, file: !731, line: 77, size: 320, elements: !736)
!736 = !{!737, !917, !922, !950, !958, !964, !2320, !2388}
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 78, baseType: !738, size: 320)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 78, size: 320, elements: !739)
!739 = !{!740, !741, !915, !916}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !738, file: !731, line: 84, baseType: !188, size: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !738, file: !731, line: 86, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !744)
!744 = !{!745, !746, !753, !754, !759, !774, !783, !784, !785, !786, !908, !909, !912, !913, !914}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !743, file: !44, line: 452, baseType: !437, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !743, file: !44, line: 453, baseType: !747, size: 128, offset: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !748, line: 292, size: 128, elements: !749)
!748 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !747, file: !748, line: 293, baseType: !212)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !747, file: !748, line: 295, baseType: !179, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !747, file: !748, line: 296, baseType: !184, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !743, file: !44, line: 454, baseType: !179, size: 32, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !743, file: !44, line: 455, baseType: !755, size: 32, offset: 224)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !180, line: 168, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 166, size: 32, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !756, file: !180, line: 167, baseType: !271, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !743, file: !44, line: 460, baseType: !760, size: 128, offset: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !761, line: 125, size: 128, elements: !762)
!761 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !773}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !760, file: !761, line: 126, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !761, line: 31, size: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !764, file: !761, line: 32, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !761, line: 24, size: 192, align: 64, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !768, file: !761, line: 25, baseType: !181, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !768, file: !761, line: 26, baseType: !767, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !768, file: !761, line: 27, baseType: !767, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !760, file: !761, line: 127, baseType: !767, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !743, file: !44, line: 461, baseType: !775, size: 256, offset: 384)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !776, line: 35, size: 256, elements: !777)
!776 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !779, !780, !782}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !775, file: !776, line: 36, baseType: !200, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !775, file: !776, line: 42, baseType: !200, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !775, file: !776, line: 46, baseType: !781, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !213, line: 29, baseType: !220)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !775, file: !776, line: 47, baseType: !188, size: 128, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !743, file: !44, line: 462, baseType: !181, size: 64, offset: 640)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !743, file: !44, line: 463, baseType: !181, size: 64, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !743, file: !44, line: 464, baseType: !181, size: 64, offset: 768)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !743, file: !44, line: 465, baseType: !787, size: 64, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !790)
!790 = !{!791, !795, !799, !803, !807, !811, !817, !823, !827, !832, !836, !840, !844, !872, !876, !882, !883, !884, !888, !893, !897, !904}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !789, file: !44, line: 368, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!271, !729, !684}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !789, file: !44, line: 369, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!271, !362, !729}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !789, file: !44, line: 372, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!271, !742, !684}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !789, file: !44, line: 375, baseType: !804, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!271, !729}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !789, file: !44, line: 381, baseType: !808, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!271, !362, !742, !187, !7}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !789, file: !44, line: 383, baseType: !812, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !815}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !789, file: !44, line: 385, baseType: !818, size: 64, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!271, !362, !742, !539, !7, !7, !821, !822}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !789, file: !44, line: 388, baseType: !824, size: 64, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!271, !362, !742, !539, !7, !7, !729, !184}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !789, file: !44, line: 393, baseType: !828, size: 64, offset: 512)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!831, !742, !831}
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !180, line: 125, baseType: !429)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !789, file: !44, line: 394, baseType: !833, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !729, !7, !7}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !789, file: !44, line: 395, baseType: !837, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!271, !729, !179}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !789, file: !44, line: 396, baseType: !841, size: 64, offset: 704)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !729}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !789, file: !44, line: 397, baseType: !845, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!317, !848, !870}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !850)
!850 = !{!851, !852, !853, !857, !858, !859, !862, !863}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !849, file: !44, line: 321, baseType: !362, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !849, file: !44, line: 326, baseType: !539, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !849, file: !44, line: 327, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !848, !119, !119}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !849, file: !44, line: 328, baseType: !184, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !849, file: !44, line: 329, baseType: !271, size: 32, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !849, file: !44, line: 330, baseType: !860, size: 16, offset: 288)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !207, line: 19, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !209, line: 24, baseType: !327)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !849, file: !44, line: 331, baseType: !860, size: 16, offset: 304)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !44, line: 332, baseType: !864, size: 64, offset: 320)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !44, line: 332, size: 64, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !864, file: !44, line: 333, baseType: !7, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !864, file: !44, line: 334, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !789, file: !44, line: 402, baseType: !873, size: 64, offset: 832)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!271, !742, !729, !729, !5}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !789, file: !44, line: 404, baseType: !877, size: 64, offset: 896)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!498, !729, !880}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !881, line: 305, baseType: !7)
!881 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!882 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !789, file: !44, line: 405, baseType: !841, size: 64, offset: 960)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !789, file: !44, line: 406, baseType: !804, size: 64, offset: 1024)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !789, file: !44, line: 407, baseType: !885, size: 64, offset: 1088)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!271, !729, !181, !181}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !789, file: !44, line: 409, baseType: !889, size: 64, offset: 1152)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !729, !892, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !789, file: !44, line: 410, baseType: !894, size: 64, offset: 1216)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!271, !742, !729}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !789, file: !44, line: 413, baseType: !898, size: 64, offset: 1280)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!271, !901, !362, !903}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !789, file: !44, line: 415, baseType: !905, size: 64, offset: 1344)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !362}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !44, line: 466, baseType: !181, size: 64, offset: 896)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !743, file: !44, line: 467, baseType: !910, size: 32, offset: 960)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !911, line: 8, baseType: !425)
!911 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!912 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !743, file: !44, line: 468, baseType: !212, offset: 992)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !743, file: !44, line: 469, baseType: !188, size: 128, offset: 1024)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !743, file: !44, line: 470, baseType: !184, size: 64, offset: 1152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !738, file: !731, line: 87, baseType: !181, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !738, file: !731, line: 94, baseType: !181, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 96, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 96, size: 64, elements: !919)
!919 = !{!920}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !918, file: !731, line: 101, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !180, line: 143, baseType: !429)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 103, baseType: !923, size: 320)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 103, size: 320, elements: !924)
!924 = !{!925, !935, !938, !939}
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !731, line: 104, baseType: !926, size: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !731, line: 104, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !926, file: !731, line: 105, baseType: !188, size: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !731, line: 106, baseType: !930, size: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !731, line: 106, size: 128, elements: !931)
!931 = !{!932, !933, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !930, file: !731, line: 107, baseType: !729, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !930, file: !731, line: 109, baseType: !271, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !930, file: !731, line: 110, baseType: !271, size: 32, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !923, file: !731, line: 117, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !731, line: 117, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !923, file: !731, line: 119, baseType: !184, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !731, line: 120, baseType: !940, size: 64, offset: 256)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !731, line: 120, size: 64, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !940, file: !731, line: 121, baseType: !184, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !940, file: !731, line: 122, baseType: !181, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !731, line: 123, baseType: !945, size: 32)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !731, line: 123, size: 32, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !945, file: !731, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !945, file: !731, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !945, file: !731, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 130, baseType: !951, size: 192)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 130, size: 192, elements: !952)
!952 = !{!953, !954, !955, !956, !957}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !951, file: !731, line: 131, baseType: !181, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !951, file: !731, line: 134, baseType: !435, size: 8, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !951, file: !731, line: 135, baseType: !435, size: 8, offset: 72)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !951, file: !731, line: 136, baseType: !755, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !951, file: !731, line: 137, baseType: !7, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 139, baseType: !959, size: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 139, size: 256, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !959, file: !731, line: 140, baseType: !181, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !959, file: !731, line: 141, baseType: !755, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !959, file: !731, line: 143, baseType: !188, size: 128, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 145, baseType: !965, size: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 145, size: 256, elements: !966)
!966 = !{!967, !968, !970, !971, !2319}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !965, file: !731, line: 146, baseType: !181, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !965, file: !731, line: 147, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !721, line: 509, baseType: !729)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !965, file: !731, line: 148, baseType: !181, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !731, line: 149, baseType: !972, size: 64, offset: 192)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !731, line: 149, size: 64, elements: !973)
!973 = !{!974, !2318}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !972, file: !731, line: 150, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !731, line: 388, size: 7296, elements: !977)
!977 = !{!978, !2314}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !731, line: 389, baseType: !979, size: 7296)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !731, line: 389, size: 7296, elements: !980)
!980 = !{!981, !1099, !1100, !1101, !1105, !1106, !1107, !1108, !1109, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1150, !1158, !1161, !1201, !1202, !2298, !2299, !2302, !2303, !2304, !2307, !2308, !2309, !2312, !2313}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !979, file: !731, line: 390, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !731, line: 305, size: 1472, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990, !991, !992, !999, !1000, !1005, !1006, !1009, !1093, !1094, !1095, !1096, !1097}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !983, file: !731, line: 308, baseType: !181, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !983, file: !731, line: 309, baseType: !181, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !983, file: !731, line: 313, baseType: !982, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !983, file: !731, line: 313, baseType: !982, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !983, file: !731, line: 315, baseType: !768, size: 192, align: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !983, file: !731, line: 323, baseType: !181, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !983, file: !731, line: 327, baseType: !975, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !983, file: !731, line: 333, baseType: !993, size: 64, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !721, line: 284, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !721, line: 284, size: 64, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !994, file: !721, line: 284, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !998, line: 19, baseType: !181)
!998 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !983, file: !731, line: 334, baseType: !181, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !983, file: !731, line: 343, baseType: !1001, size: 256, offset: 704)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !731, line: 340, size: 256, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1001, file: !731, line: 341, baseType: !768, size: 192, align: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1001, file: !731, line: 342, baseType: !181, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !983, file: !731, line: 351, baseType: !188, size: 128, offset: 960)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !983, file: !731, line: 353, baseType: !1007, size: 64, offset: 1088)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !731, line: 353, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !983, file: !731, line: 356, baseType: !1010, size: 64, offset: 1152)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1013)
!1013 = !{!1014, !1018, !1019, !1023, !1027, !1067, !1071, !1075, !1079, !1080, !1081, !1085, !1089}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1012, file: !14, line: 558, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !982}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1012, file: !14, line: 559, baseType: !1015, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1012, file: !14, line: 560, baseType: !1020, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!271, !982, !181}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1012, file: !14, line: 561, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!271, !982}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1012, file: !14, line: 562, baseType: !1028, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !731, line: 682, baseType: !7)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1047, !1054, !1060, !1061, !1062, !1064, !1066}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1033, file: !14, line: 509, baseType: !982, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1033, file: !14, line: 511, baseType: !179, size: 32, offset: 96)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1033, file: !14, line: 512, baseType: !181, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1033, file: !14, line: 513, baseType: !181, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1033, file: !14, line: 514, baseType: !1041, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !721, line: 385, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 385, size: 64, elements: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1043, file: !721, line: 385, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !998, line: 15, baseType: !181)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1033, file: !14, line: 516, baseType: !1048, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !721, line: 359, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 359, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1050, file: !721, line: 359, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !998, line: 16, baseType: !181)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1033, file: !14, line: 519, baseType: !1055, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !998, line: 21, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !998, line: 21, size: 64, elements: !1057)
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1056, file: !998, line: 21, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !998, line: 14, baseType: !181)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1033, file: !14, line: 521, baseType: !729, size: 64, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1033, file: !14, line: 522, baseType: !729, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1033, file: !14, line: 528, baseType: !1063, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1033, file: !14, line: 532, baseType: !1065, size: 64, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1033, file: !14, line: 536, baseType: !969, size: 64, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1012, file: !14, line: 563, baseType: !1068, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1031, !1032, !13}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1012, file: !14, line: 565, baseType: !1072, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1032, !181, !181}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1012, file: !14, line: 567, baseType: !1076, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!181, !982}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1012, file: !14, line: 571, baseType: !1028, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1012, file: !14, line: 574, baseType: !1028, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1012, file: !14, line: 579, baseType: !1082, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!271, !982, !181, !184, !271, !271}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1012, file: !14, line: 585, baseType: !1086, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!249, !982}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1012, file: !14, line: 615, baseType: !1090, size: 64, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!729, !982, !181}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !983, file: !731, line: 359, baseType: !181, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !983, file: !731, line: 361, baseType: !362, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !983, file: !731, line: 362, baseType: !184, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !983, file: !731, line: 365, baseType: !200, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !983, file: !731, line: 373, baseType: !1098, offset: 1472)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !731, line: 296, elements: !226)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !979, file: !731, line: 391, baseType: !764, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !979, file: !731, line: 392, baseType: !429, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !979, file: !731, line: 394, baseType: !1102, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!181, !362, !181, !181, !181, !181}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !979, file: !731, line: 398, baseType: !181, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !979, file: !731, line: 399, baseType: !181, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !979, file: !731, line: 405, baseType: !181, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !979, file: !731, line: 406, baseType: !181, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !979, file: !731, line: 407, baseType: !1110, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !721, line: 286, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 286, size: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1112, file: !721, line: 286, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !998, line: 18, baseType: !181)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !979, file: !731, line: 416, baseType: !755, size: 32, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !979, file: !731, line: 428, baseType: !755, size: 32, offset: 608)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !979, file: !731, line: 437, baseType: !755, size: 32, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !979, file: !731, line: 447, baseType: !755, size: 32, offset: 672)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !979, file: !731, line: 450, baseType: !200, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !979, file: !731, line: 452, baseType: !271, size: 32, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !979, file: !731, line: 454, baseType: !212, offset: 800)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !979, file: !731, line: 457, baseType: !775, size: 256, offset: 832)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !979, file: !731, line: 459, baseType: !188, size: 128, offset: 1088)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !979, file: !731, line: 466, baseType: !181, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !979, file: !731, line: 467, baseType: !181, size: 64, offset: 1280)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !979, file: !731, line: 469, baseType: !181, size: 64, offset: 1344)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !979, file: !731, line: 470, baseType: !181, size: 64, offset: 1408)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !979, file: !731, line: 471, baseType: !202, size: 64, offset: 1472)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !979, file: !731, line: 472, baseType: !181, size: 64, offset: 1536)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !979, file: !731, line: 473, baseType: !181, size: 64, offset: 1600)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !979, file: !731, line: 474, baseType: !181, size: 64, offset: 1664)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !979, file: !731, line: 475, baseType: !181, size: 64, offset: 1728)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !979, file: !731, line: 477, baseType: !212, offset: 1792)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !979, file: !731, line: 478, baseType: !181, size: 64, offset: 1792)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !979, file: !731, line: 478, baseType: !181, size: 64, offset: 1856)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !979, file: !731, line: 478, baseType: !181, size: 64, offset: 1920)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !979, file: !731, line: 478, baseType: !181, size: 64, offset: 1984)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !979, file: !731, line: 479, baseType: !181, size: 64, offset: 2048)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !979, file: !731, line: 479, baseType: !181, size: 64, offset: 2112)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !979, file: !731, line: 479, baseType: !181, size: 64, offset: 2176)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !979, file: !731, line: 480, baseType: !181, size: 64, offset: 2240)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !979, file: !731, line: 480, baseType: !181, size: 64, offset: 2304)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !979, file: !731, line: 480, baseType: !181, size: 64, offset: 2368)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !979, file: !731, line: 480, baseType: !181, size: 64, offset: 2432)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !979, file: !731, line: 482, baseType: !1147, size: 2816, offset: 2496)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 2816, elements: !1148)
!1148 = !{!1149}
!1149 = !DISubrange(count: 44)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !979, file: !731, line: 488, baseType: !1151, size: 256, offset: 5312)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1152, line: 60, size: 256, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1151, file: !1152, line: 61, baseType: !1155, size: 256)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 4)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !979, file: !731, line: 490, baseType: !1159, size: 64, offset: 5568)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !731, line: 490, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !979, file: !731, line: 493, baseType: !1162, size: 896, offset: 5632)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1163, line: 53, baseType: !1164)
!1163 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1163, line: 13, size: 896, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1172, !1173, !1174, !1175, !1195, !1196, !1197}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1164, file: !1163, line: 18, baseType: !429, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1164, file: !1163, line: 28, baseType: !202, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1164, file: !1163, line: 31, baseType: !775, size: 256, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1164, file: !1163, line: 32, baseType: !1170, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1163, line: 32, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1164, file: !1163, line: 37, baseType: !327, size: 16, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1164, file: !1163, line: 40, baseType: !196, size: 192, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1164, file: !1163, line: 41, baseType: !184, size: 64, offset: 704)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1164, file: !1163, line: 42, baseType: !1176, size: 64, offset: 768)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1179, line: 13, size: 896, elements: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1178, file: !1179, line: 14, baseType: !184, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1178, file: !1179, line: 15, baseType: !181, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1178, file: !1179, line: 17, baseType: !181, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1178, file: !1179, line: 17, baseType: !181, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1178, file: !1179, line: 19, baseType: !119, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1178, file: !1179, line: 21, baseType: !119, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1178, file: !1179, line: 22, baseType: !119, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1178, file: !1179, line: 23, baseType: !119, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1178, file: !1179, line: 24, baseType: !119, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1178, file: !1179, line: 25, baseType: !119, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1178, file: !1179, line: 26, baseType: !119, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1178, file: !1179, line: 27, baseType: !119, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1178, file: !1179, line: 28, baseType: !119, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1178, file: !1179, line: 29, baseType: !119, size: 64, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1164, file: !1163, line: 44, baseType: !755, size: 32, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1164, file: !1163, line: 50, baseType: !860, size: 16, offset: 864)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1164, file: !1163, line: 51, baseType: !1198, size: 16, offset: 880)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !207, line: 18, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !209, line: 23, baseType: !1200)
!1200 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !731, line: 495, baseType: !181, size: 64, offset: 6528)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !979, file: !731, line: 497, baseType: !1203, size: 64, offset: 6592)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !731, line: 381, size: 384, elements: !1205)
!1205 = !{!1206, !1207, !2297}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1204, file: !731, line: 382, baseType: !755, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1204, file: !731, line: 383, baseType: !1208, size: 128, offset: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !731, line: 376, size: 128, elements: !1209)
!1209 = !{!1210, !2295}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1208, file: !731, line: 377, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1213, line: 640, size: 48640, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1221, !1223, !1224, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1241, !1259, !1270, !1355, !1356, !1357, !1368, !1369, !1371, !1372, !1373, !1374, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1453, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1491, !1493, !1494, !1495, !1507, !1508, !1509, !1510, !1511, !1512, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1536, !1541, !1725, !1726, !1727, !1728, !1732, !1735, !1738, !1741, !1744, !1747, !1848, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1894, !1895, !1896, !1897, !1898, !1903, !1904, !1905, !1908, !1909, !1912, !1915, !1918, !1921, !1953, !1956, !1957, !2036, !2037, !2040, !2041, !2044, !2045, !2046, !2050, !2051, !2052, !2065, !2066, !2067, !2077, !2082, !2085, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1212, file: !1213, line: 646, baseType: !1216, size: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1217, line: 56, size: 128, elements: !1218)
!1217 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !1217, line: 57, baseType: !181, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1216, file: !1217, line: 58, baseType: !425, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1212, file: !1213, line: 649, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !119)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1212, file: !1213, line: 657, baseType: !184, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1212, file: !1213, line: 658, baseType: !1225, size: 32, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1226, line: 113, baseType: !1227)
!1226 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1226, line: 111, size: 32, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1227, file: !1226, line: 112, baseType: !755, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1213, line: 660, baseType: !7, size: 32, offset: 288)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1212, file: !1213, line: 661, baseType: !7, size: 32, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1212, file: !1213, line: 684, baseType: !271, size: 32, offset: 352)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1212, file: !1213, line: 686, baseType: !271, size: 32, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1212, file: !1213, line: 687, baseType: !271, size: 32, offset: 416)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1212, file: !1213, line: 688, baseType: !271, size: 32, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1212, file: !1213, line: 689, baseType: !7, size: 32, offset: 480)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1212, file: !1213, line: 691, baseType: !1238, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1213, line: 691, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1212, file: !1213, line: 692, baseType: !1242, size: 832, offset: 576)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1213, line: 451, size: 832, elements: !1243)
!1243 = !{!1244, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1242, file: !1213, line: 453, baseType: !1245, size: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1213, line: 325, size: 128, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1245, file: !1213, line: 326, baseType: !181, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1245, file: !1213, line: 327, baseType: !425, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1242, file: !1213, line: 454, baseType: !768, size: 192, align: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1242, file: !1213, line: 455, baseType: !188, size: 128, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1242, file: !1213, line: 456, baseType: !7, size: 32, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1242, file: !1213, line: 458, baseType: !429, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1242, file: !1213, line: 459, baseType: !429, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1242, file: !1213, line: 460, baseType: !429, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1242, file: !1213, line: 461, baseType: !429, size: 64, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1242, file: !1213, line: 463, baseType: !429, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1242, file: !1213, line: 465, baseType: !1258, offset: 832)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1213, line: 415, elements: !226)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1212, file: !1213, line: 693, baseType: !1260, size: 384, offset: 1408)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1213, line: 489, size: 384, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1260, file: !1213, line: 490, baseType: !188, size: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1260, file: !1213, line: 491, baseType: !181, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1260, file: !1213, line: 492, baseType: !181, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1260, file: !1213, line: 493, baseType: !7, size: 32, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1260, file: !1213, line: 494, baseType: !327, size: 16, offset: 288)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1260, file: !1213, line: 495, baseType: !327, size: 16, offset: 304)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1260, file: !1213, line: 497, baseType: !1269, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1212, file: !1213, line: 697, baseType: !1271, size: 1792, offset: 1792)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1213, line: 507, size: 1792, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1352, !1353}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1271, file: !1213, line: 508, baseType: !768, size: 192, align: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1271, file: !1213, line: 515, baseType: !429, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1271, file: !1213, line: 516, baseType: !429, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1271, file: !1213, line: 517, baseType: !429, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1271, file: !1213, line: 518, baseType: !429, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1271, file: !1213, line: 519, baseType: !429, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1271, file: !1213, line: 526, baseType: !206, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1271, file: !1213, line: 527, baseType: !429, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !1213, line: 528, baseType: !7, size: 32, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1271, file: !1213, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1271, file: !1213, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1271, file: !1213, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1271, file: !1213, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1271, file: !1213, line: 563, baseType: !1287, size: 512, offset: 704)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1288)
!1288 = !{!1289, !1297, !1298, !1303, !1346, !1349, !1350, !1351}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1287, file: !20, line: 119, baseType: !1290, size: 256)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1291, line: 9, size: 256, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1290, file: !1291, line: 10, baseType: !768, size: 192, align: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1290, file: !1291, line: 11, baseType: !1295, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1296, line: 29, baseType: !206)
!1296 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1287, file: !20, line: 120, baseType: !1295, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1287, file: !20, line: 121, baseType: !1299, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!19, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1287, file: !20, line: 122, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1306)
!1306 = !{!1307, !1327, !1328, !1331, !1336, !1337, !1341, !1345}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1305, file: !20, line: 160, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1309, file: !20, line: 215, baseType: !781)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1309, file: !20, line: 216, baseType: !7, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1309, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1309, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1309, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1309, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1309, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1309, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1309, file: !20, line: 233, baseType: !1295, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1309, file: !20, line: 234, baseType: !1302, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1309, file: !20, line: 235, baseType: !1295, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1309, file: !20, line: 236, baseType: !1302, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1309, file: !20, line: 237, baseType: !1324, size: 4096, offset: 512)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 4096, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 8)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1305, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1305, file: !20, line: 162, baseType: !1329, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !180, line: 27, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !319, line: 96, baseType: !271)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1305, file: !20, line: 163, baseType: !1332, size: 32, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !398, line: 276, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !398, line: 276, size: 32, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1333, file: !398, line: 276, baseType: !402, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1305, file: !20, line: 164, baseType: !1302, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1305, file: !20, line: 165, baseType: !1338, size: 128, offset: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1291, line: 14, size: 128, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1338, file: !1291, line: 15, baseType: !760, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1305, file: !20, line: 166, baseType: !1342, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1295}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1305, file: !20, line: 167, baseType: !1295, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1287, file: !20, line: 123, baseType: !1347, size: 8, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !207, line: 17, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !209, line: 21, baseType: !435)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1287, file: !20, line: 124, baseType: !1347, size: 8, offset: 456)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1287, file: !20, line: 125, baseType: !1347, size: 8, offset: 464)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1287, file: !20, line: 126, baseType: !1347, size: 8, offset: 472)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1271, file: !1213, line: 572, baseType: !1287, size: 512, offset: 1216)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1271, file: !1213, line: 580, baseType: !1354, size: 64, offset: 1728)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1212, file: !1213, line: 721, baseType: !7, size: 32, offset: 3584)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1212, file: !1213, line: 722, baseType: !271, size: 32, offset: 3616)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1212, file: !1213, line: 723, baseType: !1358, size: 64, offset: 3648)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1361, line: 17, baseType: !1362)
!1361 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1361, line: 17, size: 64, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1362, file: !1361, line: 17, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 1)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1212, file: !1213, line: 724, baseType: !1360, size: 64, offset: 3712)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1212, file: !1213, line: 749, baseType: !1370, offset: 3776)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1213, line: 290, elements: !226)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1212, file: !1213, line: 751, baseType: !188, size: 128, offset: 3776)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1212, file: !1213, line: 757, baseType: !975, size: 64, offset: 3904)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1212, file: !1213, line: 758, baseType: !975, size: 64, offset: 3968)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1212, file: !1213, line: 761, baseType: !1375, size: 320, offset: 4032)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1152, line: 34, size: 320, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1375, file: !1152, line: 35, baseType: !429, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1375, file: !1152, line: 36, baseType: !1379, size: 256, offset: 64)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 256, elements: !1156)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1212, file: !1213, line: 766, baseType: !271, size: 32, offset: 4352)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1212, file: !1213, line: 767, baseType: !271, size: 32, offset: 4384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1212, file: !1213, line: 768, baseType: !271, size: 32, offset: 4416)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1212, file: !1213, line: 770, baseType: !271, size: 32, offset: 4448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1212, file: !1213, line: 772, baseType: !181, size: 64, offset: 4480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1212, file: !1213, line: 775, baseType: !7, size: 32, offset: 4544)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1212, file: !1213, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1212, file: !1213, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1212, file: !1213, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1212, file: !1213, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1212, file: !1213, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1212, file: !1213, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1212, file: !1213, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1212, file: !1213, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1212, file: !1213, line: 831, baseType: !181, size: 64, offset: 4672)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1212, file: !1213, line: 833, baseType: !1396, size: 384, offset: 4736)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1397)
!1397 = !{!1398, !1403}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1396, file: !25, line: 26, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!119, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !25, line: 27, baseType: !1404, size: 320, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !25, line: 27, size: 320, elements: !1405)
!1405 = !{!1406, !1416, !1443}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1404, file: !25, line: 36, baseType: !1407, size: 320)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 29, size: 320, elements: !1408)
!1408 = !{!1409, !1411, !1412, !1413, !1414, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1407, file: !25, line: 30, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1407, file: !25, line: 31, baseType: !425, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !25, line: 32, baseType: !425, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1407, file: !25, line: 33, baseType: !425, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1407, file: !25, line: 34, baseType: !429, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1407, file: !25, line: 35, baseType: !1410, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1404, file: !25, line: 46, baseType: !1417, size: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 38, size: 192, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1442}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1417, file: !25, line: 39, baseType: !1329, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1417, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !25, line: 41, baseType: !1422, size: 64, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !25, line: 41, size: 64, elements: !1423)
!1423 = !{!1424, !1432}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1422, file: !25, line: 42, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1427, line: 7, size: 128, elements: !1428)
!1427 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1426, file: !1427, line: 8, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !319, line: 93, baseType: !210)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1426, file: !1427, line: 9, baseType: !210, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1422, file: !25, line: 43, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1435, line: 7, size: 64, elements: !1436)
!1435 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1441}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1434, file: !1435, line: 8, baseType: !1438, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1435, line: 5, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !207, line: 20, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !209, line: 26, baseType: !271)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1434, file: !1435, line: 9, baseType: !1439, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1417, file: !25, line: 45, baseType: !429, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1404, file: !25, line: 54, baseType: !1444, size: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 48, size: 256, elements: !1445)
!1445 = !{!1446, !1449, !1450, !1451, !1452}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1444, file: !25, line: 49, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1444, file: !25, line: 50, baseType: !271, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1444, file: !25, line: 51, baseType: !271, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1444, file: !25, line: 52, baseType: !181, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1444, file: !25, line: 53, baseType: !181, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1212, file: !1213, line: 835, baseType: !1454, size: 32, offset: 5120)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !180, line: 22, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !319, line: 28, baseType: !271)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1212, file: !1213, line: 836, baseType: !1454, size: 32, offset: 5152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1212, file: !1213, line: 840, baseType: !181, size: 64, offset: 5184)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1212, file: !1213, line: 849, baseType: !1211, size: 64, offset: 5248)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1212, file: !1213, line: 852, baseType: !1211, size: 64, offset: 5312)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1212, file: !1213, line: 857, baseType: !188, size: 128, offset: 5376)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1212, file: !1213, line: 858, baseType: !188, size: 128, offset: 5504)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1212, file: !1213, line: 859, baseType: !1211, size: 64, offset: 5632)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1212, file: !1213, line: 867, baseType: !188, size: 128, offset: 5696)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1212, file: !1213, line: 868, baseType: !188, size: 128, offset: 5824)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1212, file: !1213, line: 871, baseType: !1466, size: 64, offset: 5952)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1474, !1475, !1482, !1483}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1467, file: !53, line: 61, baseType: !1225, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1467, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !53, line: 63, baseType: !212, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1467, file: !53, line: 65, baseType: !1473, size: 256, offset: 64)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 256, elements: !1156)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1467, file: !53, line: 66, baseType: !643, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1467, file: !53, line: 68, baseType: !1476, size: 128, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1477, line: 40, baseType: !1478)
!1477 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1477, line: 36, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !1477, line: 37, baseType: !212)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1478, file: !1477, line: 38, baseType: !188, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1467, file: !53, line: 69, baseType: !375, size: 128, align: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1467, file: !53, line: 70, baseType: !1484, size: 128, offset: 640)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, size: 128, elements: !1366)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1485, file: !53, line: 55, baseType: !271, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1485, file: !53, line: 56, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1212, file: !1213, line: 872, baseType: !1492, size: 512, offset: 6016)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 512, elements: !1156)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1212, file: !1213, line: 873, baseType: !188, size: 128, offset: 6528)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1212, file: !1213, line: 874, baseType: !188, size: 128, offset: 6656)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1212, file: !1213, line: 876, baseType: !1496, size: 64, offset: 6784)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1498, line: 26, size: 192, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1497, file: !1498, line: 27, baseType: !7, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1497, file: !1498, line: 28, baseType: !1502, size: 128, offset: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1503, line: 43, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !1503, line: 44, baseType: !781)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1502, file: !1503, line: 45, baseType: !188, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1212, file: !1213, line: 879, baseType: !713, size: 64, offset: 6848)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1212, file: !1213, line: 882, baseType: !713, size: 64, offset: 6912)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1212, file: !1213, line: 884, baseType: !429, size: 64, offset: 6976)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1212, file: !1213, line: 885, baseType: !429, size: 64, offset: 7040)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1212, file: !1213, line: 890, baseType: !429, size: 64, offset: 7104)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1212, file: !1213, line: 891, baseType: !1513, size: 128, offset: 7168)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1213, line: 242, size: 128, elements: !1514)
!1514 = !{!1515, !1516, !1517}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1513, file: !1213, line: 244, baseType: !429, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1513, file: !1213, line: 245, baseType: !429, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !1213, line: 246, baseType: !781, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1212, file: !1213, line: 900, baseType: !181, size: 64, offset: 7296)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1212, file: !1213, line: 901, baseType: !181, size: 64, offset: 7360)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1212, file: !1213, line: 904, baseType: !429, size: 64, offset: 7424)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1212, file: !1213, line: 907, baseType: !429, size: 64, offset: 7488)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1212, file: !1213, line: 910, baseType: !181, size: 64, offset: 7552)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1212, file: !1213, line: 911, baseType: !181, size: 64, offset: 7616)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1212, file: !1213, line: 914, baseType: !1525, size: 640, offset: 7680)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1526, line: 123, size: 640, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1534, !1535}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1525, file: !1526, line: 124, baseType: !1529, size: 576)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 576, elements: !287)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1526, line: 108, size: 192, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1530, file: !1526, line: 109, baseType: !429, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1530, file: !1526, line: 110, baseType: !1338, size: 128, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1525, file: !1526, line: 125, baseType: !7, size: 32, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1525, file: !1526, line: 126, baseType: !7, size: 32, offset: 608)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1212, file: !1213, line: 917, baseType: !1537, size: 192, offset: 8320)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1526, line: 134, size: 192, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1537, file: !1526, line: 135, baseType: !375, size: 128, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1537, file: !1526, line: 136, baseType: !7, size: 32, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1212, file: !1213, line: 923, baseType: !1542, size: 64, offset: 8512)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1545, line: 111, size: 1280, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1566, !1567, !1568, !1569, !1570, !1571, !1678, !1679, !1680, !1681, !1707, !1710, !1720}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1544, file: !1545, line: 112, baseType: !755, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1544, file: !1545, line: 120, baseType: !443, size: 32, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1544, file: !1545, line: 121, baseType: !451, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1544, file: !1545, line: 122, baseType: !443, size: 32, offset: 96)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1544, file: !1545, line: 123, baseType: !451, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1544, file: !1545, line: 124, baseType: !443, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1544, file: !1545, line: 125, baseType: !451, size: 32, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1544, file: !1545, line: 126, baseType: !443, size: 32, offset: 224)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1544, file: !1545, line: 127, baseType: !451, size: 32, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1544, file: !1545, line: 128, baseType: !7, size: 32, offset: 288)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1544, file: !1545, line: 129, baseType: !1558, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1559, line: 26, baseType: !1560)
!1559 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1559, line: 24, size: 64, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1560, file: !1559, line: 25, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 64, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 2)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1544, file: !1545, line: 130, baseType: !1558, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1544, file: !1545, line: 131, baseType: !1558, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1544, file: !1545, line: 132, baseType: !1558, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1544, file: !1545, line: 133, baseType: !1558, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1544, file: !1545, line: 135, baseType: !435, size: 8, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1544, file: !1545, line: 137, baseType: !1572, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1574, line: 189, size: 1664, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577, !1580, !1585, !1586, !1589, !1590, !1595, !1596, !1597, !1598, !1600, !1601, !1602, !1603, !1604, !1642, !1663}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1573, file: !1574, line: 190, baseType: !1225, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1573, file: !1574, line: 191, baseType: !1578, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1574, line: 28, baseType: !1579)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !180, line: 98, baseType: !1439)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 192, baseType: !1581, size: 192, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 192, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1581, file: !1574, line: 193, baseType: !188, size: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1581, file: !1574, line: 194, baseType: !768, size: 192, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1573, file: !1574, line: 199, baseType: !775, size: 256, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1573, file: !1574, line: 200, baseType: !1587, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1574, line: 200, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1573, file: !1574, line: 201, baseType: !184, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 202, baseType: !1591, size: 64, offset: 640)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 202, size: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1591, file: !1574, line: 203, baseType: !546, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1591, file: !1574, line: 204, baseType: !546, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1573, file: !1574, line: 206, baseType: !546, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1573, file: !1574, line: 207, baseType: !443, size: 32, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1573, file: !1574, line: 208, baseType: !451, size: 32, offset: 800)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1573, file: !1574, line: 209, baseType: !1599, size: 32, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1574, line: 31, baseType: !565)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1573, file: !1574, line: 210, baseType: !327, size: 16, offset: 864)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1573, file: !1574, line: 211, baseType: !327, size: 16, offset: 880)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1573, file: !1574, line: 215, baseType: !1200, size: 16, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1573, file: !1574, line: 222, baseType: !181, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 239, baseType: !1605, size: 320, offset: 1024)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 239, size: 320, elements: !1606)
!1606 = !{!1607, !1634}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1605, file: !1574, line: 240, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1574, line: 108, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1623, !1626, !1633}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1608, file: !1574, line: 110, baseType: !181, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1574, line: 111, baseType: !1612, size: 64, offset: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1574, line: 111, size: 64, elements: !1613)
!1613 = !{!1614, !1622}
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !1574, line: 112, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !1574, line: 112, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1615, file: !1574, line: 114, baseType: !860, size: 16)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1615, file: !1574, line: 115, baseType: !1619, size: 48, offset: 16)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 48, elements: !1620)
!1620 = !{!1621}
!1621 = !DISubrange(count: 6)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1612, file: !1574, line: 121, baseType: !181, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !1574, line: 123, baseType: !1624, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1574, line: 96, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1608, file: !1574, line: 124, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1574, line: 102, size: 192, elements: !1629)
!1629 = !{!1630, !1631, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !1574, line: 103, baseType: !375, size: 128, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1628, file: !1574, line: 104, baseType: !1225, size: 32, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1628, file: !1574, line: 105, baseType: !498, size: 8, offset: 160)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1608, file: !1574, line: 125, baseType: !249, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1574, line: 241, baseType: !1635, size: 320)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !1574, line: 241, size: 320, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1635, file: !1574, line: 242, baseType: !181, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1635, file: !1574, line: 243, baseType: !181, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1635, file: !1574, line: 244, baseType: !1624, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1635, file: !1574, line: 245, baseType: !1627, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1635, file: !1574, line: 246, baseType: !182, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 254, baseType: !1643, size: 256, offset: 1344)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 254, size: 256, elements: !1644)
!1644 = !{!1645, !1651}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1643, file: !1574, line: 255, baseType: !1646, size: 256)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1574, line: 128, size: 256, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1646, file: !1574, line: 129, baseType: !184, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1646, file: !1574, line: 130, baseType: !1650, size: 256)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !1156)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1574, line: 256, baseType: !1652, size: 256)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1574, line: 256, size: 256, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1652, file: !1574, line: 258, baseType: !188, size: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1652, file: !1574, line: 259, baseType: !1656, size: 128, offset: 128)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1657, line: 22, size: 128, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1662}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1656, file: !1657, line: 23, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1657, line: 23, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1656, file: !1657, line: 24, baseType: !181, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1573, file: !1574, line: 274, baseType: !1664, size: 64, offset: 1600)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1574, line: 170, size: 192, elements: !1666)
!1666 = !{!1667, !1676, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1665, file: !1574, line: 171, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1574, line: 165, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!271, !1572, !1672, !1674, !1572}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1665, file: !1574, line: 172, baseType: !1572, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1665, file: !1574, line: 173, baseType: !1624, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1544, file: !1545, line: 138, baseType: !1572, size: 64, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1544, file: !1545, line: 139, baseType: !1572, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1544, file: !1545, line: 140, baseType: !1572, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1544, file: !1545, line: 145, baseType: !1682, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1684, line: 13, size: 896, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1683, file: !1684, line: 14, baseType: !1225, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1683, file: !1684, line: 15, baseType: !755, size: 32, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1683, file: !1684, line: 16, baseType: !755, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1683, file: !1684, line: 21, baseType: !200, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1683, file: !1684, line: 27, baseType: !181, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1683, file: !1684, line: 28, baseType: !181, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1683, file: !1684, line: 29, baseType: !200, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1683, file: !1684, line: 32, baseType: !647, size: 128, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1683, file: !1684, line: 33, baseType: !443, size: 32, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1683, file: !1684, line: 37, baseType: !200, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1683, file: !1684, line: 44, baseType: !1697, size: 256, offset: 640)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1698, line: 15, size: 256, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !1698, line: 16, baseType: !781)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1697, file: !1698, line: 18, baseType: !271, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1697, file: !1698, line: 19, baseType: !271, size: 32, offset: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1697, file: !1698, line: 20, baseType: !271, size: 32, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1697, file: !1698, line: 21, baseType: !271, size: 32, offset: 96)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1697, file: !1698, line: 22, baseType: !181, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1697, file: !1698, line: 23, baseType: !181, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1544, file: !1545, line: 146, baseType: !1708, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !731, line: 516, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1544, file: !1545, line: 147, baseType: !1711, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1545, line: 25, size: 64, elements: !1713)
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1712, file: !1545, line: 26, baseType: !755, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1712, file: !1545, line: 27, baseType: !271, size: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1712, file: !1545, line: 28, baseType: !1717, offset: 64)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1545, line: 149, baseType: !1721, size: 128, offset: 1152)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1544, file: !1545, line: 149, size: 128, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1721, file: !1545, line: 150, baseType: !271, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1721, file: !1545, line: 151, baseType: !375, size: 128, align: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1212, file: !1213, line: 926, baseType: !1542, size: 64, offset: 8576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1212, file: !1213, line: 929, baseType: !1542, size: 64, offset: 8640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1212, file: !1213, line: 933, baseType: !1572, size: 64, offset: 8704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1212, file: !1213, line: 943, baseType: !1729, size: 128, offset: 8768)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, elements: !1730)
!1730 = !{!1731}
!1731 = !DISubrange(count: 16)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1212, file: !1213, line: 945, baseType: !1733, size: 64, offset: 8896)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1213, line: 49, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1212, file: !1213, line: 956, baseType: !1736, size: 64, offset: 8960)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1213, line: 45, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1212, file: !1213, line: 959, baseType: !1739, size: 64, offset: 9024)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1213, line: 959, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1212, file: !1213, line: 962, baseType: !1742, size: 64, offset: 9088)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1213, line: 66, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1212, file: !1213, line: 966, baseType: !1745, size: 64, offset: 9152)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1213, line: 50, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1212, file: !1213, line: 969, baseType: !1748, size: 64, offset: 9216)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1750, line: 82, size: 7296, elements: !1751)
!1750 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1787, !1796, !1797, !1799, !1800, !1801, !1804, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1834, !1835, !1842, !1843, !1844, !1845, !1846, !1847}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1749, file: !1750, line: 83, baseType: !1225, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1749, file: !1750, line: 84, baseType: !755, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1749, file: !1750, line: 85, baseType: !271, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1749, file: !1750, line: 86, baseType: !188, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1749, file: !1750, line: 88, baseType: !1476, size: 128, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1749, file: !1750, line: 91, baseType: !1211, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1749, file: !1750, line: 94, baseType: !1759, size: 192, offset: 448)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1760, line: 30, size: 192, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1759, file: !1760, line: 31, baseType: !188, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1759, file: !1760, line: 32, baseType: !1764, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1765, line: 25, baseType: !1766)
!1765 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1765, line: 23, size: 64, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1766, file: !1765, line: 24, baseType: !1365, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1749, file: !1750, line: 97, baseType: !643, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1749, file: !1750, line: 100, baseType: !271, size: 32, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1749, file: !1750, line: 106, baseType: !271, size: 32, offset: 736)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1749, file: !1750, line: 107, baseType: !1211, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1749, file: !1750, line: 110, baseType: !271, size: 32, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1749, file: !1750, line: 111, baseType: !7, size: 32, offset: 864)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1749, file: !1750, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1749, file: !1750, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1749, file: !1750, line: 128, baseType: !271, size: 32, offset: 928)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1749, file: !1750, line: 129, baseType: !188, size: 128, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1749, file: !1750, line: 132, baseType: !1287, size: 512, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1749, file: !1750, line: 133, baseType: !1295, size: 64, offset: 1600)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1749, file: !1750, line: 140, baseType: !1782, size: 256, offset: 1664)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, size: 256, elements: !1564)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1750, line: 38, size: 128, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1783, file: !1750, line: 39, baseType: !429, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1783, file: !1750, line: 40, baseType: !429, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1749, file: !1750, line: 146, baseType: !1788, size: 192, offset: 1920)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1750, line: 66, size: 192, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1788, file: !1750, line: 67, baseType: !1791, size: 192)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1750, line: 47, size: 192, elements: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1791, file: !1750, line: 48, baseType: !202, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1791, file: !1750, line: 49, baseType: !202, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1791, file: !1750, line: 50, baseType: !202, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1749, file: !1750, line: 150, baseType: !1525, size: 640, offset: 2112)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1749, file: !1750, line: 153, baseType: !1798, size: 256, offset: 2752)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 256, elements: !1156)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1749, file: !1750, line: 159, baseType: !1466, size: 64, offset: 3008)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1749, file: !1750, line: 162, baseType: !271, size: 32, offset: 3072)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1749, file: !1750, line: 164, baseType: !1802, size: 64, offset: 3136)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1750, line: 164, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1749, file: !1750, line: 175, baseType: !1805, size: 32, offset: 3200)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !398, line: 805, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 798, size: 32, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1806, file: !398, line: 803, baseType: !397, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1806, file: !398, line: 804, baseType: !212, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1749, file: !1750, line: 176, baseType: !429, size: 64, offset: 3264)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1749, file: !1750, line: 176, baseType: !429, size: 64, offset: 3328)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1749, file: !1750, line: 176, baseType: !429, size: 64, offset: 3392)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1749, file: !1750, line: 176, baseType: !429, size: 64, offset: 3456)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1749, file: !1750, line: 177, baseType: !429, size: 64, offset: 3520)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1749, file: !1750, line: 178, baseType: !429, size: 64, offset: 3584)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1749, file: !1750, line: 179, baseType: !1513, size: 128, offset: 3648)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1749, file: !1750, line: 180, baseType: !181, size: 64, offset: 3776)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1749, file: !1750, line: 180, baseType: !181, size: 64, offset: 3840)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1749, file: !1750, line: 180, baseType: !181, size: 64, offset: 3904)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1749, file: !1750, line: 180, baseType: !181, size: 64, offset: 3968)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1749, file: !1750, line: 181, baseType: !181, size: 64, offset: 4032)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1749, file: !1750, line: 181, baseType: !181, size: 64, offset: 4096)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1749, file: !1750, line: 181, baseType: !181, size: 64, offset: 4160)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1749, file: !1750, line: 181, baseType: !181, size: 64, offset: 4224)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1749, file: !1750, line: 182, baseType: !181, size: 64, offset: 4288)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1749, file: !1750, line: 182, baseType: !181, size: 64, offset: 4352)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1749, file: !1750, line: 182, baseType: !181, size: 64, offset: 4416)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1749, file: !1750, line: 182, baseType: !181, size: 64, offset: 4480)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1749, file: !1750, line: 183, baseType: !181, size: 64, offset: 4544)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1749, file: !1750, line: 183, baseType: !181, size: 64, offset: 4608)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1749, file: !1750, line: 184, baseType: !1832, offset: 4672)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1833, line: 12, elements: !226)
!1833 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1749, file: !1750, line: 192, baseType: !431, size: 64, offset: 4672)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1749, file: !1750, line: 203, baseType: !1836, size: 2048, offset: 4736)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1837, size: 2048, elements: !1730)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1838, line: 43, size: 128, elements: !1839)
!1838 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1837, file: !1838, line: 44, baseType: !334, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1837, file: !1838, line: 45, baseType: !334, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1749, file: !1750, line: 220, baseType: !498, size: 8, offset: 6784)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1749, file: !1750, line: 221, baseType: !1200, size: 16, offset: 6800)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1749, file: !1750, line: 222, baseType: !1200, size: 16, offset: 6816)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1749, file: !1750, line: 224, baseType: !975, size: 64, offset: 6848)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1749, file: !1750, line: 227, baseType: !196, size: 192, offset: 6912)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1749, file: !1750, line: 233, baseType: !196, size: 192, offset: 7104)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1212, file: !1213, line: 970, baseType: !1849, size: 64, offset: 9280)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1750, line: 20, size: 16576, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1850, file: !1750, line: 21, baseType: !212)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1850, file: !1750, line: 22, baseType: !1225, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1850, file: !1750, line: 23, baseType: !1476, size: 128, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1850, file: !1750, line: 24, baseType: !1856, size: 16384, offset: 192)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 16384, elements: !291)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1760, line: 49, size: 256, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1857, file: !1760, line: 50, baseType: !1860, size: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1760, line: 35, size: 256, elements: !1861)
!1861 = !{!1862, !1869, !1870, !1876}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1860, file: !1760, line: 37, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1864, line: 19, baseType: !1865)
!1864 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1864, line: 18, baseType: !1867)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !271}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1860, file: !1760, line: 38, baseType: !181, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1860, file: !1760, line: 44, baseType: !1871, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1864, line: 22, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1864, line: 21, baseType: !1874)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1860, file: !1760, line: 46, baseType: !1764, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1212, file: !1213, line: 971, baseType: !1764, size: 64, offset: 9344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1212, file: !1213, line: 972, baseType: !1764, size: 64, offset: 9408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1212, file: !1213, line: 974, baseType: !1764, size: 64, offset: 9472)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1212, file: !1213, line: 975, baseType: !1759, size: 192, offset: 9536)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1212, file: !1213, line: 976, baseType: !181, size: 64, offset: 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1212, file: !1213, line: 977, baseType: !332, size: 64, offset: 9792)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1212, file: !1213, line: 978, baseType: !7, size: 32, offset: 9856)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1212, file: !1213, line: 980, baseType: !378, size: 64, offset: 9920)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1212, file: !1213, line: 989, baseType: !1886, size: 128, offset: 9984)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1887, line: 35, size: 128, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1886, file: !1887, line: 36, baseType: !271, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1886, file: !1887, line: 37, baseType: !755, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1886, file: !1887, line: 38, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1887, line: 23, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1212, file: !1213, line: 992, baseType: !429, size: 64, offset: 10112)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1212, file: !1213, line: 993, baseType: !429, size: 64, offset: 10176)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1212, file: !1213, line: 996, baseType: !212, offset: 10240)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1212, file: !1213, line: 999, baseType: !781, offset: 10240)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1212, file: !1213, line: 1001, baseType: !1899, size: 64, offset: 10240)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1213, line: 636, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1899, file: !1213, line: 637, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1212, file: !1213, line: 1005, baseType: !760, size: 128, offset: 10304)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1212, file: !1213, line: 1007, baseType: !1211, size: 64, offset: 10432)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1212, file: !1213, line: 1009, baseType: !1906, size: 64, offset: 10496)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1213, line: 1009, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1212, file: !1213, line: 1043, baseType: !184, size: 64, offset: 10560)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1212, file: !1213, line: 1046, baseType: !1910, size: 64, offset: 10624)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1213, line: 41, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1212, file: !1213, line: 1050, baseType: !1913, size: 64, offset: 10688)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1213, line: 42, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1212, file: !1213, line: 1054, baseType: !1916, size: 64, offset: 10752)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1213, line: 55, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1212, file: !1213, line: 1056, baseType: !1919, size: 64, offset: 10816)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1213, line: 40, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1212, file: !1213, line: 1058, baseType: !1922, size: 64, offset: 10880)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1924, line: 99, size: 704, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1951, !1952}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1923, file: !1924, line: 100, baseType: !200, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1923, file: !1924, line: 101, baseType: !755, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1923, file: !1924, line: 102, baseType: !755, size: 32, offset: 96)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1923, file: !1924, line: 105, baseType: !212, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1923, file: !1924, line: 107, baseType: !327, size: 16, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1923, file: !1924, line: 109, baseType: !747, size: 128, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1923, file: !1924, line: 110, baseType: !1933, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1924, line: 73, size: 448, elements: !1935)
!1935 = !{!1936, !1939, !1940, !1945, !1950}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1934, file: !1924, line: 74, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1924, line: 74, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1934, file: !1924, line: 75, baseType: !1922, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1924, line: 83, baseType: !1941, size: 128, offset: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1924, line: 83, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1941, file: !1924, line: 84, baseType: !188, size: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1941, file: !1924, line: 85, baseType: !936, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1924, line: 87, baseType: !1946, size: 128, offset: 256)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1924, line: 87, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1946, file: !1924, line: 88, baseType: !647, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1946, file: !1924, line: 89, baseType: !375, size: 128, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !1924, line: 92, baseType: !7, size: 32, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1923, file: !1924, line: 111, baseType: !643, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1923, file: !1924, line: 113, baseType: !231, size: 256, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1212, file: !1213, line: 1061, baseType: !1954, size: 64, offset: 10944)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1213, line: 43, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1212, file: !1213, line: 1064, baseType: !181, size: 64, offset: 11008)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1212, file: !1213, line: 1065, baseType: !1958, size: 64, offset: 11072)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1760, line: 14, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1760, line: 12, size: 384, elements: !1961)
!1961 = !{!1962}
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1760, line: 13, baseType: !1963, size: 384)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1760, line: 13, size: 384, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1963, file: !1760, line: 13, baseType: !271, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1963, file: !1760, line: 13, baseType: !271, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1963, file: !1760, line: 13, baseType: !271, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1963, file: !1760, line: 13, baseType: !1969, size: 256, offset: 128)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1970, line: 32, size: 256, elements: !1971)
!1970 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1971 = !{!1972, !1977, !1990, !1996, !2005, !2025, !2030}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1969, file: !1970, line: 37, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 34, size: 64, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1973, file: !1970, line: 35, baseType: !1455, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1973, file: !1970, line: 36, baseType: !449, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1969, file: !1970, line: 45, baseType: !1978, size: 192)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 40, size: 192, elements: !1979)
!1979 = !{!1980, !1982, !1983, !1989}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1978, file: !1970, line: 41, baseType: !1981, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !319, line: 95, baseType: !271)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1978, file: !1970, line: 42, baseType: !271, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1978, file: !1970, line: 43, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1970, line: 11, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1970, line: 8, size: 64, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1985, file: !1970, line: 9, baseType: !271, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1985, file: !1970, line: 10, baseType: !184, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1978, file: !1970, line: 44, baseType: !271, size: 32, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1969, file: !1970, line: 52, baseType: !1991, size: 128)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 48, size: 128, elements: !1992)
!1992 = !{!1993, !1994, !1995}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1991, file: !1970, line: 49, baseType: !1455, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1991, file: !1970, line: 50, baseType: !449, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1991, file: !1970, line: 51, baseType: !1984, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1969, file: !1970, line: 61, baseType: !1997, size: 256)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 55, size: 256, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2004}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1997, file: !1970, line: 56, baseType: !1455, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1997, file: !1970, line: 57, baseType: !449, size: 32, offset: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1997, file: !1970, line: 58, baseType: !271, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1997, file: !1970, line: 59, baseType: !2003, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !319, line: 94, baseType: !320)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1997, file: !1970, line: 60, baseType: !2003, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1969, file: !1970, line: 95, baseType: !2006, size: 256)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 64, size: 256, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2006, file: !1970, line: 65, baseType: !184, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !1970, line: 77, baseType: !2010, size: 192, offset: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !1970, line: 77, size: 192, elements: !2011)
!2011 = !{!2012, !2013, !2020}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2010, file: !1970, line: 82, baseType: !1200, size: 16)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2010, file: !1970, line: 88, baseType: !2014, size: 192)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !1970, line: 84, size: 192, elements: !2015)
!2015 = !{!2016, !2018, !2019}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2014, file: !1970, line: 85, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 64, elements: !1325)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2014, file: !1970, line: 86, baseType: !184, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2014, file: !1970, line: 87, baseType: !184, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2010, file: !1970, line: 93, baseType: !2021, size: 96)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !1970, line: 90, size: 96, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2021, file: !1970, line: 91, baseType: !2017, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2021, file: !1970, line: 92, baseType: !426, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1969, file: !1970, line: 101, baseType: !2026, size: 128)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 98, size: 128, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2026, file: !1970, line: 99, baseType: !119, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2026, file: !1970, line: 100, baseType: !271, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1969, file: !1970, line: 108, baseType: !2031, size: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 104, size: 128, elements: !2032)
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2031, file: !1970, line: 105, baseType: !184, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2031, file: !1970, line: 106, baseType: !271, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2031, file: !1970, line: 107, baseType: !7, size: 32, offset: 96)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1212, file: !1213, line: 1067, baseType: !1832, offset: 11136)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1212, file: !1213, line: 1099, baseType: !2038, size: 64, offset: 11136)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1213, line: 56, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1212, file: !1213, line: 1103, baseType: !188, size: 128, offset: 11200)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1212, file: !1213, line: 1104, baseType: !2042, size: 64, offset: 11328)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1213, line: 46, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1212, file: !1213, line: 1105, baseType: !196, size: 192, offset: 11392)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1212, file: !1213, line: 1106, baseType: !7, size: 32, offset: 11584)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1212, file: !1213, line: 1109, baseType: !2047, size: 128, offset: 11648)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2048, size: 128, elements: !1564)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1213, line: 51, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1212, file: !1213, line: 1110, baseType: !196, size: 192, offset: 11776)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1212, file: !1213, line: 1111, baseType: !188, size: 128, offset: 11968)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1212, file: !1213, line: 1173, baseType: !2053, size: 64, offset: 12096)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2055, line: 62, size: 256, align: 256, elements: !2056)
!2055 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057, !2058, !2059, !2064}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2054, file: !2055, line: 75, baseType: !426, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2054, file: !2055, line: 90, baseType: !426, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2054, file: !2055, line: 124, baseType: !2060, size: 64, offset: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !2055, line: 109, size: 64, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2060, file: !2055, line: 110, baseType: !430, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2060, file: !2055, line: 112, baseType: !430, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2054, file: !2055, line: 144, baseType: !426, size: 32, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1212, file: !1213, line: 1174, baseType: !425, size: 32, offset: 12160)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1212, file: !1213, line: 1179, baseType: !181, size: 64, offset: 12224)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1212, file: !1213, line: 1182, baseType: !2068, size: 128, offset: 12288)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1152, line: 76, size: 128, elements: !2069)
!2069 = !{!2070, !2075, !2076}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2068, file: !1152, line: 85, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2072, line: 7, size: 64, elements: !2073)
!2072 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2071, file: !2072, line: 12, baseType: !1362, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2068, file: !1152, line: 88, baseType: !498, size: 8, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2068, file: !1152, line: 95, baseType: !498, size: 8, offset: 72)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1213, line: 1184, baseType: !2078, size: 128, offset: 12416)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1213, line: 1184, size: 128, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2078, file: !1213, line: 1185, baseType: !1225, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2078, file: !1213, line: 1186, baseType: !375, size: 128, align: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1212, file: !1213, line: 1190, baseType: !2083, size: 64, offset: 12544)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1213, line: 53, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1212, file: !1213, line: 1192, baseType: !2086, size: 128, offset: 12608)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1152, line: 64, size: 128, elements: !2087)
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2086, file: !1152, line: 65, baseType: !729, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2086, file: !1152, line: 67, baseType: !426, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2086, file: !1152, line: 68, baseType: !426, size: 32, offset: 96)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1212, file: !1213, line: 1206, baseType: !271, size: 32, offset: 12736)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1212, file: !1213, line: 1207, baseType: !271, size: 32, offset: 12768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1212, file: !1213, line: 1209, baseType: !181, size: 64, offset: 12800)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1212, file: !1213, line: 1219, baseType: !429, size: 64, offset: 12864)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1212, file: !1213, line: 1220, baseType: !429, size: 64, offset: 12928)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1212, file: !1213, line: 1317, baseType: !271, size: 32, offset: 12992)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1212, file: !1213, line: 1319, baseType: !1211, size: 64, offset: 13056)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1212, file: !1213, line: 1322, baseType: !2099, size: 64, offset: 13120)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2101, line: 56, size: 512, elements: !2102)
!2101 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2108, !2109, !2111}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2100, file: !2101, line: 57, baseType: !2099, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2100, file: !2101, line: 58, baseType: !184, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2100, file: !2101, line: 59, baseType: !181, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2100, file: !2101, line: 60, baseType: !181, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2100, file: !2101, line: 61, baseType: !821, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2100, file: !2101, line: 62, baseType: !7, size: 32, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2100, file: !2101, line: 63, baseType: !2110, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !180, line: 153, baseType: !429)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2100, file: !2101, line: 64, baseType: !2112, size: 64, offset: 448)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1212, file: !1213, line: 1326, baseType: !1225, size: 32, offset: 13184)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1212, file: !1213, line: 1342, baseType: !184, size: 64, offset: 13248)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1212, file: !1213, line: 1343, baseType: !430, size: 64, offset: 13312)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1212, file: !1213, line: 1344, baseType: !429, size: 64, offset: 13376)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1212, file: !1213, line: 1345, baseType: !430, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1212, file: !1213, line: 1346, baseType: !430, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1212, file: !1213, line: 1347, baseType: !430, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1212, file: !1213, line: 1348, baseType: !375, size: 128, align: 64, offset: 13504)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1212, file: !1213, line: 1358, baseType: !2123, size: 34816, offset: 13824)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2124, line: 485, size: 34816, elements: !2125)
!2124 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2155, !2156, !2157, !2158, !2159, !2160, !2163, !2164, !2165}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2123, file: !2124, line: 487, baseType: !2127, size: 192)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2128, size: 192, elements: !287)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2129, line: 16, size: 64, elements: !2130)
!2129 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2128, file: !2129, line: 17, baseType: !860, size: 16)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2128, file: !2129, line: 18, baseType: !860, size: 16, offset: 16)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2128, file: !2129, line: 19, baseType: !860, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2128, file: !2129, line: 19, baseType: !860, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2128, file: !2129, line: 19, baseType: !860, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2128, file: !2129, line: 19, baseType: !860, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2128, file: !2129, line: 19, baseType: !860, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2128, file: !2129, line: 20, baseType: !860, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2128, file: !2129, line: 20, baseType: !860, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2128, file: !2129, line: 20, baseType: !860, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2128, file: !2129, line: 20, baseType: !860, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2128, file: !2129, line: 20, baseType: !860, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2128, file: !2129, line: 20, baseType: !860, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2123, file: !2124, line: 491, baseType: !181, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2123, file: !2124, line: 495, baseType: !327, size: 16, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2123, file: !2124, line: 496, baseType: !327, size: 16, offset: 272)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2123, file: !2124, line: 497, baseType: !327, size: 16, offset: 288)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2123, file: !2124, line: 498, baseType: !327, size: 16, offset: 304)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2123, file: !2124, line: 502, baseType: !181, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2123, file: !2124, line: 503, baseType: !181, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2123, file: !2124, line: 514, baseType: !2152, size: 256, offset: 448)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2153, size: 256, elements: !1156)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2124, line: 483, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2123, file: !2124, line: 516, baseType: !181, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2123, file: !2124, line: 518, baseType: !181, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2123, file: !2124, line: 520, baseType: !181, size: 64, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2123, file: !2124, line: 521, baseType: !181, size: 64, offset: 896)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2123, file: !2124, line: 522, baseType: !181, size: 64, offset: 960)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2123, file: !2124, line: 528, baseType: !2161, size: 64, offset: 1024)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2124, line: 10, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2123, file: !2124, line: 535, baseType: !181, size: 64, offset: 1088)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2123, file: !2124, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2123, file: !2124, line: 540, baseType: !2166, size: 33280, offset: 1536)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2167, line: 317, size: 33280, elements: !2168)
!2167 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2168 = !{!2169, !2170, !2171}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2166, file: !2167, line: 330, baseType: !7, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2166, file: !2167, line: 337, baseType: !181, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2166, file: !2167, line: 348, baseType: !2172, size: 32768, offset: 512)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2167, line: 304, size: 32768, elements: !2173)
!2173 = !{!2174, !2189, !2228, !2278, !2291}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2172, file: !2167, line: 305, baseType: !2175, size: 896)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2167, line: 12, size: 896, elements: !2176)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2188}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2175, file: !2167, line: 13, baseType: !425, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2175, file: !2167, line: 14, baseType: !425, size: 32, offset: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2175, file: !2167, line: 15, baseType: !425, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2175, file: !2167, line: 16, baseType: !425, size: 32, offset: 96)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2175, file: !2167, line: 17, baseType: !425, size: 32, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2175, file: !2167, line: 18, baseType: !425, size: 32, offset: 160)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2175, file: !2167, line: 19, baseType: !425, size: 32, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2175, file: !2167, line: 22, baseType: !2185, size: 640, offset: 224)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 640, elements: !2186)
!2186 = !{!2187}
!2187 = !DISubrange(count: 20)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2175, file: !2167, line: 25, baseType: !425, size: 32, offset: 864)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2172, file: !2167, line: 306, baseType: !2190, size: 4096, align: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2167, line: 34, size: 4096, align: 128, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2211, !2212, !2213, !2217, !2219, !2223}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2190, file: !2167, line: 35, baseType: !860, size: 16)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2190, file: !2167, line: 36, baseType: !860, size: 16, offset: 16)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2190, file: !2167, line: 37, baseType: !860, size: 16, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2190, file: !2167, line: 38, baseType: !860, size: 16, offset: 48)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !2167, line: 39, baseType: !2197, size: 128, offset: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !2167, line: 39, size: 128, elements: !2198)
!2198 = !{!2199, !2204}
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2167, line: 40, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !2167, line: 40, size: 128, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2200, file: !2167, line: 41, baseType: !429, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2200, file: !2167, line: 42, baseType: !429, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !2167, line: 44, baseType: !2205, size: 128)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !2167, line: 44, size: 128, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2205, file: !2167, line: 45, baseType: !425, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2205, file: !2167, line: 46, baseType: !425, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2205, file: !2167, line: 47, baseType: !425, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2205, file: !2167, line: 48, baseType: !425, size: 32, offset: 96)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2190, file: !2167, line: 51, baseType: !425, size: 32, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2190, file: !2167, line: 52, baseType: !425, size: 32, offset: 224)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2190, file: !2167, line: 55, baseType: !2214, size: 1024, offset: 256)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 1024, elements: !2215)
!2215 = !{!2216}
!2216 = !DISubrange(count: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2190, file: !2167, line: 58, baseType: !2218, size: 2048, offset: 1280)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 2048, elements: !291)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2190, file: !2167, line: 60, baseType: !2220, size: 384, offset: 3328)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 384, elements: !2221)
!2221 = !{!2222}
!2222 = !DISubrange(count: 12)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !2167, line: 62, baseType: !2224, size: 384, offset: 3712)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !2167, line: 62, size: 384, elements: !2225)
!2225 = !{!2226, !2227}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2224, file: !2167, line: 63, baseType: !2220, size: 384)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2224, file: !2167, line: 64, baseType: !2220, size: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2172, file: !2167, line: 307, baseType: !2229, size: 1088)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2167, line: 79, size: 1088, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2277}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2229, file: !2167, line: 80, baseType: !425, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2229, file: !2167, line: 81, baseType: !425, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2229, file: !2167, line: 82, baseType: !425, size: 32, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2229, file: !2167, line: 83, baseType: !425, size: 32, offset: 96)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2229, file: !2167, line: 84, baseType: !425, size: 32, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2229, file: !2167, line: 85, baseType: !425, size: 32, offset: 160)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2229, file: !2167, line: 86, baseType: !425, size: 32, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2229, file: !2167, line: 88, baseType: !2185, size: 640, offset: 224)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2229, file: !2167, line: 89, baseType: !1347, size: 8, offset: 864)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2229, file: !2167, line: 90, baseType: !1347, size: 8, offset: 872)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2229, file: !2167, line: 91, baseType: !1347, size: 8, offset: 880)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2229, file: !2167, line: 92, baseType: !1347, size: 8, offset: 888)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2229, file: !2167, line: 93, baseType: !1347, size: 8, offset: 896)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2229, file: !2167, line: 94, baseType: !1347, size: 8, offset: 904)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2229, file: !2167, line: 95, baseType: !2246, size: 64, offset: 960)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2248, line: 11, size: 128, elements: !2249)
!2248 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2247, file: !2248, line: 12, baseType: !119, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2247, file: !2248, line: 13, baseType: !2252, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2254, line: 56, size: 1344, elements: !2255)
!2254 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2253, file: !2254, line: 61, baseType: !181, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2253, file: !2254, line: 62, baseType: !181, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2253, file: !2254, line: 63, baseType: !181, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2253, file: !2254, line: 64, baseType: !181, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2253, file: !2254, line: 65, baseType: !181, size: 64, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2253, file: !2254, line: 66, baseType: !181, size: 64, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2253, file: !2254, line: 68, baseType: !181, size: 64, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2253, file: !2254, line: 69, baseType: !181, size: 64, offset: 448)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2253, file: !2254, line: 70, baseType: !181, size: 64, offset: 512)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2253, file: !2254, line: 71, baseType: !181, size: 64, offset: 576)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2253, file: !2254, line: 72, baseType: !181, size: 64, offset: 640)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2253, file: !2254, line: 73, baseType: !181, size: 64, offset: 704)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2253, file: !2254, line: 74, baseType: !181, size: 64, offset: 768)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2253, file: !2254, line: 75, baseType: !181, size: 64, offset: 832)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2253, file: !2254, line: 76, baseType: !181, size: 64, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2253, file: !2254, line: 81, baseType: !181, size: 64, offset: 960)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2253, file: !2254, line: 83, baseType: !181, size: 64, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2253, file: !2254, line: 84, baseType: !181, size: 64, offset: 1088)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2253, file: !2254, line: 85, baseType: !181, size: 64, offset: 1152)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2253, file: !2254, line: 86, baseType: !181, size: 64, offset: 1216)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2253, file: !2254, line: 87, baseType: !181, size: 64, offset: 1280)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2229, file: !2167, line: 96, baseType: !425, size: 32, offset: 1024)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2172, file: !2167, line: 308, baseType: !2279, size: 4608, align: 512)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2167, line: 289, size: 4608, align: 512, elements: !2280)
!2280 = !{!2281, !2282, !2289}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2279, file: !2167, line: 290, baseType: !2190, size: 4096, align: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2279, file: !2167, line: 291, baseType: !2283, size: 512, offset: 4096)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2167, line: 268, size: 512, elements: !2284)
!2284 = !{!2285, !2286, !2287}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2283, file: !2167, line: 269, baseType: !429, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2283, file: !2167, line: 270, baseType: !429, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2283, file: !2167, line: 271, baseType: !2288, size: 384, offset: 128)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 384, elements: !1620)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2279, file: !2167, line: 292, baseType: !2290, offset: 4608)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, elements: !1718)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2172, file: !2167, line: 309, baseType: !2292, size: 32768)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, size: 32768, elements: !2293)
!2293 = !{!2294}
!2294 = !DISubrange(count: 4096)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1208, file: !731, line: 378, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1204, file: !731, line: 384, baseType: !1497, size: 192, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !979, file: !731, line: 500, baseType: !212, offset: 6656)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !979, file: !731, line: 501, baseType: !2300, size: 64, offset: 6656)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !731, line: 387, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !979, file: !731, line: 516, baseType: !1708, size: 64, offset: 6720)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !979, file: !731, line: 519, baseType: !362, size: 64, offset: 6784)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !979, file: !731, line: 521, baseType: !2305, size: 64, offset: 6848)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !731, line: 521, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !979, file: !731, line: 545, baseType: !755, size: 32, offset: 6912)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !979, file: !731, line: 548, baseType: !498, size: 8, offset: 6944)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !979, file: !731, line: 550, baseType: !2310, offset: 6952)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2311, line: 142, elements: !226)
!2311 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !979, file: !731, line: 554, baseType: !231, size: 256, offset: 6976)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !979, file: !731, line: 557, baseType: !425, size: 32, offset: 7232)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !976, file: !731, line: 565, baseType: !2315, offset: 7296)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !2316)
!2316 = !{!2317}
!2317 = !DISubrange(count: -1)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !972, file: !731, line: 151, baseType: !755, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !965, file: !731, line: 156, baseType: !212, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !731, line: 159, baseType: !2321, size: 128)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !735, file: !731, line: 159, size: 128, elements: !2322)
!2322 = !{!2323, !2387}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2321, file: !731, line: 161, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2326)
!2326 = !{!2327, !2337, !2358, !2359, !2360, !2361, !2362, !2374, !2375, !2376}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2325, file: !31, line: 111, baseType: !2328, size: 384)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2329)
!2329 = !{!2330, !2332, !2333, !2334, !2335, !2336}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2328, file: !31, line: 20, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2328, file: !31, line: 21, baseType: !2331, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2328, file: !31, line: 22, baseType: !2331, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2328, file: !31, line: 23, baseType: !181, size: 64, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2328, file: !31, line: 24, baseType: !181, size: 64, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2328, file: !31, line: 25, baseType: !181, size: 64, offset: 320)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2325, file: !31, line: 112, baseType: !2338, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2340, line: 105, size: 128, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2341 = !{!2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2339, file: !2340, line: 110, baseType: !181, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2339, file: !2340, line: 118, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2340, line: 95, size: 448, elements: !2346)
!2346 = !{!2347, !2348, !2353, !2354, !2355, !2356, !2357}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2345, file: !2340, line: 96, baseType: !200, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2345, file: !2340, line: 97, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2340, line: 60, baseType: !2351)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !2338}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2345, file: !2340, line: 98, baseType: !2349, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2345, file: !2340, line: 99, baseType: !498, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2345, file: !2340, line: 100, baseType: !498, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2345, file: !2340, line: 101, baseType: !375, size: 128, align: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2345, file: !2340, line: 102, baseType: !2338, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2325, file: !31, line: 113, baseType: !2339, size: 128, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2325, file: !31, line: 114, baseType: !1497, size: 192, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2325, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2325, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2325, file: !31, line: 117, baseType: !2363, size: 64, offset: 832)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2366)
!2366 = !{!2367, !2368, !2372, !2373}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2365, file: !31, line: 73, baseType: !841, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2365, file: !31, line: 78, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2324}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2365, file: !31, line: 83, baseType: !2369, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2365, file: !31, line: 89, baseType: !1028, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2325, file: !31, line: 118, baseType: !184, size: 64, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2325, file: !31, line: 119, baseType: !271, size: 32, offset: 960)
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !2325, file: !31, line: 120, baseType: !2377, size: 128, offset: 1024)
!2377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2325, file: !31, line: 120, size: 128, elements: !2378)
!2378 = !{!2379, !2385}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2377, file: !31, line: 121, baseType: !2380, size: 128)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2381, line: 6, size: 128, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2380, file: !2381, line: 7, baseType: !429, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2380, file: !2381, line: 8, baseType: !429, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2377, file: !31, line: 122, baseType: !2386)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2380, elements: !1718)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2321, file: !731, line: 162, baseType: !184, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !735, file: !731, line: 176, baseType: !375, size: 128, align: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !731, line: 179, baseType: !2390, size: 32, offset: 384)
!2390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !730, file: !731, line: 179, size: 32, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2390, file: !731, line: 184, baseType: !755, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2390, file: !731, line: 192, baseType: !7, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2390, file: !731, line: 194, baseType: !7, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2390, file: !731, line: 195, baseType: !271, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !730, file: !731, line: 199, baseType: !755, size: 32, offset: 416)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !665, file: !44, line: 1964, baseType: !2398, size: 64, offset: 1344)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!119, !605, !2401}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2403, line: 12, size: 256, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2404 = !{!2405, !2406, !2407, !2408, !2409}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2402, file: !2403, line: 13, baseType: !179, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2402, file: !2403, line: 16, baseType: !271, size: 32, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2402, file: !2403, line: 23, baseType: !181, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2402, file: !2403, line: 30, baseType: !181, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2402, file: !2403, line: 33, baseType: !2410, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !731, line: 27, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !665, file: !44, line: 1966, baseType: !2398, size: 64, offset: 1408)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !606, file: !44, line: 1424, baseType: !2414, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2416)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2417)
!2417 = !{!2418, !2464, !2468, !2472, !2473, !2474, !2475, !2476, !2481, !2486, !2490}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2416, file: !38, line: 323, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!271, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2449, !2450, !2451}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2423, file: !38, line: 295, baseType: !647, size: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2423, file: !38, line: 296, baseType: !188, size: 128, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2423, file: !38, line: 297, baseType: !188, size: 128, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2423, file: !38, line: 298, baseType: !188, size: 128, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2423, file: !38, line: 299, baseType: !196, size: 192, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2423, file: !38, line: 300, baseType: !212, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2423, file: !38, line: 301, baseType: !755, size: 32, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2423, file: !38, line: 302, baseType: !605, size: 64, offset: 768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2423, file: !38, line: 303, baseType: !2434, size: 64, offset: 832)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2435)
!2435 = !{!2436, !2448}
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2434, file: !38, line: 69, baseType: !2437, size: 32)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2434, file: !38, line: 69, size: 32, elements: !2438)
!2438 = !{!2439, !2440, !2441}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2437, file: !38, line: 70, baseType: !443, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2437, file: !38, line: 71, baseType: !451, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2437, file: !38, line: 72, baseType: !2442, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2443, line: 24, baseType: !2444)
!2443 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2443, line: 22, size: 32, elements: !2445)
!2445 = !{!2446}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2444, file: !2443, line: 23, baseType: !2447, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2443, line: 20, baseType: !449)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2434, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2423, file: !38, line: 304, baseType: !539, size: 64, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2423, file: !38, line: 305, baseType: !181, size: 64, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2423, file: !38, line: 306, baseType: !2452, size: 576, offset: 1024)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2453)
!2453 = !{!2454, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2452, file: !38, line: 206, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !210)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2452, file: !38, line: 207, baseType: !2455, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2452, file: !38, line: 208, baseType: !2455, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2452, file: !38, line: 209, baseType: !2455, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2452, file: !38, line: 210, baseType: !2455, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2452, file: !38, line: 211, baseType: !2455, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2452, file: !38, line: 212, baseType: !2455, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2452, file: !38, line: 213, baseType: !546, size: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2452, file: !38, line: 214, baseType: !546, size: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2416, file: !38, line: 324, baseType: !2465, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!2422, !605, !271}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2416, file: !38, line: 325, baseType: !2469, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2422}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2416, file: !38, line: 326, baseType: !2419, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2416, file: !38, line: 327, baseType: !2419, size: 64, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2416, file: !38, line: 328, baseType: !2419, size: 64, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2416, file: !38, line: 329, baseType: !693, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2416, file: !38, line: 332, baseType: !2477, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!2480, !437}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2416, file: !38, line: 333, baseType: !2482, size: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!271, !437, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2416, file: !38, line: 335, baseType: !2487, size: 64, offset: 576)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!271, !437, !2480}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2416, file: !38, line: 337, baseType: !2491, size: 64, offset: 640)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!271, !605, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !606, file: !44, line: 1425, baseType: !2496, size: 64, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2499)
!2499 = !{!2500, !2504, !2505, !2509, !2510, !2511, !2526, !2549, !2553, !2554, !2577}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2498, file: !38, line: 429, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!271, !605, !271, !271, !555}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2498, file: !38, line: 430, baseType: !693, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2498, file: !38, line: 431, baseType: !2506, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!271, !605, !7}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2498, file: !38, line: 432, baseType: !2506, size: 64, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2498, file: !38, line: 433, baseType: !693, size: 64, offset: 256)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2498, file: !38, line: 434, baseType: !2512, size: 64, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!271, !605, !271, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2516, file: !38, line: 416, baseType: !271, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2516, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2516, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2516, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2516, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2516, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2516, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2516, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2498, file: !38, line: 435, baseType: !2527, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!271, !605, !2434, !2530}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2531, file: !38, line: 344, baseType: !271, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2531, file: !38, line: 345, baseType: !429, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2531, file: !38, line: 346, baseType: !429, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2531, file: !38, line: 347, baseType: !429, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2531, file: !38, line: 348, baseType: !429, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2531, file: !38, line: 349, baseType: !429, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2531, file: !38, line: 350, baseType: !429, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2531, file: !38, line: 351, baseType: !206, size: 64, offset: 448)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2531, file: !38, line: 353, baseType: !206, size: 64, offset: 512)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2531, file: !38, line: 354, baseType: !271, size: 32, offset: 576)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2531, file: !38, line: 355, baseType: !271, size: 32, offset: 608)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2531, file: !38, line: 356, baseType: !429, size: 64, offset: 640)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2531, file: !38, line: 357, baseType: !429, size: 64, offset: 704)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2531, file: !38, line: 358, baseType: !429, size: 64, offset: 768)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2531, file: !38, line: 359, baseType: !206, size: 64, offset: 832)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2531, file: !38, line: 360, baseType: !271, size: 32, offset: 896)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2498, file: !38, line: 436, baseType: !2550, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!271, !605, !2494, !2530}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2498, file: !38, line: 438, baseType: !2527, size: 64, offset: 512)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2498, file: !38, line: 439, baseType: !2555, size: 64, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!271, !605, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2559, file: !38, line: 410, baseType: !7, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2559, file: !38, line: 411, baseType: !2563, size: 1344, offset: 64)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2564, size: 1344, elements: !287)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2565)
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2576}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2564, file: !38, line: 396, baseType: !7, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2564, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2564, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2564, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2564, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2564, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2564, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2564, file: !38, line: 404, baseType: !431, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2564, file: !38, line: 405, baseType: !2575, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !180, line: 126, baseType: !429)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2564, file: !38, line: 406, baseType: !2575, size: 64, offset: 384)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2498, file: !38, line: 440, baseType: !2506, size: 64, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !606, file: !44, line: 1426, baseType: !2579, size: 64, offset: 576)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2581)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !606, file: !44, line: 1427, baseType: !181, size: 64, offset: 640)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !606, file: !44, line: 1428, baseType: !181, size: 64, offset: 704)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !606, file: !44, line: 1429, baseType: !181, size: 64, offset: 768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !606, file: !44, line: 1430, baseType: !392, size: 64, offset: 832)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !606, file: !44, line: 1431, baseType: !775, size: 256, offset: 896)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !606, file: !44, line: 1432, baseType: !271, size: 32, offset: 1152)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !606, file: !44, line: 1433, baseType: !755, size: 32, offset: 1184)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !606, file: !44, line: 1437, baseType: !2590, size: 64, offset: 1216)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2593)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !606, file: !44, line: 1449, baseType: !2595, size: 64, offset: 1280)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !408, line: 34, size: 64, elements: !2596)
!2596 = !{!2597}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2595, file: !408, line: 35, baseType: !411, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !606, file: !44, line: 1450, baseType: !188, size: 128, offset: 1344)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !606, file: !44, line: 1451, baseType: !2600, size: 64, offset: 1472)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !606, file: !44, line: 1452, baseType: !1919, size: 64, offset: 1536)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !606, file: !44, line: 1453, baseType: !2604, size: 64, offset: 1600)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !606, file: !44, line: 1454, baseType: !647, size: 128, offset: 1664)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !606, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !606, file: !44, line: 1456, baseType: !2609, size: 2432, offset: 1856)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2610)
!2610 = !{!2611, !2612, !2613, !2615, !2647}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2609, file: !38, line: 519, baseType: !7, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2609, file: !38, line: 520, baseType: !775, size: 256, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2609, file: !38, line: 521, baseType: !2614, size: 192, offset: 320)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 192, elements: !287)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2609, file: !38, line: 522, baseType: !2616, size: 1728, offset: 512)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2617, size: 1728, elements: !287)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2618)
!2618 = !{!2619, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2617, file: !38, line: 223, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2622)
!2622 = !{!2623, !2624, !2637, !2638}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2621, file: !38, line: 444, baseType: !271, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2621, file: !38, line: 445, baseType: !2625, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2627, file: !38, line: 311, baseType: !693, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2627, file: !38, line: 312, baseType: !693, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2627, file: !38, line: 313, baseType: !693, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2627, file: !38, line: 314, baseType: !693, size: 64, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2627, file: !38, line: 315, baseType: !2419, size: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2627, file: !38, line: 316, baseType: !2419, size: 64, offset: 320)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2627, file: !38, line: 317, baseType: !2419, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2627, file: !38, line: 318, baseType: !2491, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2621, file: !38, line: 446, baseType: !638, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2621, file: !38, line: 447, baseType: !2620, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2617, file: !38, line: 224, baseType: !271, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2617, file: !38, line: 226, baseType: !188, size: 128, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2617, file: !38, line: 227, baseType: !181, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2617, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2617, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2617, file: !38, line: 230, baseType: !2455, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2617, file: !38, line: 231, baseType: !2455, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2617, file: !38, line: 232, baseType: !184, size: 64, offset: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2609, file: !38, line: 523, baseType: !2648, size: 192, offset: 2240)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2625, size: 192, elements: !287)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !606, file: !44, line: 1458, baseType: !2650, size: 2112, offset: 4288)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2651)
!2651 = !{!2652, !2653, !2654}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2650, file: !44, line: 1411, baseType: !271, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2650, file: !44, line: 1412, baseType: !1476, size: 128, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2650, file: !44, line: 1413, baseType: !2655, size: 1920, offset: 192)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2656, size: 1920, elements: !287)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2657, line: 12, size: 640, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2658 = !{!2659, !2667, !2669, !2674, !2675}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2656, file: !2657, line: 13, baseType: !2660, size: 320)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2661, line: 17, size: 320, elements: !2662)
!2661 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2662 = !{!2663, !2664, !2665, !2666}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2660, file: !2661, line: 18, baseType: !271, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2660, file: !2661, line: 19, baseType: !271, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2660, file: !2661, line: 20, baseType: !1476, size: 128, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2660, file: !2661, line: 22, baseType: !375, size: 128, align: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2656, file: !2657, line: 14, baseType: !2668, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2656, file: !2657, line: 15, baseType: !2670, size: 64, offset: 384)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2671, line: 16, size: 64, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2672 = !{!2673}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2670, file: !2671, line: 17, baseType: !1211, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2656, file: !2657, line: 16, baseType: !1476, size: 128, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2656, file: !2657, line: 17, baseType: !755, size: 32, offset: 576)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !606, file: !44, line: 1465, baseType: !184, size: 64, offset: 6400)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !606, file: !44, line: 1468, baseType: !425, size: 32, offset: 6464)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !606, file: !44, line: 1470, baseType: !546, size: 64, offset: 6528)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !606, file: !44, line: 1471, baseType: !546, size: 64, offset: 6592)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !606, file: !44, line: 1473, baseType: !426, size: 32, offset: 6656)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !606, file: !44, line: 1474, baseType: !2682, size: 64, offset: 6720)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !606, file: !44, line: 1477, baseType: !2685, size: 256, offset: 6784)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !2215)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !606, file: !44, line: 1478, baseType: !2687, size: 128, offset: 7040)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2688, line: 18, baseType: !2689)
!2688 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2688, line: 16, size: 128, elements: !2690)
!2690 = !{!2691}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2689, file: !2688, line: 17, baseType: !2692, size: 128)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 128, elements: !1730)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !606, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !606, file: !44, line: 1481, baseType: !2695, size: 32, offset: 7200)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !180, line: 150, baseType: !7)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !606, file: !44, line: 1487, baseType: !196, size: 192, offset: 7232)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !606, file: !44, line: 1493, baseType: !249, size: 64, offset: 7424)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !606, file: !44, line: 1495, baseType: !2699, size: 64, offset: 7488)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2701)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !390, line: 135, size: 1024, align: 512, elements: !2702)
!2702 = !{!2703, !2707, !2708, !2715, !2721, !2725, !2729, !2733, !2734, !2738, !2742, !2747, !2751}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2701, file: !390, line: 136, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!271, !392, !7}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2701, file: !390, line: 137, baseType: !2704, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2701, file: !390, line: 138, baseType: !2709, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!271, !2712, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2701, file: !390, line: 139, baseType: !2716, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!271, !2712, !7, !249, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2701, file: !390, line: 141, baseType: !2722, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!271, !2712}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2701, file: !390, line: 142, baseType: !2726, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!271, !392}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2701, file: !390, line: 143, baseType: !2730, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !392}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2701, file: !390, line: 144, baseType: !2730, size: 64, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2701, file: !390, line: 145, baseType: !2735, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !392, !437}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2701, file: !390, line: 146, baseType: !2739, size: 64, offset: 576)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!182, !392, !182, !271}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2701, file: !390, line: 147, baseType: !2743, size: 64, offset: 640)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!388, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2701, file: !390, line: 148, baseType: !2748, size: 64, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!271, !555, !498}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2701, file: !390, line: 149, baseType: !2752, size: 64, offset: 768)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!392, !392, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !606, file: !44, line: 1500, baseType: !271, size: 32, offset: 7552)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !606, file: !44, line: 1502, baseType: !2759, size: 448, offset: 7616)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2403, line: 60, size: 448, elements: !2760)
!2760 = !{!2761, !2766, !2767, !2768, !2769, !2770, !2771}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2759, file: !2403, line: 61, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!181, !2765, !2401}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2759, file: !2403, line: 63, baseType: !2762, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2759, file: !2403, line: 66, baseType: !119, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2759, file: !2403, line: 67, baseType: !271, size: 32, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2759, file: !2403, line: 68, baseType: !7, size: 32, offset: 224)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2759, file: !2403, line: 71, baseType: !188, size: 128, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2759, file: !2403, line: 77, baseType: !2772, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !606, file: !44, line: 1505, baseType: !200, size: 64, offset: 8064)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !606, file: !44, line: 1508, baseType: !200, size: 64, offset: 8128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !606, file: !44, line: 1511, baseType: !271, size: 32, offset: 8192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !606, file: !44, line: 1514, baseType: !910, size: 32, offset: 8224)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !606, file: !44, line: 1517, baseType: !2778, size: 64, offset: 8256)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !118, line: 18, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !606, file: !44, line: 1518, baseType: !643, size: 64, offset: 8320)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !606, file: !44, line: 1525, baseType: !1708, size: 64, offset: 8384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !606, file: !44, line: 1532, baseType: !2783, size: 64, offset: 8448)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2784, line: 52, size: 64, elements: !2785)
!2784 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2785 = !{!2786}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2783, file: !2784, line: 53, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2784, line: 40, size: 256, elements: !2789)
!2789 = !{!2790, !2791, !2796}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2788, file: !2784, line: 42, baseType: !212)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2788, file: !2784, line: 44, baseType: !2792, size: 192)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2784, line: 28, size: 192, elements: !2793)
!2793 = !{!2794, !2795}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2792, file: !2784, line: 29, baseType: !188, size: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2792, file: !2784, line: 31, baseType: !119, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2788, file: !2784, line: 49, baseType: !119, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !606, file: !44, line: 1533, baseType: !2783, size: 64, offset: 8512)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !606, file: !44, line: 1534, baseType: !375, size: 128, align: 64, offset: 8576)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !606, file: !44, line: 1535, baseType: !231, size: 256, offset: 8704)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !606, file: !44, line: 1537, baseType: !196, size: 192, offset: 8960)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !606, file: !44, line: 1542, baseType: !271, size: 32, offset: 9152)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !606, file: !44, line: 1545, baseType: !212, offset: 9184)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !606, file: !44, line: 1546, baseType: !188, size: 128, offset: 9216)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !606, file: !44, line: 1548, baseType: !212, offset: 9344)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !606, file: !44, line: 1549, baseType: !188, size: 128, offset: 9344)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !438, file: !44, line: 624, baseType: !742, size: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !438, file: !44, line: 631, baseType: !181, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !44, line: 639, baseType: !2809, size: 32, offset: 384)
!2809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !44, line: 639, size: 32, elements: !2810)
!2810 = !{!2811, !2813}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2809, file: !44, line: 640, baseType: !2812, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2809, file: !44, line: 641, baseType: !7, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !438, file: !44, line: 643, baseType: !521, size: 32, offset: 416)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !438, file: !44, line: 644, baseType: !539, size: 64, offset: 448)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !438, file: !44, line: 645, baseType: !542, size: 128, offset: 512)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !438, file: !44, line: 646, baseType: !542, size: 128, offset: 640)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !438, file: !44, line: 647, baseType: !542, size: 128, offset: 768)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !438, file: !44, line: 648, baseType: !212, offset: 896)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !438, file: !44, line: 649, baseType: !327, size: 16, offset: 896)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !438, file: !44, line: 650, baseType: !1347, size: 8, offset: 912)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !438, file: !44, line: 651, baseType: !1347, size: 8, offset: 920)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !438, file: !44, line: 652, baseType: !2575, size: 64, offset: 960)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !438, file: !44, line: 659, baseType: !181, size: 64, offset: 1024)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !438, file: !44, line: 660, baseType: !775, size: 256, offset: 1088)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !438, file: !44, line: 662, baseType: !181, size: 64, offset: 1344)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !438, file: !44, line: 663, baseType: !181, size: 64, offset: 1408)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !438, file: !44, line: 665, baseType: !647, size: 128, offset: 1472)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !438, file: !44, line: 666, baseType: !188, size: 128, offset: 1600)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !438, file: !44, line: 675, baseType: !188, size: 128, offset: 1728)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !438, file: !44, line: 676, baseType: !188, size: 128, offset: 1856)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !438, file: !44, line: 677, baseType: !188, size: 128, offset: 1984)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !44, line: 678, baseType: !2834, size: 128, offset: 2112)
!2834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !44, line: 678, size: 128, elements: !2835)
!2835 = !{!2836, !2837}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2834, file: !44, line: 679, baseType: !643, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2834, file: !44, line: 680, baseType: !375, size: 128, align: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !438, file: !44, line: 682, baseType: !202, size: 64, offset: 2240)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !438, file: !44, line: 683, baseType: !202, size: 64, offset: 2304)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !438, file: !44, line: 684, baseType: !755, size: 32, offset: 2368)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !438, file: !44, line: 685, baseType: !755, size: 32, offset: 2400)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !438, file: !44, line: 686, baseType: !755, size: 32, offset: 2432)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !438, file: !44, line: 688, baseType: !755, size: 32, offset: 2464)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !44, line: 690, baseType: !2845, size: 64, offset: 2496)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !44, line: 690, size: 64, elements: !2846)
!2846 = !{!2847, !3070}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2845, file: !44, line: 691, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2850)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2851)
!2851 = !{!2852, !2853, !2857, !2862, !2866, !2867, !2868, !2872, !2885, !2886, !2894, !2898, !2899, !2903, !2904, !2908, !2913, !2914, !2918, !2922, !3030, !3034, !3035, !3039, !3040, !3044, !3048, !3053, !3057, !3061, !3065, !3069}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2850, file: !44, line: 1823, baseType: !638, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2850, file: !44, line: 1824, baseType: !2854, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!539, !362, !539, !271}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2850, file: !44, line: 1825, baseType: !2858, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!317, !362, !182, !332, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2850, file: !44, line: 1826, baseType: !2863, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!317, !362, !249, !332, !2861}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2850, file: !44, line: 1827, baseType: !845, size: 64, offset: 256)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2850, file: !44, line: 1828, baseType: !845, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2850, file: !44, line: 1829, baseType: !2869, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!271, !848, !498}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2850, file: !44, line: 1830, baseType: !2873, size: 64, offset: 448)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!271, !362, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2878)
!2878 = !{!2879, !2884}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2877, file: !44, line: 1777, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2881)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!271, !2876, !249, !271, !539, !429, !7}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2877, file: !44, line: 1778, baseType: !539, size: 64, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2850, file: !44, line: 1831, baseType: !2873, size: 64, offset: 512)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2850, file: !44, line: 1832, baseType: !2887, size: 64, offset: 576)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!2890, !362, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2891, line: 52, baseType: !7)
!2891 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !44, line: 56, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2850, file: !44, line: 1833, baseType: !2895, size: 64, offset: 640)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!119, !362, !7, !181}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2850, file: !44, line: 1834, baseType: !2895, size: 64, offset: 704)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2850, file: !44, line: 1835, baseType: !2900, size: 64, offset: 768)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!271, !362, !982}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2850, file: !44, line: 1836, baseType: !181, size: 64, offset: 832)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2850, file: !44, line: 1837, baseType: !2905, size: 64, offset: 896)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!271, !437, !362}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2850, file: !44, line: 1838, baseType: !2909, size: 64, offset: 960)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!271, !362, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !184)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2850, file: !44, line: 1839, baseType: !2905, size: 64, offset: 1024)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2850, file: !44, line: 1840, baseType: !2915, size: 64, offset: 1088)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!271, !362, !539, !539, !271}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2850, file: !44, line: 1841, baseType: !2919, size: 64, offset: 1152)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!271, !271, !362, !271}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2850, file: !44, line: 1842, baseType: !2923, size: 64, offset: 1216)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!271, !362, !271, !2926}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2960, !2961, !2962, !2975, !3006}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2927, file: !44, line: 1063, baseType: !2926, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2927, file: !44, line: 1064, baseType: !188, size: 128, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2927, file: !44, line: 1065, baseType: !647, size: 128, offset: 192)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2927, file: !44, line: 1066, baseType: !188, size: 128, offset: 320)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2927, file: !44, line: 1069, baseType: !188, size: 128, offset: 448)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2927, file: !44, line: 1072, baseType: !2912, size: 64, offset: 576)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2927, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2927, file: !44, line: 1074, baseType: !435, size: 8, offset: 672)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2927, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2927, file: !44, line: 1076, baseType: !271, size: 32, offset: 736)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2927, file: !44, line: 1077, baseType: !1476, size: 128, offset: 768)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2927, file: !44, line: 1078, baseType: !362, size: 64, offset: 896)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2927, file: !44, line: 1079, baseType: !539, size: 64, offset: 960)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2927, file: !44, line: 1080, baseType: !539, size: 64, offset: 1024)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2927, file: !44, line: 1082, baseType: !2944, size: 64, offset: 1088)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2946)
!2946 = !{!2947, !2955, !2956, !2957, !2958, !2959}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2945, file: !44, line: 1315, baseType: !2948)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2949, line: 20, baseType: !2950)
!2949 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2949, line: 11, elements: !2951)
!2951 = !{!2952}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2950, file: !2949, line: 12, baseType: !2953)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !224, line: 33, baseType: !2954)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 31, elements: !226)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2945, file: !44, line: 1316, baseType: !271, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2945, file: !44, line: 1317, baseType: !271, size: 32, offset: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2945, file: !44, line: 1318, baseType: !2944, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2945, file: !44, line: 1319, baseType: !362, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2945, file: !44, line: 1320, baseType: !375, size: 128, align: 64, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2927, file: !44, line: 1084, baseType: !181, size: 64, offset: 1152)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2927, file: !44, line: 1085, baseType: !181, size: 64, offset: 1216)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2927, file: !44, line: 1087, baseType: !2963, size: 64, offset: 1280)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2965)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2966)
!2966 = !{!2967, !2971}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2965, file: !44, line: 1012, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{null, !2926, !2926}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2965, file: !44, line: 1013, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{null, !2926}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2927, file: !44, line: 1088, baseType: !2976, size: 64, offset: 1344)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2978)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2979)
!2979 = !{!2980, !2984, !2988, !2989, !2993, !2997, !3001, !3005}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2978, file: !44, line: 1017, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!2912, !2912}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2978, file: !44, line: 1018, baseType: !2985, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2912}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2978, file: !44, line: 1019, baseType: !2972, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2978, file: !44, line: 1020, baseType: !2990, size: 64, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!271, !2926, !271}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2978, file: !44, line: 1021, baseType: !2994, size: 64, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!498, !2926}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2978, file: !44, line: 1022, baseType: !2998, size: 64, offset: 320)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!271, !2926, !271, !187}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2978, file: !44, line: 1023, baseType: !3002, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !2926, !822}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2978, file: !44, line: 1024, baseType: !2994, size: 64, offset: 448)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2927, file: !44, line: 1097, baseType: !3007, size: 256, offset: 1408)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2927, file: !44, line: 1089, size: 256, elements: !3008)
!3008 = !{!3009, !3018, !3024}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3007, file: !44, line: 1090, baseType: !3010, size: 256)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3011, line: 10, size: 256, elements: !3012)
!3011 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3012 = !{!3013, !3014, !3017}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3010, file: !3011, line: 11, baseType: !425, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3010, file: !3011, line: 12, baseType: !3015, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3011, line: 5, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3010, file: !3011, line: 13, baseType: !188, size: 128, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3007, file: !44, line: 1091, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3011, line: 17, size: 64, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3019, file: !3011, line: 18, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3011, line: 16, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3007, file: !44, line: 1096, baseType: !3025, size: 192)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3007, file: !44, line: 1092, size: 192, elements: !3026)
!3026 = !{!3027, !3028, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3025, file: !44, line: 1093, baseType: !188, size: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3025, file: !44, line: 1094, baseType: !271, size: 32, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3025, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2850, file: !44, line: 1843, baseType: !3031, size: 64, offset: 1280)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!317, !362, !729, !271, !332, !2861, !271}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2850, file: !44, line: 1844, baseType: !1102, size: 64, offset: 1344)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2850, file: !44, line: 1845, baseType: !3036, size: 64, offset: 1408)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!271, !271}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2850, file: !44, line: 1846, baseType: !2923, size: 64, offset: 1472)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2850, file: !44, line: 1847, baseType: !3041, size: 64, offset: 1536)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!317, !2083, !362, !2861, !332, !7}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2850, file: !44, line: 1848, baseType: !3045, size: 64, offset: 1600)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!317, !362, !2861, !2083, !332, !7}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2850, file: !44, line: 1849, baseType: !3049, size: 64, offset: 1664)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!271, !362, !119, !3052, !822}
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2850, file: !44, line: 1850, baseType: !3054, size: 64, offset: 1728)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!119, !362, !271, !539, !539}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2850, file: !44, line: 1852, baseType: !3058, size: 64, offset: 1792)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !719, !362}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2850, file: !44, line: 1856, baseType: !3062, size: 64, offset: 1856)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!317, !362, !539, !362, !539, !332, !7}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2850, file: !44, line: 1858, baseType: !3066, size: 64, offset: 1920)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!539, !362, !539, !362, !539, !539, !7}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2850, file: !44, line: 1861, baseType: !2915, size: 64, offset: 1984)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2845, file: !44, line: 692, baseType: !672, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !438, file: !44, line: 694, baseType: !3072, size: 64, offset: 2560)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3078}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3073, file: !44, line: 1101, baseType: !212)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3073, file: !44, line: 1102, baseType: !188, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3073, file: !44, line: 1103, baseType: !188, size: 128, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3073, file: !44, line: 1104, baseType: !188, size: 128, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !438, file: !44, line: 695, baseType: !743, size: 1216, align: 64, offset: 2624)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !438, file: !44, line: 696, baseType: !188, size: 128, offset: 3840)
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !44, line: 697, baseType: !3082, size: 64, offset: 3968)
!3082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !44, line: 697, size: 64, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3089, !3090}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3082, file: !44, line: 698, baseType: !2083, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3082, file: !44, line: 699, baseType: !2600, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3082, file: !44, line: 700, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3082, file: !44, line: 701, baseType: !182, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3082, file: !44, line: 702, baseType: !7, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !438, file: !44, line: 705, baseType: !426, size: 32, offset: 4032)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !438, file: !44, line: 708, baseType: !426, size: 32, offset: 4064)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !438, file: !44, line: 709, baseType: !2682, size: 64, offset: 4096)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !438, file: !44, line: 720, baseType: !184, size: 64, offset: 4160)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !393, file: !390, line: 98, baseType: !3096, size: 256, offset: 448)
!3096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 256, elements: !2215)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !393, file: !390, line: 101, baseType: !3098, size: 32, offset: 704)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3099, line: 25, size: 32, elements: !3100)
!3099 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3100 = !{!3101}
!3101 = !DIDerivedType(tag: DW_TAG_member, scope: !3098, file: !3099, line: 26, baseType: !3102, size: 32)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3098, file: !3099, line: 26, size: 32, elements: !3103)
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !3102, file: !3099, line: 30, baseType: !3105, size: 32)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3099, line: 30, size: 32, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3105, file: !3099, line: 31, baseType: !212)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3105, file: !3099, line: 32, baseType: !271, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !393, file: !390, line: 102, baseType: !2699, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !393, file: !390, line: 103, baseType: !605, size: 64, offset: 832)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !393, file: !390, line: 104, baseType: !181, size: 64, offset: 896)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !393, file: !390, line: 105, baseType: !184, size: 64, offset: 960)
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !390, line: 107, baseType: !3114, size: 128, offset: 1024)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !390, line: 107, size: 128, elements: !3115)
!3115 = !{!3116, !3117}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3114, file: !390, line: 108, baseType: !188, size: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3114, file: !390, line: 109, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !393, file: !390, line: 111, baseType: !188, size: 128, offset: 1152)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !393, file: !390, line: 112, baseType: !188, size: 128, offset: 1280)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !393, file: !390, line: 120, baseType: !3122, size: 128, offset: 1408)
!3122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !390, line: 116, size: 128, elements: !3123)
!3123 = !{!3124, !3125, !3126}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3122, file: !390, line: 117, baseType: !647, size: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3122, file: !390, line: 118, baseType: !407, size: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3122, file: !390, line: 119, baseType: !375, size: 128, align: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !363, file: !44, line: 922, baseType: !437, size: 64, offset: 256)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !363, file: !44, line: 923, baseType: !2848, size: 64, offset: 320)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !363, file: !44, line: 929, baseType: !212, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !363, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !363, file: !44, line: 931, baseType: !200, size: 64, offset: 448)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !363, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !363, file: !44, line: 933, baseType: !2695, size: 32, offset: 544)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !363, file: !44, line: 934, baseType: !196, size: 192, offset: 576)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !363, file: !44, line: 935, baseType: !539, size: 64, offset: 768)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !363, file: !44, line: 936, baseType: !3137, size: 192, offset: 832)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3137, file: !44, line: 886, baseType: !2948)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3137, file: !44, line: 887, baseType: !1466, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3137, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3137, file: !44, line: 889, baseType: !443, size: 32, offset: 96)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3137, file: !44, line: 889, baseType: !443, size: 32, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3137, file: !44, line: 890, baseType: !271, size: 32, offset: 160)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !363, file: !44, line: 937, baseType: !1542, size: 64, offset: 1024)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !363, file: !44, line: 938, baseType: !3147, size: 256, offset: 1088)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3147, file: !44, line: 897, baseType: !181, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3147, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3147, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3147, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3147, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3147, file: !44, line: 904, baseType: !539, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !363, file: !44, line: 940, baseType: !429, size: 64, offset: 1344)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !363, file: !44, line: 945, baseType: !184, size: 64, offset: 1408)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !363, file: !44, line: 949, baseType: !188, size: 128, offset: 1472)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !363, file: !44, line: 950, baseType: !188, size: 128, offset: 1600)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !363, file: !44, line: 952, baseType: !742, size: 64, offset: 1728)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !363, file: !44, line: 953, baseType: !910, size: 32, offset: 1792)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !363, file: !44, line: 954, baseType: !910, size: 32, offset: 1824)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !353, file: !311, line: 174, baseType: !359, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !353, file: !311, line: 176, baseType: !3164, size: 64, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!271, !362, !253, !352, !982}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !341, file: !311, line: 90, baseType: !336, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !341, file: !311, line: 91, baseType: !3169, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !301, file: !246, line: 143, baseType: !3171, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!3174, !253}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3176)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3177)
!3177 = !{!3178, !3179, !3183, !3187, !3193, !3197}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3176, file: !61, line: 40, baseType: !60, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3176, file: !61, line: 41, baseType: !3180, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!498}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3176, file: !61, line: 42, baseType: !3184, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!184}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3176, file: !61, line: 43, baseType: !3188, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!2112, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3176, file: !61, line: 44, baseType: !3194, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!2112}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3176, file: !61, line: 45, baseType: !476, size: 64, offset: 320)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !301, file: !246, line: 144, baseType: !3199, size: 64, offset: 320)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!2112, !253}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !301, file: !246, line: 145, baseType: !3203, size: 64, offset: 384)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !253, !3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !245, file: !246, line: 70, baseType: !3209, size: 64, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3211, line: 123, size: 1024, elements: !3212)
!3211 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3341, !3342, !3343, !3344, !3345}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3210, file: !3211, line: 124, baseType: !755, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3210, file: !3211, line: 125, baseType: !755, size: 32, offset: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3210, file: !3211, line: 135, baseType: !3209, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3210, file: !3211, line: 136, baseType: !249, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3210, file: !3211, line: 138, baseType: !768, size: 192, align: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3210, file: !3211, line: 140, baseType: !2112, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3210, file: !3211, line: 141, baseType: !7, size: 32, offset: 448)
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !3210, file: !3211, line: 142, baseType: !3221, size: 256, offset: 512)
!3221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3210, file: !3211, line: 142, size: 256, elements: !3222)
!3222 = !{!3223, !3269, !3273}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3221, file: !3211, line: 143, baseType: !3224, size: 192)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3211, line: 91, size: 192, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3224, file: !3211, line: 92, baseType: !181, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3224, file: !3211, line: 94, baseType: !764, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3224, file: !3211, line: 100, baseType: !3229, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3211, line: 180, size: 704, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3241, !3242, !3243, !3267, !3268}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3230, file: !3211, line: 182, baseType: !3209, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3230, file: !3211, line: 183, baseType: !7, size: 32, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3230, file: !3211, line: 186, baseType: !3235, size: 192, offset: 128)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3236, line: 19, size: 192, elements: !3237)
!3236 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3237 = !{!3238, !3239, !3240}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3235, file: !3236, line: 20, baseType: !747, size: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3235, file: !3236, line: 21, baseType: !7, size: 32, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3235, file: !3236, line: 22, baseType: !7, size: 32, offset: 160)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3230, file: !3211, line: 187, baseType: !425, size: 32, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3230, file: !3211, line: 188, baseType: !425, size: 32, offset: 352)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3230, file: !3211, line: 189, baseType: !3244, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3211, line: 168, size: 320, elements: !3246)
!3246 = !{!3247, !3251, !3255, !3259, !3263}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3245, file: !3211, line: 169, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!271, !719, !3229}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3245, file: !3211, line: 171, baseType: !3252, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!271, !3209, !249, !326}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3245, file: !3211, line: 173, baseType: !3256, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!271, !3209}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3245, file: !3211, line: 174, baseType: !3260, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!271, !3209, !3209, !249}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3245, file: !3211, line: 176, baseType: !3264, size: 64, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!271, !719, !3209, !3229}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3230, file: !3211, line: 192, baseType: !188, size: 128, offset: 448)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3230, file: !3211, line: 194, baseType: !1476, size: 128, offset: 576)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3221, file: !3211, line: 144, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3211, line: 103, size: 64, elements: !3271)
!3271 = !{!3272}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3270, file: !3211, line: 104, baseType: !3209, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3221, file: !3211, line: 145, baseType: !3274, size: 256)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3211, line: 107, size: 256, elements: !3275)
!3275 = !{!3276, !3336, !3339, !3340}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3274, file: !3211, line: 108, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3279)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3211, line: 217, size: 768, elements: !3280)
!3280 = !{!3281, !3301, !3305, !3309, !3313, !3317, !3321, !3325, !3326, !3327, !3328, !3332}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3279, file: !3211, line: 222, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!271, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3211, line: 197, size: 1088, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3286, file: !3211, line: 199, baseType: !3209, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3286, file: !3211, line: 200, baseType: !362, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3286, file: !3211, line: 201, baseType: !719, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3286, file: !3211, line: 202, baseType: !184, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3286, file: !3211, line: 205, baseType: !196, size: 192, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3286, file: !3211, line: 206, baseType: !196, size: 192, offset: 448)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3286, file: !3211, line: 207, baseType: !271, size: 32, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3286, file: !3211, line: 208, baseType: !188, size: 128, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3286, file: !3211, line: 209, baseType: !182, size: 64, offset: 832)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3286, file: !3211, line: 211, baseType: !332, size: 64, offset: 896)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3286, file: !3211, line: 212, baseType: !498, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3286, file: !3211, line: 213, baseType: !498, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3286, file: !3211, line: 214, baseType: !1010, size: 64, offset: 1024)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3279, file: !3211, line: 223, baseType: !3302, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !3285}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3279, file: !3211, line: 236, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!271, !719, !184}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3279, file: !3211, line: 238, baseType: !3310, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!184, !719, !2861}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3279, file: !3211, line: 239, baseType: !3314, size: 64, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!184, !719, !184, !2861}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3279, file: !3211, line: 240, baseType: !3318, size: 64, offset: 320)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !719, !184}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3279, file: !3211, line: 242, baseType: !3322, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!317, !3285, !182, !332, !539}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3279, file: !3211, line: 252, baseType: !332, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3279, file: !3211, line: 259, baseType: !498, size: 8, offset: 512)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3279, file: !3211, line: 260, baseType: !3322, size: 64, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3279, file: !3211, line: 263, baseType: !3329, size: 64, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!2890, !3285, !2892}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3279, file: !3211, line: 266, baseType: !3333, size: 64, offset: 704)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!271, !3285, !982}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3274, file: !3211, line: 109, baseType: !3337, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3211, line: 31, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3274, file: !3211, line: 110, baseType: !539, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3274, file: !3211, line: 111, baseType: !3209, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3210, file: !3211, line: 148, baseType: !184, size: 64, offset: 768)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3210, file: !3211, line: 154, baseType: !429, size: 64, offset: 832)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3210, file: !3211, line: 156, baseType: !327, size: 16, offset: 896)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3210, file: !3211, line: 157, baseType: !326, size: 16, offset: 912)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3210, file: !3211, line: 158, baseType: !3346, size: 64, offset: 960)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3211, line: 32, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !245, file: !246, line: 71, baseType: !3349, size: 32, offset: 448)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3350, line: 19, size: 32, elements: !3351)
!3350 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3351 = !{!3352}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3349, file: !3350, line: 20, baseType: !1225, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !245, file: !246, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !245, file: !246, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !245, file: !246, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !245, file: !246, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !245, file: !246, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !73, line: 463, baseType: !3359, size: 64, offset: 512)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !242, file: !73, line: 465, baseType: !3361, size: 64, offset: 576)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !242, file: !73, line: 467, baseType: !249, size: 64, offset: 640)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !73, line: 468, baseType: !3365, size: 64, offset: 704)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3367)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3368)
!3368 = !{!3369, !3370, !3371, !3375, !3380, !3384}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3367, file: !73, line: 88, baseType: !249, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3367, file: !73, line: 89, baseType: !338, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3367, file: !73, line: 90, baseType: !3372, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!271, !3359, !282}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3367, file: !73, line: 91, baseType: !3376, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!182, !3359, !3379, !3206, !3207}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3367, file: !73, line: 93, baseType: !3381, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !3359}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3367, file: !73, line: 95, baseType: !3385, size: 64, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3387)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3388)
!3388 = !{!3389, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3387, file: !80, line: 279, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!271, !3359}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3387, file: !80, line: 280, baseType: !3381, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3387, file: !80, line: 281, baseType: !3390, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3387, file: !80, line: 282, baseType: !3390, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3387, file: !80, line: 283, baseType: !3390, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3387, file: !80, line: 284, baseType: !3390, size: 64, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3387, file: !80, line: 285, baseType: !3390, size: 64, offset: 384)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3387, file: !80, line: 286, baseType: !3390, size: 64, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3387, file: !80, line: 287, baseType: !3390, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3387, file: !80, line: 288, baseType: !3390, size: 64, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3387, file: !80, line: 289, baseType: !3390, size: 64, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3387, file: !80, line: 290, baseType: !3390, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3387, file: !80, line: 291, baseType: !3390, size: 64, offset: 768)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3387, file: !80, line: 292, baseType: !3390, size: 64, offset: 832)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3387, file: !80, line: 293, baseType: !3390, size: 64, offset: 896)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3387, file: !80, line: 294, baseType: !3390, size: 64, offset: 960)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3387, file: !80, line: 295, baseType: !3390, size: 64, offset: 1024)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3387, file: !80, line: 296, baseType: !3390, size: 64, offset: 1088)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3387, file: !80, line: 297, baseType: !3390, size: 64, offset: 1152)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3387, file: !80, line: 298, baseType: !3390, size: 64, offset: 1216)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3387, file: !80, line: 299, baseType: !3390, size: 64, offset: 1280)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3387, file: !80, line: 300, baseType: !3390, size: 64, offset: 1344)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3387, file: !80, line: 301, baseType: !3390, size: 64, offset: 1408)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !242, file: !73, line: 470, baseType: !3416, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3418, line: 82, size: 1408, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3483, !3486, !3487}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3417, file: !3418, line: 83, baseType: !249, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3417, file: !3418, line: 84, baseType: !249, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3417, file: !3418, line: 85, baseType: !3359, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3417, file: !3418, line: 86, baseType: !338, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3417, file: !3418, line: 87, baseType: !338, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3417, file: !3418, line: 88, baseType: !338, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3417, file: !3418, line: 90, baseType: !3427, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!271, !3359, !3430}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3443, !3447, !3448, !3449, !3450, !3451, !3459, !3460, !3461, !3462, !3463, !3464}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3431, file: !67, line: 96, baseType: !249, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3431, file: !67, line: 97, baseType: !3416, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3431, file: !67, line: 99, baseType: !638, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3431, file: !67, line: 100, baseType: !249, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3431, file: !67, line: 102, baseType: !498, size: 8, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3431, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3431, file: !67, line: 105, baseType: !3440, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3442)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !67, line: 105, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3431, file: !67, line: 106, baseType: !3444, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !67, line: 106, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3431, file: !67, line: 108, baseType: !3390, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3431, file: !67, line: 109, baseType: !3381, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3431, file: !67, line: 110, baseType: !3390, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3431, file: !67, line: 111, baseType: !3381, size: 64, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3431, file: !67, line: 112, baseType: !3452, size: 64, offset: 704)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!271, !3359, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3457)
!3457 = !{!3458}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3456, file: !80, line: 51, baseType: !271, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3431, file: !67, line: 113, baseType: !3390, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3431, file: !67, line: 114, baseType: !338, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3431, file: !67, line: 115, baseType: !338, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3431, file: !67, line: 117, baseType: !3385, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3431, file: !67, line: 118, baseType: !3381, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3431, file: !67, line: 120, baseType: !3465, size: 64, offset: 1088)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3417, file: !3418, line: 91, baseType: !3372, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3417, file: !3418, line: 92, baseType: !3390, size: 64, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3417, file: !3418, line: 93, baseType: !3381, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3417, file: !3418, line: 94, baseType: !3390, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3417, file: !3418, line: 95, baseType: !3381, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3417, file: !3418, line: 97, baseType: !3390, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3417, file: !3418, line: 98, baseType: !3390, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3417, file: !3418, line: 100, baseType: !3452, size: 64, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3417, file: !3418, line: 101, baseType: !3390, size: 64, offset: 960)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3417, file: !3418, line: 103, baseType: !3390, size: 64, offset: 1024)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3417, file: !3418, line: 105, baseType: !3390, size: 64, offset: 1088)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3417, file: !3418, line: 107, baseType: !3385, size: 64, offset: 1152)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3417, file: !3418, line: 109, baseType: !3480, size: 64, offset: 1216)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3418, line: 109, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3417, file: !3418, line: 111, baseType: !3484, size: 64, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3418, line: 111, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3417, file: !3418, line: 112, baseType: !653, offset: 1344)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3417, file: !3418, line: 114, baseType: !498, size: 8, offset: 1344)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !242, file: !73, line: 471, baseType: !3430, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !242, file: !73, line: 473, baseType: !184, size: 64, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !242, file: !73, line: 475, baseType: !184, size: 64, offset: 960)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !242, file: !73, line: 480, baseType: !196, size: 192, offset: 1024)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !242, file: !73, line: 484, baseType: !3493, size: 576, offset: 1216)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3493, file: !73, line: 362, baseType: !188, size: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3493, file: !73, line: 363, baseType: !188, size: 128, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3493, file: !73, line: 364, baseType: !188, size: 128, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3493, file: !73, line: 365, baseType: !188, size: 128, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3493, file: !73, line: 366, baseType: !498, size: 8, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3493, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !242, file: !73, line: 485, baseType: !3502, size: 2304, offset: 1792)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3599, !3603}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3502, file: !80, line: 566, baseType: !3455, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3502, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3502, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3502, file: !80, line: 569, baseType: !498, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3502, file: !80, line: 570, baseType: !498, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3502, file: !80, line: 571, baseType: !498, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3502, file: !80, line: 572, baseType: !498, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3502, file: !80, line: 573, baseType: !498, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3502, file: !80, line: 574, baseType: !498, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3502, file: !80, line: 575, baseType: !498, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3502, file: !80, line: 576, baseType: !498, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3502, file: !80, line: 577, baseType: !425, size: 32, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3502, file: !80, line: 578, baseType: !212, offset: 96)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3502, file: !80, line: 580, baseType: !188, size: 128, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3502, file: !80, line: 581, baseType: !1497, size: 192, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3502, file: !80, line: 582, baseType: !3520, size: 64, offset: 448)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3522, line: 43, size: 1472, elements: !3523)
!3522 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3531, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3521, file: !3522, line: 44, baseType: !249, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3521, file: !3522, line: 45, baseType: !271, size: 32, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3521, file: !3522, line: 46, baseType: !188, size: 128, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3521, file: !3522, line: 47, baseType: !212, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3521, file: !3522, line: 48, baseType: !3529, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3521, file: !3522, line: 49, baseType: !3532, size: 320, offset: 320)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3533, line: 11, size: 320, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3542}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3532, file: !3533, line: 16, baseType: !647, size: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3532, file: !3533, line: 17, baseType: !181, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3532, file: !3533, line: 18, baseType: !3538, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3532, file: !3533, line: 19, baseType: !425, size: 32, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3521, file: !3522, line: 50, baseType: !181, size: 64, offset: 640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3521, file: !3522, line: 51, baseType: !1295, size: 64, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3521, file: !3522, line: 52, baseType: !1295, size: 64, offset: 768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3521, file: !3522, line: 53, baseType: !1295, size: 64, offset: 832)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3521, file: !3522, line: 54, baseType: !1295, size: 64, offset: 896)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3521, file: !3522, line: 55, baseType: !1295, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3521, file: !3522, line: 56, baseType: !181, size: 64, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3521, file: !3522, line: 57, baseType: !181, size: 64, offset: 1088)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3521, file: !3522, line: 58, baseType: !181, size: 64, offset: 1152)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3521, file: !3522, line: 59, baseType: !181, size: 64, offset: 1216)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3521, file: !3522, line: 60, baseType: !181, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3521, file: !3522, line: 61, baseType: !3359, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3521, file: !3522, line: 62, baseType: !498, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3521, file: !3522, line: 63, baseType: !498, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3502, file: !80, line: 583, baseType: !498, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3502, file: !80, line: 584, baseType: !498, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3502, file: !80, line: 585, baseType: !498, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3502, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3502, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3502, file: !80, line: 592, baseType: !1287, size: 512, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3502, file: !80, line: 593, baseType: !429, size: 64, offset: 1088)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3502, file: !80, line: 594, baseType: !231, size: 256, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3502, file: !80, line: 595, baseType: !1476, size: 128, offset: 1408)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3502, file: !80, line: 596, baseType: !3529, size: 64, offset: 1536)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3502, file: !80, line: 597, baseType: !755, size: 32, offset: 1600)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3502, file: !80, line: 598, baseType: !755, size: 32, offset: 1632)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3502, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3502, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3502, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3502, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3502, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3502, file: !80, line: 604, baseType: !498, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3502, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3502, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3502, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3502, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3502, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3502, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3502, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3502, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3502, file: !80, line: 613, baseType: !271, size: 32, offset: 1792)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3502, file: !80, line: 614, baseType: !271, size: 32, offset: 1824)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3502, file: !80, line: 615, baseType: !429, size: 64, offset: 1856)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3502, file: !80, line: 616, baseType: !429, size: 64, offset: 1920)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3502, file: !80, line: 617, baseType: !429, size: 64, offset: 1984)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3502, file: !80, line: 618, baseType: !429, size: 64, offset: 2048)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3502, file: !80, line: 620, baseType: !3590, size: 64, offset: 2112)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3591, file: !80, line: 537, baseType: !212)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3591, file: !80, line: 538, baseType: !7, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3591, file: !80, line: 540, baseType: !188, size: 128, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3591, file: !80, line: 543, baseType: !3597, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3502, file: !80, line: 621, baseType: !3600, size: 64, offset: 2176)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3359, !1439}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3502, file: !80, line: 622, baseType: !3604, size: 64, offset: 2240)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !242, file: !73, line: 486, baseType: !3607, size: 64, offset: 4096)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3616, !3617, !3618}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3608, file: !80, line: 643, baseType: !3387, size: 1472)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3608, file: !80, line: 644, baseType: !3390, size: 64, offset: 1472)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3608, file: !80, line: 645, baseType: !3613, size: 64, offset: 1536)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !3359, !498}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3608, file: !80, line: 646, baseType: !3390, size: 64, offset: 1600)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3608, file: !80, line: 647, baseType: !3381, size: 64, offset: 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3608, file: !80, line: 648, baseType: !3381, size: 64, offset: 1728)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !242, file: !73, line: 493, baseType: !3620, size: 64, offset: 4160)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3622, line: 13, flags: DIFlagFwdDecl)
!3622 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !242, file: !73, line: 499, baseType: !188, size: 128, offset: 4224)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !242, file: !73, line: 502, baseType: !3625, size: 64, offset: 4352)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3627)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !242, file: !73, line: 504, baseType: !3629, size: 64, offset: 4416)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !242, file: !73, line: 505, baseType: !429, size: 64, offset: 4480)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !242, file: !73, line: 510, baseType: !429, size: 64, offset: 4544)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !242, file: !73, line: 511, baseType: !3633, size: 64, offset: 4608)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3635)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !242, file: !73, line: 513, baseType: !3637, size: 64, offset: 4672)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3639)
!3639 = !{!3640, !3641}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3638, file: !73, line: 293, baseType: !7, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3638, file: !73, line: 294, baseType: !181, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !242, file: !73, line: 515, baseType: !188, size: 128, offset: 4736)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !242, file: !73, line: 526, baseType: !3644, offset: 4864)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3645, line: 5, elements: !226)
!3645 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !242, file: !73, line: 528, baseType: !3647, size: 64, offset: 4864)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3649, line: 14, flags: DIFlagFwdDecl)
!3649 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !242, file: !73, line: 529, baseType: !3651, size: 64, offset: 4928)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3653, line: 17, size: 192, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3654 = !{!3655, !3656, !3739}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3652, file: !3653, line: 18, baseType: !3651, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3652, file: !3653, line: 19, baseType: !3657, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3659)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3653, line: 110, size: 1152, elements: !3660)
!3660 = !{!3661, !3665, !3669, !3675, !3681, !3685, !3689, !3694, !3698, !3699, !3703, !3707, !3711, !3722, !3723, !3724, !3725, !3735}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3659, file: !3653, line: 111, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!3651, !3651}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3659, file: !3653, line: 112, baseType: !3666, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{null, !3651}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3659, file: !3653, line: 113, baseType: !3670, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!498, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3659, file: !3653, line: 114, baseType: !3676, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!2112, !3673, !3679}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3659, file: !3653, line: 116, baseType: !3682, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!498, !3673, !249}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3659, file: !3653, line: 118, baseType: !3686, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!271, !3673, !249, !7, !184, !332}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3659, file: !3653, line: 123, baseType: !3690, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!271, !3673, !249, !3693, !332}
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3659, file: !3653, line: 126, baseType: !3695, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!249, !3673}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3659, file: !3653, line: 127, baseType: !3695, size: 64, offset: 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3659, file: !3653, line: 128, baseType: !3700, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!3651, !3673}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3659, file: !3653, line: 130, baseType: !3704, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!3651, !3673, !3651}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3659, file: !3653, line: 133, baseType: !3708, size: 64, offset: 704)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!3651, !3673, !249}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3659, file: !3653, line: 135, baseType: !3712, size: 64, offset: 768)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!271, !3673, !249, !249, !7, !7, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3653, line: 43, size: 640, elements: !3717)
!3717 = !{!3718, !3719, !3720}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3716, file: !3653, line: 44, baseType: !3651, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3716, file: !3653, line: 45, baseType: !7, size: 32, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3716, file: !3653, line: 46, baseType: !3721, size: 512, offset: 128)
!3721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 512, elements: !1325)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3659, file: !3653, line: 140, baseType: !3704, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3659, file: !3653, line: 143, baseType: !3700, size: 64, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3659, file: !3653, line: 145, baseType: !3662, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3659, file: !3653, line: 146, baseType: !3726, size: 64, offset: 1024)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!271, !3673, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3653, line: 29, size: 128, elements: !3731)
!3731 = !{!3732, !3733, !3734}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3730, file: !3653, line: 30, baseType: !7, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3730, file: !3653, line: 31, baseType: !7, size: 32, offset: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3730, file: !3653, line: 32, baseType: !3673, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3659, file: !3653, line: 148, baseType: !3736, size: 64, offset: 1088)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!271, !3673, !3359}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3652, file: !3653, line: 20, baseType: !3359, size: 64, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !242, file: !73, line: 534, baseType: !521, size: 32, offset: 4992)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !242, file: !73, line: 535, baseType: !425, size: 32, offset: 5024)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !242, file: !73, line: 537, baseType: !212, offset: 5056)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !242, file: !73, line: 538, baseType: !188, size: 128, offset: 5056)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !242, file: !73, line: 540, baseType: !3745, size: 64, offset: 5184)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3747, line: 54, size: 960, elements: !3748)
!3747 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755, !3759, !3763, !3764, !3765, !3766, !3770, !3774, !3775}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3746, file: !3747, line: 55, baseType: !249, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3746, file: !3747, line: 56, baseType: !638, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3746, file: !3747, line: 58, baseType: !338, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3746, file: !3747, line: 59, baseType: !338, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3746, file: !3747, line: 60, baseType: !253, size: 64, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3746, file: !3747, line: 62, baseType: !3372, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3746, file: !3747, line: 63, baseType: !3756, size: 64, offset: 384)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!182, !3359, !3379}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3746, file: !3747, line: 65, baseType: !3760, size: 64, offset: 448)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{null, !3745}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3746, file: !3747, line: 66, baseType: !3381, size: 64, offset: 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3746, file: !3747, line: 68, baseType: !3390, size: 64, offset: 576)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3746, file: !3747, line: 70, baseType: !3174, size: 64, offset: 640)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3746, file: !3747, line: 71, baseType: !3767, size: 64, offset: 704)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!2112, !3359}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3746, file: !3747, line: 73, baseType: !3771, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3359, !3206, !3207}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3746, file: !3747, line: 75, baseType: !3385, size: 64, offset: 832)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3746, file: !3747, line: 77, baseType: !3484, size: 64, offset: 896)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !242, file: !73, line: 541, baseType: !338, size: 64, offset: 5248)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !242, file: !73, line: 543, baseType: !3381, size: 64, offset: 5312)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !242, file: !73, line: 544, baseType: !3779, size: 64, offset: 5376)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !242, file: !73, line: 545, baseType: !3782, size: 64, offset: 5440)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !242, file: !73, line: 547, baseType: !498, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !242, file: !73, line: 548, baseType: !498, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !242, file: !73, line: 549, baseType: !498, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !242, file: !73, line: 550, baseType: !498, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !193, file: !94, line: 282, baseType: !3789, size: 64, offset: 6080)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memstick_dev", file: !94, line: 251, size: 6528, elements: !3791)
!3791 = !{!3792, !3799, !3800, !3807, !3808, !3837, !3841, !3847, !3851, !3852}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3790, file: !94, line: 252, baseType: !3793, size: 32)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memstick_device_id", file: !94, line: 212, size: 32, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3793, file: !94, line: 213, baseType: !435, size: 8)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3793, file: !94, line: 216, baseType: !435, size: 8, offset: 8)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !3793, file: !94, line: 221, baseType: !435, size: 8, offset: 16)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3793, file: !94, line: 227, baseType: !435, size: 8, offset: 24)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !3790, file: !94, line: 253, baseType: !192, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "reg_addr", scope: !3790, file: !94, line: 254, baseType: !3801, size: 32, offset: 128)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ms_register_addr", file: !94, line: 139, size: 32, elements: !3802)
!3802 = !{!3803, !3804, !3805, !3806}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "r_offset", scope: !3801, file: !94, line: 140, baseType: !435, size: 8)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "r_length", scope: !3801, file: !94, line: 141, baseType: !435, size: 8, offset: 8)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "w_offset", scope: !3801, file: !94, line: 142, baseType: !435, size: 8, offset: 16)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "w_length", scope: !3801, file: !94, line: 143, baseType: !435, size: 8, offset: 24)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mrq_complete", scope: !3790, file: !94, line: 255, baseType: !1497, size: 192, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "current_mrq", scope: !3790, file: !94, line: 256, baseType: !3809, size: 320, offset: 384)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memstick_request", file: !94, line: 235, size: 320, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "tpc", scope: !3809, file: !94, line: 236, baseType: !435, size: 8)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "data_dir", scope: !3809, file: !94, line: 237, baseType: !435, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "need_card_int", scope: !3809, file: !94, line: 238, baseType: !435, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "long_data", scope: !3809, file: !94, line: 239, baseType: !435, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "int_reg", scope: !3809, file: !94, line: 240, baseType: !435, size: 8, offset: 16)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3809, file: !94, line: 241, baseType: !271, size: 32, offset: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, scope: !3809, file: !94, line: 242, baseType: !3818, size: 256, offset: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3809, file: !94, line: 242, size: 256, elements: !3819)
!3819 = !{!3820, !3829}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3818, file: !94, line: 243, baseType: !3821, size: 256)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3822, line: 11, size: 256, elements: !3823)
!3822 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!3823 = !{!3824, !3825, !3826, !3827, !3828}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !3821, file: !3822, line: 12, baseType: !181, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3821, file: !3822, line: 13, baseType: !7, size: 32, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3821, file: !3822, line: 14, baseType: !7, size: 32, offset: 96)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3821, file: !3822, line: 15, baseType: !921, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3821, file: !3822, line: 17, baseType: !7, size: 32, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !94, line: 244, baseType: !3830, size: 128)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3818, file: !94, line: 244, size: 128, elements: !3831)
!3831 = !{!3832, !3833}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3830, file: !94, line: 245, baseType: !435, size: 8)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3830, file: !94, line: 246, baseType: !3834, size: 120, offset: 8)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 120, elements: !3835)
!3835 = !{!3836}
!3836 = !DISubrange(count: 15)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !3790, file: !94, line: 259, baseType: !3838, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!271, !3789}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !3790, file: !94, line: 261, baseType: !3842, size: 64, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!271, !3789, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3790, file: !94, line: 264, baseType: !3848, size: 64, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !3789}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3790, file: !94, line: 266, baseType: !3848, size: 64, offset: 896)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3790, file: !94, line: 268, baseType: !242, size: 5568, offset: 960)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !193, file: !94, line: 283, baseType: !7, size: 32, offset: 6144)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "removing", scope: !193, file: !94, line: 284, baseType: !498, size: 8, offset: 6176)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !193, file: !94, line: 287, baseType: !3856, size: 64, offset: 6208)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !192}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "set_param", scope: !193, file: !94, line: 289, baseType: !3860, size: 64, offset: 6272)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!271, !192, !93, !271}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !193, file: !94, line: 292, baseType: !2315, align: 512, offset: 6656)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_lock_t", file: !3866, line: 14, baseType: !3867)
!3866 = !DIFile(filename: "./include/linux/local_lock_internal.h", directory: "/home/lizy2001/genbc/linux")
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3866, line: 9, elements: !226)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memstick_driver", file: !94, line: 295, size: 1472, elements: !3870)
!3870 = !{!3871, !3873, !3874, !3875, !3879, !3880}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3869, file: !94, line: 296, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3869, file: !94, line: 297, baseType: !3838, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3869, file: !94, line: 298, baseType: !3848, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3869, file: !94, line: 299, baseType: !3876, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!271, !3789, !3455}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3869, file: !94, line: 301, baseType: !3838, size: 64, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3869, file: !94, line: 303, baseType: !3431, size: 1152, offset: 320)
!3881 = !{!3882, !3934, !3939, !3944, !3946, !3951, !3956, !3961, !3966, !3971, !0, !3973, !3975, !3980, !3982, !3984, !3986, !3988, !3991, !3993, !3996, !4010, !4012, !4014}
!3882 = !DIGlobalVariableExpression(var: !3883, expr: !DIExpression())
!3883 = distinct !DIGlobalVariable(name: "__param_cmd_retries", scope: !2, file: !3, line: 22, type: !3884, isLocal: true, isDefinition: true, align: 64)
!3884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3885)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3886, line: 69, size: 320, elements: !3887)
!3886 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3887 = !{!3888, !3889, !3890, !3906, !3908, !3912, !3913}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3885, file: !3886, line: 70, baseType: !249, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3885, file: !3886, line: 71, baseType: !638, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3885, file: !3886, line: 72, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3886, line: 47, size: 256, elements: !3894)
!3894 = !{!3895, !3896, !3901, !3905}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3893, file: !3886, line: 49, baseType: !7, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3893, file: !3886, line: 51, baseType: !3897, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!271, !249, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3893, file: !3886, line: 53, baseType: !3902, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!271, !182, !3900}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3893, file: !3886, line: 55, baseType: !476, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3885, file: !3886, line: 73, baseType: !3907, size: 16, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3885, file: !3886, line: 74, baseType: !3909, size: 8, offset: 208)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !207, line: 16, baseType: !3910)
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !209, line: 20, baseType: !3911)
!3911 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3885, file: !3886, line: 75, baseType: !1347, size: 8, offset: 216)
!3913 = !DIDerivedType(tag: DW_TAG_member, scope: !3885, file: !3886, line: 76, baseType: !3914, size: 64, offset: 256)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3885, file: !3886, line: 76, size: 64, elements: !3915)
!3915 = !{!3916, !3917, !3924}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3914, file: !3886, line: 77, baseType: !184, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3914, file: !3886, line: 78, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3920)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3886, line: 86, size: 128, elements: !3921)
!3921 = !{!3922, !3923}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3920, file: !3886, line: 87, baseType: !7, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3920, file: !3886, line: 88, baseType: !182, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3914, file: !3886, line: 79, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3927)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3886, line: 92, size: 256, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3927, file: !3886, line: 94, baseType: !7, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3927, file: !3886, line: 95, baseType: !7, size: 32, offset: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3927, file: !3886, line: 96, baseType: !2668, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3927, file: !3886, line: 97, baseType: !3891, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3927, file: !3886, line: 98, baseType: !184, size: 64, offset: 192)
!3934 = !DIGlobalVariableExpression(var: !3935, expr: !DIExpression())
!3935 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_cmd_retriestype229", scope: !2, file: !3, line: 22, type: !3936, isLocal: true, isDefinition: true, align: 8)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 280, elements: !3937)
!3937 = !{!3938}
!3938 = !DISubrange(count: 35)
!3939 = !DIGlobalVariableExpression(var: !3940, expr: !DIExpression())
!3940 = distinct !DIGlobalVariable(name: "__key", scope: !3941, file: !3, line: 499, type: !653, isLocal: true, isDefinition: true)
!3941 = distinct !DISubprogram(name: "memstick_alloc_host", scope: !3, file: !3, line: 492, type: !3942, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!192, !7, !3359}
!3944 = !DIGlobalVariableExpression(var: !3945, expr: !DIExpression())
!3945 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memstick_init247", scope: !2, file: !3, line: 657, type: !184, isLocal: true, isDefinition: true)
!3946 = !DIGlobalVariableExpression(var: !3947, expr: !DIExpression())
!3947 = distinct !DIGlobalVariable(name: "__exitcall_memstick_exit", scope: !2, file: !3, line: 658, type: !3948, isLocal: true, isDefinition: true)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3949, line: 117, baseType: !3950)
!3949 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!3951 = !DIGlobalVariableExpression(var: !3952, expr: !DIExpression())
!3952 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author248", scope: !2, file: !3, line: 660, type: !3953, isLocal: true, isDefinition: true, align: 8)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 216, elements: !3954)
!3954 = !{!3955}
!3955 = !DISubrange(count: 27)
!3956 = !DIGlobalVariableExpression(var: !3957, expr: !DIExpression())
!3957 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file249", scope: !2, file: !3, line: 661, type: !3958, isLocal: true, isDefinition: true, align: 8)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 360, elements: !3959)
!3959 = !{!3960}
!3960 = !DISubrange(count: 45)
!3961 = !DIGlobalVariableExpression(var: !3962, expr: !DIExpression())
!3962 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license250", scope: !2, file: !3, line: 661, type: !3963, isLocal: true, isDefinition: true, align: 8)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 168, elements: !3964)
!3964 = !{!3965}
!3965 = !DISubrange(count: 21)
!3966 = !DIGlobalVariableExpression(var: !3967, expr: !DIExpression())
!3967 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description251", scope: !2, file: !3, line: 662, type: !3968, isLocal: true, isDefinition: true, align: 8)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 400, elements: !3969)
!3969 = !{!3970}
!3970 = !DISubrange(count: 50)
!3971 = !DIGlobalVariableExpression(var: !3972, expr: !DIExpression())
!3972 = distinct !DIGlobalVariable(name: "workqueue", scope: !2, file: !3, line: 24, type: !2778, isLocal: true, isDefinition: true)
!3973 = !DIGlobalVariableExpression(var: !3974, expr: !DIExpression())
!3974 = distinct !DIGlobalVariable(name: "cmd_retries", scope: !2, file: !3, line: 21, type: !7, isLocal: true, isDefinition: true)
!3975 = !DIGlobalVariableExpression(var: !3976, expr: !DIExpression())
!3976 = distinct !DIGlobalVariable(name: "__key", scope: !3977, file: !1498, line: 88, type: !653, isLocal: true, isDefinition: true)
!3977 = distinct !DISubprogram(name: "__init_completion", scope: !1498, file: !1498, line: 85, type: !3978, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !1496}
!3980 = !DIGlobalVariableExpression(var: !3981, expr: !DIExpression())
!3981 = distinct !DIGlobalVariable(name: "memstick_host_class", scope: !2, file: !3, line: 186, type: !3746, isLocal: true, isDefinition: true)
!3982 = !DIGlobalVariableExpression(var: !3983, expr: !DIExpression())
!3983 = distinct !DIGlobalVariable(name: "memstick_host_lock", scope: !2, file: !3, line: 26, type: !212, isLocal: true, isDefinition: true)
!3984 = !DIGlobalVariableExpression(var: !3985, expr: !DIExpression())
!3985 = distinct !DIGlobalVariable(name: "memstick_host_idr", scope: !2, file: !3, line: 25, type: !3235, isLocal: true, isDefinition: true)
!3986 = !DIGlobalVariableExpression(var: !3987, expr: !DIExpression())
!3987 = distinct !DIGlobalVariable(name: "memstick_bus_type", scope: !2, file: !3, line: 168, type: !3417, isLocal: true, isDefinition: true)
!3988 = !DIGlobalVariableExpression(var: !3989, expr: !DIExpression())
!3989 = distinct !DIGlobalVariable(name: "memstick_dev_groups", scope: !2, file: !3, line: 166, type: !3990, isLocal: true, isDefinition: true)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 128, elements: !1564)
!3991 = !DIGlobalVariableExpression(var: !3992, expr: !DIExpression())
!3992 = distinct !DIGlobalVariable(name: "memstick_dev_group", scope: !2, file: !3, line: 166, type: !340, isLocal: true, isDefinition: true)
!3993 = !DIGlobalVariableExpression(var: !3994, expr: !DIExpression())
!3994 = distinct !DIGlobalVariable(name: "memstick_dev_attrs", scope: !2, file: !3, line: 160, type: !3995, isLocal: true, isDefinition: true)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !1156)
!3996 = !DIGlobalVariableExpression(var: !3997, expr: !DIExpression())
!3997 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 156, type: !3998, isLocal: true, isDefinition: true)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !3999)
!3999 = !{!4000, !4001, !4006}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3998, file: !73, line: 100, baseType: !322, size: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3998, file: !73, line: 101, baseType: !4002, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!317, !3359, !4005, !182}
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3998, file: !73, line: 103, baseType: !4007, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!317, !3359, !4005, !249, !332}
!4010 = !DIGlobalVariableExpression(var: !4011, expr: !DIExpression())
!4011 = distinct !DIGlobalVariable(name: "dev_attr_category", scope: !2, file: !3, line: 157, type: !3998, isLocal: true, isDefinition: true)
!4012 = !DIGlobalVariableExpression(var: !4013, expr: !DIExpression())
!4013 = distinct !DIGlobalVariable(name: "dev_attr_class", scope: !2, file: !3, line: 158, type: !3998, isLocal: true, isDefinition: true)
!4014 = !DIGlobalVariableExpression(var: !4015, expr: !DIExpression())
!4015 = distinct !DIGlobalVariable(name: "__key", scope: !4016, file: !3, line: 635, type: !653, isLocal: true, isDefinition: true)
!4016 = distinct !DISubprogram(name: "memstick_init", scope: !3, file: !3, line: 623, type: !4017, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!271}
!4019 = !{i32 7, !"Dwarf Version", i32 4}
!4020 = !{i32 2, !"Debug Info Version", i32 3}
!4021 = !{i32 1, !"wchar_size", i32 2}
!4022 = !{i32 1, !"Code Model", i32 2}
!4023 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4024 = distinct !DISubprogram(name: "memstick_detect_change", scope: !3, file: !3, line: 207, type: !3857, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4025 = !DILocalVariable(name: "host", arg: 1, scope: !4024, file: !3, line: 207, type: !192)
!4026 = !DILocation(line: 207, column: 51, scope: !4024)
!4027 = !DILocation(line: 209, column: 13, scope: !4024)
!4028 = !DILocation(line: 209, column: 25, scope: !4024)
!4029 = !DILocation(line: 209, column: 31, scope: !4024)
!4030 = !DILocation(line: 209, column: 2, scope: !4024)
!4031 = !DILocation(line: 210, column: 1, scope: !4024)
!4032 = distinct !DISubprogram(name: "queue_work", scope: !118, file: !118, line: 504, type: !4033, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!498, !2778, !240}
!4035 = !DILocalVariable(name: "wq", arg: 1, scope: !4032, file: !118, line: 504, type: !2778)
!4036 = !DILocation(line: 504, column: 56, scope: !4032)
!4037 = !DILocalVariable(name: "work", arg: 2, scope: !4032, file: !118, line: 505, type: !240)
!4038 = !DILocation(line: 505, column: 30, scope: !4032)
!4039 = !DILocation(line: 507, column: 41, scope: !4032)
!4040 = !DILocation(line: 507, column: 45, scope: !4032)
!4041 = !DILocation(line: 507, column: 9, scope: !4032)
!4042 = !DILocation(line: 507, column: 2, scope: !4032)
!4043 = distinct !DISubprogram(name: "memstick_next_req", scope: !3, file: !3, line: 223, type: !4044, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!271, !192, !3845}
!4046 = !DILocalVariable(name: "host", arg: 1, scope: !4043, file: !3, line: 223, type: !192)
!4047 = !DILocation(line: 223, column: 45, scope: !4043)
!4048 = !DILocalVariable(name: "mrq", arg: 2, scope: !4043, file: !3, line: 223, type: !3845)
!4049 = !DILocation(line: 223, column: 77, scope: !4043)
!4050 = !DILocalVariable(name: "rc", scope: !4043, file: !3, line: 225, type: !271)
!4051 = !DILocation(line: 225, column: 6, scope: !4043)
!4052 = !DILocation(line: 227, column: 8, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 227, column: 6)
!4054 = !DILocation(line: 227, column: 7, scope: !4053)
!4055 = !DILocation(line: 227, column: 6, scope: !4053)
!4056 = !DILocation(line: 227, column: 13, scope: !4053)
!4057 = !DILocation(line: 227, column: 18, scope: !4053)
!4058 = !DILocation(line: 227, column: 17, scope: !4053)
!4059 = !DILocation(line: 227, column: 24, scope: !4053)
!4060 = !DILocation(line: 227, column: 16, scope: !4053)
!4061 = !DILocation(line: 227, column: 30, scope: !4053)
!4062 = !DILocation(line: 227, column: 33, scope: !4053)
!4063 = !DILocation(line: 227, column: 39, scope: !4053)
!4064 = !DILocation(line: 227, column: 6, scope: !4043)
!4065 = !DILocation(line: 228, column: 19, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 227, column: 48)
!4067 = !DILocation(line: 228, column: 5, scope: !4066)
!4068 = !DILocation(line: 228, column: 4, scope: !4066)
!4069 = !DILocation(line: 228, column: 11, scope: !4066)
!4070 = !DILocation(line: 228, column: 17, scope: !4066)
!4071 = !DILocation(line: 229, column: 3, scope: !4066)
!4072 = !DILocation(line: 229, column: 9, scope: !4066)
!4073 = !DILocation(line: 229, column: 16, scope: !4066)
!4074 = !DILocation(line: 230, column: 3, scope: !4066)
!4075 = !DILocation(line: 233, column: 6, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 233, column: 6)
!4077 = !DILocation(line: 233, column: 12, scope: !4076)
!4078 = !DILocation(line: 233, column: 17, scope: !4076)
!4079 = !DILocation(line: 233, column: 20, scope: !4076)
!4080 = !DILocation(line: 233, column: 26, scope: !4076)
!4081 = !DILocation(line: 233, column: 32, scope: !4076)
!4082 = !DILocation(line: 233, column: 6, scope: !4043)
!4083 = !DILocation(line: 234, column: 8, scope: !4076)
!4084 = !DILocation(line: 234, column: 14, scope: !4076)
!4085 = !DILocation(line: 234, column: 20, scope: !4076)
!4086 = !DILocation(line: 234, column: 33, scope: !4076)
!4087 = !DILocation(line: 234, column: 39, scope: !4076)
!4088 = !DILocation(line: 234, column: 45, scope: !4076)
!4089 = !DILocation(line: 234, column: 6, scope: !4076)
!4090 = !DILocation(line: 234, column: 3, scope: !4076)
!4091 = !DILocation(line: 236, column: 7, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 236, column: 6)
!4093 = !DILocation(line: 236, column: 6, scope: !4043)
!4094 = !DILocation(line: 237, column: 19, scope: !4092)
!4095 = !DILocation(line: 237, column: 31, scope: !4092)
!4096 = !DILocation(line: 237, column: 37, scope: !4092)
!4097 = !DILocation(line: 237, column: 49, scope: !4092)
!4098 = !DILocation(line: 237, column: 3, scope: !4092)
!4099 = !DILocation(line: 237, column: 9, scope: !4092)
!4100 = !DILocation(line: 237, column: 17, scope: !4092)
!4101 = !DILocation(line: 239, column: 4, scope: !4092)
!4102 = !DILocation(line: 239, column: 8, scope: !4092)
!4103 = !DILocation(line: 241, column: 9, scope: !4043)
!4104 = !DILocation(line: 241, column: 2, scope: !4043)
!4105 = !DILocation(line: 242, column: 1, scope: !4043)
!4106 = distinct !DISubprogram(name: "memstick_new_req", scope: !3, file: !3, line: 249, type: !3857, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4107 = !DILocalVariable(name: "host", arg: 1, scope: !4106, file: !3, line: 249, type: !192)
!4108 = !DILocation(line: 249, column: 45, scope: !4106)
!4109 = !DILocation(line: 251, column: 6, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 251, column: 6)
!4111 = !DILocation(line: 251, column: 12, scope: !4110)
!4112 = !DILocation(line: 251, column: 6, scope: !4106)
!4113 = !DILocation(line: 252, column: 19, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 251, column: 18)
!4115 = !DILocation(line: 252, column: 3, scope: !4114)
!4116 = !DILocation(line: 252, column: 9, scope: !4114)
!4117 = !DILocation(line: 252, column: 17, scope: !4114)
!4118 = !DILocation(line: 253, column: 22, scope: !4114)
!4119 = !DILocation(line: 253, column: 28, scope: !4114)
!4120 = !DILocation(line: 253, column: 34, scope: !4114)
!4121 = !DILocation(line: 253, column: 3, scope: !4114)
!4122 = !DILocation(line: 254, column: 3, scope: !4114)
!4123 = !DILocation(line: 254, column: 9, scope: !4114)
!4124 = !DILocation(line: 254, column: 17, scope: !4114)
!4125 = !DILocation(line: 255, column: 2, scope: !4114)
!4126 = !DILocation(line: 256, column: 1, scope: !4106)
!4127 = distinct !DISubprogram(name: "reinit_completion", scope: !1498, file: !1498, line: 98, type: !3978, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4128 = !DILocalVariable(name: "x", arg: 1, scope: !4127, file: !1498, line: 98, type: !1496)
!4129 = !DILocation(line: 98, column: 57, scope: !4127)
!4130 = !DILocation(line: 100, column: 2, scope: !4127)
!4131 = !DILocation(line: 100, column: 5, scope: !4127)
!4132 = !DILocation(line: 100, column: 10, scope: !4127)
!4133 = !DILocation(line: 101, column: 1, scope: !4127)
!4134 = distinct !DISubprogram(name: "memstick_init_req_sg", scope: !3, file: !3, line: 265, type: !4135, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !3846, !435, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3821)
!4139 = !DILocalVariable(name: "mrq", arg: 1, scope: !4134, file: !3, line: 265, type: !3846)
!4140 = !DILocation(line: 265, column: 52, scope: !4134)
!4141 = !DILocalVariable(name: "tpc", arg: 2, scope: !4134, file: !3, line: 265, type: !435)
!4142 = !DILocation(line: 265, column: 71, scope: !4134)
!4143 = !DILocalVariable(name: "sg", arg: 3, scope: !4134, file: !3, line: 266, type: !4137)
!4144 = !DILocation(line: 266, column: 32, scope: !4134)
!4145 = !DILocation(line: 268, column: 13, scope: !4134)
!4146 = !DILocation(line: 268, column: 2, scope: !4134)
!4147 = !DILocation(line: 268, column: 7, scope: !4134)
!4148 = !DILocation(line: 268, column: 11, scope: !4134)
!4149 = !DILocation(line: 269, column: 6, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 269, column: 6)
!4151 = !DILocation(line: 269, column: 10, scope: !4150)
!4152 = !DILocation(line: 269, column: 6, scope: !4134)
!4153 = !DILocation(line: 270, column: 3, scope: !4150)
!4154 = !DILocation(line: 270, column: 8, scope: !4150)
!4155 = !DILocation(line: 270, column: 17, scope: !4150)
!4156 = !DILocation(line: 272, column: 3, scope: !4150)
!4157 = !DILocation(line: 272, column: 8, scope: !4150)
!4158 = !DILocation(line: 272, column: 17, scope: !4150)
!4159 = !DILocation(line: 274, column: 2, scope: !4134)
!4160 = !DILocation(line: 274, column: 7, scope: !4134)
!4161 = !DILocation(line: 274, column: 13, scope: !4134)
!4162 = !DILocation(line: 274, column: 12, scope: !4134)
!4163 = !DILocation(line: 275, column: 2, scope: !4134)
!4164 = !DILocation(line: 275, column: 7, scope: !4134)
!4165 = !DILocation(line: 275, column: 17, scope: !4134)
!4166 = !DILocation(line: 277, column: 6, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 277, column: 6)
!4168 = !DILocation(line: 277, column: 10, scope: !4167)
!4169 = !DILocation(line: 277, column: 28, scope: !4167)
!4170 = !DILocation(line: 277, column: 31, scope: !4167)
!4171 = !DILocation(line: 277, column: 35, scope: !4167)
!4172 = !DILocation(line: 277, column: 6, scope: !4134)
!4173 = !DILocation(line: 278, column: 3, scope: !4167)
!4174 = !DILocation(line: 278, column: 8, scope: !4167)
!4175 = !DILocation(line: 278, column: 22, scope: !4167)
!4176 = !DILocation(line: 280, column: 3, scope: !4167)
!4177 = !DILocation(line: 280, column: 8, scope: !4167)
!4178 = !DILocation(line: 280, column: 22, scope: !4167)
!4179 = !DILocation(line: 281, column: 1, scope: !4134)
!4180 = distinct !DISubprogram(name: "memstick_init_req", scope: !3, file: !3, line: 295, type: !4181, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{null, !3846, !435, !2112, !332}
!4183 = !DILocalVariable(name: "mrq", arg: 1, scope: !4180, file: !3, line: 295, type: !3846)
!4184 = !DILocation(line: 295, column: 49, scope: !4180)
!4185 = !DILocalVariable(name: "tpc", arg: 2, scope: !4180, file: !3, line: 295, type: !435)
!4186 = !DILocation(line: 295, column: 68, scope: !4180)
!4187 = !DILocalVariable(name: "buf", arg: 3, scope: !4180, file: !3, line: 296, type: !2112)
!4188 = !DILocation(line: 296, column: 22, scope: !4180)
!4189 = !DILocalVariable(name: "length", arg: 4, scope: !4180, file: !3, line: 296, type: !332)
!4190 = !DILocation(line: 296, column: 34, scope: !4180)
!4191 = !DILocation(line: 298, column: 13, scope: !4180)
!4192 = !DILocation(line: 298, column: 2, scope: !4180)
!4193 = !DILocation(line: 298, column: 7, scope: !4180)
!4194 = !DILocation(line: 298, column: 11, scope: !4180)
!4195 = !DILocation(line: 299, column: 6, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 299, column: 6)
!4197 = !DILocation(line: 299, column: 10, scope: !4196)
!4198 = !DILocation(line: 299, column: 6, scope: !4180)
!4199 = !DILocation(line: 300, column: 3, scope: !4196)
!4200 = !DILocation(line: 300, column: 8, scope: !4196)
!4201 = !DILocation(line: 300, column: 17, scope: !4196)
!4202 = !DILocation(line: 302, column: 3, scope: !4196)
!4203 = !DILocation(line: 302, column: 8, scope: !4196)
!4204 = !DILocation(line: 302, column: 17, scope: !4196)
!4205 = !DILocation(line: 304, column: 18, scope: !4180)
!4206 = !DILocation(line: 304, column: 25, scope: !4180)
!4207 = !DILocation(line: 304, column: 67, scope: !4180)
!4208 = !DILocation(line: 304, column: 2, scope: !4180)
!4209 = !DILocation(line: 304, column: 7, scope: !4180)
!4210 = !DILocation(line: 304, column: 16, scope: !4180)
!4211 = !DILocation(line: 305, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 305, column: 6)
!4213 = !DILocation(line: 305, column: 11, scope: !4212)
!4214 = !DILocation(line: 305, column: 20, scope: !4212)
!4215 = !DILocation(line: 305, column: 6, scope: !4180)
!4216 = !DILocation(line: 306, column: 10, scope: !4212)
!4217 = !DILocation(line: 306, column: 15, scope: !4212)
!4218 = !DILocation(line: 306, column: 3, scope: !4212)
!4219 = !DILocation(line: 306, column: 21, scope: !4212)
!4220 = !DILocation(line: 306, column: 26, scope: !4212)
!4221 = !DILocation(line: 306, column: 31, scope: !4212)
!4222 = !DILocation(line: 308, column: 2, scope: !4180)
!4223 = !DILocation(line: 308, column: 7, scope: !4180)
!4224 = !DILocation(line: 308, column: 17, scope: !4180)
!4225 = !DILocation(line: 310, column: 6, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 310, column: 6)
!4227 = !DILocation(line: 310, column: 10, scope: !4226)
!4228 = !DILocation(line: 310, column: 28, scope: !4226)
!4229 = !DILocation(line: 310, column: 31, scope: !4226)
!4230 = !DILocation(line: 310, column: 35, scope: !4226)
!4231 = !DILocation(line: 310, column: 6, scope: !4180)
!4232 = !DILocation(line: 311, column: 3, scope: !4226)
!4233 = !DILocation(line: 311, column: 8, scope: !4226)
!4234 = !DILocation(line: 311, column: 22, scope: !4226)
!4235 = !DILocation(line: 313, column: 3, scope: !4226)
!4236 = !DILocation(line: 313, column: 8, scope: !4226)
!4237 = !DILocation(line: 313, column: 22, scope: !4226)
!4238 = !DILocation(line: 314, column: 1, scope: !4180)
!4239 = distinct !DISubprogram(name: "memstick_set_rw_addr", scope: !3, file: !3, line: 368, type: !3839, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4240 = !DILocalVariable(name: "card", arg: 1, scope: !4239, file: !3, line: 368, type: !3789)
!4241 = !DILocation(line: 368, column: 47, scope: !4239)
!4242 = !DILocation(line: 370, column: 2, scope: !4239)
!4243 = !DILocation(line: 370, column: 8, scope: !4239)
!4244 = !DILocation(line: 370, column: 21, scope: !4239)
!4245 = !DILocation(line: 371, column: 19, scope: !4239)
!4246 = !DILocation(line: 371, column: 25, scope: !4239)
!4247 = !DILocation(line: 371, column: 2, scope: !4239)
!4248 = !DILocation(line: 372, column: 23, scope: !4239)
!4249 = !DILocation(line: 372, column: 29, scope: !4239)
!4250 = !DILocation(line: 372, column: 2, scope: !4239)
!4251 = !DILocation(line: 374, column: 9, scope: !4239)
!4252 = !DILocation(line: 374, column: 15, scope: !4239)
!4253 = !DILocation(line: 374, column: 27, scope: !4239)
!4254 = !DILocation(line: 374, column: 2, scope: !4239)
!4255 = distinct !DISubprogram(name: "h_memstick_set_rw_addr", scope: !3, file: !3, line: 348, type: !3843, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4256 = !DILocalVariable(name: "card", arg: 1, scope: !4255, file: !3, line: 348, type: !3789)
!4257 = !DILocation(line: 348, column: 56, scope: !4255)
!4258 = !DILocalVariable(name: "mrq", arg: 2, scope: !4255, file: !3, line: 349, type: !3845)
!4259 = !DILocation(line: 349, column: 33, scope: !4255)
!4260 = !DILocation(line: 351, column: 9, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 351, column: 6)
!4262 = !DILocation(line: 351, column: 8, scope: !4261)
!4263 = !DILocation(line: 351, column: 7, scope: !4261)
!4264 = !DILocation(line: 351, column: 6, scope: !4255)
!4265 = !DILocation(line: 352, column: 22, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 351, column: 15)
!4267 = !DILocation(line: 352, column: 28, scope: !4266)
!4268 = !DILocation(line: 353, column: 16, scope: !4266)
!4269 = !DILocation(line: 353, column: 22, scope: !4266)
!4270 = !DILocation(line: 353, column: 7, scope: !4266)
!4271 = !DILocation(line: 352, column: 3, scope: !4266)
!4272 = !DILocation(line: 355, column: 11, scope: !4266)
!4273 = !DILocation(line: 355, column: 17, scope: !4266)
!4274 = !DILocation(line: 355, column: 4, scope: !4266)
!4275 = !DILocation(line: 355, column: 8, scope: !4266)
!4276 = !DILocation(line: 356, column: 3, scope: !4266)
!4277 = !DILocation(line: 358, column: 13, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 357, column: 9)
!4279 = !DILocation(line: 358, column: 19, scope: !4278)
!4280 = !DILocation(line: 358, column: 3, scope: !4278)
!4281 = !DILocation(line: 359, column: 3, scope: !4278)
!4282 = !DILocation(line: 361, column: 1, scope: !4255)
!4283 = !DILocalVariable(name: "extra", arg: 1, scope: !3941, file: !3, line: 492, type: !7)
!4284 = !DILocation(line: 492, column: 56, scope: !3941)
!4285 = !DILocalVariable(name: "dev", arg: 2, scope: !3941, file: !3, line: 493, type: !3359)
!4286 = !DILocation(line: 493, column: 23, scope: !3941)
!4287 = !DILocalVariable(name: "host", scope: !3941, file: !3, line: 495, type: !192)
!4288 = !DILocation(line: 495, column: 24, scope: !3941)
!4289 = !DILocation(line: 497, column: 48, scope: !3941)
!4290 = !DILocation(line: 497, column: 46, scope: !3941)
!4291 = !DILocation(line: 497, column: 9, scope: !3941)
!4292 = !DILocation(line: 497, column: 7, scope: !3941)
!4293 = !DILocation(line: 498, column: 6, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 498, column: 6)
!4295 = !DILocation(line: 498, column: 6, scope: !3941)
!4296 = !DILocation(line: 499, column: 3, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 498, column: 12)
!4298 = !DILocation(line: 499, column: 3, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 499, column: 3)
!4300 = !DILocation(line: 500, column: 3, scope: !4297)
!4301 = !DILocation(line: 500, column: 3, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 500, column: 3)
!4303 = !DILocation(line: 501, column: 3, scope: !4297)
!4304 = !DILocation(line: 501, column: 9, scope: !4297)
!4305 = !DILocation(line: 501, column: 13, scope: !4297)
!4306 = !DILocation(line: 501, column: 19, scope: !4297)
!4307 = !DILocation(line: 502, column: 22, scope: !4297)
!4308 = !DILocation(line: 502, column: 3, scope: !4297)
!4309 = !DILocation(line: 502, column: 9, scope: !4297)
!4310 = !DILocation(line: 502, column: 13, scope: !4297)
!4311 = !DILocation(line: 502, column: 20, scope: !4297)
!4312 = !DILocation(line: 503, column: 22, scope: !4297)
!4313 = !DILocation(line: 503, column: 28, scope: !4297)
!4314 = !DILocation(line: 503, column: 3, scope: !4297)
!4315 = !DILocation(line: 504, column: 2, scope: !4297)
!4316 = !DILocation(line: 505, column: 9, scope: !3941)
!4317 = !DILocation(line: 505, column: 2, scope: !3941)
!4318 = distinct !DISubprogram(name: "kzalloc", scope: !151, file: !151, line: 662, type: !4319, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!184, !332, !179}
!4321 = !DILocalVariable(name: "s", arg: 1, scope: !4322, file: !151, line: 445, type: !936)
!4322 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !151, file: !151, line: 445, type: !4323, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!184, !936, !179, !332}
!4325 = !DILocation(line: 445, column: 72, scope: !4322, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 552, column: 10, scope: !4327, inlinedAt: !4330)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !151, line: 540, column: 34)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !151, line: 540, column: 6)
!4329 = distinct !DISubprogram(name: "kmalloc", scope: !151, file: !151, line: 538, type: !4319, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4330 = distinct !DILocation(line: 664, column: 9, scope: !4318)
!4331 = !DILocalVariable(name: "flags", arg: 2, scope: !4322, file: !151, line: 446, type: !179)
!4332 = !DILocation(line: 446, column: 9, scope: !4322, inlinedAt: !4326)
!4333 = !DILocalVariable(name: "size", arg: 3, scope: !4322, file: !151, line: 446, type: !332)
!4334 = !DILocation(line: 446, column: 23, scope: !4322, inlinedAt: !4326)
!4335 = !DILocalVariable(name: "ret", scope: !4322, file: !151, line: 448, type: !184)
!4336 = !DILocation(line: 448, column: 8, scope: !4322, inlinedAt: !4326)
!4337 = !DILocalVariable(name: "flags", arg: 1, scope: !4338, file: !151, line: 318, type: !179)
!4338 = distinct !DISubprogram(name: "kmalloc_type", scope: !151, file: !151, line: 318, type: !4339, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!150, !179}
!4341 = !DILocation(line: 318, column: 67, scope: !4338, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 553, column: 20, scope: !4327, inlinedAt: !4330)
!4343 = !DILocalVariable(name: "size", arg: 1, scope: !4344, file: !151, line: 346, type: !332)
!4344 = distinct !DISubprogram(name: "kmalloc_index", scope: !151, file: !151, line: 346, type: !4345, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!7, !332}
!4347 = !DILocation(line: 346, column: 58, scope: !4344, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 547, column: 11, scope: !4327, inlinedAt: !4330)
!4349 = !DILocalVariable(name: "size", arg: 1, scope: !4350, file: !151, line: 472, type: !332)
!4350 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !151, file: !151, line: 472, type: !4351, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!184, !332, !179, !7}
!4353 = !DILocation(line: 472, column: 28, scope: !4350, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 481, column: 9, scope: !4355, inlinedAt: !4356)
!4355 = distinct !DISubprogram(name: "kmalloc_large", scope: !151, file: !151, line: 478, type: !4319, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4356 = distinct !DILocation(line: 545, column: 11, scope: !4357, inlinedAt: !4330)
!4357 = distinct !DILexicalBlock(scope: !4327, file: !151, line: 544, column: 7)
!4358 = !DILocalVariable(name: "flags", arg: 2, scope: !4350, file: !151, line: 472, type: !179)
!4359 = !DILocation(line: 472, column: 40, scope: !4350, inlinedAt: !4354)
!4360 = !DILocalVariable(name: "order", arg: 3, scope: !4350, file: !151, line: 472, type: !7)
!4361 = !DILocation(line: 472, column: 60, scope: !4350, inlinedAt: !4354)
!4362 = !DILocalVariable(name: "size", arg: 1, scope: !4355, file: !151, line: 478, type: !332)
!4363 = !DILocation(line: 478, column: 51, scope: !4355, inlinedAt: !4356)
!4364 = !DILocalVariable(name: "flags", arg: 2, scope: !4355, file: !151, line: 478, type: !179)
!4365 = !DILocation(line: 478, column: 63, scope: !4355, inlinedAt: !4356)
!4366 = !DILocalVariable(name: "order", scope: !4355, file: !151, line: 480, type: !7)
!4367 = !DILocation(line: 480, column: 15, scope: !4355, inlinedAt: !4356)
!4368 = !DILocalVariable(name: "size", arg: 1, scope: !4329, file: !151, line: 538, type: !332)
!4369 = !DILocation(line: 538, column: 45, scope: !4329, inlinedAt: !4330)
!4370 = !DILocalVariable(name: "flags", arg: 2, scope: !4329, file: !151, line: 538, type: !179)
!4371 = !DILocation(line: 538, column: 57, scope: !4329, inlinedAt: !4330)
!4372 = !DILocalVariable(name: "index", scope: !4327, file: !151, line: 542, type: !7)
!4373 = !DILocation(line: 542, column: 16, scope: !4327, inlinedAt: !4330)
!4374 = !DILocalVariable(name: "size", arg: 1, scope: !4318, file: !151, line: 662, type: !332)
!4375 = !DILocation(line: 662, column: 36, scope: !4318)
!4376 = !DILocalVariable(name: "flags", arg: 2, scope: !4318, file: !151, line: 662, type: !179)
!4377 = !DILocation(line: 662, column: 48, scope: !4318)
!4378 = !DILocation(line: 664, column: 17, scope: !4318)
!4379 = !DILocation(line: 664, column: 23, scope: !4318)
!4380 = !DILocation(line: 664, column: 29, scope: !4318)
!4381 = !DILocation(line: 540, column: 27, scope: !4328, inlinedAt: !4330)
!4382 = !DILocation(line: 540, column: 6, scope: !4328, inlinedAt: !4330)
!4383 = !DILocation(line: 540, column: 6, scope: !4329, inlinedAt: !4330)
!4384 = !DILocation(line: 544, column: 7, scope: !4357, inlinedAt: !4330)
!4385 = !DILocation(line: 544, column: 12, scope: !4357, inlinedAt: !4330)
!4386 = !DILocation(line: 544, column: 7, scope: !4327, inlinedAt: !4330)
!4387 = !DILocation(line: 545, column: 25, scope: !4357, inlinedAt: !4330)
!4388 = !DILocation(line: 545, column: 31, scope: !4357, inlinedAt: !4330)
!4389 = !DILocation(line: 480, column: 33, scope: !4355, inlinedAt: !4356)
!4390 = !DILocation(line: 480, column: 23, scope: !4355, inlinedAt: !4356)
!4391 = !DILocation(line: 481, column: 29, scope: !4355, inlinedAt: !4356)
!4392 = !DILocation(line: 481, column: 35, scope: !4355, inlinedAt: !4356)
!4393 = !DILocation(line: 481, column: 42, scope: !4355, inlinedAt: !4356)
!4394 = !DILocation(line: 474, column: 23, scope: !4350, inlinedAt: !4354)
!4395 = !DILocation(line: 474, column: 29, scope: !4350, inlinedAt: !4354)
!4396 = !DILocation(line: 474, column: 36, scope: !4350, inlinedAt: !4354)
!4397 = !DILocation(line: 474, column: 9, scope: !4350, inlinedAt: !4354)
!4398 = !DILocation(line: 545, column: 4, scope: !4357, inlinedAt: !4330)
!4399 = !DILocation(line: 547, column: 25, scope: !4327, inlinedAt: !4330)
!4400 = !DILocation(line: 348, column: 7, scope: !4401, inlinedAt: !4348)
!4401 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 348, column: 6)
!4402 = !DILocation(line: 348, column: 6, scope: !4344, inlinedAt: !4348)
!4403 = !DILocation(line: 349, column: 3, scope: !4401, inlinedAt: !4348)
!4404 = !DILocation(line: 351, column: 6, scope: !4405, inlinedAt: !4348)
!4405 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 351, column: 6)
!4406 = !DILocation(line: 351, column: 11, scope: !4405, inlinedAt: !4348)
!4407 = !DILocation(line: 351, column: 6, scope: !4344, inlinedAt: !4348)
!4408 = !DILocation(line: 352, column: 3, scope: !4405, inlinedAt: !4348)
!4409 = !DILocation(line: 354, column: 32, scope: !4410, inlinedAt: !4348)
!4410 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 354, column: 6)
!4411 = !DILocation(line: 354, column: 37, scope: !4410, inlinedAt: !4348)
!4412 = !DILocation(line: 354, column: 42, scope: !4410, inlinedAt: !4348)
!4413 = !DILocation(line: 354, column: 45, scope: !4410, inlinedAt: !4348)
!4414 = !DILocation(line: 354, column: 50, scope: !4410, inlinedAt: !4348)
!4415 = !DILocation(line: 354, column: 6, scope: !4344, inlinedAt: !4348)
!4416 = !DILocation(line: 355, column: 3, scope: !4410, inlinedAt: !4348)
!4417 = !DILocation(line: 356, column: 32, scope: !4418, inlinedAt: !4348)
!4418 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 356, column: 6)
!4419 = !DILocation(line: 356, column: 37, scope: !4418, inlinedAt: !4348)
!4420 = !DILocation(line: 356, column: 43, scope: !4418, inlinedAt: !4348)
!4421 = !DILocation(line: 356, column: 46, scope: !4418, inlinedAt: !4348)
!4422 = !DILocation(line: 356, column: 51, scope: !4418, inlinedAt: !4348)
!4423 = !DILocation(line: 356, column: 6, scope: !4344, inlinedAt: !4348)
!4424 = !DILocation(line: 357, column: 3, scope: !4418, inlinedAt: !4348)
!4425 = !DILocation(line: 358, column: 6, scope: !4426, inlinedAt: !4348)
!4426 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 358, column: 6)
!4427 = !DILocation(line: 358, column: 11, scope: !4426, inlinedAt: !4348)
!4428 = !DILocation(line: 358, column: 6, scope: !4344, inlinedAt: !4348)
!4429 = !DILocation(line: 358, column: 26, scope: !4426, inlinedAt: !4348)
!4430 = !DILocation(line: 359, column: 6, scope: !4431, inlinedAt: !4348)
!4431 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 359, column: 6)
!4432 = !DILocation(line: 359, column: 11, scope: !4431, inlinedAt: !4348)
!4433 = !DILocation(line: 359, column: 6, scope: !4344, inlinedAt: !4348)
!4434 = !DILocation(line: 359, column: 26, scope: !4431, inlinedAt: !4348)
!4435 = !DILocation(line: 360, column: 6, scope: !4436, inlinedAt: !4348)
!4436 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 360, column: 6)
!4437 = !DILocation(line: 360, column: 11, scope: !4436, inlinedAt: !4348)
!4438 = !DILocation(line: 360, column: 6, scope: !4344, inlinedAt: !4348)
!4439 = !DILocation(line: 360, column: 26, scope: !4436, inlinedAt: !4348)
!4440 = !DILocation(line: 361, column: 6, scope: !4441, inlinedAt: !4348)
!4441 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 361, column: 6)
!4442 = !DILocation(line: 361, column: 11, scope: !4441, inlinedAt: !4348)
!4443 = !DILocation(line: 361, column: 6, scope: !4344, inlinedAt: !4348)
!4444 = !DILocation(line: 361, column: 26, scope: !4441, inlinedAt: !4348)
!4445 = !DILocation(line: 362, column: 6, scope: !4446, inlinedAt: !4348)
!4446 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 362, column: 6)
!4447 = !DILocation(line: 362, column: 11, scope: !4446, inlinedAt: !4348)
!4448 = !DILocation(line: 362, column: 6, scope: !4344, inlinedAt: !4348)
!4449 = !DILocation(line: 362, column: 26, scope: !4446, inlinedAt: !4348)
!4450 = !DILocation(line: 363, column: 6, scope: !4451, inlinedAt: !4348)
!4451 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 363, column: 6)
!4452 = !DILocation(line: 363, column: 11, scope: !4451, inlinedAt: !4348)
!4453 = !DILocation(line: 363, column: 6, scope: !4344, inlinedAt: !4348)
!4454 = !DILocation(line: 363, column: 26, scope: !4451, inlinedAt: !4348)
!4455 = !DILocation(line: 364, column: 6, scope: !4456, inlinedAt: !4348)
!4456 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 364, column: 6)
!4457 = !DILocation(line: 364, column: 11, scope: !4456, inlinedAt: !4348)
!4458 = !DILocation(line: 364, column: 6, scope: !4344, inlinedAt: !4348)
!4459 = !DILocation(line: 364, column: 26, scope: !4456, inlinedAt: !4348)
!4460 = !DILocation(line: 365, column: 6, scope: !4461, inlinedAt: !4348)
!4461 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 365, column: 6)
!4462 = !DILocation(line: 365, column: 11, scope: !4461, inlinedAt: !4348)
!4463 = !DILocation(line: 365, column: 6, scope: !4344, inlinedAt: !4348)
!4464 = !DILocation(line: 365, column: 26, scope: !4461, inlinedAt: !4348)
!4465 = !DILocation(line: 366, column: 6, scope: !4466, inlinedAt: !4348)
!4466 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 366, column: 6)
!4467 = !DILocation(line: 366, column: 11, scope: !4466, inlinedAt: !4348)
!4468 = !DILocation(line: 366, column: 6, scope: !4344, inlinedAt: !4348)
!4469 = !DILocation(line: 366, column: 26, scope: !4466, inlinedAt: !4348)
!4470 = !DILocation(line: 367, column: 6, scope: !4471, inlinedAt: !4348)
!4471 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 367, column: 6)
!4472 = !DILocation(line: 367, column: 11, scope: !4471, inlinedAt: !4348)
!4473 = !DILocation(line: 367, column: 6, scope: !4344, inlinedAt: !4348)
!4474 = !DILocation(line: 367, column: 26, scope: !4471, inlinedAt: !4348)
!4475 = !DILocation(line: 368, column: 6, scope: !4476, inlinedAt: !4348)
!4476 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 368, column: 6)
!4477 = !DILocation(line: 368, column: 11, scope: !4476, inlinedAt: !4348)
!4478 = !DILocation(line: 368, column: 6, scope: !4344, inlinedAt: !4348)
!4479 = !DILocation(line: 368, column: 26, scope: !4476, inlinedAt: !4348)
!4480 = !DILocation(line: 369, column: 6, scope: !4481, inlinedAt: !4348)
!4481 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 369, column: 6)
!4482 = !DILocation(line: 369, column: 11, scope: !4481, inlinedAt: !4348)
!4483 = !DILocation(line: 369, column: 6, scope: !4344, inlinedAt: !4348)
!4484 = !DILocation(line: 369, column: 26, scope: !4481, inlinedAt: !4348)
!4485 = !DILocation(line: 370, column: 6, scope: !4486, inlinedAt: !4348)
!4486 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 370, column: 6)
!4487 = !DILocation(line: 370, column: 11, scope: !4486, inlinedAt: !4348)
!4488 = !DILocation(line: 370, column: 6, scope: !4344, inlinedAt: !4348)
!4489 = !DILocation(line: 370, column: 26, scope: !4486, inlinedAt: !4348)
!4490 = !DILocation(line: 371, column: 6, scope: !4491, inlinedAt: !4348)
!4491 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 371, column: 6)
!4492 = !DILocation(line: 371, column: 11, scope: !4491, inlinedAt: !4348)
!4493 = !DILocation(line: 371, column: 6, scope: !4344, inlinedAt: !4348)
!4494 = !DILocation(line: 371, column: 26, scope: !4491, inlinedAt: !4348)
!4495 = !DILocation(line: 372, column: 6, scope: !4496, inlinedAt: !4348)
!4496 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 372, column: 6)
!4497 = !DILocation(line: 372, column: 11, scope: !4496, inlinedAt: !4348)
!4498 = !DILocation(line: 372, column: 6, scope: !4344, inlinedAt: !4348)
!4499 = !DILocation(line: 372, column: 26, scope: !4496, inlinedAt: !4348)
!4500 = !DILocation(line: 373, column: 6, scope: !4501, inlinedAt: !4348)
!4501 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 373, column: 6)
!4502 = !DILocation(line: 373, column: 11, scope: !4501, inlinedAt: !4348)
!4503 = !DILocation(line: 373, column: 6, scope: !4344, inlinedAt: !4348)
!4504 = !DILocation(line: 373, column: 26, scope: !4501, inlinedAt: !4348)
!4505 = !DILocation(line: 374, column: 6, scope: !4506, inlinedAt: !4348)
!4506 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 374, column: 6)
!4507 = !DILocation(line: 374, column: 11, scope: !4506, inlinedAt: !4348)
!4508 = !DILocation(line: 374, column: 6, scope: !4344, inlinedAt: !4348)
!4509 = !DILocation(line: 374, column: 26, scope: !4506, inlinedAt: !4348)
!4510 = !DILocation(line: 375, column: 6, scope: !4511, inlinedAt: !4348)
!4511 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 375, column: 6)
!4512 = !DILocation(line: 375, column: 11, scope: !4511, inlinedAt: !4348)
!4513 = !DILocation(line: 375, column: 6, scope: !4344, inlinedAt: !4348)
!4514 = !DILocation(line: 375, column: 27, scope: !4511, inlinedAt: !4348)
!4515 = !DILocation(line: 376, column: 6, scope: !4516, inlinedAt: !4348)
!4516 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 376, column: 6)
!4517 = !DILocation(line: 376, column: 11, scope: !4516, inlinedAt: !4348)
!4518 = !DILocation(line: 376, column: 6, scope: !4344, inlinedAt: !4348)
!4519 = !DILocation(line: 376, column: 32, scope: !4516, inlinedAt: !4348)
!4520 = !DILocation(line: 377, column: 6, scope: !4521, inlinedAt: !4348)
!4521 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 377, column: 6)
!4522 = !DILocation(line: 377, column: 11, scope: !4521, inlinedAt: !4348)
!4523 = !DILocation(line: 377, column: 6, scope: !4344, inlinedAt: !4348)
!4524 = !DILocation(line: 377, column: 32, scope: !4521, inlinedAt: !4348)
!4525 = !DILocation(line: 378, column: 6, scope: !4526, inlinedAt: !4348)
!4526 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 378, column: 6)
!4527 = !DILocation(line: 378, column: 11, scope: !4526, inlinedAt: !4348)
!4528 = !DILocation(line: 378, column: 6, scope: !4344, inlinedAt: !4348)
!4529 = !DILocation(line: 378, column: 32, scope: !4526, inlinedAt: !4348)
!4530 = !DILocation(line: 379, column: 6, scope: !4531, inlinedAt: !4348)
!4531 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 379, column: 6)
!4532 = !DILocation(line: 379, column: 11, scope: !4531, inlinedAt: !4348)
!4533 = !DILocation(line: 379, column: 6, scope: !4344, inlinedAt: !4348)
!4534 = !DILocation(line: 379, column: 33, scope: !4531, inlinedAt: !4348)
!4535 = !DILocation(line: 380, column: 6, scope: !4536, inlinedAt: !4348)
!4536 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 380, column: 6)
!4537 = !DILocation(line: 380, column: 11, scope: !4536, inlinedAt: !4348)
!4538 = !DILocation(line: 380, column: 6, scope: !4344, inlinedAt: !4348)
!4539 = !DILocation(line: 380, column: 33, scope: !4536, inlinedAt: !4348)
!4540 = !DILocation(line: 381, column: 6, scope: !4541, inlinedAt: !4348)
!4541 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 381, column: 6)
!4542 = !DILocation(line: 381, column: 11, scope: !4541, inlinedAt: !4348)
!4543 = !DILocation(line: 381, column: 6, scope: !4344, inlinedAt: !4348)
!4544 = !DILocation(line: 381, column: 33, scope: !4541, inlinedAt: !4348)
!4545 = !DILocation(line: 382, column: 2, scope: !4546, inlinedAt: !4348)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !151, line: 382, column: 2)
!4547 = distinct !DILexicalBlock(scope: !4344, file: !151, line: 382, column: 2)
!4548 = !{i32 -2142288175, i32 -2142288146, i32 -2142288100, i32 -2142288042, i32 -2142287988, i32 -2142287934, i32 -2142287879, i32 -2142287848}
!4549 = !DILocation(line: 382, column: 2, scope: !4550, inlinedAt: !4348)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !151, line: 382, column: 2)
!4551 = distinct !DILexicalBlock(scope: !4547, file: !151, line: 382, column: 2)
!4552 = !{i32 -2142287405, i32 -2142287398, i32 -2142287344, i32 -2142287313, i32 -2142287283}
!4553 = !DILocation(line: 382, column: 2, scope: !4551, inlinedAt: !4348)
!4554 = !DILocation(line: 386, column: 1, scope: !4344, inlinedAt: !4348)
!4555 = !DILocation(line: 547, column: 9, scope: !4327, inlinedAt: !4330)
!4556 = !DILocation(line: 549, column: 8, scope: !4557, inlinedAt: !4330)
!4557 = distinct !DILexicalBlock(scope: !4327, file: !151, line: 549, column: 7)
!4558 = !DILocation(line: 549, column: 7, scope: !4327, inlinedAt: !4330)
!4559 = !DILocation(line: 550, column: 4, scope: !4557, inlinedAt: !4330)
!4560 = !DILocation(line: 553, column: 33, scope: !4327, inlinedAt: !4330)
!4561 = !DILocation(line: 325, column: 6, scope: !4562, inlinedAt: !4342)
!4562 = distinct !DILexicalBlock(scope: !4338, file: !151, line: 325, column: 6)
!4563 = !DILocation(line: 325, column: 6, scope: !4338, inlinedAt: !4342)
!4564 = !DILocation(line: 326, column: 3, scope: !4562, inlinedAt: !4342)
!4565 = !DILocation(line: 332, column: 9, scope: !4338, inlinedAt: !4342)
!4566 = !DILocation(line: 332, column: 15, scope: !4338, inlinedAt: !4342)
!4567 = !DILocation(line: 332, column: 2, scope: !4338, inlinedAt: !4342)
!4568 = !DILocation(line: 336, column: 1, scope: !4338, inlinedAt: !4342)
!4569 = !DILocation(line: 553, column: 5, scope: !4327, inlinedAt: !4330)
!4570 = !DILocation(line: 553, column: 41, scope: !4327, inlinedAt: !4330)
!4571 = !DILocation(line: 554, column: 5, scope: !4327, inlinedAt: !4330)
!4572 = !DILocation(line: 554, column: 12, scope: !4327, inlinedAt: !4330)
!4573 = !DILocation(line: 448, column: 31, scope: !4322, inlinedAt: !4326)
!4574 = !DILocation(line: 448, column: 34, scope: !4322, inlinedAt: !4326)
!4575 = !DILocation(line: 448, column: 14, scope: !4322, inlinedAt: !4326)
!4576 = !DILocation(line: 450, column: 22, scope: !4322, inlinedAt: !4326)
!4577 = !DILocation(line: 450, column: 25, scope: !4322, inlinedAt: !4326)
!4578 = !DILocation(line: 450, column: 30, scope: !4322, inlinedAt: !4326)
!4579 = !DILocation(line: 450, column: 36, scope: !4322, inlinedAt: !4326)
!4580 = !DILocation(line: 450, column: 8, scope: !4322, inlinedAt: !4326)
!4581 = !DILocation(line: 450, column: 6, scope: !4322, inlinedAt: !4326)
!4582 = !DILocation(line: 451, column: 9, scope: !4322, inlinedAt: !4326)
!4583 = !DILocation(line: 552, column: 3, scope: !4327, inlinedAt: !4330)
!4584 = !DILocation(line: 557, column: 19, scope: !4329, inlinedAt: !4330)
!4585 = !DILocation(line: 557, column: 25, scope: !4329, inlinedAt: !4330)
!4586 = !DILocation(line: 557, column: 9, scope: !4329, inlinedAt: !4330)
!4587 = !DILocation(line: 557, column: 2, scope: !4329, inlinedAt: !4330)
!4588 = !DILocation(line: 558, column: 1, scope: !4329, inlinedAt: !4330)
!4589 = !DILocation(line: 664, column: 2, scope: !4318)
!4590 = distinct !DISubprogram(name: "__init_work", scope: !118, file: !118, line: 215, type: !4591, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{null, !240, !271}
!4593 = !DILocalVariable(name: "work", arg: 1, scope: !4590, file: !118, line: 215, type: !240)
!4594 = !DILocation(line: 215, column: 52, scope: !4590)
!4595 = !DILocalVariable(name: "onstack", arg: 2, scope: !4590, file: !118, line: 215, type: !271)
!4596 = !DILocation(line: 215, column: 62, scope: !4590)
!4597 = !DILocation(line: 215, column: 73, scope: !4590)
!4598 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4599, file: !4599, line: 33, type: !4600, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4599 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4600 = !DISubroutineType(types: !4601)
!4601 = !{null, !187}
!4602 = !DILocalVariable(name: "list", arg: 1, scope: !4598, file: !4599, line: 33, type: !187)
!4603 = !DILocation(line: 33, column: 53, scope: !4598)
!4604 = !DILocation(line: 35, column: 2, scope: !4598)
!4605 = !DILocation(line: 35, column: 2, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4598, file: !4599, line: 35, column: 2)
!4607 = !DILocation(line: 35, column: 2, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4606, file: !4599, line: 35, column: 2)
!4609 = !DILocation(line: 35, column: 2, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4606, file: !4599, line: 35, column: 2)
!4611 = !DILocation(line: 36, column: 15, scope: !4598)
!4612 = !DILocation(line: 36, column: 2, scope: !4598)
!4613 = !DILocation(line: 36, column: 8, scope: !4598)
!4614 = !DILocation(line: 36, column: 13, scope: !4598)
!4615 = !DILocation(line: 37, column: 1, scope: !4598)
!4616 = distinct !DISubprogram(name: "memstick_check", scope: !3, file: !3, line: 429, type: !238, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4617 = !DILocalVariable(name: "work", arg: 1, scope: !4616, file: !3, line: 429, type: !240)
!4618 = !DILocation(line: 429, column: 48, scope: !4616)
!4619 = !DILocalVariable(name: "host", scope: !4616, file: !3, line: 431, type: !192)
!4620 = !DILocation(line: 431, column: 24, scope: !4616)
!4621 = !DILocalVariable(name: "__mptr", scope: !4622, file: !3, line: 431, type: !184)
!4622 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 431, column: 31)
!4623 = !DILocation(line: 431, column: 31, scope: !4622)
!4624 = !DILocation(line: 431, column: 31, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 431, column: 31)
!4626 = !DILocalVariable(name: "card", scope: !4616, file: !3, line: 433, type: !3789)
!4627 = !DILocation(line: 433, column: 23, scope: !4616)
!4628 = !DILocation(line: 436, column: 26, scope: !4616)
!4629 = !DILocation(line: 436, column: 32, scope: !4616)
!4630 = !DILocation(line: 436, column: 36, scope: !4616)
!4631 = !DILocation(line: 436, column: 2, scope: !4616)
!4632 = !DILocation(line: 437, column: 14, scope: !4616)
!4633 = !DILocation(line: 437, column: 20, scope: !4616)
!4634 = !DILocation(line: 437, column: 2, scope: !4616)
!4635 = !DILocation(line: 438, column: 7, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 438, column: 6)
!4637 = !DILocation(line: 438, column: 13, scope: !4636)
!4638 = !DILocation(line: 438, column: 6, scope: !4616)
!4639 = !DILocation(line: 439, column: 25, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 439, column: 7)
!4641 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 438, column: 19)
!4642 = !DILocation(line: 439, column: 7, scope: !4640)
!4643 = !DILocation(line: 439, column: 7, scope: !4641)
!4644 = !DILocation(line: 440, column: 4, scope: !4640)
!4645 = !DILocation(line: 441, column: 2, scope: !4641)
!4646 = !DILocation(line: 441, column: 13, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 441, column: 13)
!4648 = !DILocation(line: 441, column: 19, scope: !4647)
!4649 = !DILocation(line: 441, column: 25, scope: !4647)
!4650 = !DILocation(line: 441, column: 13, scope: !4636)
!4651 = !DILocation(line: 442, column: 3, scope: !4647)
!4652 = !DILocation(line: 442, column: 9, scope: !4647)
!4653 = !DILocation(line: 442, column: 15, scope: !4647)
!4654 = !DILocation(line: 442, column: 20, scope: !4647)
!4655 = !DILocation(line: 442, column: 26, scope: !4647)
!4656 = !DILocation(line: 444, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 444, column: 6)
!4658 = !DILocation(line: 444, column: 12, scope: !4657)
!4659 = !DILocation(line: 444, column: 6, scope: !4616)
!4660 = !DILocation(line: 445, column: 3, scope: !4657)
!4661 = !DILocation(line: 447, column: 29, scope: !4616)
!4662 = !DILocation(line: 447, column: 9, scope: !4616)
!4663 = !DILocation(line: 447, column: 7, scope: !4616)
!4664 = !DILocation(line: 449, column: 7, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 449, column: 6)
!4666 = !DILocation(line: 449, column: 6, scope: !4616)
!4667 = !DILocation(line: 450, column: 7, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 450, column: 7)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 449, column: 13)
!4670 = !DILocation(line: 450, column: 13, scope: !4668)
!4671 = !DILocation(line: 450, column: 7, scope: !4669)
!4672 = !DILocation(line: 451, column: 23, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 450, column: 19)
!4674 = !DILocation(line: 451, column: 29, scope: !4673)
!4675 = !DILocation(line: 451, column: 35, scope: !4673)
!4676 = !DILocation(line: 451, column: 4, scope: !4673)
!4677 = !DILocation(line: 452, column: 4, scope: !4673)
!4678 = !DILocation(line: 452, column: 10, scope: !4673)
!4679 = !DILocation(line: 452, column: 15, scope: !4673)
!4680 = !DILocation(line: 453, column: 3, scope: !4673)
!4681 = !DILocation(line: 454, column: 2, scope: !4669)
!4682 = !DILocation(line: 457, column: 7, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 457, column: 7)
!4684 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 454, column: 9)
!4685 = !DILocation(line: 457, column: 13, scope: !4683)
!4686 = !DILocation(line: 457, column: 7, scope: !4684)
!4687 = !DILocation(line: 458, column: 29, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 458, column: 8)
!4689 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 457, column: 19)
!4690 = !DILocation(line: 458, column: 35, scope: !4688)
!4691 = !DILocation(line: 458, column: 8, scope: !4688)
!4692 = !DILocation(line: 459, column: 8, scope: !4688)
!4693 = !DILocation(line: 459, column: 31, scope: !4688)
!4694 = !DILocation(line: 459, column: 37, scope: !4688)
!4695 = !DILocation(line: 459, column: 44, scope: !4688)
!4696 = !DILocation(line: 459, column: 50, scope: !4688)
!4697 = !DILocation(line: 459, column: 12, scope: !4688)
!4698 = !DILocation(line: 460, column: 8, scope: !4688)
!4699 = !DILocation(line: 460, column: 13, scope: !4688)
!4700 = !DILocation(line: 460, column: 19, scope: !4688)
!4701 = !DILocation(line: 460, column: 25, scope: !4688)
!4702 = !DILocation(line: 460, column: 31, scope: !4688)
!4703 = !DILocation(line: 460, column: 37, scope: !4688)
!4704 = !DILocation(line: 458, column: 8, scope: !4689)
!4705 = !DILocation(line: 461, column: 24, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 460, column: 45)
!4707 = !DILocation(line: 461, column: 30, scope: !4706)
!4708 = !DILocation(line: 461, column: 36, scope: !4706)
!4709 = !DILocation(line: 461, column: 5, scope: !4706)
!4710 = !DILocation(line: 462, column: 5, scope: !4706)
!4711 = !DILocation(line: 462, column: 11, scope: !4706)
!4712 = !DILocation(line: 462, column: 16, scope: !4706)
!4713 = !DILocation(line: 463, column: 4, scope: !4706)
!4714 = !DILocation(line: 463, column: 15, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 463, column: 15)
!4716 = !DILocation(line: 463, column: 21, scope: !4715)
!4717 = !DILocation(line: 463, column: 27, scope: !4715)
!4718 = !DILocation(line: 463, column: 15, scope: !4688)
!4719 = !DILocation(line: 464, column: 5, scope: !4715)
!4720 = !DILocation(line: 464, column: 11, scope: !4715)
!4721 = !DILocation(line: 464, column: 17, scope: !4715)
!4722 = !DILocation(line: 464, column: 23, scope: !4715)
!4723 = !DILocation(line: 464, column: 29, scope: !4715)
!4724 = !DILocation(line: 465, column: 3, scope: !4689)
!4725 = !DILocation(line: 467, column: 8, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 467, column: 7)
!4727 = !DILocation(line: 467, column: 14, scope: !4726)
!4728 = !DILocation(line: 467, column: 7, scope: !4684)
!4729 = !DILocation(line: 468, column: 17, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 467, column: 20)
!4731 = !DILocation(line: 468, column: 4, scope: !4730)
!4732 = !DILocation(line: 468, column: 10, scope: !4730)
!4733 = !DILocation(line: 468, column: 15, scope: !4730)
!4734 = !DILocation(line: 469, column: 25, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 469, column: 8)
!4736 = !DILocation(line: 469, column: 31, scope: !4735)
!4737 = !DILocation(line: 469, column: 8, scope: !4735)
!4738 = !DILocation(line: 469, column: 8, scope: !4730)
!4739 = !DILocation(line: 470, column: 17, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 469, column: 37)
!4741 = !DILocation(line: 470, column: 23, scope: !4740)
!4742 = !DILocation(line: 470, column: 5, scope: !4740)
!4743 = !DILocation(line: 471, column: 11, scope: !4740)
!4744 = !DILocation(line: 471, column: 17, scope: !4740)
!4745 = !DILocation(line: 471, column: 5, scope: !4740)
!4746 = !DILocation(line: 472, column: 5, scope: !4740)
!4747 = !DILocation(line: 472, column: 11, scope: !4740)
!4748 = !DILocation(line: 472, column: 16, scope: !4740)
!4749 = !DILocation(line: 473, column: 4, scope: !4740)
!4750 = !DILocation(line: 474, column: 3, scope: !4730)
!4751 = !DILocation(line: 475, column: 10, scope: !4726)
!4752 = !DILocation(line: 475, column: 4, scope: !4726)
!4753 = !DILabel(scope: !4616, name: "out_power_off", file: !3, line: 478)
!4754 = !DILocation(line: 478, column: 1, scope: !4616)
!4755 = !DILocation(line: 479, column: 7, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 479, column: 6)
!4757 = !DILocation(line: 479, column: 13, scope: !4756)
!4758 = !DILocation(line: 479, column: 6, scope: !4616)
!4759 = !DILocation(line: 480, column: 3, scope: !4756)
!4760 = !DILocation(line: 480, column: 9, scope: !4756)
!4761 = !DILocation(line: 480, column: 19, scope: !4756)
!4762 = !DILocation(line: 482, column: 16, scope: !4616)
!4763 = !DILocation(line: 482, column: 22, scope: !4616)
!4764 = !DILocation(line: 482, column: 2, scope: !4616)
!4765 = !DILocation(line: 483, column: 17, scope: !4616)
!4766 = !DILocation(line: 483, column: 23, scope: !4616)
!4767 = !DILocation(line: 483, column: 27, scope: !4616)
!4768 = !DILocation(line: 483, column: 2, scope: !4616)
!4769 = !DILocation(line: 485, column: 1, scope: !4616)
!4770 = distinct !DISubprogram(name: "memstick_add_host", scope: !3, file: !3, line: 513, type: !4771, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!271, !192}
!4773 = !DILocalVariable(name: "lock", arg: 1, scope: !4774, file: !4775, line: 392, type: !1065)
!4774 = distinct !DISubprogram(name: "spin_unlock", scope: !4775, file: !4775, line: 392, type: !4776, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4775 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4776 = !DISubroutineType(types: !4777)
!4777 = !{null, !1065}
!4778 = !DILocation(line: 392, column: 53, scope: !4774, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 535, column: 3, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 532, column: 10)
!4781 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 532, column: 6)
!4782 = !DILocalVariable(name: "lock", arg: 1, scope: !4783, file: !4775, line: 352, type: !1065)
!4783 = distinct !DISubprogram(name: "spin_lock", scope: !4775, file: !4775, line: 352, type: !4776, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4784 = !DILocation(line: 352, column: 51, scope: !4783, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 533, column: 3, scope: !4780)
!4786 = !DILocation(line: 392, column: 53, scope: !4774, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 524, column: 2, scope: !4770)
!4788 = !DILocation(line: 352, column: 51, scope: !4783, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 518, column: 2, scope: !4770)
!4790 = !DILocalVariable(name: "host", arg: 1, scope: !4770, file: !3, line: 513, type: !192)
!4791 = !DILocation(line: 513, column: 45, scope: !4770)
!4792 = !DILocalVariable(name: "rc", scope: !4770, file: !3, line: 515, type: !271)
!4793 = !DILocation(line: 515, column: 6, scope: !4770)
!4794 = !DILocation(line: 517, column: 2, scope: !4770)
!4795 = !DILocation(line: 354, column: 2, scope: !4796, inlinedAt: !4789)
!4796 = distinct !DILexicalBlock(scope: !4783, file: !4775, line: 354, column: 2)
!4797 = !{i32 -2145501186}
!4798 = !DILocation(line: 354, column: 2, scope: !4799, inlinedAt: !4789)
!4799 = distinct !DILexicalBlock(scope: !4796, file: !4775, line: 354, column: 2)
!4800 = !DILocation(line: 520, column: 37, scope: !4770)
!4801 = !DILocation(line: 520, column: 7, scope: !4770)
!4802 = !DILocation(line: 520, column: 5, scope: !4770)
!4803 = !DILocation(line: 521, column: 6, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 521, column: 6)
!4805 = !DILocation(line: 521, column: 9, scope: !4804)
!4806 = !DILocation(line: 521, column: 6, scope: !4770)
!4807 = !DILocation(line: 522, column: 14, scope: !4804)
!4808 = !DILocation(line: 522, column: 3, scope: !4804)
!4809 = !DILocation(line: 522, column: 9, scope: !4804)
!4810 = !DILocation(line: 522, column: 12, scope: !4804)
!4811 = !DILocation(line: 394, column: 2, scope: !4812, inlinedAt: !4787)
!4812 = distinct !DILexicalBlock(scope: !4774, file: !4775, line: 394, column: 2)
!4813 = !{i32 -2145498825}
!4814 = !DILocation(line: 394, column: 2, scope: !4815, inlinedAt: !4787)
!4815 = distinct !DILexicalBlock(scope: !4812, file: !4775, line: 394, column: 2)
!4816 = !DILocation(line: 525, column: 2, scope: !4770)
!4817 = !DILocation(line: 526, column: 6, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 526, column: 6)
!4819 = !DILocation(line: 526, column: 9, scope: !4818)
!4820 = !DILocation(line: 526, column: 6, scope: !4770)
!4821 = !DILocation(line: 527, column: 10, scope: !4818)
!4822 = !DILocation(line: 527, column: 3, scope: !4818)
!4823 = !DILocation(line: 529, column: 16, scope: !4770)
!4824 = !DILocation(line: 529, column: 22, scope: !4770)
!4825 = !DILocation(line: 529, column: 41, scope: !4770)
!4826 = !DILocation(line: 529, column: 47, scope: !4770)
!4827 = !DILocation(line: 529, column: 2, scope: !4770)
!4828 = !DILocation(line: 531, column: 19, scope: !4770)
!4829 = !DILocation(line: 531, column: 25, scope: !4770)
!4830 = !DILocation(line: 531, column: 7, scope: !4770)
!4831 = !DILocation(line: 531, column: 5, scope: !4770)
!4832 = !DILocation(line: 532, column: 6, scope: !4781)
!4833 = !DILocation(line: 532, column: 6, scope: !4770)
!4834 = !DILocation(line: 354, column: 2, scope: !4796, inlinedAt: !4785)
!4835 = !DILocation(line: 354, column: 2, scope: !4799, inlinedAt: !4785)
!4836 = !DILocation(line: 534, column: 34, scope: !4780)
!4837 = !DILocation(line: 534, column: 40, scope: !4780)
!4838 = !DILocation(line: 534, column: 3, scope: !4780)
!4839 = !DILocation(line: 394, column: 2, scope: !4812, inlinedAt: !4779)
!4840 = !DILocation(line: 394, column: 2, scope: !4815, inlinedAt: !4779)
!4841 = !DILocation(line: 536, column: 10, scope: !4780)
!4842 = !DILocation(line: 536, column: 3, scope: !4780)
!4843 = !DILocation(line: 539, column: 2, scope: !4770)
!4844 = !DILocation(line: 539, column: 8, scope: !4770)
!4845 = !DILocation(line: 539, column: 18, scope: !4770)
!4846 = !DILocation(line: 540, column: 25, scope: !4770)
!4847 = !DILocation(line: 540, column: 2, scope: !4770)
!4848 = !DILocation(line: 541, column: 2, scope: !4770)
!4849 = !DILocation(line: 542, column: 1, scope: !4770)
!4850 = distinct !DISubprogram(name: "idr_preload_end", scope: !3236, file: !3236, line: 172, type: !1874, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4851 = !DILocation(line: 174, column: 2, scope: !4850)
!4852 = !DILocation(line: 174, column: 2, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !3236, line: 174, column: 2)
!4854 = distinct !DILexicalBlock(scope: !4855, file: !3236, line: 174, column: 2)
!4855 = distinct !DILexicalBlock(scope: !4850, file: !3236, line: 174, column: 2)
!4856 = !DILocalVariable(name: "__vpp_verify", scope: !4857, file: !3236, line: 174, type: !2112)
!4857 = distinct !DILexicalBlock(scope: !4853, file: !3236, line: 174, column: 2)
!4858 = !DILocation(line: 174, column: 2, scope: !4857)
!4859 = !DILocation(line: 174, column: 2, scope: !4854)
!4860 = !DILocation(line: 174, column: 2, scope: !4855)
!4861 = !{i32 -2142451605}
!4862 = !DILocation(line: 175, column: 1, scope: !4850)
!4863 = distinct !DISubprogram(name: "memstick_remove_host", scope: !3, file: !3, line: 549, type: !3857, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4864 = !DILocation(line: 392, column: 53, scope: !4774, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 562, column: 2, scope: !4863)
!4866 = !DILocation(line: 352, column: 51, scope: !4783, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 560, column: 2, scope: !4863)
!4868 = !DILocalVariable(name: "host", arg: 1, scope: !4863, file: !3, line: 549, type: !192)
!4869 = !DILocation(line: 549, column: 49, scope: !4863)
!4870 = !DILocation(line: 551, column: 2, scope: !4863)
!4871 = !DILocation(line: 551, column: 8, scope: !4863)
!4872 = !DILocation(line: 551, column: 17, scope: !4863)
!4873 = !DILocation(line: 552, column: 18, scope: !4863)
!4874 = !DILocation(line: 552, column: 2, scope: !4863)
!4875 = !DILocation(line: 553, column: 14, scope: !4863)
!4876 = !DILocation(line: 553, column: 20, scope: !4863)
!4877 = !DILocation(line: 553, column: 2, scope: !4863)
!4878 = !DILocation(line: 554, column: 6, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 554, column: 6)
!4880 = !DILocation(line: 554, column: 12, scope: !4879)
!4881 = !DILocation(line: 554, column: 6, scope: !4863)
!4882 = !DILocation(line: 555, column: 22, scope: !4879)
!4883 = !DILocation(line: 555, column: 28, scope: !4879)
!4884 = !DILocation(line: 555, column: 34, scope: !4879)
!4885 = !DILocation(line: 555, column: 3, scope: !4879)
!4886 = !DILocation(line: 556, column: 2, scope: !4863)
!4887 = !DILocation(line: 556, column: 8, scope: !4863)
!4888 = !DILocation(line: 556, column: 13, scope: !4863)
!4889 = !DILocation(line: 557, column: 2, scope: !4863)
!4890 = !DILocation(line: 557, column: 8, scope: !4863)
!4891 = !DILocation(line: 557, column: 18, scope: !4863)
!4892 = !DILocation(line: 558, column: 16, scope: !4863)
!4893 = !DILocation(line: 558, column: 22, scope: !4863)
!4894 = !DILocation(line: 558, column: 2, scope: !4863)
!4895 = !DILocation(line: 354, column: 2, scope: !4796, inlinedAt: !4867)
!4896 = !DILocation(line: 354, column: 2, scope: !4799, inlinedAt: !4867)
!4897 = !DILocation(line: 561, column: 33, scope: !4863)
!4898 = !DILocation(line: 561, column: 39, scope: !4863)
!4899 = !DILocation(line: 561, column: 2, scope: !4863)
!4900 = !DILocation(line: 394, column: 2, scope: !4812, inlinedAt: !4865)
!4901 = !DILocation(line: 394, column: 2, scope: !4815, inlinedAt: !4865)
!4902 = !DILocation(line: 563, column: 14, scope: !4863)
!4903 = !DILocation(line: 563, column: 20, scope: !4863)
!4904 = !DILocation(line: 563, column: 2, scope: !4863)
!4905 = !DILocation(line: 564, column: 1, scope: !4863)
!4906 = distinct !DISubprogram(name: "memstick_free_host", scope: !3, file: !3, line: 571, type: !3857, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4907 = !DILocalVariable(name: "host", arg: 1, scope: !4906, file: !3, line: 571, type: !192)
!4908 = !DILocation(line: 571, column: 47, scope: !4906)
!4909 = !DILocation(line: 573, column: 17, scope: !4906)
!4910 = !DILocation(line: 573, column: 23, scope: !4906)
!4911 = !DILocation(line: 573, column: 2, scope: !4906)
!4912 = !DILocation(line: 574, column: 14, scope: !4906)
!4913 = !DILocation(line: 574, column: 20, scope: !4906)
!4914 = !DILocation(line: 574, column: 2, scope: !4906)
!4915 = !DILocation(line: 575, column: 1, scope: !4906)
!4916 = distinct !DISubprogram(name: "mutex_destroy", scope: !197, file: !197, line: 103, type: !4917, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{null, !4919}
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!4920 = !DILocalVariable(name: "lock", arg: 1, scope: !4916, file: !197, line: 103, type: !4919)
!4921 = !DILocation(line: 103, column: 48, scope: !4916)
!4922 = !DILocation(line: 103, column: 55, scope: !4916)
!4923 = distinct !DISubprogram(name: "memstick_suspend_host", scope: !3, file: !3, line: 582, type: !3857, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4924 = !DILocalVariable(name: "host", arg: 1, scope: !4923, file: !3, line: 582, type: !192)
!4925 = !DILocation(line: 582, column: 50, scope: !4923)
!4926 = !DILocation(line: 584, column: 14, scope: !4923)
!4927 = !DILocation(line: 584, column: 20, scope: !4923)
!4928 = !DILocation(line: 584, column: 2, scope: !4923)
!4929 = !DILocation(line: 585, column: 2, scope: !4923)
!4930 = !DILocation(line: 585, column: 8, scope: !4923)
!4931 = !DILocation(line: 585, column: 18, scope: !4923)
!4932 = !DILocation(line: 586, column: 16, scope: !4923)
!4933 = !DILocation(line: 586, column: 22, scope: !4923)
!4934 = !DILocation(line: 586, column: 2, scope: !4923)
!4935 = !DILocation(line: 587, column: 1, scope: !4923)
!4936 = distinct !DISubprogram(name: "memstick_resume_host", scope: !3, file: !3, line: 594, type: !3857, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4937 = !DILocalVariable(name: "host", arg: 1, scope: !4936, file: !3, line: 594, type: !192)
!4938 = !DILocation(line: 594, column: 49, scope: !4936)
!4939 = !DILocalVariable(name: "rc", scope: !4936, file: !3, line: 596, type: !271)
!4940 = !DILocation(line: 596, column: 6, scope: !4936)
!4941 = !DILocation(line: 598, column: 14, scope: !4936)
!4942 = !DILocation(line: 598, column: 20, scope: !4936)
!4943 = !DILocation(line: 598, column: 2, scope: !4936)
!4944 = !DILocation(line: 599, column: 6, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 599, column: 6)
!4946 = !DILocation(line: 599, column: 12, scope: !4945)
!4947 = !DILocation(line: 599, column: 6, scope: !4936)
!4948 = !DILocation(line: 600, column: 26, scope: !4945)
!4949 = !DILocation(line: 600, column: 8, scope: !4945)
!4950 = !DILocation(line: 600, column: 6, scope: !4945)
!4951 = !DILocation(line: 600, column: 3, scope: !4945)
!4952 = !DILocation(line: 601, column: 16, scope: !4936)
!4953 = !DILocation(line: 601, column: 22, scope: !4936)
!4954 = !DILocation(line: 601, column: 2, scope: !4936)
!4955 = !DILocation(line: 603, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 603, column: 6)
!4957 = !DILocation(line: 603, column: 6, scope: !4936)
!4958 = !DILocation(line: 604, column: 26, scope: !4956)
!4959 = !DILocation(line: 604, column: 3, scope: !4956)
!4960 = !DILocation(line: 605, column: 1, scope: !4936)
!4961 = distinct !DISubprogram(name: "memstick_power_on", scope: !3, file: !3, line: 419, type: !4771, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4962 = !DILocalVariable(name: "host", arg: 1, scope: !4961, file: !3, line: 419, type: !192)
!4963 = !DILocation(line: 419, column: 52, scope: !4961)
!4964 = !DILocalVariable(name: "rc", scope: !4961, file: !3, line: 421, type: !271)
!4965 = !DILocation(line: 421, column: 6, scope: !4961)
!4966 = !DILocation(line: 421, column: 11, scope: !4961)
!4967 = !DILocation(line: 421, column: 17, scope: !4961)
!4968 = !DILocation(line: 421, column: 27, scope: !4961)
!4969 = !DILocation(line: 423, column: 7, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 423, column: 6)
!4971 = !DILocation(line: 423, column: 6, scope: !4961)
!4972 = !DILocation(line: 424, column: 8, scope: !4970)
!4973 = !DILocation(line: 424, column: 14, scope: !4970)
!4974 = !DILocation(line: 424, column: 24, scope: !4970)
!4975 = !DILocation(line: 424, column: 6, scope: !4970)
!4976 = !DILocation(line: 424, column: 3, scope: !4970)
!4977 = !DILocation(line: 426, column: 9, scope: !4961)
!4978 = !DILocation(line: 426, column: 2, scope: !4961)
!4979 = distinct !DISubprogram(name: "memstick_register_driver", scope: !3, file: !3, line: 608, type: !4980, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!271, !3868}
!4982 = !DILocalVariable(name: "drv", arg: 1, scope: !4979, file: !3, line: 608, type: !3868)
!4983 = !DILocation(line: 608, column: 54, scope: !4979)
!4984 = !DILocation(line: 610, column: 2, scope: !4979)
!4985 = !DILocation(line: 610, column: 7, scope: !4979)
!4986 = !DILocation(line: 610, column: 14, scope: !4979)
!4987 = !DILocation(line: 610, column: 18, scope: !4979)
!4988 = !DILocation(line: 612, column: 26, scope: !4979)
!4989 = !DILocation(line: 612, column: 31, scope: !4979)
!4990 = !DILocation(line: 612, column: 9, scope: !4979)
!4991 = !DILocation(line: 612, column: 2, scope: !4979)
!4992 = distinct !DISubprogram(name: "memstick_unregister_driver", scope: !3, file: !3, line: 616, type: !4993, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !226)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{null, !3868}
!4995 = !DILocalVariable(name: "drv", arg: 1, scope: !4992, file: !3, line: 616, type: !3868)
!4996 = !DILocation(line: 616, column: 57, scope: !4992)
!4997 = !DILocation(line: 618, column: 21, scope: !4992)
!4998 = !DILocation(line: 618, column: 26, scope: !4992)
!4999 = !DILocation(line: 618, column: 2, scope: !4992)
!5000 = !DILocation(line: 619, column: 1, scope: !4992)
!5001 = distinct !DISubprogram(name: "memstick_exit", scope: !3, file: !3, line: 649, type: !1874, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5002 = !DILocation(line: 651, column: 2, scope: !5001)
!5003 = !DILocation(line: 652, column: 2, scope: !5001)
!5004 = !DILocation(line: 653, column: 20, scope: !5001)
!5005 = !DILocation(line: 653, column: 2, scope: !5001)
!5006 = !DILocation(line: 654, column: 2, scope: !5001)
!5007 = !DILocation(line: 655, column: 1, scope: !5001)
!5008 = !DILocalVariable(name: "rc", scope: !4016, file: !3, line: 625, type: !271)
!5009 = !DILocation(line: 625, column: 6, scope: !4016)
!5010 = !DILocation(line: 627, column: 14, scope: !4016)
!5011 = !DILocation(line: 627, column: 12, scope: !4016)
!5012 = !DILocation(line: 628, column: 7, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 628, column: 6)
!5014 = !DILocation(line: 628, column: 6, scope: !4016)
!5015 = !DILocation(line: 629, column: 3, scope: !5013)
!5016 = !DILocation(line: 631, column: 7, scope: !4016)
!5017 = !DILocation(line: 631, column: 5, scope: !4016)
!5018 = !DILocation(line: 632, column: 6, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 632, column: 6)
!5020 = !DILocation(line: 632, column: 6, scope: !4016)
!5021 = !DILocation(line: 633, column: 3, scope: !5019)
!5022 = !DILocation(line: 635, column: 7, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 635, column: 7)
!5024 = !DILocation(line: 635, column: 5, scope: !4016)
!5025 = !DILocation(line: 636, column: 6, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 636, column: 6)
!5027 = !DILocation(line: 636, column: 6, scope: !4016)
!5028 = !DILocation(line: 637, column: 3, scope: !5026)
!5029 = !DILocation(line: 639, column: 2, scope: !4016)
!5030 = !DILabel(scope: !4016, name: "error_bus_unregister", file: !3, line: 641)
!5031 = !DILocation(line: 641, column: 1, scope: !4016)
!5032 = !DILocation(line: 642, column: 2, scope: !4016)
!5033 = !DILabel(scope: !4016, name: "error_destroy_workqueue", file: !3, line: 643)
!5034 = !DILocation(line: 643, column: 1, scope: !4016)
!5035 = !DILocation(line: 644, column: 20, scope: !4016)
!5036 = !DILocation(line: 644, column: 2, scope: !4016)
!5037 = !DILocation(line: 646, column: 9, scope: !4016)
!5038 = !DILocation(line: 646, column: 2, scope: !4016)
!5039 = !DILocation(line: 647, column: 1, scope: !4016)
!5040 = distinct !DISubprogram(name: "get_order", scope: !5041, file: !5041, line: 29, type: !5042, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5041 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!271, !181}
!5044 = !DILocalVariable(name: "x", arg: 1, scope: !5045, file: !5046, line: 366, type: !430)
!5045 = distinct !DISubprogram(name: "fls64", scope: !5046, file: !5046, line: 366, type: !5047, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5046 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!271, !430}
!5049 = !DILocation(line: 366, column: 40, scope: !5045, inlinedAt: !5050)
!5050 = distinct !DILocation(line: 46, column: 9, scope: !5040)
!5051 = !DILocalVariable(name: "bitpos", scope: !5045, file: !5046, line: 368, type: !271)
!5052 = !DILocation(line: 368, column: 6, scope: !5045, inlinedAt: !5050)
!5053 = !DILocalVariable(name: "size", arg: 1, scope: !5040, file: !5041, line: 29, type: !181)
!5054 = !DILocation(line: 29, column: 63, scope: !5040)
!5055 = !DILocation(line: 31, column: 27, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5040, file: !5041, line: 31, column: 6)
!5057 = !DILocation(line: 31, column: 6, scope: !5056)
!5058 = !DILocation(line: 31, column: 6, scope: !5040)
!5059 = !DILocation(line: 32, column: 8, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !5041, line: 32, column: 7)
!5061 = distinct !DILexicalBlock(scope: !5056, file: !5041, line: 31, column: 34)
!5062 = !DILocation(line: 32, column: 7, scope: !5061)
!5063 = !DILocation(line: 33, column: 4, scope: !5060)
!5064 = !DILocation(line: 35, column: 7, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5061, file: !5041, line: 35, column: 7)
!5066 = !DILocation(line: 35, column: 12, scope: !5065)
!5067 = !DILocation(line: 35, column: 7, scope: !5061)
!5068 = !DILocation(line: 36, column: 4, scope: !5065)
!5069 = !DILocation(line: 38, column: 10, scope: !5061)
!5070 = !DILocation(line: 38, column: 28, scope: !5061)
!5071 = !DILocation(line: 38, column: 41, scope: !5061)
!5072 = !DILocation(line: 38, column: 3, scope: !5061)
!5073 = !DILocation(line: 41, column: 6, scope: !5040)
!5074 = !DILocation(line: 42, column: 7, scope: !5040)
!5075 = !DILocation(line: 46, column: 15, scope: !5040)
!5076 = !DILocation(line: 374, column: 2, scope: !5045, inlinedAt: !5050)
!5077 = !DILocation(line: 376, column: 14, scope: !5045, inlinedAt: !5050)
!5078 = !{i32 327795}
!5079 = !DILocation(line: 377, column: 9, scope: !5045, inlinedAt: !5050)
!5080 = !DILocation(line: 377, column: 16, scope: !5045, inlinedAt: !5050)
!5081 = !DILocation(line: 46, column: 2, scope: !5040)
!5082 = !DILocation(line: 48, column: 1, scope: !5040)
!5083 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5084, file: !5084, line: 30, type: !5085, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5084 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!271, !429}
!5087 = !DILocation(line: 366, column: 40, scope: !5045, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 32, column: 9, scope: !5083)
!5089 = !DILocation(line: 368, column: 6, scope: !5045, inlinedAt: !5088)
!5090 = !DILocalVariable(name: "n", arg: 1, scope: !5083, file: !5084, line: 30, type: !429)
!5091 = !DILocation(line: 30, column: 21, scope: !5083)
!5092 = !DILocation(line: 32, column: 15, scope: !5083)
!5093 = !DILocation(line: 374, column: 2, scope: !5045, inlinedAt: !5088)
!5094 = !DILocation(line: 376, column: 14, scope: !5045, inlinedAt: !5088)
!5095 = !DILocation(line: 377, column: 9, scope: !5045, inlinedAt: !5088)
!5096 = !DILocation(line: 377, column: 16, scope: !5045, inlinedAt: !5088)
!5097 = !DILocation(line: 32, column: 18, scope: !5083)
!5098 = !DILocation(line: 32, column: 2, scope: !5083)
!5099 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5100, file: !5100, line: 137, type: !5101, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5100 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!184, !936, !2112, !332, !179}
!5103 = !DILocalVariable(name: "s", arg: 1, scope: !5099, file: !5100, line: 137, type: !936)
!5104 = !DILocation(line: 137, column: 54, scope: !5099)
!5105 = !DILocalVariable(name: "object", arg: 2, scope: !5099, file: !5100, line: 137, type: !2112)
!5106 = !DILocation(line: 137, column: 69, scope: !5099)
!5107 = !DILocalVariable(name: "size", arg: 3, scope: !5099, file: !5100, line: 138, type: !332)
!5108 = !DILocation(line: 138, column: 12, scope: !5099)
!5109 = !DILocalVariable(name: "flags", arg: 4, scope: !5099, file: !5100, line: 138, type: !179)
!5110 = !DILocation(line: 138, column: 24, scope: !5099)
!5111 = !DILocation(line: 140, column: 17, scope: !5099)
!5112 = !DILocation(line: 140, column: 2, scope: !5099)
!5113 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !5114, file: !5114, line: 92, type: !3382, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5114 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5115 = !DILocalVariable(name: "v", arg: 1, scope: !5116, file: !5117, line: 93, type: !5120)
!5116 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !5117, file: !5117, line: 93, type: !5118, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5117 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5118 = !DISubroutineType(types: !5119)
!5119 = !{null, !5120}
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!5121 = !DILocation(line: 93, column: 55, scope: !5116, inlinedAt: !5122)
!5122 = distinct !DILocation(line: 241, column: 2, scope: !5123, inlinedAt: !5125)
!5123 = distinct !DISubprogram(name: "atomic_inc", scope: !5124, file: !5124, line: 238, type: !5118, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5124 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5125 = distinct !DILocation(line: 94, column: 2, scope: !5113)
!5126 = !DILocalVariable(name: "v", arg: 1, scope: !5127, file: !5128, line: 99, type: !5131)
!5127 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5128, file: !5128, line: 99, type: !5129, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5128 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5129 = !DISubroutineType(types: !5130)
!5130 = !{null, !5131, !332}
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5133)
!5133 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5134 = !DILocation(line: 99, column: 79, scope: !5127, inlinedAt: !5135)
!5135 = distinct !DILocation(line: 240, column: 2, scope: !5123, inlinedAt: !5125)
!5136 = !DILocalVariable(name: "size", arg: 2, scope: !5127, file: !5128, line: 99, type: !332)
!5137 = !DILocation(line: 99, column: 89, scope: !5127, inlinedAt: !5135)
!5138 = !DILocalVariable(name: "v", arg: 1, scope: !5123, file: !5124, line: 238, type: !5120)
!5139 = !DILocation(line: 238, column: 22, scope: !5123, inlinedAt: !5125)
!5140 = !DILocalVariable(name: "dev", arg: 1, scope: !5113, file: !5114, line: 92, type: !3359)
!5141 = !DILocation(line: 92, column: 59, scope: !5113)
!5142 = !DILocation(line: 94, column: 14, scope: !5113)
!5143 = !DILocation(line: 94, column: 19, scope: !5113)
!5144 = !DILocation(line: 94, column: 25, scope: !5113)
!5145 = !DILocation(line: 240, column: 31, scope: !5123, inlinedAt: !5125)
!5146 = !DILocation(line: 101, column: 20, scope: !5127, inlinedAt: !5135)
!5147 = !DILocation(line: 101, column: 23, scope: !5127, inlinedAt: !5135)
!5148 = !DILocation(line: 101, column: 2, scope: !5127, inlinedAt: !5135)
!5149 = !DILocation(line: 102, column: 2, scope: !5127, inlinedAt: !5135)
!5150 = !DILocation(line: 241, column: 18, scope: !5123, inlinedAt: !5125)
!5151 = !DILocation(line: 96, column: 16, scope: !5116, inlinedAt: !5122)
!5152 = !DILocation(line: 96, column: 19, scope: !5116, inlinedAt: !5122)
!5153 = !DILocation(line: 95, column: 2, scope: !5116, inlinedAt: !5122)
!5154 = !{i32 -2146606006}
!5155 = !DILocation(line: 95, column: 1, scope: !5113)
!5156 = distinct !DISubprogram(name: "memstick_alloc_card", scope: !3, file: !3, line: 378, type: !5157, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!3789, !192}
!5159 = !DILocalVariable(name: "host", arg: 1, scope: !5156, file: !3, line: 378, type: !192)
!5160 = !DILocation(line: 378, column: 71, scope: !5156)
!5161 = !DILocalVariable(name: "card", scope: !5156, file: !3, line: 380, type: !3789)
!5162 = !DILocation(line: 380, column: 23, scope: !5156)
!5163 = !DILocation(line: 380, column: 30, scope: !5156)
!5164 = !DILocalVariable(name: "old_card", scope: !5156, file: !3, line: 382, type: !3789)
!5165 = !DILocation(line: 382, column: 23, scope: !5156)
!5166 = !DILocation(line: 382, column: 34, scope: !5156)
!5167 = !DILocation(line: 382, column: 40, scope: !5156)
!5168 = !DILocalVariable(name: "id_reg", scope: !5156, file: !3, line: 383, type: !5169)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ms_id_register", file: !94, line: 46, size: 32, elements: !5170)
!5170 = !{!5171, !5172, !5173, !5174}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5169, file: !94, line: 47, baseType: !435, size: 8)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "if_mode", scope: !5169, file: !94, line: 48, baseType: !435, size: 8, offset: 8)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !5169, file: !94, line: 49, baseType: !435, size: 8, offset: 16)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5169, file: !94, line: 50, baseType: !435, size: 8, offset: 24)
!5175 = !DILocation(line: 383, column: 24, scope: !5156)
!5176 = !DILocation(line: 385, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 385, column: 6)
!5178 = !DILocation(line: 385, column: 6, scope: !5156)
!5179 = !DILocation(line: 386, column: 16, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 385, column: 12)
!5181 = !DILocation(line: 386, column: 3, scope: !5180)
!5182 = !DILocation(line: 386, column: 9, scope: !5180)
!5183 = !DILocation(line: 386, column: 14, scope: !5180)
!5184 = !DILocation(line: 387, column: 17, scope: !5180)
!5185 = !DILocation(line: 387, column: 23, scope: !5180)
!5186 = !DILocation(line: 387, column: 44, scope: !5180)
!5187 = !DILocation(line: 387, column: 50, scope: !5180)
!5188 = !DILocation(line: 387, column: 34, scope: !5180)
!5189 = !DILocation(line: 387, column: 3, scope: !5180)
!5190 = !DILocation(line: 388, column: 23, scope: !5180)
!5191 = !DILocation(line: 388, column: 29, scope: !5180)
!5192 = !DILocation(line: 388, column: 3, scope: !5180)
!5193 = !DILocation(line: 388, column: 9, scope: !5180)
!5194 = !DILocation(line: 388, column: 13, scope: !5180)
!5195 = !DILocation(line: 388, column: 20, scope: !5180)
!5196 = !DILocation(line: 389, column: 3, scope: !5180)
!5197 = !DILocation(line: 389, column: 9, scope: !5180)
!5198 = !DILocation(line: 389, column: 13, scope: !5180)
!5199 = !DILocation(line: 389, column: 17, scope: !5180)
!5200 = !DILocation(line: 390, column: 3, scope: !5180)
!5201 = !DILocation(line: 390, column: 9, scope: !5180)
!5202 = !DILocation(line: 390, column: 13, scope: !5180)
!5203 = !DILocation(line: 390, column: 21, scope: !5180)
!5204 = !DILocation(line: 391, column: 3, scope: !5180)
!5205 = !DILocation(line: 391, column: 9, scope: !5180)
!5206 = !DILocation(line: 391, column: 15, scope: !5180)
!5207 = !DILocation(line: 393, column: 3, scope: !5180)
!5208 = !DILocation(line: 393, column: 9, scope: !5180)
!5209 = !DILocation(line: 393, column: 18, scope: !5180)
!5210 = !DILocation(line: 393, column: 27, scope: !5180)
!5211 = !DILocation(line: 394, column: 3, scope: !5180)
!5212 = !DILocation(line: 394, column: 9, scope: !5180)
!5213 = !DILocation(line: 394, column: 18, scope: !5180)
!5214 = !DILocation(line: 394, column: 27, scope: !5180)
!5215 = !DILocation(line: 395, column: 3, scope: !5180)
!5216 = !DILocation(line: 395, column: 9, scope: !5180)
!5217 = !DILocation(line: 395, column: 18, scope: !5180)
!5218 = !DILocation(line: 395, column: 27, scope: !5180)
!5219 = !DILocation(line: 396, column: 3, scope: !5180)
!5220 = !DILocation(line: 396, column: 9, scope: !5180)
!5221 = !DILocation(line: 396, column: 18, scope: !5180)
!5222 = !DILocation(line: 396, column: 27, scope: !5180)
!5223 = !DILocation(line: 398, column: 3, scope: !5180)
!5224 = !DILocation(line: 400, column: 16, scope: !5180)
!5225 = !DILocation(line: 400, column: 3, scope: !5180)
!5226 = !DILocation(line: 400, column: 9, scope: !5180)
!5227 = !DILocation(line: 400, column: 14, scope: !5180)
!5228 = !DILocation(line: 401, column: 28, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 401, column: 7)
!5230 = !DILocation(line: 401, column: 7, scope: !5229)
!5231 = !DILocation(line: 401, column: 7, scope: !5180)
!5232 = !DILocation(line: 402, column: 4, scope: !5229)
!5233 = !DILocation(line: 404, column: 3, scope: !5180)
!5234 = !DILocation(line: 404, column: 9, scope: !5180)
!5235 = !DILocation(line: 404, column: 22, scope: !5180)
!5236 = !DILocation(line: 405, column: 20, scope: !5180)
!5237 = !DILocation(line: 405, column: 3, scope: !5180)
!5238 = !DILocation(line: 406, column: 24, scope: !5180)
!5239 = !DILocation(line: 406, column: 30, scope: !5180)
!5240 = !DILocation(line: 406, column: 3, scope: !5180)
!5241 = !DILocation(line: 408, column: 7, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 408, column: 7)
!5243 = !DILocation(line: 408, column: 13, scope: !5242)
!5244 = !DILocation(line: 408, column: 25, scope: !5242)
!5245 = !DILocation(line: 408, column: 7, scope: !5180)
!5246 = !DILocation(line: 409, column: 4, scope: !5242)
!5247 = !DILocation(line: 410, column: 2, scope: !5180)
!5248 = !DILocation(line: 411, column: 15, scope: !5156)
!5249 = !DILocation(line: 411, column: 2, scope: !5156)
!5250 = !DILocation(line: 411, column: 8, scope: !5156)
!5251 = !DILocation(line: 411, column: 13, scope: !5156)
!5252 = !DILocation(line: 412, column: 9, scope: !5156)
!5253 = !DILocation(line: 412, column: 2, scope: !5156)
!5254 = !DILabel(scope: !5156, name: "err_out", file: !3, line: 413)
!5255 = !DILocation(line: 413, column: 1, scope: !5156)
!5256 = !DILocation(line: 414, column: 15, scope: !5156)
!5257 = !DILocation(line: 414, column: 2, scope: !5156)
!5258 = !DILocation(line: 414, column: 8, scope: !5156)
!5259 = !DILocation(line: 414, column: 13, scope: !5156)
!5260 = !DILocation(line: 415, column: 8, scope: !5156)
!5261 = !DILocation(line: 415, column: 2, scope: !5156)
!5262 = !DILocation(line: 416, column: 2, scope: !5156)
!5263 = !DILocation(line: 417, column: 1, scope: !5156)
!5264 = distinct !DISubprogram(name: "memstick_dev_match", scope: !3, file: !3, line: 28, type: !5265, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!271, !3789, !3872}
!5267 = !DILocalVariable(name: "card", arg: 1, scope: !5264, file: !3, line: 28, type: !3789)
!5268 = !DILocation(line: 28, column: 52, scope: !5264)
!5269 = !DILocalVariable(name: "id", arg: 2, scope: !5264, file: !3, line: 29, type: !3872)
!5270 = !DILocation(line: 29, column: 37, scope: !5264)
!5271 = !DILocation(line: 31, column: 6, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 31, column: 6)
!5273 = !DILocation(line: 31, column: 10, scope: !5272)
!5274 = !DILocation(line: 31, column: 22, scope: !5272)
!5275 = !DILocation(line: 31, column: 6, scope: !5264)
!5276 = !DILocation(line: 32, column: 8, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 32, column: 7)
!5278 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 31, column: 44)
!5279 = !DILocation(line: 32, column: 12, scope: !5277)
!5280 = !DILocation(line: 32, column: 20, scope: !5277)
!5281 = !DILocation(line: 32, column: 26, scope: !5277)
!5282 = !DILocation(line: 32, column: 29, scope: !5277)
!5283 = !DILocation(line: 32, column: 17, scope: !5277)
!5284 = !DILocation(line: 33, column: 7, scope: !5277)
!5285 = !DILocation(line: 33, column: 11, scope: !5277)
!5286 = !DILocation(line: 33, column: 15, scope: !5277)
!5287 = !DILocation(line: 33, column: 27, scope: !5277)
!5288 = !DILocation(line: 33, column: 33, scope: !5277)
!5289 = !DILocation(line: 33, column: 36, scope: !5277)
!5290 = !DILocation(line: 33, column: 24, scope: !5277)
!5291 = !DILocation(line: 34, column: 7, scope: !5277)
!5292 = !DILocation(line: 34, column: 11, scope: !5277)
!5293 = !DILocation(line: 34, column: 15, scope: !5277)
!5294 = !DILocation(line: 34, column: 24, scope: !5277)
!5295 = !DILocation(line: 34, column: 30, scope: !5277)
!5296 = !DILocation(line: 34, column: 33, scope: !5277)
!5297 = !DILocation(line: 34, column: 21, scope: !5277)
!5298 = !DILocation(line: 32, column: 7, scope: !5278)
!5299 = !DILocation(line: 35, column: 4, scope: !5277)
!5300 = !DILocation(line: 36, column: 2, scope: !5278)
!5301 = !DILocation(line: 38, column: 2, scope: !5264)
!5302 = !DILocation(line: 39, column: 1, scope: !5264)
!5303 = distinct !DISubprogram(name: "pm_runtime_put", scope: !5114, file: !5114, line: 417, type: !3391, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5304 = !DILocalVariable(name: "dev", arg: 1, scope: !5303, file: !5114, line: 417, type: !3359)
!5305 = !DILocation(line: 417, column: 49, scope: !5303)
!5306 = !DILocation(line: 419, column: 27, scope: !5303)
!5307 = !DILocation(line: 419, column: 9, scope: !5303)
!5308 = !DILocation(line: 419, column: 2, scope: !5303)
!5309 = distinct !DISubprogram(name: "kasan_check_write", scope: !5310, file: !5310, line: 38, type: !5311, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5310 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!498, !5131, !7}
!5313 = !DILocalVariable(name: "p", arg: 1, scope: !5309, file: !5310, line: 38, type: !5131)
!5314 = !DILocation(line: 38, column: 59, scope: !5309)
!5315 = !DILocalVariable(name: "size", arg: 2, scope: !5309, file: !5310, line: 38, type: !7)
!5316 = !DILocation(line: 38, column: 75, scope: !5309)
!5317 = !DILocation(line: 40, column: 2, scope: !5309)
!5318 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5319, file: !5319, line: 178, type: !5320, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5319 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5320 = !DISubroutineType(types: !5321)
!5321 = !{null, !5131, !332, !271}
!5322 = !DILocalVariable(name: "ptr", arg: 1, scope: !5318, file: !5319, line: 178, type: !5131)
!5323 = !DILocation(line: 178, column: 60, scope: !5318)
!5324 = !DILocalVariable(name: "size", arg: 2, scope: !5318, file: !5319, line: 178, type: !332)
!5325 = !DILocation(line: 178, column: 72, scope: !5318)
!5326 = !DILocalVariable(name: "type", arg: 3, scope: !5318, file: !5319, line: 179, type: !271)
!5327 = !DILocation(line: 179, column: 15, scope: !5318)
!5328 = !DILocation(line: 179, column: 23, scope: !5318)
!5329 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !5330, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!249, !3679}
!5332 = !DILocalVariable(name: "dev", arg: 1, scope: !5329, file: !73, line: 609, type: !3679)
!5333 = !DILocation(line: 609, column: 57, scope: !5329)
!5334 = !DILocation(line: 612, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5329, file: !73, line: 612, column: 6)
!5336 = !DILocation(line: 612, column: 11, scope: !5335)
!5337 = !DILocation(line: 612, column: 6, scope: !5329)
!5338 = !DILocation(line: 613, column: 10, scope: !5335)
!5339 = !DILocation(line: 613, column: 15, scope: !5335)
!5340 = !DILocation(line: 613, column: 3, scope: !5335)
!5341 = !DILocation(line: 615, column: 23, scope: !5329)
!5342 = !DILocation(line: 615, column: 28, scope: !5329)
!5343 = !DILocation(line: 615, column: 9, scope: !5329)
!5344 = !DILocation(line: 615, column: 2, scope: !5329)
!5345 = !DILocation(line: 616, column: 1, scope: !5329)
!5346 = distinct !DISubprogram(name: "memstick_free_card", scope: !3, file: !3, line: 191, type: !3382, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5347 = !DILocalVariable(name: "dev", arg: 1, scope: !5346, file: !3, line: 191, type: !3359)
!5348 = !DILocation(line: 191, column: 47, scope: !5346)
!5349 = !DILocalVariable(name: "card", scope: !5346, file: !3, line: 193, type: !3789)
!5350 = !DILocation(line: 193, column: 23, scope: !5346)
!5351 = !DILocalVariable(name: "__mptr", scope: !5352, file: !3, line: 193, type: !184)
!5352 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 193, column: 30)
!5353 = !DILocation(line: 193, column: 30, scope: !5352)
!5354 = !DILocation(line: 193, column: 30, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 193, column: 30)
!5356 = !DILocation(line: 195, column: 8, scope: !5346)
!5357 = !DILocation(line: 195, column: 2, scope: !5346)
!5358 = !DILocation(line: 196, column: 1, scope: !5346)
!5359 = distinct !DISubprogram(name: "memstick_dummy_check", scope: !3, file: !3, line: 198, type: !3839, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5360 = !DILocalVariable(name: "card", arg: 1, scope: !5359, file: !3, line: 198, type: !3789)
!5361 = !DILocation(line: 198, column: 54, scope: !5359)
!5362 = !DILocation(line: 200, column: 2, scope: !5359)
!5363 = !DILocalVariable(name: "x", arg: 1, scope: !3977, file: !1498, line: 85, type: !1496)
!5364 = !DILocation(line: 85, column: 57, scope: !3977)
!5365 = !DILocation(line: 87, column: 2, scope: !3977)
!5366 = !DILocation(line: 87, column: 5, scope: !3977)
!5367 = !DILocation(line: 87, column: 10, scope: !3977)
!5368 = !DILocation(line: 88, column: 2, scope: !3977)
!5369 = !DILocation(line: 88, column: 2, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !3977, file: !1498, line: 88, column: 2)
!5371 = !DILocation(line: 89, column: 1, scope: !3977)
!5372 = distinct !DISubprogram(name: "h_memstick_read_dev_id", scope: !3, file: !3, line: 324, type: !3843, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5373 = !DILocalVariable(name: "card", arg: 1, scope: !5372, file: !3, line: 324, type: !3789)
!5374 = !DILocation(line: 324, column: 56, scope: !5372)
!5375 = !DILocalVariable(name: "mrq", arg: 2, scope: !5372, file: !3, line: 325, type: !3845)
!5376 = !DILocation(line: 325, column: 33, scope: !5372)
!5377 = !DILocalVariable(name: "id_reg", scope: !5372, file: !3, line: 327, type: !5169)
!5378 = !DILocation(line: 327, column: 24, scope: !5372)
!5379 = !DILocation(line: 329, column: 9, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 329, column: 6)
!5381 = !DILocation(line: 329, column: 8, scope: !5380)
!5382 = !DILocation(line: 329, column: 7, scope: !5380)
!5383 = !DILocation(line: 329, column: 6, scope: !5372)
!5384 = !DILocation(line: 330, column: 22, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 329, column: 15)
!5386 = !DILocation(line: 330, column: 28, scope: !5385)
!5387 = !DILocation(line: 330, column: 58, scope: !5385)
!5388 = !DILocation(line: 330, column: 3, scope: !5385)
!5389 = !DILocation(line: 332, column: 11, scope: !5385)
!5390 = !DILocation(line: 332, column: 17, scope: !5385)
!5391 = !DILocation(line: 332, column: 4, scope: !5385)
!5392 = !DILocation(line: 332, column: 8, scope: !5385)
!5393 = !DILocation(line: 333, column: 3, scope: !5385)
!5394 = !DILocation(line: 335, column: 10, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 335, column: 7)
!5396 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 334, column: 9)
!5397 = !DILocation(line: 335, column: 9, scope: !5395)
!5398 = !DILocation(line: 335, column: 16, scope: !5395)
!5399 = !DILocation(line: 335, column: 8, scope: !5395)
!5400 = !DILocation(line: 335, column: 7, scope: !5396)
!5401 = !DILocation(line: 336, column: 4, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 335, column: 23)
!5403 = !DILocation(line: 336, column: 22, scope: !5402)
!5404 = !DILocation(line: 336, column: 21, scope: !5402)
!5405 = !DILocation(line: 336, column: 28, scope: !5402)
!5406 = !DILocation(line: 337, column: 4, scope: !5402)
!5407 = !DILocation(line: 337, column: 10, scope: !5402)
!5408 = !DILocation(line: 337, column: 13, scope: !5402)
!5409 = !DILocation(line: 337, column: 25, scope: !5402)
!5410 = !DILocation(line: 338, column: 27, scope: !5402)
!5411 = !DILocation(line: 338, column: 4, scope: !5402)
!5412 = !DILocation(line: 338, column: 10, scope: !5402)
!5413 = !DILocation(line: 338, column: 13, scope: !5402)
!5414 = !DILocation(line: 338, column: 18, scope: !5402)
!5415 = !DILocation(line: 339, column: 31, scope: !5402)
!5416 = !DILocation(line: 339, column: 4, scope: !5402)
!5417 = !DILocation(line: 339, column: 10, scope: !5402)
!5418 = !DILocation(line: 339, column: 13, scope: !5402)
!5419 = !DILocation(line: 339, column: 22, scope: !5402)
!5420 = !DILocation(line: 340, column: 28, scope: !5402)
!5421 = !DILocation(line: 340, column: 4, scope: !5402)
!5422 = !DILocation(line: 340, column: 10, scope: !5402)
!5423 = !DILocation(line: 340, column: 13, scope: !5402)
!5424 = !DILocation(line: 340, column: 19, scope: !5402)
!5425 = !DILocation(line: 342, column: 3, scope: !5402)
!5426 = !DILocation(line: 343, column: 13, scope: !5396)
!5427 = !DILocation(line: 343, column: 19, scope: !5396)
!5428 = !DILocation(line: 343, column: 3, scope: !5396)
!5429 = !DILocation(line: 344, column: 3, scope: !5396)
!5430 = !DILocation(line: 346, column: 1, scope: !5372)
!5431 = distinct !DISubprogram(name: "kobject_name", scope: !246, file: !246, line: 88, type: !5432, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!249, !5434}
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!5436 = !DILocalVariable(name: "kobj", arg: 1, scope: !5431, file: !246, line: 88, type: !5434)
!5437 = !DILocation(line: 88, column: 62, scope: !5431)
!5438 = !DILocation(line: 90, column: 9, scope: !5431)
!5439 = !DILocation(line: 90, column: 15, scope: !5431)
!5440 = !DILocation(line: 90, column: 2, scope: !5431)
!5441 = distinct !DISubprogram(name: "memstick_free", scope: !3, file: !3, line: 179, type: !3382, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5442 = !DILocalVariable(name: "dev", arg: 1, scope: !5441, file: !3, line: 179, type: !3359)
!5443 = !DILocation(line: 179, column: 42, scope: !5441)
!5444 = !DILocalVariable(name: "host", scope: !5441, file: !3, line: 181, type: !192)
!5445 = !DILocation(line: 181, column: 24, scope: !5441)
!5446 = !DILocalVariable(name: "__mptr", scope: !5447, file: !3, line: 181, type: !184)
!5447 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 181, column: 31)
!5448 = !DILocation(line: 181, column: 31, scope: !5447)
!5449 = !DILocation(line: 181, column: 31, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 181, column: 31)
!5451 = !DILocation(line: 183, column: 8, scope: !5441)
!5452 = !DILocation(line: 183, column: 2, scope: !5441)
!5453 = !DILocation(line: 184, column: 1, scope: !5441)
!5454 = distinct !DISubprogram(name: "local_lock_release", scope: !3866, file: !3866, line: 53, type: !5455, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{null, !3864}
!5457 = !DILocalVariable(name: "l", arg: 1, scope: !5454, file: !3866, line: 53, type: !3864)
!5458 = !DILocation(line: 53, column: 53, scope: !5454)
!5459 = !DILocation(line: 53, column: 58, scope: !5454)
!5460 = distinct !DISubprogram(name: "memstick_bus_match", scope: !3, file: !3, line: 41, type: !3428, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5461 = !DILocalVariable(name: "dev", arg: 1, scope: !5460, file: !3, line: 41, type: !3359)
!5462 = !DILocation(line: 41, column: 46, scope: !5460)
!5463 = !DILocalVariable(name: "drv", arg: 2, scope: !5460, file: !3, line: 41, type: !3430)
!5464 = !DILocation(line: 41, column: 73, scope: !5460)
!5465 = !DILocalVariable(name: "card", scope: !5460, file: !3, line: 43, type: !3789)
!5466 = !DILocation(line: 43, column: 23, scope: !5460)
!5467 = !DILocalVariable(name: "__mptr", scope: !5468, file: !3, line: 43, type: !184)
!5468 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 43, column: 30)
!5469 = !DILocation(line: 43, column: 30, scope: !5468)
!5470 = !DILocation(line: 43, column: 30, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 43, column: 30)
!5472 = !DILocalVariable(name: "ms_drv", scope: !5460, file: !3, line: 45, type: !3868)
!5473 = !DILocation(line: 45, column: 26, scope: !5460)
!5474 = !DILocalVariable(name: "__mptr", scope: !5475, file: !3, line: 45, type: !184)
!5475 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 45, column: 35)
!5476 = !DILocation(line: 45, column: 35, scope: !5475)
!5477 = !DILocation(line: 45, column: 35, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 45, column: 35)
!5479 = !DILocalVariable(name: "ids", scope: !5460, file: !3, line: 48, type: !3872)
!5480 = !DILocation(line: 48, column: 29, scope: !5460)
!5481 = !DILocation(line: 48, column: 35, scope: !5460)
!5482 = !DILocation(line: 48, column: 43, scope: !5460)
!5483 = !DILocation(line: 50, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 50, column: 6)
!5485 = !DILocation(line: 50, column: 6, scope: !5460)
!5486 = !DILocation(line: 51, column: 3, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 50, column: 11)
!5488 = !DILocation(line: 51, column: 10, scope: !5487)
!5489 = !DILocation(line: 51, column: 15, scope: !5487)
!5490 = !DILocation(line: 52, column: 27, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 52, column: 8)
!5492 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 51, column: 28)
!5493 = !DILocation(line: 52, column: 33, scope: !5491)
!5494 = !DILocation(line: 52, column: 8, scope: !5491)
!5495 = !DILocation(line: 52, column: 8, scope: !5492)
!5496 = !DILocation(line: 53, column: 5, scope: !5491)
!5497 = !DILocation(line: 54, column: 4, scope: !5492)
!5498 = distinct !{!5498, !5486, !5499}
!5499 = !DILocation(line: 55, column: 3, scope: !5487)
!5500 = !DILocation(line: 56, column: 2, scope: !5487)
!5501 = !DILocation(line: 57, column: 2, scope: !5460)
!5502 = !DILocation(line: 58, column: 1, scope: !5460)
!5503 = distinct !DISubprogram(name: "memstick_uevent", scope: !3, file: !3, line: 60, type: !3373, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5504 = !DILocalVariable(name: "dev", arg: 1, scope: !5503, file: !3, line: 60, type: !3359)
!5505 = !DILocation(line: 60, column: 43, scope: !5503)
!5506 = !DILocalVariable(name: "env", arg: 2, scope: !5503, file: !3, line: 60, type: !282)
!5507 = !DILocation(line: 60, column: 72, scope: !5503)
!5508 = !DILocalVariable(name: "card", scope: !5503, file: !3, line: 62, type: !3789)
!5509 = !DILocation(line: 62, column: 23, scope: !5503)
!5510 = !DILocalVariable(name: "__mptr", scope: !5511, file: !3, line: 62, type: !184)
!5511 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 62, column: 30)
!5512 = !DILocation(line: 62, column: 30, scope: !5511)
!5513 = !DILocation(line: 62, column: 30, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 62, column: 30)
!5515 = !DILocation(line: 65, column: 21, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 65, column: 6)
!5517 = !DILocation(line: 65, column: 48, scope: !5516)
!5518 = !DILocation(line: 65, column: 54, scope: !5516)
!5519 = !DILocation(line: 65, column: 57, scope: !5516)
!5520 = !DILocation(line: 65, column: 6, scope: !5516)
!5521 = !DILocation(line: 65, column: 6, scope: !5503)
!5522 = !DILocation(line: 66, column: 3, scope: !5516)
!5523 = !DILocation(line: 68, column: 21, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 68, column: 6)
!5525 = !DILocation(line: 68, column: 52, scope: !5524)
!5526 = !DILocation(line: 68, column: 58, scope: !5524)
!5527 = !DILocation(line: 68, column: 61, scope: !5524)
!5528 = !DILocation(line: 68, column: 6, scope: !5524)
!5529 = !DILocation(line: 68, column: 6, scope: !5503)
!5530 = !DILocation(line: 69, column: 3, scope: !5524)
!5531 = !DILocation(line: 71, column: 21, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 71, column: 6)
!5533 = !DILocation(line: 71, column: 49, scope: !5532)
!5534 = !DILocation(line: 71, column: 55, scope: !5532)
!5535 = !DILocation(line: 71, column: 58, scope: !5532)
!5536 = !DILocation(line: 71, column: 6, scope: !5532)
!5537 = !DILocation(line: 71, column: 6, scope: !5503)
!5538 = !DILocation(line: 72, column: 3, scope: !5532)
!5539 = !DILocation(line: 74, column: 2, scope: !5503)
!5540 = !DILocation(line: 75, column: 1, scope: !5503)
!5541 = distinct !DISubprogram(name: "memstick_device_probe", scope: !3, file: !3, line: 77, type: !3391, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5542 = !DILocalVariable(name: "dev", arg: 1, scope: !5541, file: !3, line: 77, type: !3359)
!5543 = !DILocation(line: 77, column: 49, scope: !5541)
!5544 = !DILocalVariable(name: "card", scope: !5541, file: !3, line: 79, type: !3789)
!5545 = !DILocation(line: 79, column: 23, scope: !5541)
!5546 = !DILocalVariable(name: "__mptr", scope: !5547, file: !3, line: 79, type: !184)
!5547 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 79, column: 30)
!5548 = !DILocation(line: 79, column: 30, scope: !5547)
!5549 = !DILocation(line: 79, column: 30, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 79, column: 30)
!5551 = !DILocalVariable(name: "drv", scope: !5541, file: !3, line: 81, type: !3868)
!5552 = !DILocation(line: 81, column: 26, scope: !5541)
!5553 = !DILocalVariable(name: "__mptr", scope: !5554, file: !3, line: 81, type: !184)
!5554 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 81, column: 32)
!5555 = !DILocation(line: 81, column: 32, scope: !5554)
!5556 = !DILocation(line: 81, column: 32, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 81, column: 32)
!5558 = !DILocalVariable(name: "rc", scope: !5541, file: !3, line: 84, type: !271)
!5559 = !DILocation(line: 84, column: 6, scope: !5541)
!5560 = !DILocation(line: 86, column: 6, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 86, column: 6)
!5562 = !DILocation(line: 86, column: 11, scope: !5561)
!5563 = !DILocation(line: 86, column: 18, scope: !5561)
!5564 = !DILocation(line: 86, column: 21, scope: !5561)
!5565 = !DILocation(line: 86, column: 26, scope: !5561)
!5566 = !DILocation(line: 86, column: 6, scope: !5541)
!5567 = !DILocation(line: 87, column: 8, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 86, column: 33)
!5569 = !DILocation(line: 87, column: 13, scope: !5568)
!5570 = !DILocation(line: 87, column: 19, scope: !5568)
!5571 = !DILocation(line: 87, column: 6, scope: !5568)
!5572 = !DILocation(line: 88, column: 8, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 88, column: 7)
!5574 = !DILocation(line: 88, column: 7, scope: !5568)
!5575 = !DILocation(line: 89, column: 15, scope: !5573)
!5576 = !DILocation(line: 89, column: 4, scope: !5573)
!5577 = !DILocation(line: 90, column: 2, scope: !5568)
!5578 = !DILocation(line: 91, column: 9, scope: !5541)
!5579 = !DILocation(line: 91, column: 2, scope: !5541)
!5580 = distinct !DISubprogram(name: "memstick_device_remove", scope: !3, file: !3, line: 94, type: !3391, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5581 = !DILocalVariable(name: "dev", arg: 1, scope: !5580, file: !3, line: 94, type: !3359)
!5582 = !DILocation(line: 94, column: 50, scope: !5580)
!5583 = !DILocalVariable(name: "card", scope: !5580, file: !3, line: 96, type: !3789)
!5584 = !DILocation(line: 96, column: 23, scope: !5580)
!5585 = !DILocalVariable(name: "__mptr", scope: !5586, file: !3, line: 96, type: !184)
!5586 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 96, column: 30)
!5587 = !DILocation(line: 96, column: 30, scope: !5586)
!5588 = !DILocation(line: 96, column: 30, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 96, column: 30)
!5590 = !DILocalVariable(name: "drv", scope: !5580, file: !3, line: 98, type: !3868)
!5591 = !DILocation(line: 98, column: 26, scope: !5580)
!5592 = !DILocalVariable(name: "__mptr", scope: !5593, file: !3, line: 98, type: !184)
!5593 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 98, column: 32)
!5594 = !DILocation(line: 98, column: 32, scope: !5593)
!5595 = !DILocation(line: 98, column: 32, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 98, column: 32)
!5597 = !DILocation(line: 102, column: 6, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 102, column: 6)
!5599 = !DILocation(line: 102, column: 11, scope: !5598)
!5600 = !DILocation(line: 102, column: 18, scope: !5598)
!5601 = !DILocation(line: 102, column: 21, scope: !5598)
!5602 = !DILocation(line: 102, column: 26, scope: !5598)
!5603 = !DILocation(line: 102, column: 6, scope: !5580)
!5604 = !DILocation(line: 103, column: 3, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 102, column: 34)
!5606 = !DILocation(line: 103, column: 8, scope: !5605)
!5607 = !DILocation(line: 103, column: 15, scope: !5605)
!5608 = !DILocation(line: 104, column: 3, scope: !5605)
!5609 = !DILocation(line: 104, column: 9, scope: !5605)
!5610 = !DILocation(line: 104, column: 13, scope: !5605)
!5611 = !DILocation(line: 104, column: 20, scope: !5605)
!5612 = !DILocation(line: 105, column: 2, scope: !5605)
!5613 = !DILocation(line: 107, column: 13, scope: !5580)
!5614 = !DILocation(line: 107, column: 2, scope: !5580)
!5615 = !DILocation(line: 108, column: 2, scope: !5580)
!5616 = distinct !DISubprogram(name: "memstick_device_suspend", scope: !3, file: !3, line: 113, type: !3453, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5617 = !DILocalVariable(name: "dev", arg: 1, scope: !5616, file: !3, line: 113, type: !3359)
!5618 = !DILocation(line: 113, column: 51, scope: !5616)
!5619 = !DILocalVariable(name: "state", arg: 2, scope: !5616, file: !3, line: 113, type: !3455)
!5620 = !DILocation(line: 113, column: 69, scope: !5616)
!5621 = !DILocalVariable(name: "card", scope: !5616, file: !3, line: 115, type: !3789)
!5622 = !DILocation(line: 115, column: 23, scope: !5616)
!5623 = !DILocalVariable(name: "__mptr", scope: !5624, file: !3, line: 115, type: !184)
!5624 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 115, column: 30)
!5625 = !DILocation(line: 115, column: 30, scope: !5624)
!5626 = !DILocation(line: 115, column: 30, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 115, column: 30)
!5628 = !DILocalVariable(name: "drv", scope: !5616, file: !3, line: 117, type: !3868)
!5629 = !DILocation(line: 117, column: 26, scope: !5616)
!5630 = !DILocalVariable(name: "__mptr", scope: !5631, file: !3, line: 117, type: !184)
!5631 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 117, column: 32)
!5632 = !DILocation(line: 117, column: 32, scope: !5631)
!5633 = !DILocation(line: 117, column: 32, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 117, column: 32)
!5635 = !DILocation(line: 121, column: 6, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 121, column: 6)
!5637 = !DILocation(line: 121, column: 11, scope: !5636)
!5638 = !DILocation(line: 121, column: 18, scope: !5636)
!5639 = !DILocation(line: 121, column: 21, scope: !5636)
!5640 = !DILocation(line: 121, column: 26, scope: !5636)
!5641 = !DILocation(line: 121, column: 6, scope: !5616)
!5642 = !DILocation(line: 122, column: 10, scope: !5636)
!5643 = !DILocation(line: 122, column: 15, scope: !5636)
!5644 = !DILocation(line: 122, column: 23, scope: !5636)
!5645 = !DILocation(line: 122, column: 3, scope: !5636)
!5646 = !DILocation(line: 123, column: 2, scope: !5616)
!5647 = !DILocation(line: 124, column: 1, scope: !5616)
!5648 = distinct !DISubprogram(name: "memstick_device_resume", scope: !3, file: !3, line: 126, type: !3391, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5649 = !DILocalVariable(name: "dev", arg: 1, scope: !5648, file: !3, line: 126, type: !3359)
!5650 = !DILocation(line: 126, column: 50, scope: !5648)
!5651 = !DILocalVariable(name: "card", scope: !5648, file: !3, line: 128, type: !3789)
!5652 = !DILocation(line: 128, column: 23, scope: !5648)
!5653 = !DILocalVariable(name: "__mptr", scope: !5654, file: !3, line: 128, type: !184)
!5654 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 128, column: 30)
!5655 = !DILocation(line: 128, column: 30, scope: !5654)
!5656 = !DILocation(line: 128, column: 30, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 128, column: 30)
!5658 = !DILocalVariable(name: "drv", scope: !5648, file: !3, line: 130, type: !3868)
!5659 = !DILocation(line: 130, column: 26, scope: !5648)
!5660 = !DILocalVariable(name: "__mptr", scope: !5661, file: !3, line: 130, type: !184)
!5661 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 130, column: 32)
!5662 = !DILocation(line: 130, column: 32, scope: !5661)
!5663 = !DILocation(line: 130, column: 32, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 130, column: 32)
!5665 = !DILocation(line: 134, column: 6, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 134, column: 6)
!5667 = !DILocation(line: 134, column: 11, scope: !5666)
!5668 = !DILocation(line: 134, column: 18, scope: !5666)
!5669 = !DILocation(line: 134, column: 21, scope: !5666)
!5670 = !DILocation(line: 134, column: 26, scope: !5666)
!5671 = !DILocation(line: 134, column: 6, scope: !5648)
!5672 = !DILocation(line: 135, column: 10, scope: !5666)
!5673 = !DILocation(line: 135, column: 15, scope: !5666)
!5674 = !DILocation(line: 135, column: 22, scope: !5666)
!5675 = !DILocation(line: 135, column: 3, scope: !5666)
!5676 = !DILocation(line: 136, column: 2, scope: !5648)
!5677 = !DILocation(line: 137, column: 1, scope: !5648)
!5678 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 156, type: !4003, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5679 = !DILocalVariable(name: "dev", arg: 1, scope: !5678, file: !3, line: 156, type: !3359)
!5680 = !DILocation(line: 156, column: 1, scope: !5678)
!5681 = !DILocalVariable(name: "attr", arg: 2, scope: !5678, file: !3, line: 156, type: !4005)
!5682 = !DILocalVariable(name: "buf", arg: 3, scope: !5678, file: !3, line: 156, type: !182)
!5683 = !DILocalVariable(name: "card", scope: !5678, file: !3, line: 156, type: !3789)
!5684 = !DILocalVariable(name: "__mptr", scope: !5685, file: !3, line: 156, type: !184)
!5685 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 156, column: 1)
!5686 = !DILocation(line: 156, column: 1, scope: !5685)
!5687 = !DILocation(line: 156, column: 1, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 156, column: 1)
!5689 = distinct !DISubprogram(name: "category_show", scope: !3, file: !3, line: 157, type: !4003, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5690 = !DILocalVariable(name: "dev", arg: 1, scope: !5689, file: !3, line: 157, type: !3359)
!5691 = !DILocation(line: 157, column: 1, scope: !5689)
!5692 = !DILocalVariable(name: "attr", arg: 2, scope: !5689, file: !3, line: 157, type: !4005)
!5693 = !DILocalVariable(name: "buf", arg: 3, scope: !5689, file: !3, line: 157, type: !182)
!5694 = !DILocalVariable(name: "card", scope: !5689, file: !3, line: 157, type: !3789)
!5695 = !DILocalVariable(name: "__mptr", scope: !5696, file: !3, line: 157, type: !184)
!5696 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 157, column: 1)
!5697 = !DILocation(line: 157, column: 1, scope: !5696)
!5698 = !DILocation(line: 157, column: 1, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 157, column: 1)
!5700 = distinct !DISubprogram(name: "class_show", scope: !3, file: !3, line: 158, type: !4003, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !226)
!5701 = !DILocalVariable(name: "dev", arg: 1, scope: !5700, file: !3, line: 158, type: !3359)
!5702 = !DILocation(line: 158, column: 1, scope: !5700)
!5703 = !DILocalVariable(name: "attr", arg: 2, scope: !5700, file: !3, line: 158, type: !4005)
!5704 = !DILocalVariable(name: "buf", arg: 3, scope: !5700, file: !3, line: 158, type: !182)
!5705 = !DILocalVariable(name: "card", scope: !5700, file: !3, line: 158, type: !3789)
!5706 = !DILocalVariable(name: "__mptr", scope: !5707, file: !3, line: 158, type: !184)
!5707 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 158, column: 1)
!5708 = !DILocation(line: 158, column: 1, scope: !5707)
!5709 = !DILocation(line: 158, column: 1, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 158, column: 1)
