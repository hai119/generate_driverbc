; ModuleID = '../bcout/drivers/pcmcia/cs.llvm.bc'
source_filename = "drivers/pcmcia/cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_init_pcmcia_cs4:\09\09\09"
module asm ".long\09init_pcmcia_cs - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.workqueue_struct = type opaque
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
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
%struct.pcmcia_socket = type { %struct.module*, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, i8*, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i64, i8*, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, i8, %struct.pccard_operations*, %struct.pccard_resource_ops*, i8*, void (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)*, void (%struct.pcmcia_socket*, %struct.pci_bus*)*, %struct.task_struct*, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.pcmcia_callback*, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, i8*, i32 }
%struct.pccard_mem_map = type { i8, i8, i16, i64, i32, %struct.resource* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.io_window_t = type { i32, i32, %struct.resource* }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.66, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
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
%union.anon.66 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pccard_operations = type { i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.pccard_io_map*)*, i32 (%struct.pcmcia_socket*, %struct.pccard_mem_map*)* }
%struct.pccard_io_map = type { i8, i8, i16, i64, i64 }
%struct.pccard_resource_ops = type { i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*, i32, i32*, i32, i32, %struct.resource**)*, %struct.resource* (i64, i64, i64, i32, %struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)*, void (%struct.pcmcia_socket*)* }
%struct.pcmcia_callback = type { %struct.module*, i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)*, void (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)* }

@__UNIQUE_ID_author234 = internal constant [63 x i8] c"pcmcia_core.author=David Hinds <dahinds@users.sourceforge.net>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description235 = internal constant [51 x i8] c"pcmcia_core.description=Linux Kernel Card Services\00", section ".modinfo", align 1, !dbg !4163
@__UNIQUE_ID_file236 = internal constant [44 x i8] c"pcmcia_core.file=drivers/pcmcia/pcmcia_core\00", section ".modinfo", align 1, !dbg !4168
@__UNIQUE_ID_license237 = internal constant [24 x i8] c"pcmcia_core.license=GPL\00", section ".modinfo", align 1, !dbg !4171
@__param_str_setup_delay = internal constant [24 x i8] c"pcmcia_core.setup_delay\00", align 16, !dbg !4302
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@setup_delay = internal global i32 10, align 4, !dbg !4304
@__param_setup_delay = internal constant %struct.kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__param_str_setup_delay, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @setup_delay to i8*) } }, section "__param", align 8, !dbg !4176
@__UNIQUE_ID_setup_delaytype238 = internal constant [37 x i8] c"pcmcia_core.parmtype=setup_delay:int\00", section ".modinfo", align 1, !dbg !4228
@__param_str_resume_delay = internal constant [25 x i8] c"pcmcia_core.resume_delay\00", align 16, !dbg !4306
@resume_delay = internal global i32 20, align 4, !dbg !4311
@__param_resume_delay = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_resume_delay, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @resume_delay to i8*) } }, section "__param", align 8, !dbg !4233
@__UNIQUE_ID_resume_delaytype239 = internal constant [38 x i8] c"pcmcia_core.parmtype=resume_delay:int\00", section ".modinfo", align 1, !dbg !4235
@__param_str_shutdown_delay = internal constant [27 x i8] c"pcmcia_core.shutdown_delay\00", align 16, !dbg !4313
@shutdown_delay = internal global i32 3, align 4, !dbg !4318
@__param_shutdown_delay = internal constant %struct.kernel_param { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__param_str_shutdown_delay, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @shutdown_delay to i8*) } }, section "__param", align 8, !dbg !4240
@__UNIQUE_ID_shutdown_delaytype240 = internal constant [40 x i8] c"pcmcia_core.parmtype=shutdown_delay:int\00", section ".modinfo", align 1, !dbg !4242
@__param_str_vcc_settle = internal constant [23 x i8] c"pcmcia_core.vcc_settle\00", align 16, !dbg !4320
@vcc_settle = internal global i32 40, align 4, !dbg !4325
@__param_vcc_settle = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_vcc_settle, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @vcc_settle to i8*) } }, section "__param", align 8, !dbg !4247
@__UNIQUE_ID_vcc_settletype241 = internal constant [36 x i8] c"pcmcia_core.parmtype=vcc_settle:int\00", section ".modinfo", align 1, !dbg !4249
@__param_str_reset_time = internal constant [23 x i8] c"pcmcia_core.reset_time\00", align 16, !dbg !4327
@reset_time = internal global i32 10, align 4, !dbg !4329
@__param_reset_time = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_reset_time, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @reset_time to i8*) } }, section "__param", align 8, !dbg !4254
@__UNIQUE_ID_reset_timetype242 = internal constant [36 x i8] c"pcmcia_core.parmtype=reset_time:int\00", section ".modinfo", align 1, !dbg !4256
@__param_str_unreset_delay = internal constant [26 x i8] c"pcmcia_core.unreset_delay\00", align 16, !dbg !4331
@unreset_delay = internal global i32 10, align 4, !dbg !4336
@__param_unreset_delay = internal constant %struct.kernel_param { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__param_str_unreset_delay, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @unreset_delay to i8*) } }, section "__param", align 8, !dbg !4258
@__UNIQUE_ID_unreset_delaytype243 = internal constant [39 x i8] c"pcmcia_core.parmtype=unreset_delay:int\00", section ".modinfo", align 1, !dbg !4260
@__param_str_unreset_check = internal constant [26 x i8] c"pcmcia_core.unreset_check\00", align 16, !dbg !4338
@unreset_check = internal global i32 10, align 4, !dbg !4340
@__param_unreset_check = internal constant %struct.kernel_param { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__param_str_unreset_check, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @unreset_check to i8*) } }, section "__param", align 8, !dbg !4265
@__UNIQUE_ID_unreset_checktype244 = internal constant [39 x i8] c"pcmcia_core.parmtype=unreset_check:int\00", section ".modinfo", align 1, !dbg !4267
@__param_str_unreset_limit = internal constant [26 x i8] c"pcmcia_core.unreset_limit\00", align 16, !dbg !4342
@unreset_limit = internal global i32 30, align 4, !dbg !4344
@__param_unreset_limit = internal constant %struct.kernel_param { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__param_str_unreset_limit, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @unreset_limit to i8*) } }, section "__param", align 8, !dbg !4269
@__UNIQUE_ID_unreset_limittype245 = internal constant [39 x i8] c"pcmcia_core.parmtype=unreset_limit:int\00", section ".modinfo", align 1, !dbg !4271
@__param_str_cis_speed = internal constant [22 x i8] c"pcmcia_core.cis_speed\00", align 16, !dbg !4346
@cis_speed = internal global i32 300, align 4, !dbg !4351
@__param_cis_speed = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_cis_speed, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @cis_speed to i8*) } }, section "__param", align 8, !dbg !4273
@__UNIQUE_ID_cis_speedtype246 = internal constant [35 x i8] c"pcmcia_core.parmtype=cis_speed:int\00", section ".modinfo", align 1, !dbg !4275
@dead_socket = dso_local global %struct.socket_state_t { i32 0, i32 128, i8 0, i8 0, i8 0 }, align 4, !dbg !4280
@pcmcia_socket_list = dso_local global %struct.list_head { %struct.list_head* @pcmcia_socket_list, %struct.list_head* @pcmcia_socket_list }, align 8, !dbg !4282
@pcmcia_socket_list_rwsem = dso_local global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @pcmcia_socket_list_rwsem to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @pcmcia_socket_list_rwsem to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !4284
@pcmcia_socket_class = dso_local global %struct.class { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), %struct.module* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.kobject* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* @pcmcia_socket_uevent, i8* (%struct.device*, i16*)* null, void (%struct.class*)* @pcmcia_release_socket_class, void (%struct.device*)* @pcmcia_release_socket, i32 (%struct.device*)* null, %struct.kobj_ns_type_operations* null, i8* (%struct.device*)* null, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* null, %struct.dev_pm_ops* @pcmcia_socket_pm_ops, %struct.subsys_private* null }, align 8, !dbg !4291
@.str = private unnamed_addr constant [16 x i8] c"pcmcia_socket%u\00", align 1
@pcmcia_register_socket.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4286
@.str.1 = private unnamed_addr constant [19 x i8] c"&socket->skt_mutex\00", align 1
@pcmcia_register_socket.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4289
@.str.3 = private unnamed_addr constant [19 x i8] c"&socket->ops_mutex\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pccardd\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"PCMCIA: warning: socket thread did not start\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pcmcia\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to complete resume\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"drivers/pcmcia/cs.c\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"pcmcia_socket\00", align 1
@pcmcia_socket_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* @pcmcia_socket_dev_complete, i32 (%struct.device*)* null, i32 (%struct.device*)* @pcmcia_socket_dev_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* @pcmcia_socket_dev_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* @pcmcia_socket_dev_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @pcmcia_socket_dev_suspend_noirq, i32 (%struct.device*)* @pcmcia_socket_dev_resume_noirq, i32 (%struct.device*)* @pcmcia_socket_dev_suspend_noirq, i32 (%struct.device*)* @pcmcia_socket_dev_resume_noirq, i32 (%struct.device*)* @pcmcia_socket_dev_suspend_noirq, i32 (%struct.device*)* @pcmcia_socket_dev_resume_noirq, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !4358
@pcmcia_unload = internal global %struct.completion zeroinitializer, align 8, !dbg !4300
@__UNIQUE_ID___addressable_init_pcmcia_cs255 = internal global i8* bitcast (i32 ()* @init_pcmcia_cs to i8*), section ".discard.addressable", align 8, !dbg !4293
@__exitcall_exit_pcmcia_cs = internal global void ()* @exit_pcmcia_cs, section ".exitcall.exit", align 8, !dbg !4295
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4353
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"PCMCIA: unable to register socket\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"err %d adding socket attributes\0A\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.13 = private unnamed_addr constant [35 x i8] c"pccard: card ejected from slot %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"*** DANGER *** unable to remove socket power\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"pccard: %s card inserted into slot %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"CardBus\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"PCMCIA\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"voltage interrogation timed out\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"cardbus cards are not supported\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"unsupported voltage key\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"unable to apply power\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"time out after reset\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"SOCKET_NO=%u\00", align 1
@init_pcmcia_cs.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4360
@llvm.used = appending global [27 x i8*] [i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author234, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_description235, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_file236, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license237, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_setup_delay to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_setup_delaytype238, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_resume_delay to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_resume_delaytype239, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_shutdown_delay to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_shutdown_delaytype240, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_vcc_settle to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_vcc_settletype241, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_reset_time to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_reset_timetype242, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_unreset_delay to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_unreset_delaytype243, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_unreset_check to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_unreset_checktype244, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_unreset_limit to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_unreset_limittype245, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_cis_speed to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_cis_speedtype246, i32 0, i32 0), i8* bitcast (i32 (%struct.device*)* @pcmcia_socket_dev_resume to i8*), i8* bitcast (void (%struct.device*)* @pcmcia_socket_dev_complete to i8*), i8* bitcast (void ()* @exit_pcmcia_cs to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_pcmcia_cs255 to i8*), i8* bitcast (void ()** @__exitcall_exit_pcmcia_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pcmcia_socket* @pcmcia_get_socket(%struct.pcmcia_socket* %skt) #0 !dbg !4374 {
entry:
  %retval = alloca %struct.pcmcia_socket*, align 8
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !4377, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4379, metadata !DIExpression()), !dbg !4380
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !4381
  %dev1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 42, !dbg !4382
  %call = call %struct.device* @get_device(%struct.device* %dev1) #9, !dbg !4383
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4380
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4384
  %tobool = icmp ne %struct.device* %1, null, !dbg !4384
  br i1 %tobool, label %if.end, label %if.then, !dbg !4386

if.then:                                          ; preds = %entry
  store %struct.pcmcia_socket* null, %struct.pcmcia_socket** %retval, align 8, !dbg !4387
  br label %return, !dbg !4387

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4388
  %call2 = call i8* @dev_get_drvdata(%struct.device* %2) #9, !dbg !4389
  %3 = bitcast i8* %call2 to %struct.pcmcia_socket*, !dbg !4389
  store %struct.pcmcia_socket* %3, %struct.pcmcia_socket** %retval, align 8, !dbg !4390
  br label %return, !dbg !4390

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %retval, align 8, !dbg !4391
  ret %struct.pcmcia_socket* %4, !dbg !4391
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !4392 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4395, metadata !DIExpression()), !dbg !4396
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4397
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4398
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4398
  ret i8* %1, !dbg !4399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pcmcia_put_socket(%struct.pcmcia_socket* %skt) #0 !dbg !4400 {
entry:
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !4401, metadata !DIExpression()), !dbg !4402
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !4403
  %dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 42, !dbg !4404
  call void @put_device(%struct.device* %dev) #9, !dbg !4405
  ret void, !dbg !4406
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pcmcia_register_socket(%struct.pcmcia_socket* %socket) #0 !dbg !4288 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4407, metadata !DIExpression()), !dbg !4413
  %retval = alloca i32, align 4
  %socket.addr = alloca %struct.pcmcia_socket*, align 8
  %tsk = alloca %struct.task_struct*, align 8
  %ret = alloca i32, align 4
  %found = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca %struct.pcmcia_socket*, align 8
  %__mptr = alloca i8*, align 8
  %tmp9 = alloca %struct.pcmcia_socket*, align 8
  %__mptr14 = alloca i8*, align 8
  %tmp18 = alloca %struct.pcmcia_socket*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %__k = alloca %struct.task_struct*, align 8
  %tmp60 = alloca %struct.task_struct*, align 8
  store %struct.pcmcia_socket* %socket, %struct.pcmcia_socket** %socket.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %socket.addr, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk, metadata !4418, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4420, metadata !DIExpression()), !dbg !4421
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4422
  %tobool = icmp ne %struct.pcmcia_socket* %0, null, !dbg !4422
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4424

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4425
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %1, i32 0, i32 23, !dbg !4426
  %2 = load %struct.pccard_operations*, %struct.pccard_operations** %ops, align 8, !dbg !4426
  %tobool1 = icmp ne %struct.pccard_operations* %2, null, !dbg !4425
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !4427

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4428
  %dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 42, !dbg !4429
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4430
  %4 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4430
  %tobool3 = icmp ne %struct.device* %4, null, !dbg !4428
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !4431

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4432
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 24, !dbg !4433
  %6 = load %struct.pccard_resource_ops*, %struct.pccard_resource_ops** %resource_ops, align 8, !dbg !4433
  %tobool5 = icmp ne %struct.pccard_resource_ops* %6, null, !dbg !4432
  br i1 %tobool5, label %if.end, label %if.then, !dbg !4434

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4435
  br label %return, !dbg !4435

if.end:                                           ; preds = %lor.lhs.false4
  call void @down_write(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !4436
  %call = call i32 @list_empty(%struct.list_head* @pcmcia_socket_list) #9, !dbg !4437
  %tobool6 = icmp ne i32 %call, 0, !dbg !4437
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !4439

if.then7:                                         ; preds = %if.end
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4440
  %sock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 15, !dbg !4441
  store i32 0, i32* %sock, align 8, !dbg !4442
  br label %if.end24, !dbg !4440

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %found, metadata !4443, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4446, metadata !DIExpression()), !dbg !4447
  store i32 1, i32* %i, align 4, !dbg !4447
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %tmp, metadata !4448, metadata !DIExpression()), !dbg !4449
  br label %do.body, !dbg !4450

do.body:                                          ; preds = %do.cond, %if.else
  store i32 1, i32* %found, align 4, !dbg !4451
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4453, metadata !DIExpression()), !dbg !4456
  %8 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pcmcia_socket_list, i32 0, i32 0), align 8, !dbg !4456
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !4456
  store i8* %9, i8** %__mptr, align 8, !dbg !4456
  br label %do.body8, !dbg !4456

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4457

do.end:                                           ; preds = %do.body8
  %10 = load i8*, i8** %__mptr, align 8, !dbg !4456
  %add.ptr = getelementptr i8, i8* %10, i64 -264, !dbg !4456
  %11 = bitcast i8* %add.ptr to %struct.pcmcia_socket*, !dbg !4456
  store %struct.pcmcia_socket* %11, %struct.pcmcia_socket** %tmp9, align 8, !dbg !4457
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp9, align 8, !dbg !4456
  store %struct.pcmcia_socket* %12, %struct.pcmcia_socket** %tmp, align 8, !dbg !4459
  br label %for.cond, !dbg !4459

for.cond:                                         ; preds = %do.end17, %do.end
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp, align 8, !dbg !4460
  %socket_list = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 13, !dbg !4460
  %cmp = icmp eq %struct.list_head* %socket_list, @pcmcia_socket_list, !dbg !4460
  %lnot = xor i1 %cmp, true, !dbg !4460
  br i1 %lnot, label %for.body, label %for.end, !dbg !4459

for.body:                                         ; preds = %for.cond
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp, align 8, !dbg !4462
  %sock10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 15, !dbg !4465
  %15 = load i32, i32* %sock10, align 8, !dbg !4465
  %16 = load i32, i32* %i, align 4, !dbg !4466
  %cmp11 = icmp eq i32 %15, %16, !dbg !4467
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4468

if.then12:                                        ; preds = %for.body
  store i32 0, i32* %found, align 4, !dbg !4469
  br label %if.end13, !dbg !4470

if.end13:                                         ; preds = %if.then12, %for.body
  br label %for.inc, !dbg !4471

for.inc:                                          ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i8** %__mptr14, metadata !4472, metadata !DIExpression()), !dbg !4474
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp, align 8, !dbg !4474
  %socket_list15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 13, !dbg !4474
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %socket_list15, i32 0, i32 0, !dbg !4474
  %18 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4474
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4474
  store i8* %19, i8** %__mptr14, align 8, !dbg !4474
  br label %do.body16, !dbg !4474

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !4475

do.end17:                                         ; preds = %do.body16
  %20 = load i8*, i8** %__mptr14, align 8, !dbg !4474
  %add.ptr19 = getelementptr i8, i8* %20, i64 -264, !dbg !4474
  %21 = bitcast i8* %add.ptr19 to %struct.pcmcia_socket*, !dbg !4474
  store %struct.pcmcia_socket* %21, %struct.pcmcia_socket** %tmp18, align 8, !dbg !4475
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp18, align 8, !dbg !4474
  store %struct.pcmcia_socket* %22, %struct.pcmcia_socket** %tmp, align 8, !dbg !4460
  br label %for.cond, !dbg !4460, !llvm.loop !4477

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !dbg !4479
  %inc = add i32 %23, 1, !dbg !4479
  store i32 %inc, i32* %i, align 4, !dbg !4479
  br label %do.cond, !dbg !4480

do.cond:                                          ; preds = %for.end
  %24 = load i32, i32* %found, align 4, !dbg !4481
  %tobool20 = icmp ne i32 %24, 0, !dbg !4482
  %lnot21 = xor i1 %tobool20, true, !dbg !4482
  br i1 %lnot21, label %do.body, label %do.end22, !dbg !4480, !llvm.loop !4483

do.end22:                                         ; preds = %do.cond
  %25 = load i32, i32* %i, align 4, !dbg !4485
  %sub = sub i32 %25, 1, !dbg !4486
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4487
  %sock23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 15, !dbg !4488
  store i32 %sub, i32* %sock23, align 8, !dbg !4489
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.then7
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4490
  %socket_list25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %27, i32 0, i32 13, !dbg !4491
  call void @list_add_tail(%struct.list_head* %socket_list25, %struct.list_head* @pcmcia_socket_list) #9, !dbg !4492
  call void @up_write(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !4493
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4494
  %dev26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 42, !dbg !4495
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4496
  %30 = bitcast %struct.pcmcia_socket* %29 to i8*, !dbg !4496
  call void @dev_set_drvdata(%struct.device* %dev26, i8* %30) #9, !dbg !4497
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4498
  %dev27 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 42, !dbg !4499
  %class = getelementptr inbounds %struct.device, %struct.device* %dev27, i32 0, i32 29, !dbg !4500
  store %struct.class* @pcmcia_socket_class, %struct.class** %class, align 8, !dbg !4501
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4502
  %dev28 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %32, i32 0, i32 42, !dbg !4503
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4504
  %sock29 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 15, !dbg !4505
  %34 = load i32, i32* %sock29, align 8, !dbg !4505
  %call30 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %34) #9, !dbg !4506
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4507
  %cis_mem = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %35, i32 0, i32 6, !dbg !4508
  %flags = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %cis_mem, i32 0, i32 1, !dbg !4509
  store i8 0, i8* %flags, align 1, !dbg !4510
  %36 = load i32, i32* @cis_speed, align 4, !dbg !4511
  %conv = trunc i32 %36 to i16, !dbg !4511
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4512
  %cis_mem31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %37, i32 0, i32 6, !dbg !4513
  %speed = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %cis_mem31, i32 0, i32 2, !dbg !4514
  store i16 %conv, i16* %speed, align 2, !dbg !4515
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4516
  %cis_cache = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %38, i32 0, i32 10, !dbg !4517
  call void @INIT_LIST_HEAD(%struct.list_head* %cis_cache) #9, !dbg !4518
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4519
  %socket_released = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 14, !dbg !4519
  call void @__init_completion(%struct.completion* %socket_released) #9, !dbg !4519
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4520
  %thread_done = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %40, i32 0, i32 30, !dbg !4520
  call void @__init_completion(%struct.completion* %thread_done) #9, !dbg !4520
  br label %do.body32, !dbg !4521

do.body32:                                        ; preds = %if.end24
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4522
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %41, i32 0, i32 33, !dbg !4522
  call void @__mutex_init(%struct.mutex* %skt_mutex, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @pcmcia_register_socket.__key) #9, !dbg !4522
  br label %do.end34, !dbg !4522

do.end34:                                         ; preds = %do.body32
  br label %do.body35, !dbg !4524

do.body35:                                        ; preds = %do.end34
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4525
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %42, i32 0, i32 34, !dbg !4525
  call void @__mutex_init(%struct.mutex* %ops_mutex, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* @pcmcia_register_socket.__key.2) #9, !dbg !4525
  br label %do.end37, !dbg !4525

do.end37:                                         ; preds = %do.body35
  br label %do.body38, !dbg !4527

do.body38:                                        ; preds = %do.end37
  %43 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4528
  %thread_lock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %43, i32 0, i32 35, !dbg !4528
  store %struct.spinlock* %thread_lock, %struct.spinlock** %lock.addr.i, align 8
  %44 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4529
  %45 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %44, i32 0, i32 0, !dbg !4530
  %rlock.i = bitcast %union.anon.4* %45 to %struct.raw_spinlock*, !dbg !4530
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4528
  %thread_lock40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %46, i32 0, i32 35, !dbg !4528
  %47 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4528
  %rlock = bitcast %union.anon.4* %47 to %struct.raw_spinlock*, !dbg !4528
  %48 = bitcast %struct.spinlock* %thread_lock40 to i8*, !dbg !4528
  %49 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 1 %49, i64 0, i1 false), !dbg !4528
  br label %do.end42, !dbg !4528

do.end42:                                         ; preds = %do.body38
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4531
  %resource_ops43 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %50, i32 0, i32 24, !dbg !4533
  %51 = load %struct.pccard_resource_ops*, %struct.pccard_resource_ops** %resource_ops43, align 8, !dbg !4533
  %init = getelementptr inbounds %struct.pccard_resource_ops, %struct.pccard_resource_ops* %51, i32 0, i32 3, !dbg !4534
  %52 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %init, align 8, !dbg !4534
  %tobool44 = icmp ne i32 (%struct.pcmcia_socket*)* %52, null, !dbg !4531
  br i1 %tobool44, label %if.then45, label %if.end54, !dbg !4535

if.then45:                                        ; preds = %do.end42
  %53 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4536
  %ops_mutex46 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %53, i32 0, i32 34, !dbg !4538
  call void @mutex_lock(%struct.mutex* %ops_mutex46) #9, !dbg !4539
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4540
  %resource_ops47 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %54, i32 0, i32 24, !dbg !4541
  %55 = load %struct.pccard_resource_ops*, %struct.pccard_resource_ops** %resource_ops47, align 8, !dbg !4541
  %init48 = getelementptr inbounds %struct.pccard_resource_ops, %struct.pccard_resource_ops* %55, i32 0, i32 3, !dbg !4542
  %56 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %init48, align 8, !dbg !4542
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4543
  %call49 = call i32 %56(%struct.pcmcia_socket* %57) #9, !dbg !4540
  store i32 %call49, i32* %ret, align 4, !dbg !4544
  %58 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4545
  %ops_mutex50 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %58, i32 0, i32 34, !dbg !4546
  call void @mutex_unlock(%struct.mutex* %ops_mutex50) #9, !dbg !4547
  %59 = load i32, i32* %ret, align 4, !dbg !4548
  %tobool51 = icmp ne i32 %59, 0, !dbg !4548
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !4550

if.then52:                                        ; preds = %if.then45
  br label %err, !dbg !4551

if.end53:                                         ; preds = %if.then45
  br label %if.end54, !dbg !4552

if.end54:                                         ; preds = %if.end53, %do.end42
  call void @llvm.dbg.declare(metadata %struct.task_struct** %__k, metadata !4553, metadata !DIExpression()), !dbg !4555
  %60 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4555
  %61 = bitcast %struct.pcmcia_socket* %60 to i8*, !dbg !4555
  %call55 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* @pccardd, i8* %61, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !4555
  store %struct.task_struct* %call55, %struct.task_struct** %__k, align 8, !dbg !4555
  %62 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !4556
  %63 = bitcast %struct.task_struct* %62 to i8*, !dbg !4556
  %call56 = call zeroext i1 @IS_ERR(i8* %63) #9, !dbg !4556
  br i1 %call56, label %if.end59, label %if.then57, !dbg !4555

if.then57:                                        ; preds = %if.end54
  %64 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !4556
  %call58 = call i32 @wake_up_process(%struct.task_struct* %64) #9, !dbg !4556
  br label %if.end59, !dbg !4556

if.end59:                                         ; preds = %if.then57, %if.end54
  %65 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !4555
  store %struct.task_struct* %65, %struct.task_struct** %tmp60, align 8, !dbg !4556
  %66 = load %struct.task_struct*, %struct.task_struct** %tmp60, align 8, !dbg !4555
  store %struct.task_struct* %66, %struct.task_struct** %tsk, align 8, !dbg !4558
  %67 = load %struct.task_struct*, %struct.task_struct** %tsk, align 8, !dbg !4559
  %68 = bitcast %struct.task_struct* %67 to i8*, !dbg !4559
  %call61 = call zeroext i1 @IS_ERR(i8* %68) #9, !dbg !4561
  br i1 %call61, label %if.then62, label %if.end65, !dbg !4562

if.then62:                                        ; preds = %if.end59
  %69 = load %struct.task_struct*, %struct.task_struct** %tsk, align 8, !dbg !4563
  %70 = bitcast %struct.task_struct* %69 to i8*, !dbg !4563
  %call63 = call i64 @PTR_ERR(i8* %70) #9, !dbg !4565
  %conv64 = trunc i64 %call63 to i32, !dbg !4565
  store i32 %conv64, i32* %ret, align 4, !dbg !4566
  br label %err, !dbg !4567

if.end65:                                         ; preds = %if.end59
  %71 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4568
  %thread_done66 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %71, i32 0, i32 30, !dbg !4569
  call void @wait_for_completion(%struct.completion* %thread_done66) #9, !dbg !4570
  %72 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4571
  %thread = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %72, i32 0, i32 29, !dbg !4573
  %73 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !4573
  %tobool67 = icmp ne %struct.task_struct* %73, null, !dbg !4571
  br i1 %tobool67, label %if.end70, label %if.then68, !dbg !4574

if.then68:                                        ; preds = %if.end65
  %74 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4575
  %dev69 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %74, i32 0, i32 42, !dbg !4575
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !4575
  store i32 -5, i32* %retval, align 4, !dbg !4577
  br label %return, !dbg !4577

if.end70:                                         ; preds = %if.end65
  %75 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4578
  call void @pcmcia_parse_events(%struct.pcmcia_socket* %75, i32 128) #9, !dbg !4579
  %call71 = call i32 (i8*, ...) @request_module_nowait(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !4580
  store i32 0, i32* %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

err:                                              ; preds = %if.then62, %if.then52
  call void @llvm.dbg.label(metadata !4582), !dbg !4583
  call void @down_write(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !4584
  %76 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !4585
  %socket_list72 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %76, i32 0, i32 13, !dbg !4586
  call void @list_del(%struct.list_head* %socket_list72) #9, !dbg !4587
  call void @up_write(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !4588
  %77 = load i32, i32* %ret, align 4, !dbg !4589
  store i32 %77, i32* %retval, align 4, !dbg !4590
  br label %return, !dbg !4590

return:                                           ; preds = %err, %if.end70, %if.then68, %if.then
  %78 = load i32, i32* %retval, align 4, !dbg !4591
  ret i32 %78, !dbg !4591
}

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4592 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  br label %do.body, !dbg !4600

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4602

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4600
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4600
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4600
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4602
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4600
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4604
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4605
  %conv = zext i1 %cmp to i32, !dbg !4605
  ret i32 %conv, !dbg !4606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4607 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4614
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4615
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4616
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4616
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4617
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !4618
  ret void, !dbg !4619
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !4620 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4623, metadata !DIExpression()), !dbg !4624
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4627
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4628
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4629
  store i8* %0, i8** %driver_data, align 8, !dbg !4630
  ret void, !dbg !4631
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4632 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  br label %do.body, !dbg !4637

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4638

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4640

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4638

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4642
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4642
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4642
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4642
  br label %do.end3, !dbg !4642

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4638

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4644
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4645
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4646
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4647
  ret void, !dbg !4648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !4355 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4651
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !4652
  store i32 0, i32* %done, align 8, !dbg !4653
  br label %do.body, !dbg !4654

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4655
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !4655
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #9, !dbg !4655
  br label %do.end, !dbg !4655

do.end:                                           ; preds = %do.body
  ret void, !dbg !4657
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)*, i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pccardd(i8* %__skt) #0 !dbg !4658 {
entry:
  %pscr_ret__.i139 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i139, metadata !4661, metadata !DIExpression()), !dbg !4667
  %__vpp_verify.i140 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i140, metadata !4672, metadata !DIExpression()), !dbg !4674
  %pfo_val__.i141 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i141, metadata !4675, metadata !DIExpression()), !dbg !4677
  %tmp.i142 = alloca %struct.task_struct*, align 8
  %tmp1.i143 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i134 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i134, metadata !4661, metadata !DIExpression()), !dbg !4678
  %__vpp_verify.i135 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i135, metadata !4672, metadata !DIExpression()), !dbg !4683
  %pfo_val__.i136 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i136, metadata !4675, metadata !DIExpression()), !dbg !4684
  %tmp.i137 = alloca %struct.task_struct*, align 8
  %tmp1.i138 = alloca %struct.task_struct*, align 8
  %lock.addr.i131 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i131, metadata !4685, metadata !DIExpression()), !dbg !4689
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4691, metadata !DIExpression()), !dbg !4692
  %tmp.i132 = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4407, metadata !DIExpression()), !dbg !4693
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4661, metadata !DIExpression()), !dbg !4700
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4672, metadata !DIExpression()), !dbg !4702
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4675, metadata !DIExpression()), !dbg !4703
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %__skt.addr = alloca i8*, align 8
  %skt = alloca %struct.pcmcia_socket*, align 8
  %ret = alloca i32, align 4
  %flags = alloca i64, align 8
  %events = alloca i32, align 4
  %sysfs_events = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy20 = alloca i64, align 8
  %__dummy221 = alloca i64, align 8
  %tmp24 = alloca i32, align 4
  store i8* %__skt, i8** %__skt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__skt.addr, metadata !4704, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt, metadata !4706, metadata !DIExpression()), !dbg !4707
  %0 = load i8*, i8** %__skt.addr, align 8, !dbg !4708
  %1 = bitcast i8* %0 to %struct.pcmcia_socket*, !dbg !4708
  store %struct.pcmcia_socket* %1, %struct.pcmcia_socket** %skt, align 8, !dbg !4707
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4709, metadata !DIExpression()), !dbg !4710
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4702
  %2 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4702
  %3 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !4703, !srcloc !4711
  store i64 %3, i64* %pfo_val__.i, align 8, !dbg !4703
  %4 = load i64, i64* %pfo_val__.i, align 8, !dbg !4703
  %5 = inttoptr i64 %4 to %struct.task_struct*, !dbg !4703
  store %struct.task_struct* %5, %struct.task_struct** %tmp.i, align 8, !dbg !4703
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4703
  store %struct.task_struct* %6, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4700
  %7 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4700
  store %struct.task_struct* %7, %struct.task_struct** %tmp1.i, align 8, !dbg !4700
  %8 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4700
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4712
  %thread = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 29, !dbg !4713
  store %struct.task_struct* %8, %struct.task_struct** %thread, align 8, !dbg !4714
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4715
  %socket = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 1, !dbg !4716
  %11 = bitcast %struct.socket_state_t* %socket to i8*, !dbg !4717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 4 bitcast (%struct.socket_state_t* @dead_socket to i8*), i64 12, i1 false), !dbg !4717
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4718
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 23, !dbg !4719
  %13 = load %struct.pccard_operations*, %struct.pccard_operations** %ops, align 8, !dbg !4719
  %init = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %13, i32 0, i32 0, !dbg !4720
  %14 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %init, align 8, !dbg !4720
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4721
  %call1 = call i32 %14(%struct.pcmcia_socket* %15) #9, !dbg !4718
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4722
  %ops2 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 23, !dbg !4723
  %17 = load %struct.pccard_operations*, %struct.pccard_operations** %ops2, align 8, !dbg !4723
  %set_socket = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %17, i32 0, i32 3, !dbg !4724
  %18 = load i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)** %set_socket, align 8, !dbg !4724
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4725
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4726
  %socket3 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 1, !dbg !4727
  %call4 = call i32 %18(%struct.pcmcia_socket* %19, %struct.socket_state_t* %socket3) #9, !dbg !4722
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4728
  %dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 42, !dbg !4729
  %call5 = call i32 @device_register(%struct.device* %dev) #9, !dbg !4730
  store i32 %call5, i32* %ret, align 4, !dbg !4731
  %22 = load i32, i32* %ret, align 4, !dbg !4732
  %tobool = icmp ne i32 %22, 0, !dbg !4732
  br i1 %tobool, label %if.then, label %if.end, !dbg !4734

if.then:                                          ; preds = %entry
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4735
  %dev6 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 42, !dbg !4735
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !4735
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4737
  %thread7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 29, !dbg !4738
  store %struct.task_struct* null, %struct.task_struct** %thread7, align 8, !dbg !4739
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4740
  %thread_done = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 30, !dbg !4741
  call void @complete(%struct.completion* %thread_done) #9, !dbg !4742
  store i32 0, i32* %retval, align 4, !dbg !4743
  br label %return, !dbg !4743

if.end:                                           ; preds = %entry
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4744
  %dev8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 42, !dbg !4745
  %call9 = call i32 @pccard_sysfs_add_socket(%struct.device* %dev8) #9, !dbg !4746
  store i32 %call9, i32* %ret, align 4, !dbg !4747
  %27 = load i32, i32* %ret, align 4, !dbg !4748
  %tobool10 = icmp ne i32 %27, 0, !dbg !4748
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4750

if.then11:                                        ; preds = %if.end
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4751
  %dev12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 42, !dbg !4751
  %29 = load i32, i32* %ret, align 4, !dbg !4751
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %29) #10, !dbg !4751
  br label %if.end13, !dbg !4751

if.end13:                                         ; preds = %if.then11, %if.end
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4752
  %thread_done14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 30, !dbg !4753
  call void @complete(%struct.completion* %thread_done14) #9, !dbg !4754
  call void @msleep(i32 250) #9, !dbg !4755
  %call15 = call zeroext i1 @set_freezable() #9, !dbg !4756
  br label %for.cond, !dbg !4757

for.cond:                                         ; preds = %do.end118, %if.then104, %if.end13
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4758, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.declare(metadata i32* %events, metadata !4760, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.declare(metadata i32* %sysfs_events, metadata !4762, metadata !DIExpression()), !dbg !4763
  br label %do.body, !dbg !4764

do.body:                                          ; preds = %for.cond
  br label %do.body16, !dbg !4765

do.body16:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4766, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4769, metadata !DIExpression()), !dbg !4768
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4768
  %conv = zext i1 %cmp to i32, !dbg !4768
  store i32 1, i32* %tmp, align 4, !dbg !4768
  %31 = load i32, i32* %tmp, align 4, !dbg !4768
  br label %do.body17, !dbg !4770

do.body17:                                        ; preds = %do.body16
  br label %do.body18, !dbg !4771

do.body18:                                        ; preds = %do.body17
  br label %do.body19, !dbg !4772

do.body19:                                        ; preds = %do.body18
  call void @llvm.dbg.declare(metadata i64* %__dummy20, metadata !4774, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.declare(metadata i64* %__dummy221, metadata !4778, metadata !DIExpression()), !dbg !4777
  %cmp22 = icmp eq i64* %__dummy20, %__dummy221, !dbg !4777
  %conv23 = zext i1 %cmp22 to i32, !dbg !4777
  store i32 1, i32* %tmp24, align 4, !dbg !4777
  %32 = load i32, i32* %tmp24, align 4, !dbg !4777
  %call25 = call i64 @arch_local_irq_save() #9, !dbg !4779
  store i64 %call25, i64* %flags, align 8, !dbg !4779
  br label %do.end, !dbg !4779

do.end:                                           ; preds = %do.body19
  br label %do.end26, !dbg !4772

do.end26:                                         ; preds = %do.end
  br label %do.body27, !dbg !4771

do.body27:                                        ; preds = %do.end26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4780, !srcloc !4781
  br label %do.body28, !dbg !4780

do.body28:                                        ; preds = %do.body27
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4782
  %thread_lock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 35, !dbg !4782
  store %struct.spinlock* %thread_lock, %struct.spinlock** %lock.addr.i, align 8
  %34 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4783
  %35 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %34, i32 0, i32 0, !dbg !4784
  %rlock.i = bitcast %union.anon.4* %35 to %struct.raw_spinlock*, !dbg !4784
  br label %do.end30, !dbg !4782

do.end30:                                         ; preds = %do.body28
  br label %do.end31, !dbg !4780

do.end31:                                         ; preds = %do.end30
  br label %do.end32, !dbg !4771

do.end32:                                         ; preds = %do.end31
  br label %do.end33, !dbg !4770

do.end33:                                         ; preds = %do.end32
  br label %do.end34, !dbg !4765

do.end34:                                         ; preds = %do.end33
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4785
  %thread_events = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 31, !dbg !4786
  %37 = load i32, i32* %thread_events, align 8, !dbg !4786
  store i32 %37, i32* %events, align 4, !dbg !4787
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4788
  %thread_events35 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %38, i32 0, i32 31, !dbg !4789
  store i32 0, i32* %thread_events35, align 8, !dbg !4790
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4791
  %sysfs_events36 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 32, !dbg !4792
  %40 = load i32, i32* %sysfs_events36, align 4, !dbg !4792
  store i32 %40, i32* %sysfs_events, align 4, !dbg !4793
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4794
  %sysfs_events37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %41, i32 0, i32 32, !dbg !4795
  store i32 0, i32* %sysfs_events37, align 4, !dbg !4796
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4797
  %thread_lock38 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %42, i32 0, i32 35, !dbg !4798
  %43 = load i64, i64* %flags, align 8, !dbg !4799
  store %struct.spinlock* %thread_lock38, %struct.spinlock** %lock.addr.i131, align 8
  store i64 %43, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !209, metadata !4800, metadata !DIExpression()) #7, !dbg !4803
  call void @llvm.dbg.declare(metadata !209, metadata !4804, metadata !DIExpression()) #7, !dbg !4803
  store i32 1, i32* %tmp.i132, align 4, !dbg !4803
  %44 = load i32, i32* %tmp.i132, align 4, !dbg !4803
  call void @llvm.dbg.declare(metadata !209, metadata !4805, metadata !DIExpression()) #7, !dbg !4810
  call void @llvm.dbg.declare(metadata !209, metadata !4811, metadata !DIExpression()) #7, !dbg !4810
  store i32 1, i32* %tmp8.i, align 4, !dbg !4810
  %45 = load i32, i32* %tmp8.i, align 4, !dbg !4810
  %46 = load i64, i64* %flags.addr.i, align 8, !dbg !4812
  call void @arch_local_irq_restore(i64 %46) #12, !dbg !4812
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4813, !srcloc !4815
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i131, align 8, !dbg !4816
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !4816
  %rlock.i133 = bitcast %union.anon.4* %48 to %struct.raw_spinlock*, !dbg !4816
  %49 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4818
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %49, i32 0, i32 33, !dbg !4819
  call void @mutex_lock(%struct.mutex* %skt_mutex) #9, !dbg !4820
  %50 = load i32, i32* %events, align 4, !dbg !4821
  %and = and i32 %50, 128, !dbg !4823
  %tobool39 = icmp ne i32 %and, 0, !dbg !4823
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !4824

if.then40:                                        ; preds = %do.end34
  %51 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4825
  call void @socket_detect_change(%struct.pcmcia_socket* %51) #9, !dbg !4826
  br label %if.end41, !dbg !4826

if.end41:                                         ; preds = %if.then40, %do.end34
  %52 = load i32, i32* %sysfs_events, align 4, !dbg !4827
  %tobool42 = icmp ne i32 %52, 0, !dbg !4827
  br i1 %tobool42, label %if.then43, label %if.end100, !dbg !4829

if.then43:                                        ; preds = %if.end41
  %53 = load i32, i32* %sysfs_events, align 4, !dbg !4830
  %and44 = and i32 %53, 1, !dbg !4833
  %tobool45 = icmp ne i32 %and44, 0, !dbg !4833
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4834

if.then46:                                        ; preds = %if.then43
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4835
  call void @socket_remove(%struct.pcmcia_socket* %54) #9, !dbg !4836
  br label %if.end47, !dbg !4836

if.end47:                                         ; preds = %if.then46, %if.then43
  %55 = load i32, i32* %sysfs_events, align 4, !dbg !4837
  %and48 = and i32 %55, 2, !dbg !4839
  %tobool49 = icmp ne i32 %and48, 0, !dbg !4839
  br i1 %tobool49, label %if.then50, label %if.end52, !dbg !4840

if.then50:                                        ; preds = %if.end47
  %56 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4841
  %call51 = call i32 @socket_insert(%struct.pcmcia_socket* %56) #9, !dbg !4842
  br label %if.end52, !dbg !4842

if.end52:                                         ; preds = %if.then50, %if.end47
  %57 = load i32, i32* %sysfs_events, align 4, !dbg !4843
  %and53 = and i32 %57, 4, !dbg !4845
  %tobool54 = icmp ne i32 %and53, 0, !dbg !4845
  br i1 %tobool54, label %land.lhs.true, label %if.end67, !dbg !4846

land.lhs.true:                                    ; preds = %if.end52
  %58 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4847
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %58, i32 0, i32 2, !dbg !4848
  %59 = load i32, i32* %state, align 4, !dbg !4848
  %and55 = and i32 %59, 32768, !dbg !4849
  %tobool56 = icmp ne i32 %and55, 0, !dbg !4849
  br i1 %tobool56, label %if.end67, label %if.then57, !dbg !4850

if.then57:                                        ; preds = %land.lhs.true
  %60 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4851
  %callback = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %60, i32 0, i32 36, !dbg !4854
  %61 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback, align 8, !dbg !4854
  %tobool58 = icmp ne %struct.pcmcia_callback* %61, null, !dbg !4851
  br i1 %tobool58, label %if.then59, label %if.else, !dbg !4855

if.then59:                                        ; preds = %if.then57
  %62 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4856
  %callback60 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %62, i32 0, i32 36, !dbg !4857
  %63 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback60, align 8, !dbg !4857
  %suspend = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %63, i32 0, i32 5, !dbg !4858
  %64 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %suspend, align 8, !dbg !4858
  %65 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4859
  %call61 = call i32 %64(%struct.pcmcia_socket* %65) #9, !dbg !4856
  store i32 %call61, i32* %ret, align 4, !dbg !4860
  br label %if.end62, !dbg !4861

if.else:                                          ; preds = %if.then57
  store i32 0, i32* %ret, align 4, !dbg !4862
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then59
  %66 = load i32, i32* %ret, align 4, !dbg !4863
  %tobool63 = icmp ne i32 %66, 0, !dbg !4863
  br i1 %tobool63, label %if.end66, label %if.then64, !dbg !4865

if.then64:                                        ; preds = %if.end62
  %67 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4866
  %call65 = call i32 @socket_suspend(%struct.pcmcia_socket* %67) #9, !dbg !4868
  call void @msleep(i32 100) #9, !dbg !4869
  br label %if.end66, !dbg !4870

if.end66:                                         ; preds = %if.then64, %if.end62
  br label %if.end67, !dbg !4871

if.end67:                                         ; preds = %if.end66, %land.lhs.true, %if.end52
  %68 = load i32, i32* %sysfs_events, align 4, !dbg !4872
  %and68 = and i32 %68, 8, !dbg !4874
  %tobool69 = icmp ne i32 %and68, 0, !dbg !4874
  br i1 %tobool69, label %land.lhs.true70, label %if.end84, !dbg !4875

land.lhs.true70:                                  ; preds = %if.end67
  %69 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4876
  %state71 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %69, i32 0, i32 2, !dbg !4877
  %70 = load i32, i32* %state71, align 4, !dbg !4877
  %and72 = and i32 %70, 32768, !dbg !4878
  %tobool73 = icmp ne i32 %and72, 0, !dbg !4878
  br i1 %tobool73, label %if.end84, label %if.then74, !dbg !4879

if.then74:                                        ; preds = %land.lhs.true70
  %71 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4880
  %call75 = call i32 @socket_resume(%struct.pcmcia_socket* %71) #9, !dbg !4882
  store i32 %call75, i32* %ret, align 4, !dbg !4883
  %72 = load i32, i32* %ret, align 4, !dbg !4884
  %tobool76 = icmp ne i32 %72, 0, !dbg !4884
  br i1 %tobool76, label %if.end83, label %land.lhs.true77, !dbg !4886

land.lhs.true77:                                  ; preds = %if.then74
  %73 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4887
  %callback78 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %73, i32 0, i32 36, !dbg !4888
  %74 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback78, align 8, !dbg !4888
  %tobool79 = icmp ne %struct.pcmcia_callback* %74, null, !dbg !4887
  br i1 %tobool79, label %if.then80, label %if.end83, !dbg !4889

if.then80:                                        ; preds = %land.lhs.true77
  %75 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4890
  %callback81 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %75, i32 0, i32 36, !dbg !4891
  %76 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback81, align 8, !dbg !4891
  %resume = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %76, i32 0, i32 7, !dbg !4892
  %77 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %resume, align 8, !dbg !4892
  %78 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4893
  %call82 = call i32 %77(%struct.pcmcia_socket* %78) #9, !dbg !4890
  br label %if.end83, !dbg !4890

if.end83:                                         ; preds = %if.then80, %land.lhs.true77, %if.then74
  br label %if.end84, !dbg !4894

if.end84:                                         ; preds = %if.end83, %land.lhs.true70, %if.end67
  %79 = load i32, i32* %sysfs_events, align 4, !dbg !4895
  %and85 = and i32 %79, 16, !dbg !4897
  %tobool86 = icmp ne i32 %and85, 0, !dbg !4897
  br i1 %tobool86, label %land.lhs.true87, label %if.end99, !dbg !4898

land.lhs.true87:                                  ; preds = %if.end84
  %80 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4899
  %state88 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %80, i32 0, i32 2, !dbg !4900
  %81 = load i32, i32* %state88, align 4, !dbg !4900
  %and89 = and i32 %81, 32768, !dbg !4901
  %tobool90 = icmp ne i32 %and89, 0, !dbg !4901
  br i1 %tobool90, label %if.end99, label %if.then91, !dbg !4902

if.then91:                                        ; preds = %land.lhs.true87
  %82 = load i32, i32* %ret, align 4, !dbg !4903
  %tobool92 = icmp ne i32 %82, 0, !dbg !4903
  br i1 %tobool92, label %if.end98, label %land.lhs.true93, !dbg !4906

land.lhs.true93:                                  ; preds = %if.then91
  %83 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4907
  %callback94 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %83, i32 0, i32 36, !dbg !4908
  %84 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback94, align 8, !dbg !4908
  %tobool95 = icmp ne %struct.pcmcia_callback* %84, null, !dbg !4907
  br i1 %tobool95, label %if.then96, label %if.end98, !dbg !4909

if.then96:                                        ; preds = %land.lhs.true93
  %85 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4910
  %callback97 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %85, i32 0, i32 36, !dbg !4911
  %86 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback97, align 8, !dbg !4911
  %requery = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %86, i32 0, i32 3, !dbg !4912
  %87 = load void (%struct.pcmcia_socket*)*, void (%struct.pcmcia_socket*)** %requery, align 8, !dbg !4912
  %88 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4913
  call void %87(%struct.pcmcia_socket* %88) #9, !dbg !4910
  br label %if.end98, !dbg !4910

if.end98:                                         ; preds = %if.then96, %land.lhs.true93, %if.then91
  br label %if.end99, !dbg !4914

if.end99:                                         ; preds = %if.end98, %land.lhs.true87, %if.end84
  br label %if.end100, !dbg !4915

if.end100:                                        ; preds = %if.end99, %if.end41
  %89 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4916
  %skt_mutex101 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %89, i32 0, i32 33, !dbg !4917
  call void @mutex_unlock(%struct.mutex* %skt_mutex101) #9, !dbg !4918
  %90 = load i32, i32* %events, align 4, !dbg !4919
  %tobool102 = icmp ne i32 %90, 0, !dbg !4919
  br i1 %tobool102, label %if.then104, label %lor.lhs.false, !dbg !4921

lor.lhs.false:                                    ; preds = %if.end100
  %91 = load i32, i32* %sysfs_events, align 4, !dbg !4922
  %tobool103 = icmp ne i32 %91, 0, !dbg !4922
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !4923

if.then104:                                       ; preds = %lor.lhs.false, %if.end100
  br label %for.cond, !dbg !4924, !llvm.loop !4925

if.end105:                                        ; preds = %lor.lhs.false
  %call106 = call zeroext i1 @kthread_should_stop() #9, !dbg !4928
  br i1 %call106, label %if.then107, label %if.end108, !dbg !4930

if.then107:                                       ; preds = %if.end105
  br label %for.end, !dbg !4931

if.end108:                                        ; preds = %if.end105
  br label %do.body109, !dbg !4932

do.body109:                                       ; preds = %if.end108
  br label %do.body110, !dbg !4933

do.body110:                                       ; preds = %do.body109
  br label %do.body111, !dbg !4934

do.body111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !4935

do.end112:                                        ; preds = %do.body111
  br label %do.body113, !dbg !4934

do.body113:                                       ; preds = %do.end112
  store i8* null, i8** %__vpp_verify.i135, align 8, !dbg !4683
  %92 = load i8*, i8** %__vpp_verify.i135, align 8, !dbg !4683
  %93 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !4684, !srcloc !4711
  store i64 %93, i64* %pfo_val__.i136, align 8, !dbg !4684
  %94 = load i64, i64* %pfo_val__.i136, align 8, !dbg !4684
  %95 = inttoptr i64 %94 to %struct.task_struct*, !dbg !4684
  store %struct.task_struct* %95, %struct.task_struct** %tmp.i137, align 8, !dbg !4684
  %96 = load %struct.task_struct*, %struct.task_struct** %tmp.i137, align 8, !dbg !4684
  store %struct.task_struct* %96, %struct.task_struct** %pscr_ret__.i134, align 8, !dbg !4678
  %97 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i134, align 8, !dbg !4678
  store %struct.task_struct* %97, %struct.task_struct** %tmp1.i138, align 8, !dbg !4678
  %98 = load %struct.task_struct*, %struct.task_struct** %tmp1.i138, align 8, !dbg !4678
  %state115 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %98, i32 0, i32 1, !dbg !4937
  store volatile i64 1, i64* %state115, align 16, !dbg !4937
  br label %do.end116, !dbg !4937

do.end116:                                        ; preds = %do.body113
  br label %do.end117, !dbg !4934

do.end117:                                        ; preds = %do.end116
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4933, !srcloc !4938
  br label %do.end118, !dbg !4933

do.end118:                                        ; preds = %do.end117
  call void @schedule() #9, !dbg !4939
  store i8* null, i8** %__vpp_verify.i140, align 8, !dbg !4674
  %99 = load i8*, i8** %__vpp_verify.i140, align 8, !dbg !4674
  %100 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !4677, !srcloc !4711
  store i64 %100, i64* %pfo_val__.i141, align 8, !dbg !4677
  %101 = load i64, i64* %pfo_val__.i141, align 8, !dbg !4677
  %102 = inttoptr i64 %101 to %struct.task_struct*, !dbg !4677
  store %struct.task_struct* %102, %struct.task_struct** %tmp.i142, align 8, !dbg !4677
  %103 = load %struct.task_struct*, %struct.task_struct** %tmp.i142, align 8, !dbg !4677
  store %struct.task_struct* %103, %struct.task_struct** %pscr_ret__.i139, align 8, !dbg !4667
  %104 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i139, align 8, !dbg !4667
  store %struct.task_struct* %104, %struct.task_struct** %tmp1.i143, align 8, !dbg !4667
  %105 = load %struct.task_struct*, %struct.task_struct** %tmp1.i143, align 8, !dbg !4667
  %state120 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %105, i32 0, i32 1, !dbg !4940
  store volatile i64 0, i64* %state120, align 16, !dbg !4940
  %call121 = call zeroext i1 @try_to_freeze() #9, !dbg !4941
  br label %for.cond, !dbg !4942, !llvm.loop !4925

for.end:                                          ; preds = %if.then107
  %106 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4943
  %state122 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %106, i32 0, i32 2, !dbg !4945
  %107 = load i32, i32* %state122, align 4, !dbg !4945
  %and123 = and i32 %107, 8, !dbg !4946
  %tobool124 = icmp ne i32 %and123, 0, !dbg !4946
  br i1 %tobool124, label %if.then125, label %if.end128, !dbg !4947

if.then125:                                       ; preds = %for.end
  %108 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4948
  %skt_mutex126 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %108, i32 0, i32 33, !dbg !4950
  call void @mutex_lock(%struct.mutex* %skt_mutex126) #9, !dbg !4951
  %109 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4952
  call void @socket_remove(%struct.pcmcia_socket* %109) #9, !dbg !4953
  %110 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4954
  %skt_mutex127 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %110, i32 0, i32 33, !dbg !4955
  call void @mutex_unlock(%struct.mutex* %skt_mutex127) #9, !dbg !4956
  br label %if.end128, !dbg !4957

if.end128:                                        ; preds = %if.then125, %for.end
  %111 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4958
  %dev129 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %111, i32 0, i32 42, !dbg !4959
  call void @pccard_sysfs_remove_socket(%struct.device* %dev129) #9, !dbg !4960
  %112 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt, align 8, !dbg !4961
  %dev130 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %112, i32 0, i32 42, !dbg !4962
  call void @device_unregister(%struct.device* %dev130) #9, !dbg !4963
  store i32 0, i32* %retval, align 4, !dbg !4964
  br label %return, !dbg !4964

return:                                           ; preds = %if.end128, %if.then
  %113 = load i32, i32* %retval, align 4, !dbg !4965
  ret i32 %113, !dbg !4965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4966 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4972
  %1 = ptrtoint i8* %0 to i64, !dbg !4972
  %2 = inttoptr i64 %1 to i8*, !dbg !4972
  %3 = ptrtoint i8* %2 to i64, !dbg !4972
  %cmp = icmp uge i64 %3, -4095, !dbg !4972
  %lnot = xor i1 %cmp, true, !dbg !4972
  %lnot1 = xor i1 %lnot, true, !dbg !4972
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4972
  %conv = sext i32 %lnot.ext to i64, !dbg !4972
  %tobool = icmp ne i64 %conv, 0, !dbg !4972
  ret i1 %tobool, !dbg !4973
}

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4974 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4979
  %1 = ptrtoint i8* %0 to i64, !dbg !4980
  ret i64 %1, !dbg !4981
}

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pcmcia_parse_events(%struct.pcmcia_socket* %s, i32 %events) #0 !dbg !4982 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !4685, metadata !DIExpression()), !dbg !4985
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4691, metadata !DIExpression()), !dbg !4989
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4407, metadata !DIExpression()), !dbg !4990
  %s.addr = alloca %struct.pcmcia_socket*, align 8
  %events.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.pcmcia_socket* %s, %struct.pcmcia_socket** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %s.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  store i32 %events, i32* %events.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %events.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5001, metadata !DIExpression()), !dbg !5002
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5003
  %thread = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 29, !dbg !5004
  %1 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !5004
  %tobool = icmp ne %struct.task_struct* %1, null, !dbg !5003
  br i1 %tobool, label %if.then, label %if.end, !dbg !5005

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5006

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5007

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5008, metadata !DIExpression()), !dbg !5010
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5011, metadata !DIExpression()), !dbg !5010
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5010
  %conv = zext i1 %cmp to i32, !dbg !5010
  store i32 1, i32* %tmp, align 4, !dbg !5010
  %2 = load i32, i32* %tmp, align 4, !dbg !5010
  br label %do.body2, !dbg !5012

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5013

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5014

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5016, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5020, metadata !DIExpression()), !dbg !5019
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5019
  %conv8 = zext i1 %cmp7 to i32, !dbg !5019
  store i32 1, i32* %tmp9, align 4, !dbg !5019
  %3 = load i32, i32* %tmp9, align 4, !dbg !5019
  %call = call i64 @arch_local_irq_save() #9, !dbg !5021
  store i64 %call, i64* %flags, align 8, !dbg !5021
  br label %do.end, !dbg !5021

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5014

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5013

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5022, !srcloc !5023
  br label %do.body12, !dbg !5022

do.body12:                                        ; preds = %do.body11
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5024
  %thread_lock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 35, !dbg !5024
  store %struct.spinlock* %thread_lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5025
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !5026
  %rlock.i = bitcast %union.anon.4* %6 to %struct.raw_spinlock*, !dbg !5026
  br label %do.end14, !dbg !5024

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5022

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5013

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5012

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5007

do.end18:                                         ; preds = %do.end17
  %7 = load i32, i32* %events.addr, align 4, !dbg !5027
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5028
  %thread_events = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 31, !dbg !5029
  %9 = load i32, i32* %thread_events, align 8, !dbg !5030
  %or = or i32 %9, %7, !dbg !5030
  store i32 %or, i32* %thread_events, align 8, !dbg !5030
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5031
  %thread_lock19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 35, !dbg !5032
  %11 = load i64, i64* %flags, align 8, !dbg !5033
  store %struct.spinlock* %thread_lock19, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !209, metadata !4800, metadata !DIExpression()) #7, !dbg !5034
  call void @llvm.dbg.declare(metadata !209, metadata !4804, metadata !DIExpression()) #7, !dbg !5034
  store i32 1, i32* %tmp.i, align 4, !dbg !5034
  %12 = load i32, i32* %tmp.i, align 4, !dbg !5034
  call void @llvm.dbg.declare(metadata !209, metadata !4805, metadata !DIExpression()) #7, !dbg !5035
  call void @llvm.dbg.declare(metadata !209, metadata !4811, metadata !DIExpression()) #7, !dbg !5035
  store i32 1, i32* %tmp8.i, align 4, !dbg !5035
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !5035
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !5036
  call void @arch_local_irq_restore(i64 %14) #12, !dbg !5036
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5037, !srcloc !4815
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !5038
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !5038
  %rlock.i23 = bitcast %union.anon.4* %16 to %struct.raw_spinlock*, !dbg !5038
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5039
  %thread20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 29, !dbg !5040
  %18 = load %struct.task_struct*, %struct.task_struct** %thread20, align 8, !dbg !5040
  %call21 = call i32 @wake_up_process(%struct.task_struct* %18) #9, !dbg !5041
  br label %if.end, !dbg !5042

if.end:                                           ; preds = %do.end18, %entry
  ret void, !dbg !5043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_module_nowait(i8* %name, ...) #0 !dbg !5044 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  ret i32 -38, !dbg !5050
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5051 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5054
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !5055
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5056
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5057
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5058
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5059
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5060
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5061
  ret void, !dbg !5062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pcmcia_unregister_socket(%struct.pcmcia_socket* %socket) #0 !dbg !5063 {
entry:
  %socket.addr = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %socket, %struct.pcmcia_socket** %socket.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %socket.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5066
  %tobool = icmp ne %struct.pcmcia_socket* %0, null, !dbg !5066
  br i1 %tobool, label %if.end, label %if.then, !dbg !5068

if.then:                                          ; preds = %entry
  br label %return, !dbg !5069

if.end:                                           ; preds = %entry
  %1 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5070
  %thread = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %1, i32 0, i32 29, !dbg !5072
  %2 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !5072
  %tobool1 = icmp ne %struct.task_struct* %2, null, !dbg !5070
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5073

if.then2:                                         ; preds = %if.end
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5074
  %thread3 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 29, !dbg !5075
  %4 = load %struct.task_struct*, %struct.task_struct** %thread3, align 8, !dbg !5075
  %call = call i32 @kthread_stop(%struct.task_struct* %4) #9, !dbg !5076
  br label %if.end4, !dbg !5076

if.end4:                                          ; preds = %if.then2, %if.end
  call void @down_write(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !5077
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5078
  %socket_list = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 13, !dbg !5079
  call void @list_del(%struct.list_head* %socket_list) #9, !dbg !5080
  call void @up_write(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !5081
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5082
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 24, !dbg !5084
  %7 = load %struct.pccard_resource_ops*, %struct.pccard_resource_ops** %resource_ops, align 8, !dbg !5084
  %exit = getelementptr inbounds %struct.pccard_resource_ops, %struct.pccard_resource_ops* %7, i32 0, i32 4, !dbg !5085
  %8 = load void (%struct.pcmcia_socket*)*, void (%struct.pcmcia_socket*)** %exit, align 8, !dbg !5085
  %tobool5 = icmp ne void (%struct.pcmcia_socket*)* %8, null, !dbg !5082
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !5086

if.then6:                                         ; preds = %if.end4
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5087
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 34, !dbg !5089
  call void @mutex_lock(%struct.mutex* %ops_mutex) #9, !dbg !5090
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5091
  %resource_ops7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 24, !dbg !5092
  %11 = load %struct.pccard_resource_ops*, %struct.pccard_resource_ops** %resource_ops7, align 8, !dbg !5092
  %exit8 = getelementptr inbounds %struct.pccard_resource_ops, %struct.pccard_resource_ops* %11, i32 0, i32 4, !dbg !5093
  %12 = load void (%struct.pcmcia_socket*)*, void (%struct.pcmcia_socket*)** %exit8, align 8, !dbg !5093
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5094
  call void %12(%struct.pcmcia_socket* %13) #9, !dbg !5091
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5095
  %ops_mutex9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 34, !dbg !5096
  call void @mutex_unlock(%struct.mutex* %ops_mutex9) #9, !dbg !5097
  br label %if.end10, !dbg !5098

if.end10:                                         ; preds = %if.then6, %if.end4
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket.addr, align 8, !dbg !5099
  %socket_released = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 14, !dbg !5100
  call void @wait_for_completion(%struct.completion* %socket_released) #9, !dbg !5101
  br label %return, !dbg !5102

return:                                           ; preds = %if.end10, %if.then
  ret void, !dbg !5102
}

; Function Attrs: noredzone
declare dso_local i32 @kthread_stop(%struct.task_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pcmcia_socket* @pcmcia_get_socket_by_nr(i32 %nr) #0 !dbg !5103 {
entry:
  %retval = alloca %struct.pcmcia_socket*, align 8
  %nr.addr = alloca i32, align 4
  %s = alloca %struct.pcmcia_socket*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pcmcia_socket*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.pcmcia_socket*, align 8
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %s, metadata !5108, metadata !DIExpression()), !dbg !5109
  call void @down_read(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !5110
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5111, metadata !DIExpression()), !dbg !5114
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pcmcia_socket_list, i32 0, i32 0), align 8, !dbg !5114
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5114
  store i8* %1, i8** %__mptr, align 8, !dbg !5114
  br label %do.body, !dbg !5114

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5115

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5114
  %add.ptr = getelementptr i8, i8* %2, i64 -264, !dbg !5114
  %3 = bitcast i8* %add.ptr to %struct.pcmcia_socket*, !dbg !5114
  store %struct.pcmcia_socket* %3, %struct.pcmcia_socket** %tmp, align 8, !dbg !5115
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp, align 8, !dbg !5114
  store %struct.pcmcia_socket* %4, %struct.pcmcia_socket** %s, align 8, !dbg !5117
  br label %for.cond, !dbg !5117

for.cond:                                         ; preds = %do.end5, %do.end
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s, align 8, !dbg !5118
  %socket_list = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 13, !dbg !5118
  %cmp = icmp eq %struct.list_head* %socket_list, @pcmcia_socket_list, !dbg !5118
  %lnot = xor i1 %cmp, true, !dbg !5118
  br i1 %lnot, label %for.body, label %for.end, !dbg !5117

for.body:                                         ; preds = %for.cond
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s, align 8, !dbg !5120
  %sock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 15, !dbg !5122
  %7 = load i32, i32* %sock, align 8, !dbg !5122
  %8 = load i32, i32* %nr.addr, align 4, !dbg !5123
  %cmp1 = icmp eq i32 %7, %8, !dbg !5124
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5125

if.then:                                          ; preds = %for.body
  call void @up_read(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !5126
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s, align 8, !dbg !5128
  store %struct.pcmcia_socket* %9, %struct.pcmcia_socket** %retval, align 8, !dbg !5129
  br label %return, !dbg !5129

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5123

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !5130, metadata !DIExpression()), !dbg !5132
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s, align 8, !dbg !5132
  %socket_list3 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 13, !dbg !5132
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %socket_list3, i32 0, i32 0, !dbg !5132
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5132
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !5132
  store i8* %12, i8** %__mptr2, align 8, !dbg !5132
  br label %do.body4, !dbg !5132

do.body4:                                         ; preds = %for.inc
  br label %do.end5, !dbg !5133

do.end5:                                          ; preds = %do.body4
  %13 = load i8*, i8** %__mptr2, align 8, !dbg !5132
  %add.ptr7 = getelementptr i8, i8* %13, i64 -264, !dbg !5132
  %14 = bitcast i8* %add.ptr7 to %struct.pcmcia_socket*, !dbg !5132
  store %struct.pcmcia_socket* %14, %struct.pcmcia_socket** %tmp6, align 8, !dbg !5133
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp6, align 8, !dbg !5132
  store %struct.pcmcia_socket* %15, %struct.pcmcia_socket** %s, align 8, !dbg !5118
  br label %for.cond, !dbg !5118, !llvm.loop !5135

for.end:                                          ; preds = %for.cond
  call void @up_read(%struct.rw_semaphore* @pcmcia_socket_list_rwsem) #9, !dbg !5137
  store %struct.pcmcia_socket* null, %struct.pcmcia_socket** %retval, align 8, !dbg !5138
  br label %return, !dbg !5138

return:                                           ; preds = %for.end, %if.then
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %retval, align 8, !dbg !5139
  ret %struct.pcmcia_socket* %16, !dbg !5139
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5140 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5144, metadata !DIExpression()), !dbg !5145
  %call = call i64 @arch_local_save_flags() #9, !dbg !5146
  store i64 %call, i64* %f, align 8, !dbg !5147
  call void @arch_local_irq_disable() #9, !dbg !5148
  %0 = load i64, i64* %f, align 8, !dbg !5149
  ret i64 %0, !dbg !5150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pcmcia_parse_uevents(%struct.pcmcia_socket* %s, i32 %events) #0 !dbg !5151 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !4685, metadata !DIExpression()), !dbg !5152
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4691, metadata !DIExpression()), !dbg !5156
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4407, metadata !DIExpression()), !dbg !5157
  %s.addr = alloca %struct.pcmcia_socket*, align 8
  %events.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.pcmcia_socket* %s, %struct.pcmcia_socket** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %s.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  store i32 %events, i32* %events.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %events.addr, metadata !5166, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5168, metadata !DIExpression()), !dbg !5169
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5170
  %thread = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 29, !dbg !5171
  %1 = load %struct.task_struct*, %struct.task_struct** %thread, align 8, !dbg !5171
  %tobool = icmp ne %struct.task_struct* %1, null, !dbg !5170
  br i1 %tobool, label %if.then, label %if.end, !dbg !5172

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5173

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5174

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5175, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5178, metadata !DIExpression()), !dbg !5177
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5177
  %conv = zext i1 %cmp to i32, !dbg !5177
  store i32 1, i32* %tmp, align 4, !dbg !5177
  %2 = load i32, i32* %tmp, align 4, !dbg !5177
  br label %do.body2, !dbg !5179

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5180

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5181

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5183, metadata !DIExpression()), !dbg !5186
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5187, metadata !DIExpression()), !dbg !5186
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5186
  %conv8 = zext i1 %cmp7 to i32, !dbg !5186
  store i32 1, i32* %tmp9, align 4, !dbg !5186
  %3 = load i32, i32* %tmp9, align 4, !dbg !5186
  %call = call i64 @arch_local_irq_save() #9, !dbg !5188
  store i64 %call, i64* %flags, align 8, !dbg !5188
  br label %do.end, !dbg !5188

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5181

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5180

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5189, !srcloc !5190
  br label %do.body12, !dbg !5189

do.body12:                                        ; preds = %do.body11
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5191
  %thread_lock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 35, !dbg !5191
  store %struct.spinlock* %thread_lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5192
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !5193
  %rlock.i = bitcast %union.anon.4* %6 to %struct.raw_spinlock*, !dbg !5193
  br label %do.end14, !dbg !5191

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5189

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5180

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5179

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5174

do.end18:                                         ; preds = %do.end17
  %7 = load i32, i32* %events.addr, align 4, !dbg !5194
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5195
  %sysfs_events = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 32, !dbg !5196
  %9 = load i32, i32* %sysfs_events, align 4, !dbg !5197
  %or = or i32 %9, %7, !dbg !5197
  store i32 %or, i32* %sysfs_events, align 4, !dbg !5197
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5198
  %thread_lock19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 35, !dbg !5199
  %11 = load i64, i64* %flags, align 8, !dbg !5200
  store %struct.spinlock* %thread_lock19, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !209, metadata !4800, metadata !DIExpression()) #7, !dbg !5201
  call void @llvm.dbg.declare(metadata !209, metadata !4804, metadata !DIExpression()) #7, !dbg !5201
  store i32 1, i32* %tmp.i, align 4, !dbg !5201
  %12 = load i32, i32* %tmp.i, align 4, !dbg !5201
  call void @llvm.dbg.declare(metadata !209, metadata !4805, metadata !DIExpression()) #7, !dbg !5202
  call void @llvm.dbg.declare(metadata !209, metadata !4811, metadata !DIExpression()) #7, !dbg !5202
  store i32 1, i32* %tmp8.i, align 4, !dbg !5202
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !5202
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !5203
  call void @arch_local_irq_restore(i64 %14) #12, !dbg !5203
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5204, !srcloc !4815
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !5205
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !5205
  %rlock.i23 = bitcast %union.anon.4* %16 to %struct.raw_spinlock*, !dbg !5205
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5206
  %thread20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 29, !dbg !5207
  %18 = load %struct.task_struct*, %struct.task_struct** %thread20, align 8, !dbg !5207
  %call21 = call i32 @wake_up_process(%struct.task_struct* %18) #9, !dbg !5208
  br label %if.end, !dbg !5209

if.end:                                           ; preds = %do.end18, %entry
  ret void, !dbg !5210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pccard_register_pcmcia(%struct.pcmcia_socket* %s, %struct.pcmcia_callback* %c) #0 !dbg !5211 {
entry:
  %s.addr = alloca %struct.pcmcia_socket*, align 8
  %c.addr = alloca %struct.pcmcia_callback*, align 8
  %ret = alloca i32, align 4
  store %struct.pcmcia_socket* %s, %struct.pcmcia_socket** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %s.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  store %struct.pcmcia_callback* %c, %struct.pcmcia_callback** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_callback** %c.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5218, metadata !DIExpression()), !dbg !5219
  store i32 0, i32* %ret, align 4, !dbg !5219
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5220
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 33, !dbg !5221
  call void @mutex_lock(%struct.mutex* %skt_mutex) #9, !dbg !5222
  %1 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %c.addr, align 8, !dbg !5223
  %tobool = icmp ne %struct.pcmcia_callback* %1, null, !dbg !5223
  br i1 %tobool, label %if.then, label %if.else, !dbg !5225

if.then:                                          ; preds = %entry
  %2 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5226
  %callback = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %2, i32 0, i32 36, !dbg !5229
  %3 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback, align 8, !dbg !5229
  %tobool1 = icmp ne %struct.pcmcia_callback* %3, null, !dbg !5226
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5230

if.then2:                                         ; preds = %if.then
  store i32 -16, i32* %ret, align 4, !dbg !5231
  br label %err, !dbg !5233

if.end:                                           ; preds = %if.then
  %4 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %c.addr, align 8, !dbg !5234
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5235
  %callback3 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 36, !dbg !5236
  store %struct.pcmcia_callback* %4, %struct.pcmcia_callback** %callback3, align 8, !dbg !5237
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5238
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 2, !dbg !5240
  %7 = load i32, i32* %state, align 4, !dbg !5240
  %and = and i32 %7, 32776, !dbg !5241
  %cmp = icmp eq i32 %and, 8, !dbg !5242
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !5243

if.then4:                                         ; preds = %if.end
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5244
  %callback5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 36, !dbg !5245
  %9 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback5, align 8, !dbg !5245
  %add = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %9, i32 0, i32 1, !dbg !5246
  %10 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %add, align 8, !dbg !5246
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5247
  %call = call i32 %10(%struct.pcmcia_socket* %11) #9, !dbg !5244
  br label %if.end6, !dbg !5244

if.end6:                                          ; preds = %if.then4, %if.end
  br label %if.end8, !dbg !5248

if.else:                                          ; preds = %entry
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5249
  %callback7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 36, !dbg !5250
  store %struct.pcmcia_callback* null, %struct.pcmcia_callback** %callback7, align 8, !dbg !5251
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end6
  br label %err, !dbg !5223

err:                                              ; preds = %if.end8, %if.then2
  call void @llvm.dbg.label(metadata !5252), !dbg !5253
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5254
  %skt_mutex9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 33, !dbg !5255
  call void @mutex_unlock(%struct.mutex* %skt_mutex9) #9, !dbg !5256
  %14 = load i32, i32* %ret, align 4, !dbg !5257
  ret i32 %14, !dbg !5258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pcmcia_reset_card(%struct.pcmcia_socket* %skt) #0 !dbg !5259 {
entry:
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %ret = alloca i32, align 4
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5262, metadata !DIExpression()), !dbg !5263
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5264
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 33, !dbg !5265
  call void @mutex_lock(%struct.mutex* %skt_mutex) #9, !dbg !5266
  br label %do.body, !dbg !5267

do.body:                                          ; preds = %entry
  %1 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5268
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %1, i32 0, i32 2, !dbg !5271
  %2 = load i32, i32* %state, align 4, !dbg !5271
  %and = and i32 %2, 8, !dbg !5272
  %tobool = icmp ne i32 %and, 0, !dbg !5272
  br i1 %tobool, label %if.end, label %if.then, !dbg !5273

if.then:                                          ; preds = %do.body
  store i32 -19, i32* %ret, align 4, !dbg !5274
  br label %do.end, !dbg !5276

if.end:                                           ; preds = %do.body
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5277
  %state1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 2, !dbg !5279
  %4 = load i32, i32* %state1, align 4, !dbg !5279
  %and2 = and i32 %4, 128, !dbg !5280
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5280
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5281

if.then4:                                         ; preds = %if.end
  store i32 -16, i32* %ret, align 4, !dbg !5282
  br label %do.end, !dbg !5284

if.end5:                                          ; preds = %if.end
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5285
  %state6 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 2, !dbg !5287
  %6 = load i32, i32* %state6, align 4, !dbg !5287
  %and7 = and i32 %6, 32768, !dbg !5288
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5288
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5289

if.then9:                                         ; preds = %if.end5
  store i32 -1, i32* %ret, align 4, !dbg !5290
  br label %do.end, !dbg !5292

if.end10:                                         ; preds = %if.end5
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5293
  %callback = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 36, !dbg !5295
  %8 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback, align 8, !dbg !5295
  %tobool11 = icmp ne %struct.pcmcia_callback* %8, null, !dbg !5293
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5296

if.then12:                                        ; preds = %if.end10
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5297
  %callback13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 36, !dbg !5298
  %10 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback13, align 8, !dbg !5298
  %suspend = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %10, i32 0, i32 5, !dbg !5299
  %11 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %suspend, align 8, !dbg !5299
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5300
  %call = call i32 %11(%struct.pcmcia_socket* %12) #9, !dbg !5297
  br label %if.end14, !dbg !5297

if.end14:                                         ; preds = %if.then12, %if.end10
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5301
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 34, !dbg !5302
  call void @mutex_lock(%struct.mutex* %ops_mutex) #9, !dbg !5303
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5304
  %call15 = call i32 @socket_reset(%struct.pcmcia_socket* %14) #9, !dbg !5305
  store i32 %call15, i32* %ret, align 4, !dbg !5306
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5307
  %ops_mutex16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 34, !dbg !5308
  call void @mutex_unlock(%struct.mutex* %ops_mutex16) #9, !dbg !5309
  %16 = load i32, i32* %ret, align 4, !dbg !5310
  %cmp = icmp eq i32 %16, 0, !dbg !5312
  br i1 %cmp, label %land.lhs.true, label %if.end22, !dbg !5313

land.lhs.true:                                    ; preds = %if.end14
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5314
  %callback17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 36, !dbg !5315
  %18 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback17, align 8, !dbg !5315
  %tobool18 = icmp ne %struct.pcmcia_callback* %18, null, !dbg !5316
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !5317

if.then19:                                        ; preds = %land.lhs.true
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5318
  %callback20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 36, !dbg !5319
  %20 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback20, align 8, !dbg !5319
  %resume = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %20, i32 0, i32 7, !dbg !5320
  %21 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %resume, align 8, !dbg !5320
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5321
  %call21 = call i32 %21(%struct.pcmcia_socket* %22) #9, !dbg !5318
  br label %if.end22, !dbg !5318

if.end22:                                         ; preds = %if.then19, %land.lhs.true, %if.end14
  store i32 0, i32* %ret, align 4, !dbg !5322
  br label %do.end, !dbg !5323

do.end:                                           ; preds = %if.end22, %if.then9, %if.then4, %if.then
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5324
  %skt_mutex23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 33, !dbg !5325
  call void @mutex_unlock(%struct.mutex* %skt_mutex23) #9, !dbg !5326
  %24 = load i32, i32* %ret, align 4, !dbg !5327
  ret i32 %24, !dbg !5328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @socket_reset(%struct.pcmcia_socket* %skt) #0 !dbg !5329 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5332, metadata !DIExpression()), !dbg !5333
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5334, metadata !DIExpression()), !dbg !5335
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5336
  %socket = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 1, !dbg !5337
  %flags = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %socket, i32 0, i32 0, !dbg !5338
  %1 = load i32, i32* %flags, align 8, !dbg !5339
  %or = or i32 %1, 576, !dbg !5339
  store i32 %or, i32* %flags, align 8, !dbg !5339
  %2 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5340
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %2, i32 0, i32 23, !dbg !5341
  %3 = load %struct.pccard_operations*, %struct.pccard_operations** %ops, align 8, !dbg !5341
  %set_socket = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %3, i32 0, i32 3, !dbg !5342
  %4 = load i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)** %set_socket, align 8, !dbg !5342
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5343
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5344
  %socket1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 1, !dbg !5345
  %call = call i32 %4(%struct.pcmcia_socket* %5, %struct.socket_state_t* %socket1) #9, !dbg !5340
  %7 = load i32, i32* @reset_time, align 4, !dbg !5346
  %conv = sext i32 %7 to i64, !dbg !5346
  %8 = call i1 @llvm.is.constant.i64(i64 %conv), !dbg !5346
  br i1 %8, label %if.then, label %if.else6, !dbg !5349

if.then:                                          ; preds = %entry
  %9 = load i32, i32* @reset_time, align 4, !dbg !5350
  %conv2 = sext i32 %9 to i64, !dbg !5350
  %div = sdiv i64 %conv2, 20000, !dbg !5350
  %cmp = icmp sge i64 %div, 1, !dbg !5350
  br i1 %cmp, label %if.then4, label %if.else, !dbg !5353

if.then4:                                         ; preds = %if.then
  call void @__bad_udelay() #9, !dbg !5350
  br label %if.end, !dbg !5350

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* @reset_time, align 4, !dbg !5350
  %conv5 = sext i32 %10 to i64, !dbg !5350
  %mul = mul i64 %conv5, 4295, !dbg !5350
  call void @__const_udelay(i64 %mul) #9, !dbg !5350
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end8, !dbg !5353

if.else6:                                         ; preds = %entry
  %11 = load i32, i32* @reset_time, align 4, !dbg !5354
  %conv7 = sext i32 %11 to i64, !dbg !5354
  call void @__udelay(i64 %conv7) #9, !dbg !5354
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.end
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5356
  %socket9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 1, !dbg !5357
  %flags10 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %socket9, i32 0, i32 0, !dbg !5358
  %13 = load i32, i32* %flags10, align 8, !dbg !5359
  %and = and i32 %13, -65, !dbg !5359
  store i32 %and, i32* %flags10, align 8, !dbg !5359
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5360
  %ops11 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 23, !dbg !5361
  %15 = load %struct.pccard_operations*, %struct.pccard_operations** %ops11, align 8, !dbg !5361
  %set_socket12 = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %15, i32 0, i32 3, !dbg !5362
  %16 = load i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)** %set_socket12, align 8, !dbg !5362
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5363
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5364
  %socket13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 1, !dbg !5365
  %call14 = call i32 %16(%struct.pcmcia_socket* %17, %struct.socket_state_t* %socket13) #9, !dbg !5360
  %19 = load i32, i32* @unreset_delay, align 4, !dbg !5366
  %mul15 = mul i32 %19, 10, !dbg !5367
  call void @msleep(i32 %mul15) #9, !dbg !5368
  store i32 0, i32* %i, align 4, !dbg !5369
  br label %for.cond, !dbg !5371

for.cond:                                         ; preds = %for.inc, %if.end8
  %20 = load i32, i32* %i, align 4, !dbg !5372
  %21 = load i32, i32* @unreset_limit, align 4, !dbg !5374
  %cmp16 = icmp slt i32 %20, %21, !dbg !5375
  br i1 %cmp16, label %for.body, label %for.end, !dbg !5376

for.body:                                         ; preds = %for.cond
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5377
  %ops18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 23, !dbg !5379
  %23 = load %struct.pccard_operations*, %struct.pccard_operations** %ops18, align 8, !dbg !5379
  %get_status = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %23, i32 0, i32 2, !dbg !5380
  %24 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %get_status, align 8, !dbg !5380
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5381
  %call19 = call i32 %24(%struct.pcmcia_socket* %25, i32* %status) #9, !dbg !5377
  %26 = load i32, i32* %status, align 4, !dbg !5382
  %and20 = and i32 %26, 128, !dbg !5384
  %tobool = icmp ne i32 %and20, 0, !dbg !5384
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !5385

if.then21:                                        ; preds = %for.body
  store i32 -19, i32* %retval, align 4, !dbg !5386
  br label %return, !dbg !5386

if.end22:                                         ; preds = %for.body
  %27 = load i32, i32* %status, align 4, !dbg !5387
  %and23 = and i32 %27, 64, !dbg !5389
  %tobool24 = icmp ne i32 %and23, 0, !dbg !5389
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5390

if.then25:                                        ; preds = %if.end22
  store i32 0, i32* %retval, align 4, !dbg !5391
  br label %return, !dbg !5391

if.end26:                                         ; preds = %if.end22
  %28 = load i32, i32* @unreset_check, align 4, !dbg !5392
  %mul27 = mul i32 %28, 10, !dbg !5393
  call void @msleep(i32 %mul27) #9, !dbg !5394
  br label %for.inc, !dbg !5395

for.inc:                                          ; preds = %if.end26
  %29 = load i32, i32* %i, align 4, !dbg !5396
  %inc = add i32 %29, 1, !dbg !5396
  store i32 %inc, i32* %i, align 4, !dbg !5396
  br label %for.cond, !dbg !5397, !llvm.loop !5398

for.end:                                          ; preds = %for.cond
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5400
  %dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 42, !dbg !5400
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !5400
  store i32 -110, i32* %retval, align 4, !dbg !5401
  br label %return, !dbg !5401

return:                                           ; preds = %for.end, %if.then25, %if.then21
  %31 = load i32, i32* %retval, align 4, !dbg !5402
  ret i32 %31, !dbg !5402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pcmcia_socket_dev_resume(%struct.device* %dev) #0 !dbg !5403 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5404, metadata !DIExpression()), !dbg !5405
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5406
  %call = call i32 @__pcmcia_pm_op(%struct.device* %0, i32 (%struct.pcmcia_socket*)* @socket_late_resume) #9, !dbg !5407
  ret i32 %call, !dbg !5408
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__pcmcia_pm_op(%struct.device* %dev, i32 (%struct.pcmcia_socket*)* %callback) #0 !dbg !5409 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %callback.addr = alloca i32 (%struct.pcmcia_socket*)*, align 8
  %s = alloca %struct.pcmcia_socket*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pcmcia_socket*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  store i32 (%struct.pcmcia_socket*)* %callback, i32 (%struct.pcmcia_socket*)** %callback.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.pcmcia_socket*)** %callback.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %s, metadata !5416, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5418, metadata !DIExpression()), !dbg !5420
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5420
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5420
  store i8* %1, i8** %__mptr, align 8, !dbg !5420
  br label %do.body, !dbg !5420

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5421

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5420
  %add.ptr = getelementptr i8, i8* %2, i64 -520, !dbg !5420
  %3 = bitcast i8* %add.ptr to %struct.pcmcia_socket*, !dbg !5420
  store %struct.pcmcia_socket* %3, %struct.pcmcia_socket** %tmp, align 8, !dbg !5421
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp, align 8, !dbg !5420
  store %struct.pcmcia_socket* %4, %struct.pcmcia_socket** %s, align 8, !dbg !5417
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5423, metadata !DIExpression()), !dbg !5424
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s, align 8, !dbg !5425
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 33, !dbg !5426
  call void @mutex_lock(%struct.mutex* %skt_mutex) #9, !dbg !5427
  %6 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %callback.addr, align 8, !dbg !5428
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s, align 8, !dbg !5429
  %call = call i32 %6(%struct.pcmcia_socket* %7) #9, !dbg !5428
  store i32 %call, i32* %ret, align 4, !dbg !5430
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s, align 8, !dbg !5431
  %skt_mutex1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 33, !dbg !5432
  call void @mutex_unlock(%struct.mutex* %skt_mutex1) #9, !dbg !5433
  %9 = load i32, i32* %ret, align 4, !dbg !5434
  ret i32 %9, !dbg !5435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @socket_late_resume(%struct.pcmcia_socket* %skt) #0 !dbg !5436 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %ret = alloca i32, align 4
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5439, metadata !DIExpression()), !dbg !5440
  store i32 0, i32* %ret, align 4, !dbg !5440
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5441
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 34, !dbg !5442
  call void @mutex_lock(%struct.mutex* %ops_mutex) #9, !dbg !5443
  %1 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5444
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %1, i32 0, i32 2, !dbg !5445
  %2 = load i32, i32* %state, align 4, !dbg !5446
  %and = and i32 %2, -193, !dbg !5446
  store i32 %and, i32* %state, align 4, !dbg !5446
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5447
  %ops_mutex1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 34, !dbg !5448
  call void @mutex_unlock(%struct.mutex* %ops_mutex1) #9, !dbg !5449
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5450
  %state2 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 2, !dbg !5452
  %5 = load i32, i32* %state2, align 4, !dbg !5452
  %and3 = and i32 %5, 8, !dbg !5453
  %tobool = icmp ne i32 %and3, 0, !dbg !5453
  br i1 %tobool, label %if.end5, label %if.then, !dbg !5454

if.then:                                          ; preds = %entry
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5455
  %call = call i32 @socket_insert(%struct.pcmcia_socket* %6) #9, !dbg !5457
  store i32 %call, i32* %ret, align 4, !dbg !5458
  %7 = load i32, i32* %ret, align 4, !dbg !5459
  %cmp = icmp eq i32 %7, -19, !dbg !5461
  br i1 %cmp, label %if.then4, label %if.end, !dbg !5462

if.then4:                                         ; preds = %if.then
  store i32 0, i32* %ret, align 4, !dbg !5463
  br label %if.end, !dbg !5464

if.end:                                           ; preds = %if.then4, %if.then
  %8 = load i32, i32* %ret, align 4, !dbg !5465
  store i32 %8, i32* %retval, align 4, !dbg !5466
  br label %return, !dbg !5466

if.end5:                                          ; preds = %entry
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5467
  %resume_status = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 44, !dbg !5469
  %10 = load i32, i32* %resume_status, align 8, !dbg !5469
  %tobool6 = icmp ne i32 %10, 0, !dbg !5467
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5470

if.then7:                                         ; preds = %if.end5
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5471
  call void @socket_shutdown(%struct.pcmcia_socket* %11) #9, !dbg !5473
  store i32 0, i32* %retval, align 4, !dbg !5474
  br label %return, !dbg !5474

if.end8:                                          ; preds = %if.end5
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5475
  %suspended_state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 3, !dbg !5477
  %13 = load i32, i32* %suspended_state, align 8, !dbg !5477
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5478
  %state9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 2, !dbg !5479
  %15 = load i32, i32* %state9, align 4, !dbg !5479
  %cmp10 = icmp ne i32 %13, %15, !dbg !5480
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !5481

if.then11:                                        ; preds = %if.end8
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5482
  call void @socket_shutdown(%struct.pcmcia_socket* %16) #9, !dbg !5484
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5485
  %call12 = call i32 @socket_insert(%struct.pcmcia_socket* %17) #9, !dbg !5486
  store i32 %call12, i32* %retval, align 4, !dbg !5487
  br label %return, !dbg !5487

if.end13:                                         ; preds = %if.end8
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5488
  %state14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 2, !dbg !5490
  %19 = load i32, i32* %state14, align 4, !dbg !5490
  %and15 = and i32 %19, 32768, !dbg !5491
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5491
  br i1 %tobool16, label %if.end21, label %land.lhs.true, !dbg !5492

land.lhs.true:                                    ; preds = %if.end13
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5493
  %callback = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 36, !dbg !5494
  %21 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback, align 8, !dbg !5494
  %tobool17 = icmp ne %struct.pcmcia_callback* %21, null, !dbg !5495
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !5496

if.then18:                                        ; preds = %land.lhs.true
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5497
  %callback19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 36, !dbg !5498
  %23 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback19, align 8, !dbg !5498
  %early_resume = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %23, i32 0, i32 6, !dbg !5499
  %24 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %early_resume, align 8, !dbg !5499
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5500
  %call20 = call i32 %24(%struct.pcmcia_socket* %25) #9, !dbg !5497
  store i32 %call20, i32* %ret, align 4, !dbg !5501
  br label %if.end21, !dbg !5502

if.end21:                                         ; preds = %if.then18, %land.lhs.true, %if.end13
  %26 = load i32, i32* %ret, align 4, !dbg !5503
  store i32 %26, i32* %retval, align 4, !dbg !5504
  br label %return, !dbg !5504

return:                                           ; preds = %if.end21, %if.then11, %if.then7, %if.end
  %27 = load i32, i32* %retval, align 4, !dbg !5505
  ret i32 %27, !dbg !5505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pcmcia_socket_dev_complete(%struct.device* %dev) #0 !dbg !5506 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5509, metadata !DIExpression()), !dbg !5511
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5511
  %call = call i32 @__pcmcia_pm_op(%struct.device* %0, i32 (%struct.pcmcia_socket*)* @socket_complete_resume) #9, !dbg !5511
  %tobool = icmp ne i32 %call, 0, !dbg !5511
  %lnot = xor i1 %tobool, true, !dbg !5511
  %lnot1 = xor i1 %lnot, true, !dbg !5511
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5511
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5511
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !5512
  %tobool2 = icmp ne i32 %1, 0, !dbg !5512
  %lnot3 = xor i1 %tobool2, true, !dbg !5512
  %lnot5 = xor i1 %lnot3, true, !dbg !5512
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5512
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5512
  %tobool7 = icmp ne i64 %conv, 0, !dbg !5512
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5511

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5512

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !5514

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !5516

do.end:                                           ; preds = %do.body8
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5514
  br label %do.body9, !dbg !5514

do.body9:                                         ; preds = %do.end
  br label %do.body10, !dbg !5518

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5520

do.end11:                                         ; preds = %do.body10
  br label %do.body12, !dbg !5518

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 868, i32 2313, i64 12) #7, !dbg !5522, !srcloc !5524
  br label %do.end13, !dbg !5522

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 254) #7, !dbg !5525, !srcloc !5527
  br label %do.body14, !dbg !5518

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5528

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !5518

do.end16:                                         ; preds = %do.end15
  br label %do.body17, !dbg !5514

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5530

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !5514

do.end19:                                         ; preds = %do.end18
  br label %if.end, !dbg !5514

if.end:                                           ; preds = %do.end19, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5511
  %tobool20 = icmp ne i32 %2, 0, !dbg !5511
  %lnot21 = xor i1 %tobool20, true, !dbg !5511
  %lnot23 = xor i1 %lnot21, true, !dbg !5511
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5511
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !5511
  store i64 %conv25, i64* %tmp, align 8, !dbg !5512
  %3 = load i64, i64* %tmp, align 8, !dbg !5511
  ret void, !dbg !5532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @socket_complete_resume(%struct.pcmcia_socket* %skt) #0 !dbg !5533 {
entry:
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %ret = alloca i32, align 4
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5536, metadata !DIExpression()), !dbg !5537
  store i32 0, i32* %ret, align 4, !dbg !5537
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5538
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 2, !dbg !5540
  %1 = load i32, i32* %state, align 4, !dbg !5540
  %and = and i32 %1, 32768, !dbg !5541
  %tobool = icmp ne i32 %and, 0, !dbg !5541
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5542

if.then:                                          ; preds = %entry
  %2 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5543
  call void @cb_free(%struct.pcmcia_socket* %2) #9, !dbg !5545
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5546
  %call = call i32 @cb_alloc(%struct.pcmcia_socket* %3) #9, !dbg !5547
  store i32 %call, i32* %ret, align 4, !dbg !5548
  %4 = load i32, i32* %ret, align 4, !dbg !5549
  %tobool1 = icmp ne i32 %4, 0, !dbg !5549
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5551

if.then2:                                         ; preds = %if.then
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5552
  call void @cb_free(%struct.pcmcia_socket* %5) #9, !dbg !5553
  br label %if.end, !dbg !5553

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !5554

if.end3:                                          ; preds = %if.end, %entry
  %6 = load i32, i32* %ret, align 4, !dbg !5555
  ret i32 %6, !dbg !5556
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pcmcia_socket_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !5557 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %s = alloca %struct.pcmcia_socket*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pcmcia_socket*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %s, metadata !5562, metadata !DIExpression()), !dbg !5563
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5564, metadata !DIExpression()), !dbg !5566
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5566
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5566
  store i8* %1, i8** %__mptr, align 8, !dbg !5566
  br label %do.body, !dbg !5566

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5567

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5566
  %add.ptr = getelementptr i8, i8* %2, i64 -520, !dbg !5566
  %3 = bitcast i8* %add.ptr to %struct.pcmcia_socket*, !dbg !5566
  store %struct.pcmcia_socket* %3, %struct.pcmcia_socket** %tmp, align 8, !dbg !5567
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %tmp, align 8, !dbg !5566
  store %struct.pcmcia_socket* %4, %struct.pcmcia_socket** %s, align 8, !dbg !5563
  %5 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !5569
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s, align 8, !dbg !5571
  %sock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 15, !dbg !5572
  %7 = load i32, i32* %sock, align 8, !dbg !5572
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %7) #9, !dbg !5573
  %tobool = icmp ne i32 %call, 0, !dbg !5573
  br i1 %tobool, label %if.then, label %if.end, !dbg !5574

if.then:                                          ; preds = %do.end
  store i32 -12, i32* %retval, align 4, !dbg !5575
  br label %return, !dbg !5575

if.end:                                           ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5576
  br label %return, !dbg !5576

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5577
  ret i32 %8, !dbg !5577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pcmcia_release_socket_class(%struct.class* %data) #0 !dbg !5578 {
entry:
  %data.addr = alloca %struct.class*, align 8
  store %struct.class* %data, %struct.class** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %data.addr, metadata !5579, metadata !DIExpression()), !dbg !5580
  call void @complete(%struct.completion* @pcmcia_unload) #9, !dbg !5581
  ret void, !dbg !5582
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pcmcia_release_socket(%struct.device* %dev) #0 !dbg !5583 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %socket = alloca %struct.pcmcia_socket*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %socket, metadata !5586, metadata !DIExpression()), !dbg !5587
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5588
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !5589
  %1 = bitcast i8* %call to %struct.pcmcia_socket*, !dbg !5589
  store %struct.pcmcia_socket* %1, %struct.pcmcia_socket** %socket, align 8, !dbg !5587
  %2 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %socket, align 8, !dbg !5590
  %socket_released = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %2, i32 0, i32 14, !dbg !5591
  call void @complete(%struct.completion* %socket_released) #9, !dbg !5592
  ret void, !dbg !5593
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @exit_pcmcia_cs() #5 section ".exit.text" !dbg !5594 {
entry:
  call void @class_unregister(%struct.class* @pcmcia_socket_class) #9, !dbg !5595
  call void @wait_for_completion(%struct.completion* @pcmcia_unload) #9, !dbg !5596
  ret void, !dbg !5597
}

; Function Attrs: noredzone
declare dso_local void @class_unregister(%struct.class*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @init_pcmcia_cs() #5 section ".init.text" !dbg !4362 {
entry:
  %tmp = alloca i32, align 4
  call void @__init_completion(%struct.completion* @pcmcia_unload) #9, !dbg !5598
  %call = call i32 @__class_register(%struct.class* @pcmcia_socket_class, %struct.lock_class_key* @init_pcmcia_cs.__key) #9, !dbg !5599
  store i32 %call, i32* %tmp, align 4, !dbg !5599
  %0 = load i32, i32* %tmp, align 4, !dbg !5599
  ret i32 %0, !dbg !5601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5602 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5609, metadata !DIExpression()), !dbg !5610
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5611
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5613
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5614
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !5615
  br i1 %call, label %if.end, label %if.then, !dbg !5616

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5617

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5618
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5619
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5620
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5621
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5622
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5623
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5624
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5625
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5626
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5627
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5628
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5629
  br label %do.body, !dbg !5630

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5631

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5633

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5631

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5635
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5635
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5635
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5635
  br label %do.end7, !dbg !5635

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5631

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5637
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5638 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5641, metadata !DIExpression()), !dbg !5642
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5645, metadata !DIExpression()), !dbg !5646
  ret i1 true, !dbg !5647
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5648 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5651
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !5653
  br i1 %call, label %if.end, label %if.then, !dbg !5654

if.then:                                          ; preds = %entry
  br label %return, !dbg !5655

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5656
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5657
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5657
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5658
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5659
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5659
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !5660
  br label %return, !dbg !5661

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5661
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5662 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  ret i1 true, !dbg !5667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5668 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5669, metadata !DIExpression()), !dbg !5670
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5671, metadata !DIExpression()), !dbg !5672
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5673
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5674
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5675
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5676
  br label %do.body, !dbg !5677

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5678

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5680

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5678

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5682
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5682
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5682
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5682
  br label %do.end5, !dbg !5682

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5678

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5684
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #2

; Function Attrs: noredzone
declare dso_local i32 @pccard_sysfs_add_socket(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @set_freezable() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @socket_detect_change(%struct.pcmcia_socket* %skt) #0 !dbg !5685 {
entry:
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %status = alloca i32, align 4
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5688
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 2, !dbg !5690
  %1 = load i32, i32* %state, align 4, !dbg !5690
  %and = and i32 %1, 128, !dbg !5691
  %tobool = icmp ne i32 %and, 0, !dbg !5691
  br i1 %tobool, label %if.end21, label %if.then, !dbg !5692

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5693, metadata !DIExpression()), !dbg !5695
  %2 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5696
  %state1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %2, i32 0, i32 2, !dbg !5698
  %3 = load i32, i32* %state1, align 4, !dbg !5698
  %and2 = and i32 %3, 8, !dbg !5699
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5699
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !5700

if.then4:                                         ; preds = %if.then
  call void @msleep(i32 20) #9, !dbg !5701
  br label %if.end, !dbg !5701

if.end:                                           ; preds = %if.then4, %if.then
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5702
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 23, !dbg !5703
  %5 = load %struct.pccard_operations*, %struct.pccard_operations** %ops, align 8, !dbg !5703
  %get_status = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %5, i32 0, i32 2, !dbg !5704
  %6 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %get_status, align 8, !dbg !5704
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5705
  %call = call i32 %6(%struct.pcmcia_socket* %7, i32* %status) #9, !dbg !5702
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5706
  %state5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 2, !dbg !5708
  %9 = load i32, i32* %state5, align 4, !dbg !5708
  %and6 = and i32 %9, 8, !dbg !5709
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5709
  br i1 %tobool7, label %land.lhs.true, label %if.end11, !dbg !5710

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %status, align 4, !dbg !5711
  %and8 = and i32 %10, 128, !dbg !5712
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5712
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5713

if.then10:                                        ; preds = %land.lhs.true
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5714
  call void @socket_remove(%struct.pcmcia_socket* %11) #9, !dbg !5715
  br label %if.end11, !dbg !5715

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.end
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5716
  %state12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 2, !dbg !5718
  %13 = load i32, i32* %state12, align 4, !dbg !5718
  %and13 = and i32 %13, 8, !dbg !5719
  %tobool14 = icmp ne i32 %and13, 0, !dbg !5719
  br i1 %tobool14, label %if.end20, label %land.lhs.true15, !dbg !5720

land.lhs.true15:                                  ; preds = %if.end11
  %14 = load i32, i32* %status, align 4, !dbg !5721
  %and16 = and i32 %14, 128, !dbg !5722
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5722
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !5723

if.then18:                                        ; preds = %land.lhs.true15
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5724
  %call19 = call i32 @socket_insert(%struct.pcmcia_socket* %15) #9, !dbg !5725
  br label %if.end20, !dbg !5725

if.end20:                                         ; preds = %if.then18, %land.lhs.true15, %if.end11
  br label %if.end21, !dbg !5726

if.end21:                                         ; preds = %if.end20, %entry
  ret void, !dbg !5727
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @socket_remove(%struct.pcmcia_socket* %skt) #0 !dbg !5728 {
entry:
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5731
  %dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 42, !dbg !5731
  %1 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5731
  %sock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %1, i32 0, i32 15, !dbg !5731
  %2 = load i32, i32* %sock, align 8, !dbg !5731
  call void (%struct.device*, i8*, ...) @_dev_notice(%struct.device* %dev, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %2) #10, !dbg !5731
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5732
  call void @socket_shutdown(%struct.pcmcia_socket* %3) #9, !dbg !5733
  ret void, !dbg !5734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @socket_insert(%struct.pcmcia_socket* %skt) #0 !dbg !5735 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %ret = alloca i32, align 4
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5736, metadata !DIExpression()), !dbg !5737
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5738, metadata !DIExpression()), !dbg !5739
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5740
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 34, !dbg !5741
  call void @mutex_lock(%struct.mutex* %ops_mutex) #9, !dbg !5742
  %1 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5743
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %1, i32 0, i32 2, !dbg !5745
  %2 = load i32, i32* %state, align 4, !dbg !5745
  %and = and i32 %2, 16, !dbg !5746
  %tobool = icmp ne i32 %and, 0, !dbg !5746
  br i1 %tobool, label %if.then, label %if.end, !dbg !5747

if.then:                                          ; preds = %entry
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5748
  %ops_mutex1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 34, !dbg !5750
  call void @mutex_unlock(%struct.mutex* %ops_mutex1) #9, !dbg !5751
  store i32 -22, i32* %retval, align 4, !dbg !5752
  br label %return, !dbg !5752

if.end:                                           ; preds = %entry
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5753
  %state2 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 2, !dbg !5754
  %5 = load i32, i32* %state2, align 4, !dbg !5755
  %or = or i32 %5, 16, !dbg !5755
  store i32 %or, i32* %state2, align 4, !dbg !5755
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5756
  %7 = load i32, i32* @setup_delay, align 4, !dbg !5757
  %call = call i32 @socket_setup(%struct.pcmcia_socket* %6, i32 %7) #9, !dbg !5758
  store i32 %call, i32* %ret, align 4, !dbg !5759
  %8 = load i32, i32* %ret, align 4, !dbg !5760
  %cmp = icmp eq i32 %8, 0, !dbg !5762
  br i1 %cmp, label %if.then3, label %if.else, !dbg !5763

if.then3:                                         ; preds = %if.end
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5764
  %state4 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 2, !dbg !5766
  %10 = load i32, i32* %state4, align 4, !dbg !5767
  %or5 = or i32 %10, 8, !dbg !5767
  store i32 %or5, i32* %state4, align 4, !dbg !5767
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5768
  %dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 42, !dbg !5768
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5768
  %state6 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 2, !dbg !5768
  %13 = load i32, i32* %state6, align 4, !dbg !5768
  %and7 = and i32 %13, 32768, !dbg !5768
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5768
  %14 = zext i1 %tobool8 to i64, !dbg !5768
  %cond = select i1 %tobool8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), !dbg !5768
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5768
  %sock = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 15, !dbg !5768
  %16 = load i32, i32* %sock, align 8, !dbg !5768
  call void (%struct.device*, i8*, ...) @_dev_notice(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* %cond, i32 %16) #10, !dbg !5768
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5769
  %state9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 2, !dbg !5771
  %18 = load i32, i32* %state9, align 4, !dbg !5771
  %and10 = and i32 %18, 32768, !dbg !5772
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5772
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !5773

if.then12:                                        ; preds = %if.then3
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5774
  %call13 = call i32 @cb_alloc(%struct.pcmcia_socket* %19) #9, !dbg !5776
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5777
  %state14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 2, !dbg !5778
  %21 = load i32, i32* %state14, align 4, !dbg !5779
  %or15 = or i32 %21, 65536, !dbg !5779
  store i32 %or15, i32* %state14, align 4, !dbg !5779
  br label %if.end16, !dbg !5780

if.end16:                                         ; preds = %if.then12, %if.then3
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5781
  %ops_mutex17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 34, !dbg !5782
  call void @mutex_unlock(%struct.mutex* %ops_mutex17) #9, !dbg !5783
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5784
  %state18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 2, !dbg !5786
  %24 = load i32, i32* %state18, align 4, !dbg !5786
  %and19 = and i32 %24, 32768, !dbg !5787
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5787
  br i1 %tobool20, label %if.end25, label %land.lhs.true, !dbg !5788

land.lhs.true:                                    ; preds = %if.end16
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5789
  %callback = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 36, !dbg !5790
  %26 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback, align 8, !dbg !5790
  %tobool21 = icmp ne %struct.pcmcia_callback* %26, null, !dbg !5791
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !5792

if.then22:                                        ; preds = %land.lhs.true
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5793
  %callback23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %27, i32 0, i32 36, !dbg !5794
  %28 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback23, align 8, !dbg !5794
  %add = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %28, i32 0, i32 1, !dbg !5795
  %29 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %add, align 8, !dbg !5795
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5796
  %call24 = call i32 %29(%struct.pcmcia_socket* %30) #9, !dbg !5793
  br label %if.end25, !dbg !5793

if.end25:                                         ; preds = %if.then22, %land.lhs.true, %if.end16
  br label %if.end27, !dbg !5797

if.else:                                          ; preds = %if.end
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5798
  %ops_mutex26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 34, !dbg !5800
  call void @mutex_unlock(%struct.mutex* %ops_mutex26) #9, !dbg !5801
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5802
  call void @socket_shutdown(%struct.pcmcia_socket* %32) #9, !dbg !5803
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end25
  %33 = load i32, i32* %ret, align 4, !dbg !5804
  store i32 %33, i32* %retval, align 4, !dbg !5805
  br label %return, !dbg !5805

return:                                           ; preds = %if.end27, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !5806
  ret i32 %34, !dbg !5806
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @socket_suspend(%struct.pcmcia_socket* %skt) #0 !dbg !5807 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5810
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 2, !dbg !5812
  %1 = load i32, i32* %state, align 4, !dbg !5812
  %and = and i32 %1, 128, !dbg !5813
  %tobool = icmp ne i32 %and, 0, !dbg !5813
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5814

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5815
  %state1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %2, i32 0, i32 2, !dbg !5816
  %3 = load i32, i32* %state1, align 4, !dbg !5816
  %and2 = and i32 %3, 64, !dbg !5817
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5817
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5818

if.then:                                          ; preds = %land.lhs.true
  store i32 -16, i32* %retval, align 4, !dbg !5819
  br label %return, !dbg !5819

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5820
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 34, !dbg !5821
  call void @mutex_lock(%struct.mutex* %ops_mutex) #9, !dbg !5822
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5823
  %state4 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 2, !dbg !5825
  %6 = load i32, i32* %state4, align 4, !dbg !5825
  %and5 = and i32 %6, 64, !dbg !5826
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5826
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !5827

if.then7:                                         ; preds = %if.end
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5828
  %state8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 2, !dbg !5829
  %8 = load i32, i32* %state8, align 4, !dbg !5829
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5830
  %suspended_state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 3, !dbg !5831
  store i32 %8, i32* %suspended_state, align 8, !dbg !5832
  br label %if.end9, !dbg !5830

if.end9:                                          ; preds = %if.then7, %if.end
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5833
  %socket = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 1, !dbg !5834
  %11 = bitcast %struct.socket_state_t* %socket to i8*, !dbg !5835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 4 bitcast (%struct.socket_state_t* @dead_socket to i8*), i64 12, i1 false), !dbg !5835
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5836
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 23, !dbg !5837
  %13 = load %struct.pccard_operations*, %struct.pccard_operations** %ops, align 8, !dbg !5837
  %set_socket = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %13, i32 0, i32 3, !dbg !5838
  %14 = load i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)** %set_socket, align 8, !dbg !5838
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5839
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5840
  %socket10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 1, !dbg !5841
  %call = call i32 %14(%struct.pcmcia_socket* %15, %struct.socket_state_t* %socket10) #9, !dbg !5836
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5842
  %ops11 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 23, !dbg !5844
  %18 = load %struct.pccard_operations*, %struct.pccard_operations** %ops11, align 8, !dbg !5844
  %suspend = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %18, i32 0, i32 1, !dbg !5845
  %19 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %suspend, align 8, !dbg !5845
  %tobool12 = icmp ne i32 (%struct.pcmcia_socket*)* %19, null, !dbg !5842
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !5846

if.then13:                                        ; preds = %if.end9
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5847
  %ops14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 23, !dbg !5848
  %21 = load %struct.pccard_operations*, %struct.pccard_operations** %ops14, align 8, !dbg !5848
  %suspend15 = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %21, i32 0, i32 1, !dbg !5849
  %22 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %suspend15, align 8, !dbg !5849
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5850
  %call16 = call i32 %22(%struct.pcmcia_socket* %23) #9, !dbg !5847
  br label %if.end17, !dbg !5847

if.end17:                                         ; preds = %if.then13, %if.end9
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5851
  %state18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 2, !dbg !5852
  %25 = load i32, i32* %state18, align 4, !dbg !5853
  %or = or i32 %25, 128, !dbg !5853
  store i32 %or, i32* %state18, align 4, !dbg !5853
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5854
  %state19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 2, !dbg !5855
  %27 = load i32, i32* %state19, align 4, !dbg !5856
  %and20 = and i32 %27, -65, !dbg !5856
  store i32 %and20, i32* %state19, align 4, !dbg !5856
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5857
  %ops_mutex21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 34, !dbg !5858
  call void @mutex_unlock(%struct.mutex* %ops_mutex21) #9, !dbg !5859
  store i32 0, i32* %retval, align 4, !dbg !5860
  br label %return, !dbg !5860

return:                                           ; preds = %if.end17, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !5861
  ret i32 %29, !dbg !5861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @socket_resume(%struct.pcmcia_socket* %skt) #0 !dbg !5862 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %err = alloca i32, align 4
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5865, metadata !DIExpression()), !dbg !5866
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5867
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 2, !dbg !5869
  %1 = load i32, i32* %state, align 4, !dbg !5869
  %and = and i32 %1, 128, !dbg !5870
  %tobool = icmp ne i32 %and, 0, !dbg !5870
  br i1 %tobool, label %if.end, label %if.then, !dbg !5871

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

if.end:                                           ; preds = %entry
  %2 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5873
  %call = call i32 @socket_early_resume(%struct.pcmcia_socket* %2) #9, !dbg !5874
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5875
  %call1 = call i32 @socket_late_resume(%struct.pcmcia_socket* %3) #9, !dbg !5876
  store i32 %call1, i32* %err, align 4, !dbg !5877
  %4 = load i32, i32* %err, align 4, !dbg !5878
  %tobool2 = icmp ne i32 %4, 0, !dbg !5878
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !5880

if.then3:                                         ; preds = %if.end
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5881
  %call4 = call i32 @socket_complete_resume(%struct.pcmcia_socket* %5) #9, !dbg !5882
  store i32 %call4, i32* %err, align 4, !dbg !5883
  br label %if.end5, !dbg !5884

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %err, align 4, !dbg !5885
  store i32 %6, i32* %retval, align 4, !dbg !5886
  br label %return, !dbg !5886

return:                                           ; preds = %if.end5, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5887
  ret i32 %7, !dbg !5887
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_should_stop() #2

; Function Attrs: noredzone
declare dso_local void @schedule() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_to_freeze() #0 !dbg !5888 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4661, metadata !DIExpression()), !dbg !5890
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4672, metadata !DIExpression()), !dbg !5893
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4675, metadata !DIExpression()), !dbg !5894
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5893
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5893
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !5894, !srcloc !4711
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !5894
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !5894
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !5894
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !5894
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5894
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5890
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5890
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !5890
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5890
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 4, !dbg !5895
  %7 = load i32, i32* %flags, align 4, !dbg !5895
  %and = and i32 %7, 32768, !dbg !5896
  %tobool = icmp ne i32 %and, 0, !dbg !5896
  br i1 %tobool, label %if.end, label %if.then, !dbg !5897

if.then:                                          ; preds = %entry
  call void @debug_check_no_locks_held() #9, !dbg !5898
  br label %if.end, !dbg !5898

if.end:                                           ; preds = %if.then, %entry
  %call1 = call zeroext i1 @try_to_freeze_unsafe() #9, !dbg !5899
  ret i1 %call1, !dbg !5900
}

; Function Attrs: noredzone
declare dso_local void @pccard_sysfs_remove_socket(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_notice(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @socket_shutdown(%struct.pcmcia_socket* %s) #0 !dbg !5901 {
entry:
  %s.addr = alloca %struct.pcmcia_socket*, align 8
  %status = alloca i32, align 4
  store %struct.pcmcia_socket* %s, %struct.pcmcia_socket** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %s.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5904, metadata !DIExpression()), !dbg !5905
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5906
  %callback = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 36, !dbg !5908
  %1 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback, align 8, !dbg !5908
  %tobool = icmp ne %struct.pcmcia_callback* %1, null, !dbg !5906
  br i1 %tobool, label %if.then, label %if.end, !dbg !5909

if.then:                                          ; preds = %entry
  %2 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5910
  %callback1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %2, i32 0, i32 36, !dbg !5911
  %3 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %callback1, align 8, !dbg !5911
  %remove = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %3, i32 0, i32 2, !dbg !5912
  %4 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %remove, align 8, !dbg !5912
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5913
  %call = call i32 %4(%struct.pcmcia_socket* %5) #9, !dbg !5910
  br label %if.end, !dbg !5910

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5914
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 34, !dbg !5915
  call void @mutex_lock(%struct.mutex* %ops_mutex) #9, !dbg !5916
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5917
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 2, !dbg !5918
  %8 = load i32, i32* %state, align 4, !dbg !5919
  %and = and i32 %8, 24, !dbg !5919
  store i32 %and, i32* %state, align 4, !dbg !5919
  %9 = load i32, i32* @shutdown_delay, align 4, !dbg !5920
  %mul = mul i32 %9, 10, !dbg !5921
  call void @msleep(i32 %mul) #9, !dbg !5922
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5923
  %state2 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 2, !dbg !5924
  %11 = load i32, i32* %state2, align 4, !dbg !5925
  %and3 = and i32 %11, 16, !dbg !5925
  store i32 %and3, i32* %state2, align 4, !dbg !5925
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5926
  %socket = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 1, !dbg !5927
  %13 = bitcast %struct.socket_state_t* %socket to i8*, !dbg !5928
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 bitcast (%struct.socket_state_t* @dead_socket to i8*), i64 12, i1 false), !dbg !5928
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5929
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 23, !dbg !5930
  %15 = load %struct.pccard_operations*, %struct.pccard_operations** %ops, align 8, !dbg !5930
  %init = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %15, i32 0, i32 0, !dbg !5931
  %16 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %init, align 8, !dbg !5931
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5932
  %call4 = call i32 %16(%struct.pcmcia_socket* %17) #9, !dbg !5929
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5933
  %ops5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 23, !dbg !5934
  %19 = load %struct.pccard_operations*, %struct.pccard_operations** %ops5, align 8, !dbg !5934
  %set_socket = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %19, i32 0, i32 3, !dbg !5935
  %20 = load i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)** %set_socket, align 8, !dbg !5935
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5936
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5937
  %socket6 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 1, !dbg !5938
  %call7 = call i32 %20(%struct.pcmcia_socket* %21, %struct.socket_state_t* %socket6) #9, !dbg !5933
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5939
  %lock_count = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 5, !dbg !5940
  store i16 0, i16* %lock_count, align 2, !dbg !5941
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5942
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 12, !dbg !5943
  %25 = load i8*, i8** %fake_cis, align 8, !dbg !5943
  call void @kfree(i8* %25) #9, !dbg !5944
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5945
  %fake_cis8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 12, !dbg !5946
  store i8* null, i8** %fake_cis8, align 8, !dbg !5947
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5948
  %functions = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %27, i32 0, i32 4, !dbg !5949
  store i16 0, i16* %functions, align 4, !dbg !5950
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5951
  %ops_mutex9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 34, !dbg !5952
  call void @mutex_unlock(%struct.mutex* %ops_mutex9) #9, !dbg !5953
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5954
  call void @cb_free(%struct.pcmcia_socket* %29) #9, !dbg !5955
  call void @msleep(i32 100) #9, !dbg !5956
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5957
  %ops10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 23, !dbg !5958
  %31 = load %struct.pccard_operations*, %struct.pccard_operations** %ops10, align 8, !dbg !5958
  %get_status = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %31, i32 0, i32 2, !dbg !5959
  %32 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %get_status, align 8, !dbg !5959
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5960
  %call11 = call i32 %32(%struct.pcmcia_socket* %33, i32* %status) #9, !dbg !5957
  %34 = load i32, i32* %status, align 4, !dbg !5961
  %and12 = and i32 %34, 256, !dbg !5963
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5963
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5964

if.then14:                                        ; preds = %if.end
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5965
  %dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %35, i32 0, i32 42, !dbg !5965
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !5965
  br label %if.end15, !dbg !5967

if.end15:                                         ; preds = %if.then14, %if.end
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %s.addr, align 8, !dbg !5968
  %state16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 2, !dbg !5969
  %37 = load i32, i32* %state16, align 4, !dbg !5970
  %and17 = and i32 %37, -17, !dbg !5970
  store i32 %and17, i32* %state16, align 4, !dbg !5970
  ret void, !dbg !5971
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @cb_free(%struct.pcmcia_socket*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @socket_setup(%struct.pcmcia_socket* %skt, i32 %initial_delay) #0 !dbg !5972 {
entry:
  %retval = alloca i32, align 4
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  %initial_delay.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  store i32 %initial_delay, i32* %initial_delay.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %initial_delay.addr, metadata !5975, metadata !DIExpression()), !dbg !5976
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5977, metadata !DIExpression()), !dbg !5978
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5979, metadata !DIExpression()), !dbg !5980
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5981
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 23, !dbg !5982
  %1 = load %struct.pccard_operations*, %struct.pccard_operations** %ops, align 8, !dbg !5982
  %get_status = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %1, i32 0, i32 2, !dbg !5983
  %2 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %get_status, align 8, !dbg !5983
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !5984
  %call = call i32 %2(%struct.pcmcia_socket* %3, i32* %status) #9, !dbg !5981
  %4 = load i32, i32* %status, align 4, !dbg !5985
  %and = and i32 %4, 128, !dbg !5987
  %tobool = icmp ne i32 %and, 0, !dbg !5987
  br i1 %tobool, label %if.end, label %if.then, !dbg !5988

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5989
  br label %return, !dbg !5989

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %initial_delay.addr, align 4, !dbg !5990
  %mul = mul i32 %5, 10, !dbg !5991
  call void @msleep(i32 %mul) #9, !dbg !5992
  store i32 0, i32* %i, align 4, !dbg !5993
  br label %for.cond, !dbg !5995

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !5996
  %cmp = icmp slt i32 %6, 100, !dbg !5998
  br i1 %cmp, label %for.body, label %for.end, !dbg !5999

for.body:                                         ; preds = %for.cond
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6000
  %ops1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 23, !dbg !6002
  %8 = load %struct.pccard_operations*, %struct.pccard_operations** %ops1, align 8, !dbg !6002
  %get_status2 = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %8, i32 0, i32 2, !dbg !6003
  %9 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %get_status2, align 8, !dbg !6003
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6004
  %call3 = call i32 %9(%struct.pcmcia_socket* %10, i32* %status) #9, !dbg !6000
  %11 = load i32, i32* %status, align 4, !dbg !6005
  %and4 = and i32 %11, 128, !dbg !6007
  %tobool5 = icmp ne i32 %and4, 0, !dbg !6007
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6008

if.then6:                                         ; preds = %for.body
  store i32 -19, i32* %retval, align 4, !dbg !6009
  br label %return, !dbg !6009

if.end7:                                          ; preds = %for.body
  %12 = load i32, i32* %status, align 4, !dbg !6010
  %and8 = and i32 %12, 16384, !dbg !6012
  %tobool9 = icmp ne i32 %and8, 0, !dbg !6012
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6013

if.then10:                                        ; preds = %if.end7
  br label %for.end, !dbg !6014

if.end11:                                         ; preds = %if.end7
  call void @msleep(i32 100) #9, !dbg !6015
  br label %for.inc, !dbg !6016

for.inc:                                          ; preds = %if.end11
  %13 = load i32, i32* %i, align 4, !dbg !6017
  %inc = add i32 %13, 1, !dbg !6017
  store i32 %inc, i32* %i, align 4, !dbg !6017
  br label %for.cond, !dbg !6018, !llvm.loop !6019

for.end:                                          ; preds = %if.then10, %for.cond
  %14 = load i32, i32* %status, align 4, !dbg !6021
  %and12 = and i32 %14, 16384, !dbg !6023
  %tobool13 = icmp ne i32 %and12, 0, !dbg !6023
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6024

if.then14:                                        ; preds = %for.end
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6025
  %dev = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 42, !dbg !6025
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !6025
  store i32 -110, i32* %retval, align 4, !dbg !6027
  br label %return, !dbg !6027

if.end15:                                         ; preds = %for.end
  %16 = load i32, i32* %status, align 4, !dbg !6028
  %and16 = and i32 %16, 2048, !dbg !6030
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6030
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !6031

if.then18:                                        ; preds = %if.end15
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6032
  %features = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 16, !dbg !6035
  %18 = load i32, i32* %features, align 4, !dbg !6035
  %and19 = and i32 %18, 32768, !dbg !6036
  %tobool20 = icmp ne i32 %and19, 0, !dbg !6036
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !6037

if.then21:                                        ; preds = %if.then18
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6038
  %dev22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 42, !dbg !6038
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !6038
  store i32 -22, i32* %retval, align 4, !dbg !6040
  br label %return, !dbg !6040

if.end23:                                         ; preds = %if.then18
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6041
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 2, !dbg !6042
  %21 = load i32, i32* %state, align 4, !dbg !6043
  %or = or i32 %21, 32768, !dbg !6043
  store i32 %or, i32* %state, align 4, !dbg !6043
  br label %if.end26, !dbg !6044

if.else:                                          ; preds = %if.end15
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6045
  %state24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 2, !dbg !6046
  %23 = load i32, i32* %state24, align 4, !dbg !6047
  %and25 = and i32 %23, -32769, !dbg !6047
  store i32 %and25, i32* %state24, align 4, !dbg !6047
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end23
  %24 = load i32, i32* %status, align 4, !dbg !6048
  %and27 = and i32 %24, 4096, !dbg !6050
  %tobool28 = icmp ne i32 %and27, 0, !dbg !6050
  br i1 %tobool28, label %if.then29, label %if.else31, !dbg !6051

if.then29:                                        ; preds = %if.end26
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6052
  %socket = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 1, !dbg !6053
  %Vpp = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %socket, i32 0, i32 3, !dbg !6054
  store i8 33, i8* %Vpp, align 1, !dbg !6055
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6056
  %socket30 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 1, !dbg !6057
  %Vcc = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %socket30, i32 0, i32 2, !dbg !6058
  store i8 33, i8* %Vcc, align 8, !dbg !6059
  br label %if.end42, !dbg !6056

if.else31:                                        ; preds = %if.end26
  %27 = load i32, i32* %status, align 4, !dbg !6060
  %and32 = and i32 %27, 8192, !dbg !6062
  %tobool33 = icmp ne i32 %and32, 0, !dbg !6062
  br i1 %tobool33, label %if.else39, label %if.then34, !dbg !6063

if.then34:                                        ; preds = %if.else31
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6064
  %socket35 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 1, !dbg !6065
  %Vpp36 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %socket35, i32 0, i32 3, !dbg !6066
  store i8 50, i8* %Vpp36, align 1, !dbg !6067
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6068
  %socket37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %29, i32 0, i32 1, !dbg !6069
  %Vcc38 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %socket37, i32 0, i32 2, !dbg !6070
  store i8 50, i8* %Vcc38, align 8, !dbg !6071
  br label %if.end41, !dbg !6068

if.else39:                                        ; preds = %if.else31
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6072
  %dev40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 42, !dbg !6072
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !6072
  store i32 -5, i32* %retval, align 4, !dbg !6074
  br label %return, !dbg !6074

if.end41:                                         ; preds = %if.then34
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then29
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6075
  %power_hook = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 27, !dbg !6077
  %32 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %power_hook, align 8, !dbg !6077
  %tobool43 = icmp ne i32 (%struct.pcmcia_socket*, i32)* %32, null, !dbg !6075
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6078

if.then44:                                        ; preds = %if.end42
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6079
  %power_hook45 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 27, !dbg !6080
  %34 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %power_hook45, align 8, !dbg !6080
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6081
  %call46 = call i32 %34(%struct.pcmcia_socket* %35, i32 1) #9, !dbg !6079
  br label %if.end47, !dbg !6079

if.end47:                                         ; preds = %if.then44, %if.end42
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6082
  %socket48 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 1, !dbg !6083
  %flags = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %socket48, i32 0, i32 0, !dbg !6084
  store i32 0, i32* %flags, align 8, !dbg !6085
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6086
  %ops49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %37, i32 0, i32 23, !dbg !6087
  %38 = load %struct.pccard_operations*, %struct.pccard_operations** %ops49, align 8, !dbg !6087
  %set_socket = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %38, i32 0, i32 3, !dbg !6088
  %39 = load i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)** %set_socket, align 8, !dbg !6088
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6089
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6090
  %socket50 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %41, i32 0, i32 1, !dbg !6091
  %call51 = call i32 %39(%struct.pcmcia_socket* %40, %struct.socket_state_t* %socket50) #9, !dbg !6086
  %42 = load i32, i32* @vcc_settle, align 4, !dbg !6092
  %mul52 = mul i32 %42, 10, !dbg !6093
  call void @msleep(i32 %mul52) #9, !dbg !6094
  %43 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6095
  %ops53 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %43, i32 0, i32 23, !dbg !6096
  %44 = load %struct.pccard_operations*, %struct.pccard_operations** %ops53, align 8, !dbg !6096
  %get_status54 = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %44, i32 0, i32 2, !dbg !6097
  %45 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %get_status54, align 8, !dbg !6097
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6098
  %call55 = call i32 %45(%struct.pcmcia_socket* %46, i32* %status) #9, !dbg !6095
  %47 = load i32, i32* %status, align 4, !dbg !6099
  %and56 = and i32 %47, 256, !dbg !6101
  %tobool57 = icmp ne i32 %and56, 0, !dbg !6101
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !6102

if.then58:                                        ; preds = %if.end47
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6103
  %dev59 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 42, !dbg !6103
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !6103
  store i32 -5, i32* %retval, align 4, !dbg !6105
  br label %return, !dbg !6105

if.end60:                                         ; preds = %if.end47
  %49 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6106
  %call61 = call i32 @socket_reset(%struct.pcmcia_socket* %49) #9, !dbg !6107
  store i32 %call61, i32* %status, align 4, !dbg !6108
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6109
  %power_hook62 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %50, i32 0, i32 27, !dbg !6111
  %51 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %power_hook62, align 8, !dbg !6111
  %tobool63 = icmp ne i32 (%struct.pcmcia_socket*, i32)* %51, null, !dbg !6109
  br i1 %tobool63, label %if.then64, label %if.end67, !dbg !6112

if.then64:                                        ; preds = %if.end60
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6113
  %power_hook65 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %52, i32 0, i32 27, !dbg !6114
  %53 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %power_hook65, align 8, !dbg !6114
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6115
  %call66 = call i32 %53(%struct.pcmcia_socket* %54, i32 2) #9, !dbg !6113
  br label %if.end67, !dbg !6113

if.end67:                                         ; preds = %if.then64, %if.end60
  %55 = load i32, i32* %status, align 4, !dbg !6116
  store i32 %55, i32* %retval, align 4, !dbg !6117
  br label %return, !dbg !6117

return:                                           ; preds = %if.end67, %if.then58, %if.else39, %if.then21, %if.then14, %if.then6, %if.then
  %56 = load i32, i32* %retval, align 4, !dbg !6118
  ret i32 %56, !dbg !6118
}

; Function Attrs: noredzone
declare dso_local i32 @cb_alloc(%struct.pcmcia_socket*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @socket_early_resume(%struct.pcmcia_socket* %skt) #0 !dbg !6119 {
entry:
  %skt.addr = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %skt, %struct.pcmcia_socket** %skt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcmcia_socket** %skt.addr, metadata !6120, metadata !DIExpression()), !dbg !6121
  %0 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6122
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %0, i32 0, i32 34, !dbg !6123
  call void @mutex_lock(%struct.mutex* %ops_mutex) #9, !dbg !6124
  %1 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6125
  %socket = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %1, i32 0, i32 1, !dbg !6126
  %2 = bitcast %struct.socket_state_t* %socket to i8*, !dbg !6127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 4 bitcast (%struct.socket_state_t* @dead_socket to i8*), i64 12, i1 false), !dbg !6127
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6128
  %ops = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 23, !dbg !6129
  %4 = load %struct.pccard_operations*, %struct.pccard_operations** %ops, align 8, !dbg !6129
  %init = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %4, i32 0, i32 0, !dbg !6130
  %5 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %init, align 8, !dbg !6130
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6131
  %call = call i32 %5(%struct.pcmcia_socket* %6) #9, !dbg !6128
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6132
  %ops1 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 23, !dbg !6133
  %8 = load %struct.pccard_operations*, %struct.pccard_operations** %ops1, align 8, !dbg !6133
  %set_socket = getelementptr inbounds %struct.pccard_operations, %struct.pccard_operations* %8, i32 0, i32 3, !dbg !6134
  %9 = load i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)*, i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)** %set_socket, align 8, !dbg !6134
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6135
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6136
  %socket2 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 1, !dbg !6137
  %call3 = call i32 %9(%struct.pcmcia_socket* %10, %struct.socket_state_t* %socket2) #9, !dbg !6132
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6138
  %state = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 2, !dbg !6140
  %13 = load i32, i32* %state, align 4, !dbg !6140
  %and = and i32 %13, 8, !dbg !6141
  %tobool = icmp ne i32 %and, 0, !dbg !6141
  br i1 %tobool, label %if.then, label %if.end, !dbg !6142

if.then:                                          ; preds = %entry
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6143
  %15 = load i32, i32* @resume_delay, align 4, !dbg !6144
  %call4 = call i32 @socket_setup(%struct.pcmcia_socket* %14, i32 %15) #9, !dbg !6145
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6146
  %resume_status = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 44, !dbg !6147
  store i32 %call4, i32* %resume_status, align 8, !dbg !6148
  br label %if.end, !dbg !6146

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6149
  %state5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 2, !dbg !6150
  %18 = load i32, i32* %state5, align 4, !dbg !6151
  %or = or i32 %18, 64, !dbg !6151
  store i32 %or, i32* %state5, align 4, !dbg !6151
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %skt.addr, align 8, !dbg !6152
  %ops_mutex6 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 34, !dbg !6153
  call void @mutex_unlock(%struct.mutex* %ops_mutex6) #9, !dbg !6154
  ret i32 0, !dbg !6155
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debug_check_no_locks_held() #0 !dbg !6156 {
entry:
  ret void, !dbg !6158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_to_freeze_unsafe() #0 !dbg !6159 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4661, metadata !DIExpression()), !dbg !6160
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4672, metadata !DIExpression()), !dbg !6163
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4675, metadata !DIExpression()), !dbg !6164
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i1, align 1
  br label %do.body, !dbg !6165

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6166

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6168

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !6166

do.end2:                                          ; preds = %do.end
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !6163
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !6163
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !6164, !srcloc !4711
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !6164
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !6164
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !6164
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !6164
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !6164
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !6160
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !6160
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !6160
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !6160
  %call3 = call zeroext i1 @freezing(%struct.task_struct* %6) #9, !dbg !6170
  %lnot = xor i1 %call3, true, !dbg !6170
  %lnot4 = xor i1 %lnot, true, !dbg !6170
  %lnot5 = xor i1 %lnot4, true, !dbg !6170
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6170
  %conv = sext i32 %lnot.ext to i64, !dbg !6170
  %tobool = icmp ne i64 %conv, 0, !dbg !6170
  br i1 %tobool, label %if.then, label %if.end, !dbg !6171

if.then:                                          ; preds = %do.end2
  store i1 false, i1* %retval, align 1, !dbg !6172
  br label %return, !dbg !6172

if.end:                                           ; preds = %do.end2
  %call6 = call zeroext i1 @__refrigerator(i1 zeroext false) #9, !dbg !6173
  store i1 %call6, i1* %retval, align 1, !dbg !6174
  br label %return, !dbg !6174

return:                                           ; preds = %if.end, %if.then
  %7 = load i1, i1* %retval, align 1, !dbg !6175
  ret i1 %7, !dbg !6175
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @freezing(%struct.task_struct* %p) #0 !dbg !6176 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6179, metadata !DIExpression()), !dbg !6186
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6192, metadata !DIExpression()), !dbg !6200
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6202, metadata !DIExpression()), !dbg !6203
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6204, metadata !DIExpression()), !dbg !6205
  %retval = alloca i1, align 1
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !6206, metadata !DIExpression()), !dbg !6207
  store %struct.atomic_t* @system_freezing_cnt, %struct.atomic_t** %v.addr.i, align 8
  %0 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6208
  %1 = bitcast %struct.atomic_t* %0 to i8*, !dbg !6208
  store i8* %1, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %2 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6209
  %3 = load i64, i64* %size.addr.i.i, align 8, !dbg !6210
  %conv.i.i = trunc i64 %3 to i32, !dbg !6210
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %2, i32 %conv.i.i) #12, !dbg !6211
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6212
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6212
  call void @kcsan_check_access(i8* %4, i64 %5, i32 4) #12, !dbg !6212
  %6 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6213
  store %struct.atomic_t* %6, %struct.atomic_t** %v.addr.i1.i, align 8
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6214
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %7, i32 0, i32 0, !dbg !6214
  %8 = load volatile i32, i32* %counter.i.i, align 4, !dbg !6214
  %tobool = icmp ne i32 %8, 0, !dbg !6215
  %lnot = xor i1 %tobool, true, !dbg !6215
  %lnot1 = xor i1 %lnot, true, !dbg !6215
  %lnot2 = xor i1 %lnot1, true, !dbg !6215
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6215
  %conv = sext i32 %lnot.ext to i64, !dbg !6215
  %tobool3 = icmp ne i64 %conv, 0, !dbg !6215
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6216

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !6217
  br label %return, !dbg !6217

if.end:                                           ; preds = %entry
  %9 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !6218
  %call4 = call zeroext i1 @freezing_slow_path(%struct.task_struct* %9) #9, !dbg !6219
  store i1 %call4, i1* %retval, align 1, !dbg !6220
  br label %return, !dbg !6220

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, i1* %retval, align 1, !dbg !6221
  ret i1 %10, !dbg !6221
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @__refrigerator(i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @freezing_slow_path(%struct.task_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6222 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6226, metadata !DIExpression()), !dbg !6227
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6228, metadata !DIExpression()), !dbg !6229
  ret i1 true, !dbg !6230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6231 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6235, metadata !DIExpression()), !dbg !6236
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6237, metadata !DIExpression()), !dbg !6238
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6239, metadata !DIExpression()), !dbg !6240
  ret void, !dbg !6241
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6242 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6243, metadata !DIExpression()), !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6246, metadata !DIExpression()), !dbg !6245
  %0 = load i64, i64* %__edi, align 8, !dbg !6245
  store i64 %0, i64* %__edi, align 8, !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6247, metadata !DIExpression()), !dbg !6245
  %1 = load i64, i64* %__esi, align 8, !dbg !6245
  store i64 %1, i64* %__esi, align 8, !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6248, metadata !DIExpression()), !dbg !6245
  %2 = load i64, i64* %__edx, align 8, !dbg !6245
  store i64 %2, i64* %__edx, align 8, !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6249, metadata !DIExpression()), !dbg !6245
  %3 = load i64, i64* %__ecx, align 8, !dbg !6245
  store i64 %3, i64* %__ecx, align 8, !dbg !6245
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6250, metadata !DIExpression()), !dbg !6245
  %4 = load i64, i64* %__eax, align 8, !dbg !6245
  store i64 %4, i64* %__eax, align 8, !dbg !6245
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6245
  %6 = call i64 @llvm.read_register.i64(metadata !4368), !dbg !6251
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !6251, !srcloc !6254
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6251
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6251
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6251
  call void @llvm.write_register.i64(metadata !4368, i64 %asmresult1), !dbg !6251
  %8 = load i64, i64* %__eax, align 8, !dbg !6251
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6255, metadata !DIExpression()), !dbg !6257
  store i64 -1, i64* %__mask, align 8, !dbg !6257
  %9 = load i64, i64* %__mask, align 8, !dbg !6257
  store i64 %9, i64* %tmp, align 8, !dbg !6257
  %10 = load i64, i64* %tmp, align 8, !dbg !6257
  %and = and i64 %8, %10, !dbg !6251
  store i64 %and, i64* %__ret, align 8, !dbg !6251
  %11 = load i64, i64* %__ret, align 8, !dbg !6245
  store i64 %11, i64* %tmp2, align 8, !dbg !6258
  %12 = load i64, i64* %tmp2, align 8, !dbg !6245
  ret i64 %12, !dbg !6259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6260 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6261, metadata !DIExpression()), !dbg !6263
  %0 = load i64, i64* %__edi, align 8, !dbg !6263
  store i64 %0, i64* %__edi, align 8, !dbg !6263
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6264, metadata !DIExpression()), !dbg !6263
  %1 = load i64, i64* %__esi, align 8, !dbg !6263
  store i64 %1, i64* %__esi, align 8, !dbg !6263
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6265, metadata !DIExpression()), !dbg !6263
  %2 = load i64, i64* %__edx, align 8, !dbg !6263
  store i64 %2, i64* %__edx, align 8, !dbg !6263
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6266, metadata !DIExpression()), !dbg !6263
  %3 = load i64, i64* %__ecx, align 8, !dbg !6263
  store i64 %3, i64* %__ecx, align 8, !dbg !6263
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6267, metadata !DIExpression()), !dbg !6263
  %4 = load i64, i64* %__eax, align 8, !dbg !6263
  store i64 %4, i64* %__eax, align 8, !dbg !6263
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6263
  %6 = call i64 @llvm.read_register.i64(metadata !4368), !dbg !6263
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !6263, !srcloc !6268
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6263
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6263
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6263
  call void @llvm.write_register.i64(metadata !4368, i64 %asmresult1), !dbg !6263
  ret void, !dbg !6269
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6270 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6273, metadata !DIExpression()), !dbg !6274
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6275, metadata !DIExpression()), !dbg !6277
  %0 = load i64, i64* %__edi, align 8, !dbg !6277
  store i64 %0, i64* %__edi, align 8, !dbg !6277
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6278, metadata !DIExpression()), !dbg !6277
  %1 = load i64, i64* %__esi, align 8, !dbg !6277
  store i64 %1, i64* %__esi, align 8, !dbg !6277
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6279, metadata !DIExpression()), !dbg !6277
  %2 = load i64, i64* %__edx, align 8, !dbg !6277
  store i64 %2, i64* %__edx, align 8, !dbg !6277
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6280, metadata !DIExpression()), !dbg !6277
  %3 = load i64, i64* %__ecx, align 8, !dbg !6277
  store i64 %3, i64* %__ecx, align 8, !dbg !6277
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6281, metadata !DIExpression()), !dbg !6277
  %4 = load i64, i64* %__eax, align 8, !dbg !6277
  store i64 %4, i64* %__eax, align 8, !dbg !6277
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6277
  %6 = call i64 @llvm.read_register.i64(metadata !4368), !dbg !6277
  %7 = load i64, i64* %f.addr, align 8, !dbg !6277
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !6277, !srcloc !6282
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6277
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6277
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6277
  call void @llvm.write_register.i64(metadata !4368, i64 %asmresult1), !dbg !6277
  ret void, !dbg !6283
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #2

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pcmcia_socket_dev_suspend_noirq(%struct.device* %dev) #0 !dbg !6284 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6287
  %call = call i32 @__pcmcia_pm_op(%struct.device* %0, i32 (%struct.pcmcia_socket*)* @socket_suspend) #9, !dbg !6288
  ret i32 %call, !dbg !6289
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pcmcia_socket_dev_resume_noirq(%struct.device* %dev) #0 !dbg !6290 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6291, metadata !DIExpression()), !dbg !6292
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6293
  %call = call i32 @__pcmcia_pm_op(%struct.device* %0, i32 (%struct.pcmcia_socket*)* @socket_early_resume) #9, !dbg !6294
  ret i32 %call, !dbg !6295
}

; Function Attrs: noredzone
declare dso_local i32 @__class_register(%struct.class*, %struct.lock_class_key*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind readnone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4368}
!llvm.module.flags = !{!4369, !4370, !4371, !4372}
!llvm.ident = !{!4373}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author234", scope: !2, file: !3, line: 40, type: !4365, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !4162, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pcmcia/cs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !{!99, !100, !4153, !4156, !155, !369, !4157, !4158, !1261, !4159}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_socket", file: !102, line: 130, size: 9856, elements: !103)
!102 = !DIFile(filename: "./include/pcmcia/ss.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !108, !121, !122, !123, !126, !127, !160, !161, !171, !175, !181, !186, !190, !191, !211, !212, !213, !214, !215, !216, !217, !4053, !4054, !4090, !4110, !4111, !4115, !4119, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !101, file: !102, line: 131, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !107, line: 76, flags: DIFlagFwdDecl)
!107 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !101, file: !102, line: 132, baseType: !109, size: 96, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "socket_state_t", file: !102, line: 55, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_state_t", file: !102, line: 50, size: 96, elements: !111)
!111 = !{!112, !115, !116, !119, !120}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !102, line: 51, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !114, line: 81, baseType: !7)
!114 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "csc_mask", scope: !110, file: !102, line: 52, baseType: !113, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "Vcc", scope: !110, file: !102, line: 53, baseType: !117, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !114, line: 79, baseType: !118)
!118 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "Vpp", scope: !110, file: !102, line: 53, baseType: !117, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "io_irq", scope: !110, file: !102, line: 54, baseType: !117, size: 8, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !101, file: !102, line: 133, baseType: !113, size: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_state", scope: !101, file: !102, line: 134, baseType: !113, size: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !101, file: !102, line: 135, baseType: !124, size: 16, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !114, line: 80, baseType: !125)
!125 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !101, file: !102, line: 136, baseType: !124, size: 16, offset: 240)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cis_mem", scope: !101, file: !102, line: 137, baseType: !128, size: 256, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pccard_mem_map", file: !102, line: 98, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_mem_map", file: !102, line: 91, size: 256, elements: !130)
!130 = !{!131, !132, !133, !134, !141, !142}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !129, file: !102, line: 92, baseType: !117, size: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !102, line: 93, baseType: !117, size: 8, offset: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !129, file: !102, line: 94, baseType: !124, size: 16, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "static_start", scope: !129, file: !102, line: 95, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !114, line: 153, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !137, line: 23, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "card_start", scope: !129, file: !102, line: 96, baseType: !113, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !129, file: !102, line: 97, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !145, line: 20, size: 512, elements: !146)
!145 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !149, !150, !154, !156, !157, !158, !159}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !144, file: !145, line: 21, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !114, line: 158, baseType: !135)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !144, file: !145, line: 22, baseType: !148, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !145, line: 23, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !145, line: 24, baseType: !155, size: 64, offset: 192)
!155 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !144, file: !145, line: 25, baseType: !155, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !145, line: 26, baseType: !143, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !144, file: !145, line: 26, baseType: !143, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !144, file: !145, line: 26, baseType: !143, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cis_virt", scope: !101, file: !102, line: 138, baseType: !99, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !101, file: !102, line: 139, baseType: !162, size: 256, offset: 576)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !169)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_window_t", file: !102, line: 103, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_window_t", file: !102, line: 100, size: 128, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "InUse", scope: !164, file: !102, line: 101, baseType: !113, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "Config", scope: !164, file: !102, line: 101, baseType: !113, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !164, file: !102, line: 102, baseType: !143, size: 64, offset: 64)
!169 = !{!170}
!170 = !DISubrange(count: 2)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !101, file: !102, line: 140, baseType: !172, size: 1024, offset: 832)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 4)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cis_cache", scope: !101, file: !102, line: 141, baseType: !176, size: 128, offset: 1856)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !114, line: 178, size: 128, elements: !177)
!177 = !{!178, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !114, line: 179, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !176, file: !114, line: 179, baseType: !179, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cis_len", scope: !101, file: !102, line: 142, baseType: !182, size: 64, offset: 1984)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 55, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !184, line: 72, baseType: !185)
!184 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !184, line: 16, baseType: !155)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cis", scope: !101, file: !102, line: 143, baseType: !187, size: 64, offset: 2048)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !137, line: 17, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !118)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "socket_list", scope: !101, file: !102, line: 145, baseType: !176, size: 128, offset: 2112)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "socket_released", scope: !101, file: !102, line: 146, baseType: !192, size: 192, offset: 2240)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !193, line: 26, size: 192, elements: !194)
!193 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !192, file: !193, line: 27, baseType: !7, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !192, file: !193, line: 28, baseType: !197, size: 128, offset: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !198, line: 43, size: 128, elements: !199)
!198 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200, !210}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !197, file: !198, line: 44, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !202, line: 29, baseType: !203)
!202 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !202, line: 20, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !203, file: !202, line: 21, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !207, line: 25, baseType: !208)
!207 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 25, elements: !209)
!209 = !{}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !197, file: !198, line: 45, baseType: !176, size: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !101, file: !102, line: 149, baseType: !7, size: 32, offset: 2432)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !101, file: !102, line: 153, baseType: !113, size: 32, offset: 2464)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !101, file: !102, line: 154, baseType: !113, size: 32, offset: 2496)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !101, file: !102, line: 155, baseType: !113, size: 32, offset: 2528)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "io_offset", scope: !101, file: !102, line: 156, baseType: !113, size: 32, offset: 2560)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pci_irq", scope: !101, file: !102, line: 157, baseType: !113, size: 32, offset: 2592)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cb_dev", scope: !101, file: !102, line: 158, baseType: !218, size: 64, offset: 2624)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !220, line: 309, size: 19264, elements: !221)
!220 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!221 = !{!222, !223, !3854, !3855, !3856, !3857, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3885, !3950, !3951, !3952, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4026, !4027, !4029, !4030, !4031, !4032, !4034, !4035, !4036, !4039, !4046, !4047, !4048, !4049, !4050, !4051, !4052}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !219, file: !220, line: 310, baseType: !176, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !219, file: !220, line: 311, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !220, line: 605, size: 8064, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !235, !236, !237, !265, !268, !269, !273, !274, !275, !276, !277, !281, !282, !284, !3850, !3851, !3852, !3853}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !225, file: !220, line: 606, baseType: !176, size: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !220, line: 607, baseType: !224, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !225, file: !220, line: 608, baseType: !176, size: 128, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !225, file: !220, line: 609, baseType: !176, size: 128, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !225, file: !220, line: 610, baseType: !218, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !225, file: !220, line: 611, baseType: !176, size: 128, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !225, file: !220, line: 613, baseType: !234, size: 256, offset: 640)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !173)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !225, file: !220, line: 614, baseType: !176, size: 128, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !225, file: !220, line: 615, baseType: !144, size: 512, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !225, file: !220, line: 617, baseType: !238, size: 64, offset: 1536)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !220, line: 731, size: 320, elements: !240)
!240 = !{!241, !246, !250, !254, !261}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !239, file: !220, line: 732, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !224}
!245 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !239, file: !220, line: 733, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !224}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !239, file: !220, line: 734, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!99, !224, !7, !245}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !239, file: !220, line: 735, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!245, !224, !7, !245, !245, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !137, line: 21, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !7)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !239, file: !220, line: 736, baseType: !262, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!245, !224, !7, !245, !245, !259}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !225, file: !220, line: 618, baseType: !266, size: 64, offset: 1600)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !220, line: 537, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !225, file: !220, line: 619, baseType: !99, size: 64, offset: 1664)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !225, file: !220, line: 620, baseType: !270, size: 64, offset: 1728)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !272, line: 123, flags: DIFlagFwdDecl)
!272 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !225, file: !220, line: 622, baseType: !118, size: 8, offset: 1792)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !225, file: !220, line: 623, baseType: !118, size: 8, offset: 1800)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !225, file: !220, line: 624, baseType: !118, size: 8, offset: 1808)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !225, file: !220, line: 625, baseType: !118, size: 8, offset: 1816)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !220, line: 630, baseType: !278, size: 384, offset: 1824)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 384, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 48)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !225, file: !220, line: 632, baseType: !125, size: 16, offset: 2208)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !225, file: !220, line: 633, baseType: !283, size: 16, offset: 2224)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !220, line: 237, baseType: !125)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !225, file: !220, line: 634, baseType: !285, size: 64, offset: 2240)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !287)
!287 = !{!288, !3403, !3404, !3407, !3408, !3459, !3550, !3551, !3552, !3553, !3554, !3563, !3668, !3681, !3685, !3686, !3690, !3692, !3693, !3694, !3698, !3704, !3705, !3708, !3712, !3802, !3803, !3804, !3805, !3806, !3838, !3839, !3840, !3843, !3846, !3847, !3848, !3849}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !286, file: !73, line: 462, baseType: !289, size: 512)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !290, line: 64, size: 512, elements: !291)
!290 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !294, !296, !348, !3254, !3393, !3398, !3399, !3400, !3401, !3402}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !290, line: 65, baseType: !151, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !289, file: !290, line: 66, baseType: !176, size: 128, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !289, file: !290, line: 67, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !289, file: !290, line: 68, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !290, line: 192, size: 704, elements: !299)
!299 = !{!300, !301, !309, !310}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !298, file: !290, line: 193, baseType: !176, size: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !298, file: !290, line: 194, baseType: !302, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !202, line: 83, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !202, line: 71, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !202, line: 72, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !202, line: 72, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !306, file: !202, line: 73, baseType: !203)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !298, file: !290, line: 195, baseType: !289, size: 512, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !298, file: !290, line: 196, baseType: !311, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !290, line: 156, size: 192, elements: !314)
!314 = !{!315, !320, !325}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !313, file: !290, line: 157, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!245, !297, !295}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !290, line: 158, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!151, !297, !295}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !313, file: !290, line: 159, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!245, !297, !295, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !290, line: 148, size: 20736, elements: !332)
!332 = !{!333, !338, !342, !343, !347}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !331, file: !290, line: 149, baseType: !334, size: 192)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 192, elements: !336)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!336 = !{!337}
!337 = !DISubrange(count: 3)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !331, file: !290, line: 150, baseType: !339, size: 4096, offset: 192)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 4096, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !331, file: !290, line: 151, baseType: !245, size: 32, offset: 4288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !331, file: !290, line: 152, baseType: !344, size: 16384, offset: 4320)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 16384, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 2048)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !331, file: !290, line: 153, baseType: !245, size: 32, offset: 20704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !289, file: !290, line: 69, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !290, line: 138, size: 448, elements: !351)
!351 = !{!352, !356, !380, !382, !3216, !3244, !3248}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !350, file: !290, line: 139, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !295}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !350, file: !290, line: 140, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !360, line: 230, size: 128, elements: !361)
!360 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362, !376}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !359, file: !360, line: 231, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !295, !370, !335}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !114, line: 60, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !184, line: 73, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !184, line: 15, baseType: !369)
!369 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !360, line: 30, size: 128, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !360, line: 31, baseType: !151, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !371, file: !360, line: 32, baseType: !375, size: 16, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !114, line: 19, baseType: !125)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !359, file: !360, line: 232, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!366, !295, !370, !151, !182}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !350, file: !290, line: 141, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !350, file: !290, line: 142, baseType: !383, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !360, line: 84, size: 320, elements: !387)
!387 = !{!388, !389, !393, !3213, !3214}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !360, line: 85, baseType: !151, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !386, file: !360, line: 86, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!375, !295, !370, !245}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !386, file: !360, line: 88, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!375, !295, !397, !245}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !360, line: 168, size: 448, elements: !399)
!399 = !{!400, !401, !402, !403, !3208, !3209}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !398, file: !360, line: 169, baseType: !371, size: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !398, file: !360, line: 170, baseType: !182, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !398, file: !360, line: 171, baseType: !99, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !398, file: !360, line: 172, baseType: !404, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!366, !407, !295, !397, !335, !578, !182}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !409)
!409 = !{!410, !428, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3191, !3192, !3201, !3202, !3203, !3204, !3205, !3206, !3207}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !408, file: !44, line: 920, baseType: !411, size: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !44, line: 917, size: 128, elements: !412)
!412 = !{!413, !419}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !411, file: !44, line: 918, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !415, line: 58, size: 64, elements: !416)
!415 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !415, line: 59, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !411, file: !44, line: 919, baseType: !420, size: 128, align: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !114, line: 216, size: 128, align: 64, elements: !421)
!421 = !{!422, !424}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !114, line: 217, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !420, file: !114, line: 218, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !423}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !408, file: !44, line: 921, baseType: !429, size: 128, offset: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !430, line: 8, size: 128, elements: !431)
!430 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!431 = !{!432, !436}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !429, file: !430, line: 9, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !435, line: 18, flags: DIFlagFwdDecl)
!435 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !429, file: !430, line: 10, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !435, line: 89, size: 1536, elements: !439)
!439 = !{!440, !441, !451, !459, !460, !475, !3141, !3143, !3155, !3156, !3157, !3158, !3159, !3165, !3166, !3167}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !438, file: !435, line: 91, baseType: !7, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !438, file: !435, line: 92, baseType: !442, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !443, line: 277, baseType: !444)
!443 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !443, line: 277, size: 32, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !444, file: !443, line: 277, baseType: !447, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !443, line: 70, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !443, line: 65, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !448, file: !443, line: 66, baseType: !7, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !438, file: !435, line: 93, baseType: !452, size: 128, offset: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !453, line: 38, size: 128, elements: !454)
!453 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!454 = !{!455, !457}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !453, line: 39, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !452, file: !453, line: 39, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !438, file: !435, line: 94, baseType: !437, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !438, file: !435, line: 95, baseType: !461, size: 128, offset: 256)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !435, line: 47, size: 128, elements: !462)
!462 = !{!463, !472}
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !435, line: 48, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !435, line: 48, size: 64, elements: !465)
!465 = !{!466, !471}
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !435, line: 49, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !464, file: !435, line: 49, size: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !467, file: !435, line: 50, baseType: !259, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !467, file: !435, line: 50, baseType: !259, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !464, file: !435, line: 52, baseType: !136, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !461, file: !435, line: 54, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !438, file: !435, line: 96, baseType: !476, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !478)
!478 = !{!479, !480, !481, !489, !496, !497, !645, !2852, !2853, !2854, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !3117, !3125, !3126, !3127, !3137, !3138, !3139, !3140}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !477, file: !44, line: 611, baseType: !375, size: 16)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !477, file: !44, line: 612, baseType: !125, size: 16, offset: 16)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !477, file: !44, line: 613, baseType: !482, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !483, line: 23, baseType: !484)
!483 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !483, line: 21, size: 32, elements: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !484, file: !483, line: 22, baseType: !487, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !114, line: 32, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !184, line: 49, baseType: !7)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !477, file: !44, line: 614, baseType: !490, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !483, line: 28, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !483, line: 26, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !491, file: !483, line: 27, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !114, line: 33, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !184, line: 50, baseType: !7)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !477, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !477, file: !44, line: 622, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !501)
!501 = !{!502, !506, !519, !523, !529, !533, !539, !543, !547, !551, !555, !556, !562, !566, !592, !621, !625, !631, !636, !640, !641}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !500, file: !44, line: 1865, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!437, !476, !437, !7}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !500, file: !44, line: 1866, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!151, !437, !476, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !512, line: 10, size: 128, elements: !513)
!512 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514, !518}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !511, file: !512, line: 11, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !99}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !511, file: !512, line: 12, baseType: !99, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !500, file: !44, line: 1867, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!245, !476, !245}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !500, file: !44, line: 1868, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!527, !476, !245}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !500, file: !44, line: 1870, baseType: !530, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!245, !437, !335, !245}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !500, file: !44, line: 1872, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!245, !476, !437, !375, !537}
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !114, line: 30, baseType: !538)
!538 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !500, file: !44, line: 1873, baseType: !540, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!245, !437, !476, !437}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !500, file: !44, line: 1874, baseType: !544, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!245, !476, !437}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !500, file: !44, line: 1875, baseType: !548, size: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!245, !476, !437, !151}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !500, file: !44, line: 1876, baseType: !552, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!245, !476, !437, !375}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !500, file: !44, line: 1877, baseType: !544, size: 64, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !500, file: !44, line: 1878, baseType: !557, size: 64, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!245, !476, !437, !375, !560}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !114, line: 16, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !114, line: 13, baseType: !259)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !500, file: !44, line: 1879, baseType: !563, size: 64, offset: 768)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!245, !476, !437, !476, !437, !7}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !500, file: !44, line: 1881, baseType: !567, size: 64, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!245, !437, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !581, !589, !590, !591}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !571, file: !44, line: 220, baseType: !7, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !571, file: !44, line: 221, baseType: !375, size: 16, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !571, file: !44, line: 222, baseType: !482, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !571, file: !44, line: 223, baseType: !490, size: 32, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !571, file: !44, line: 224, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !114, line: 46, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !184, line: 88, baseType: !580)
!580 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !571, file: !44, line: 225, baseType: !582, size: 128, offset: 192)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !583, line: 13, size: 128, elements: !584)
!583 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585, !588}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !582, file: !583, line: 14, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !583, line: 8, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !580)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !582, file: !583, line: 15, baseType: !369, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !571, file: !44, line: 226, baseType: !582, size: 128, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !571, file: !44, line: 227, baseType: !582, size: 128, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !571, file: !44, line: 234, baseType: !407, size: 64, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !500, file: !44, line: 1882, baseType: !593, size: 64, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!245, !596, !598, !259, !7}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !600, line: 22, size: 1152, elements: !601)
!600 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!601 = !{!602, !603, !604, !605, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !599, file: !600, line: 23, baseType: !259, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !599, file: !600, line: 24, baseType: !375, size: 16, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !599, file: !600, line: 25, baseType: !7, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !599, file: !600, line: 26, baseType: !606, size: 32, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 104, baseType: !259)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !599, file: !600, line: 27, baseType: !136, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !599, file: !600, line: 28, baseType: !136, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !599, file: !600, line: 37, baseType: !136, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !599, file: !600, line: 38, baseType: !560, size: 32, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !599, file: !600, line: 39, baseType: !560, size: 32, offset: 352)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !599, file: !600, line: 40, baseType: !482, size: 32, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !599, file: !600, line: 41, baseType: !490, size: 32, offset: 416)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !599, file: !600, line: 42, baseType: !578, size: 64, offset: 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !599, file: !600, line: 43, baseType: !582, size: 128, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !599, file: !600, line: 44, baseType: !582, size: 128, offset: 640)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !599, file: !600, line: 45, baseType: !582, size: 128, offset: 768)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !599, file: !600, line: 46, baseType: !582, size: 128, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !599, file: !600, line: 47, baseType: !136, size: 64, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !599, file: !600, line: 48, baseType: !136, size: 64, offset: 1088)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !500, file: !44, line: 1883, baseType: !622, size: 64, offset: 960)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!366, !437, !335, !182}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !500, file: !44, line: 1884, baseType: !626, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!245, !476, !629, !136, !136}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !500, file: !44, line: 1886, baseType: !632, size: 64, offset: 1088)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!245, !476, !635, !245}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !500, file: !44, line: 1887, baseType: !637, size: 64, offset: 1152)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!245, !476, !437, !407, !7, !375}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !500, file: !44, line: 1890, baseType: !552, size: 64, offset: 1216)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !500, file: !44, line: 1891, baseType: !642, size: 64, offset: 1280)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!245, !476, !527, !245}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !477, file: !44, line: 623, baseType: !646, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !701, !2459, !2541, !2624, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2640, !2644, !2645, !2648, !2649, !2652, !2653, !2654, !2695, !2722, !2723, !2724, !2725, !2726, !2727, !2730, !2732, !2739, !2740, !2742, !2743, !2744, !2803, !2804, !2819, !2820, !2821, !2822, !2823, !2826, !2827, !2828, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !647, file: !44, line: 1417, baseType: !176, size: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !647, file: !44, line: 1418, baseType: !560, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !647, file: !44, line: 1419, baseType: !118, size: 8, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !647, file: !44, line: 1420, baseType: !155, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !647, file: !44, line: 1421, baseType: !578, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !647, file: !44, line: 1422, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !657)
!657 = !{!658, !659, !660, !667, !671, !675, !679, !680, !681, !691, !694, !695, !696, !698, !699, !700}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !656, file: !44, line: 2229, baseType: !151, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !656, file: !44, line: 2230, baseType: !245, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !656, file: !44, line: 2238, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!245, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !666, line: 28, flags: DIFlagFwdDecl)
!666 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!667 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !656, file: !44, line: 2239, baseType: !668, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !656, file: !44, line: 2240, baseType: !672, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!437, !655, !245, !151, !99}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !656, file: !44, line: 2242, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !646}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !656, file: !44, line: 2243, baseType: !105, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !44, line: 2244, baseType: !655, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !656, file: !44, line: 2245, baseType: !682, size: 64, offset: 512)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !114, line: 182, size: 64, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !682, file: !114, line: 183, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !114, line: 186, size: 128, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !686, file: !114, line: 187, baseType: !685, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !686, file: !114, line: 187, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !656, file: !44, line: 2247, baseType: !692, offset: 576)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !693, line: 187, elements: !209)
!693 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !656, file: !44, line: 2248, baseType: !692, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !656, file: !44, line: 2249, baseType: !692, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !656, file: !44, line: 2250, baseType: !697, offset: 576)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, elements: !336)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !656, file: !44, line: 2252, baseType: !692, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !656, file: !44, line: 2253, baseType: !692, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !656, file: !44, line: 2254, baseType: !692, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !647, file: !44, line: 1423, baseType: !702, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !705)
!705 = !{!706, !710, !714, !715, !719, !725, !729, !730, !731, !735, !739, !740, !741, !742, !748, !753, !754, !761, !762, !763, !764, !2443, !2458}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !704, file: !44, line: 1936, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!476, !646}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !704, file: !44, line: 1937, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !476}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !704, file: !44, line: 1938, baseType: !711, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !704, file: !44, line: 1940, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !476, !245}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !704, file: !44, line: 1941, baseType: !720, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!245, !476, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !704, file: !44, line: 1942, baseType: !726, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!245, !476}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !704, file: !44, line: 1943, baseType: !711, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !704, file: !44, line: 1944, baseType: !676, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !704, file: !44, line: 1945, baseType: !732, size: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!245, !646, !245}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !704, file: !44, line: 1946, baseType: !736, size: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!245, !646}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !704, file: !44, line: 1947, baseType: !736, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !704, file: !44, line: 1948, baseType: !736, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !704, file: !44, line: 1949, baseType: !736, size: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !704, file: !44, line: 1950, baseType: !743, size: 64, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!245, !437, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !704, file: !44, line: 1951, baseType: !749, size: 64, offset: 896)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!245, !646, !752, !335}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !704, file: !44, line: 1952, baseType: !676, size: 64, offset: 960)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !704, file: !44, line: 1954, baseType: !755, size: 64, offset: 1024)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!245, !758, !437}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !760, line: 539, flags: DIFlagFwdDecl)
!760 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !704, file: !44, line: 1955, baseType: !755, size: 64, offset: 1088)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !704, file: !44, line: 1956, baseType: !755, size: 64, offset: 1152)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !704, file: !44, line: 1957, baseType: !755, size: 64, offset: 1216)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !704, file: !44, line: 1963, baseType: !765, size: 64, offset: 1280)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!245, !646, !768, !791}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !770, line: 68, size: 512, align: 128, elements: !771)
!770 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !773, !2435, !2442}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !770, line: 69, baseType: !155, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !770, line: 77, baseType: !774, size: 320, offset: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !770, line: 77, size: 320, elements: !775)
!775 = !{!776, !963, !968, !996, !1004, !1010, !2366, !2434}
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !770, line: 78, baseType: !777, size: 320)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !770, line: 78, size: 320, elements: !778)
!778 = !{!779, !780, !961, !962}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !777, file: !770, line: 84, baseType: !176, size: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !777, file: !770, line: 86, baseType: !781, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !783)
!783 = !{!784, !785, !793, !794, !799, !814, !829, !830, !831, !832, !954, !955, !958, !959, !960}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !782, file: !44, line: 452, baseType: !476, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !782, file: !44, line: 453, baseType: !786, size: 128, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !787, line: 292, size: 128, elements: !788)
!787 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!788 = !{!789, !790, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !786, file: !787, line: 293, baseType: !302)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !786, file: !787, line: 295, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !114, line: 148, baseType: !7)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !786, file: !787, line: 296, baseType: !99, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !782, file: !44, line: 454, baseType: !791, size: 32, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !782, file: !44, line: 455, baseType: !795, size: 32, offset: 224)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !114, line: 168, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 166, size: 32, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !796, file: !114, line: 167, baseType: !245, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !782, file: !44, line: 460, baseType: !800, size: 128, offset: 256)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !801, line: 125, size: 128, elements: !802)
!801 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !813}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !800, file: !801, line: 126, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !801, line: 31, size: 64, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !804, file: !801, line: 32, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !801, line: 24, size: 192, align: 64, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !808, file: !801, line: 25, baseType: !155, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !808, file: !801, line: 26, baseType: !807, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !808, file: !801, line: 27, baseType: !807, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !800, file: !801, line: 127, baseType: !807, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !782, file: !44, line: 461, baseType: !815, size: 256, offset: 384)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !816, line: 35, size: 256, elements: !817)
!816 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!817 = !{!818, !826, !827, !828}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !815, file: !816, line: 36, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !820, line: 13, baseType: !821)
!820 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !114, line: 175, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 173, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !822, file: !114, line: 174, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !137, line: 22, baseType: !587)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !815, file: !816, line: 42, baseType: !819, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !815, file: !816, line: 46, baseType: !201, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !815, file: !816, line: 47, baseType: !176, size: 128, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !782, file: !44, line: 462, baseType: !155, size: 64, offset: 640)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !782, file: !44, line: 463, baseType: !155, size: 64, offset: 704)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !782, file: !44, line: 464, baseType: !155, size: 64, offset: 768)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !782, file: !44, line: 465, baseType: !833, size: 64, offset: 832)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !836)
!836 = !{!837, !841, !845, !849, !853, !857, !863, !869, !873, !878, !882, !886, !890, !918, !922, !928, !929, !930, !934, !939, !943, !950}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !835, file: !44, line: 368, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!245, !768, !723}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !835, file: !44, line: 369, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!245, !407, !768}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !835, file: !44, line: 372, baseType: !846, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!245, !781, !723}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !835, file: !44, line: 375, baseType: !850, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!245, !768}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !835, file: !44, line: 381, baseType: !854, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!245, !407, !781, !179, !7}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !835, file: !44, line: 383, baseType: !858, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !835, file: !44, line: 385, baseType: !864, size: 64, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!245, !407, !781, !578, !7, !7, !867, !868}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !835, file: !44, line: 388, baseType: !870, size: 64, offset: 448)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!245, !407, !781, !578, !7, !7, !768, !99}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !835, file: !44, line: 393, baseType: !874, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!877, !781, !877}
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !114, line: 125, baseType: !136)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !835, file: !44, line: 394, baseType: !879, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !768, !7, !7}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !835, file: !44, line: 395, baseType: !883, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!245, !768, !791}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !835, file: !44, line: 396, baseType: !887, size: 64, offset: 704)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !768}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !835, file: !44, line: 397, baseType: !891, size: 64, offset: 768)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!366, !894, !916}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !896)
!896 = !{!897, !898, !899, !903, !904, !905, !908, !909}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !895, file: !44, line: 321, baseType: !407, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !895, file: !44, line: 326, baseType: !578, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !895, file: !44, line: 327, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !894, !369, !369}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !895, file: !44, line: 328, baseType: !99, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !895, file: !44, line: 329, baseType: !245, size: 32, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !895, file: !44, line: 330, baseType: !906, size: 16, offset: 288)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !137, line: 19, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !125)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !895, file: !44, line: 331, baseType: !906, size: 16, offset: 304)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !44, line: 332, baseType: !910, size: 64, offset: 320)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !44, line: 332, size: 64, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !910, file: !44, line: 333, baseType: !7, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !910, file: !44, line: 334, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !835, file: !44, line: 402, baseType: !919, size: 64, offset: 832)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!245, !781, !768, !768, !5}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !835, file: !44, line: 404, baseType: !923, size: 64, offset: 896)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!537, !768, !926}
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !927, line: 305, baseType: !7)
!927 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!928 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !835, file: !44, line: 405, baseType: !887, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !835, file: !44, line: 406, baseType: !850, size: 64, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !835, file: !44, line: 407, baseType: !931, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!245, !768, !155, !155}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !835, file: !44, line: 409, baseType: !935, size: 64, offset: 1152)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !768, !938, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !835, file: !44, line: 410, baseType: !940, size: 64, offset: 1216)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!245, !781, !768}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !835, file: !44, line: 413, baseType: !944, size: 64, offset: 1280)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!245, !947, !407, !949}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !835, file: !44, line: 415, baseType: !951, size: 64, offset: 1344)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !407}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !44, line: 466, baseType: !155, size: 64, offset: 896)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !782, file: !44, line: 467, baseType: !956, size: 32, offset: 960)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !957, line: 8, baseType: !259)
!957 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!958 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !782, file: !44, line: 468, baseType: !302, offset: 992)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !782, file: !44, line: 469, baseType: !176, size: 128, offset: 1024)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !782, file: !44, line: 470, baseType: !99, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !777, file: !770, line: 87, baseType: !155, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !777, file: !770, line: 94, baseType: !155, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !770, line: 96, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !770, line: 96, size: 64, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !964, file: !770, line: 101, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !114, line: 143, baseType: !136)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !770, line: 103, baseType: !969, size: 320)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !770, line: 103, size: 320, elements: !970)
!970 = !{!971, !981, !984, !985}
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !770, line: 104, baseType: !972, size: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !770, line: 104, size: 128, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !972, file: !770, line: 105, baseType: !176, size: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !770, line: 106, baseType: !976, size: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !770, line: 106, size: 128, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !976, file: !770, line: 107, baseType: !768, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !976, file: !770, line: 109, baseType: !245, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !976, file: !770, line: 110, baseType: !245, size: 32, offset: 96)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !969, file: !770, line: 117, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !770, line: 117, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !969, file: !770, line: 119, baseType: !99, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !770, line: 120, baseType: !986, size: 64, offset: 256)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !770, line: 120, size: 64, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !986, file: !770, line: 121, baseType: !99, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !986, file: !770, line: 122, baseType: !155, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !770, line: 123, baseType: !991, size: 32)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !986, file: !770, line: 123, size: 32, elements: !992)
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !991, file: !770, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !991, file: !770, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !991, file: !770, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !770, line: 130, baseType: !997, size: 192)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !770, line: 130, size: 192, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !997, file: !770, line: 131, baseType: !155, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !997, file: !770, line: 134, baseType: !118, size: 8, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !997, file: !770, line: 135, baseType: !118, size: 8, offset: 72)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !997, file: !770, line: 136, baseType: !795, size: 32, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !997, file: !770, line: 137, baseType: !7, size: 32, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !770, line: 139, baseType: !1005, size: 256)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !770, line: 139, size: 256, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1005, file: !770, line: 140, baseType: !155, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1005, file: !770, line: 141, baseType: !795, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1005, file: !770, line: 143, baseType: !176, size: 128, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !770, line: 145, baseType: !1011, size: 256)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !770, line: 145, size: 256, elements: !1012)
!1012 = !{!1013, !1014, !1016, !1017, !2365}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1011, file: !770, line: 146, baseType: !155, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1011, file: !770, line: 147, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !760, line: 509, baseType: !768)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1011, file: !770, line: 148, baseType: !155, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !770, line: 149, baseType: !1018, size: 64, offset: 192)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !770, line: 149, size: 64, elements: !1019)
!1019 = !{!1020, !2364}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1018, file: !770, line: 150, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !770, line: 388, size: 7296, elements: !1023)
!1023 = !{!1024, !2360}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !770, line: 389, baseType: !1025, size: 7296)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !770, line: 389, size: 7296, elements: !1026)
!1026 = !{!1027, !1145, !1146, !1147, !1151, !1152, !1153, !1154, !1155, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1196, !1202, !1205, !1251, !1252, !2344, !2345, !2348, !2349, !2350, !2353, !2354, !2355, !2358, !2359}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1025, file: !770, line: 390, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !770, line: 305, size: 1472, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1045, !1046, !1051, !1052, !1055, !1139, !1140, !1141, !1142, !1143}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1029, file: !770, line: 308, baseType: !155, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1029, file: !770, line: 309, baseType: !155, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1029, file: !770, line: 313, baseType: !1028, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1029, file: !770, line: 313, baseType: !1028, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1029, file: !770, line: 315, baseType: !808, size: 192, align: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1029, file: !770, line: 323, baseType: !155, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1029, file: !770, line: 327, baseType: !1021, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1029, file: !770, line: 333, baseType: !1039, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !760, line: 284, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !760, line: 284, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1040, file: !760, line: 284, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1044, line: 19, baseType: !155)
!1044 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1029, file: !770, line: 334, baseType: !155, size: 64, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1029, file: !770, line: 343, baseType: !1047, size: 256, offset: 704)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !770, line: 340, size: 256, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1047, file: !770, line: 341, baseType: !808, size: 192, align: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1047, file: !770, line: 342, baseType: !155, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1029, file: !770, line: 351, baseType: !176, size: 128, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1029, file: !770, line: 353, baseType: !1053, size: 64, offset: 1088)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !770, line: 353, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1029, file: !770, line: 356, baseType: !1056, size: 64, offset: 1152)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1059)
!1059 = !{!1060, !1064, !1065, !1069, !1073, !1113, !1117, !1121, !1125, !1126, !1127, !1131, !1135}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1058, file: !14, line: 558, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1028}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1058, file: !14, line: 559, baseType: !1061, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1058, file: !14, line: 560, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!245, !1028, !155}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1058, file: !14, line: 561, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!245, !1028}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1058, file: !14, line: 562, baseType: !1074, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !770, line: 682, baseType: !7)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1093, !1100, !1106, !1107, !1108, !1110, !1112}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1079, file: !14, line: 509, baseType: !1028, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1079, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1079, file: !14, line: 511, baseType: !791, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1079, file: !14, line: 512, baseType: !155, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1079, file: !14, line: 513, baseType: !155, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1079, file: !14, line: 514, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !760, line: 385, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !760, line: 385, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1089, file: !760, line: 385, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1044, line: 15, baseType: !155)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1079, file: !14, line: 516, baseType: !1094, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !760, line: 359, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !760, line: 359, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1096, file: !760, line: 359, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1044, line: 16, baseType: !155)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1079, file: !14, line: 519, baseType: !1101, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1044, line: 21, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1044, line: 21, size: 64, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1102, file: !1044, line: 21, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1044, line: 14, baseType: !155)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1079, file: !14, line: 521, baseType: !768, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1079, file: !14, line: 522, baseType: !768, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1079, file: !14, line: 528, baseType: !1109, size: 64, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1079, file: !14, line: 532, baseType: !1111, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1079, file: !14, line: 536, baseType: !1015, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1058, file: !14, line: 563, baseType: !1114, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1077, !1078, !13}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1058, file: !14, line: 565, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !1078, !155, !155}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1058, file: !14, line: 567, baseType: !1122, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!155, !1028}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1058, file: !14, line: 571, baseType: !1074, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1058, file: !14, line: 574, baseType: !1074, size: 64, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1058, file: !14, line: 579, baseType: !1128, size: 64, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!245, !1028, !155, !99, !245, !245}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1058, file: !14, line: 585, baseType: !1132, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!151, !1028}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1058, file: !14, line: 615, baseType: !1136, size: 64, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!768, !1028, !155}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1029, file: !770, line: 359, baseType: !155, size: 64, offset: 1216)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1029, file: !770, line: 361, baseType: !407, size: 64, offset: 1280)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1029, file: !770, line: 362, baseType: !99, size: 64, offset: 1344)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1029, file: !770, line: 365, baseType: !819, size: 64, offset: 1408)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1029, file: !770, line: 373, baseType: !1144, offset: 1472)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !770, line: 296, elements: !209)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1025, file: !770, line: 391, baseType: !804, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1025, file: !770, line: 392, baseType: !136, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1025, file: !770, line: 394, baseType: !1148, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!155, !407, !155, !155, !155, !155}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1025, file: !770, line: 398, baseType: !155, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1025, file: !770, line: 399, baseType: !155, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1025, file: !770, line: 405, baseType: !155, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1025, file: !770, line: 406, baseType: !155, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1025, file: !770, line: 407, baseType: !1156, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !760, line: 286, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !760, line: 286, size: 64, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1158, file: !760, line: 286, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1044, line: 18, baseType: !155)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1025, file: !770, line: 416, baseType: !795, size: 32, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1025, file: !770, line: 428, baseType: !795, size: 32, offset: 608)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1025, file: !770, line: 437, baseType: !795, size: 32, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1025, file: !770, line: 447, baseType: !795, size: 32, offset: 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1025, file: !770, line: 450, baseType: !819, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1025, file: !770, line: 452, baseType: !245, size: 32, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1025, file: !770, line: 454, baseType: !302, offset: 800)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1025, file: !770, line: 457, baseType: !815, size: 256, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1025, file: !770, line: 459, baseType: !176, size: 128, offset: 1088)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1025, file: !770, line: 466, baseType: !155, size: 64, offset: 1216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1025, file: !770, line: 467, baseType: !155, size: 64, offset: 1280)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1025, file: !770, line: 469, baseType: !155, size: 64, offset: 1344)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1025, file: !770, line: 470, baseType: !155, size: 64, offset: 1408)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1025, file: !770, line: 471, baseType: !821, size: 64, offset: 1472)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1025, file: !770, line: 472, baseType: !155, size: 64, offset: 1536)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1025, file: !770, line: 473, baseType: !155, size: 64, offset: 1600)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1025, file: !770, line: 474, baseType: !155, size: 64, offset: 1664)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1025, file: !770, line: 475, baseType: !155, size: 64, offset: 1728)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1025, file: !770, line: 477, baseType: !302, offset: 1792)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1025, file: !770, line: 478, baseType: !155, size: 64, offset: 1792)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1025, file: !770, line: 478, baseType: !155, size: 64, offset: 1856)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1025, file: !770, line: 478, baseType: !155, size: 64, offset: 1920)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1025, file: !770, line: 478, baseType: !155, size: 64, offset: 1984)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1025, file: !770, line: 479, baseType: !155, size: 64, offset: 2048)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1025, file: !770, line: 479, baseType: !155, size: 64, offset: 2112)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1025, file: !770, line: 479, baseType: !155, size: 64, offset: 2176)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1025, file: !770, line: 480, baseType: !155, size: 64, offset: 2240)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1025, file: !770, line: 480, baseType: !155, size: 64, offset: 2304)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1025, file: !770, line: 480, baseType: !155, size: 64, offset: 2368)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1025, file: !770, line: 480, baseType: !155, size: 64, offset: 2432)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1025, file: !770, line: 482, baseType: !1193, size: 2816, offset: 2496)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 2816, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 44)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1025, file: !770, line: 488, baseType: !1197, size: 256, offset: 5312)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1198, line: 60, size: 256, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1197, file: !1198, line: 61, baseType: !1201, size: 256)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 256, elements: !173)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1025, file: !770, line: 490, baseType: !1203, size: 64, offset: 5568)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !770, line: 490, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1025, file: !770, line: 493, baseType: !1206, size: 896, offset: 5632)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1207, line: 53, baseType: !1208)
!1207 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1207, line: 13, size: 896, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1216, !1217, !1224, !1225, !1245, !1246, !1247}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1208, file: !1207, line: 18, baseType: !136, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1208, file: !1207, line: 28, baseType: !821, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1208, file: !1207, line: 31, baseType: !815, size: 256, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1208, file: !1207, line: 32, baseType: !1214, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1207, line: 32, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1208, file: !1207, line: 37, baseType: !125, size: 16, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1208, file: !1207, line: 40, baseType: !1218, size: 192, offset: 512)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1219, line: 53, size: 192, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1222, !1223}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1218, file: !1219, line: 54, baseType: !819, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1218, file: !1219, line: 55, baseType: !302, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1218, file: !1219, line: 59, baseType: !176, size: 128, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1208, file: !1207, line: 41, baseType: !99, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1208, file: !1207, line: 42, baseType: !1226, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1229, line: 13, size: 896, elements: !1230)
!1229 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1228, file: !1229, line: 14, baseType: !99, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1228, file: !1229, line: 15, baseType: !155, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1228, file: !1229, line: 17, baseType: !155, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1228, file: !1229, line: 17, baseType: !155, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1228, file: !1229, line: 19, baseType: !369, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1228, file: !1229, line: 21, baseType: !369, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1228, file: !1229, line: 22, baseType: !369, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1228, file: !1229, line: 23, baseType: !369, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1228, file: !1229, line: 24, baseType: !369, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1228, file: !1229, line: 25, baseType: !369, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1228, file: !1229, line: 26, baseType: !369, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1228, file: !1229, line: 27, baseType: !369, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1228, file: !1229, line: 28, baseType: !369, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1228, file: !1229, line: 29, baseType: !369, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1208, file: !1207, line: 44, baseType: !795, size: 32, offset: 832)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1208, file: !1207, line: 50, baseType: !906, size: 16, offset: 864)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1208, file: !1207, line: 51, baseType: !1248, size: 16, offset: 880)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !137, line: 18, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !1250)
!1250 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !770, line: 495, baseType: !155, size: 64, offset: 6528)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1025, file: !770, line: 497, baseType: !1253, size: 64, offset: 6592)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !770, line: 381, size: 384, elements: !1255)
!1255 = !{!1256, !1257, !2343}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1254, file: !770, line: 382, baseType: !795, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1254, file: !770, line: 383, baseType: !1258, size: 128, offset: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !770, line: 376, size: 128, elements: !1259)
!1259 = !{!1260, !2341}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1258, file: !770, line: 377, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1263, line: 640, size: 48640, elements: !1264)
!1263 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265, !1271, !1273, !1274, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1291, !1309, !1320, !1403, !1404, !1405, !1416, !1417, !1419, !1420, !1421, !1422, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1500, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1538, !1540, !1541, !1542, !1544, !1545, !1546, !1547, !1548, !1549, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1573, !1578, !1760, !1761, !1762, !1763, !1767, !1770, !1773, !1776, !1779, !1783, !1884, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1930, !1931, !1932, !1933, !1934, !1939, !1940, !1941, !1944, !1945, !1948, !1951, !1954, !1957, !2000, !2003, !2004, !2083, !2084, !2087, !2088, !2091, !2092, !2093, !2097, !2098, !2099, !2112, !2113, !2114, !2124, !2129, !2132, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1262, file: !1263, line: 646, baseType: !1266, size: 128)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1267, line: 56, size: 128, elements: !1268)
!1267 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1266, file: !1267, line: 57, baseType: !155, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1266, file: !1267, line: 58, baseType: !259, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1262, file: !1263, line: 649, baseType: !1272, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !369)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1262, file: !1263, line: 657, baseType: !99, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1262, file: !1263, line: 658, baseType: !1275, size: 32, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1276, line: 113, baseType: !1277)
!1276 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1276, line: 111, size: 32, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1277, file: !1276, line: 112, baseType: !795, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1262, file: !1263, line: 660, baseType: !7, size: 32, offset: 288)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1262, file: !1263, line: 661, baseType: !7, size: 32, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1262, file: !1263, line: 684, baseType: !245, size: 32, offset: 352)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1262, file: !1263, line: 686, baseType: !245, size: 32, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1262, file: !1263, line: 687, baseType: !245, size: 32, offset: 416)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1262, file: !1263, line: 688, baseType: !245, size: 32, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1262, file: !1263, line: 689, baseType: !7, size: 32, offset: 480)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1262, file: !1263, line: 691, baseType: !1288, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1263, line: 691, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1262, file: !1263, line: 692, baseType: !1292, size: 832, offset: 576)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1263, line: 451, size: 832, elements: !1293)
!1293 = !{!1294, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1292, file: !1263, line: 453, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1263, line: 325, size: 128, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1295, file: !1263, line: 326, baseType: !155, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1295, file: !1263, line: 327, baseType: !259, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1292, file: !1263, line: 454, baseType: !808, size: 192, align: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1292, file: !1263, line: 455, baseType: !176, size: 128, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1292, file: !1263, line: 456, baseType: !7, size: 32, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1292, file: !1263, line: 458, baseType: !136, size: 64, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1292, file: !1263, line: 459, baseType: !136, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1292, file: !1263, line: 460, baseType: !136, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1292, file: !1263, line: 461, baseType: !136, size: 64, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1292, file: !1263, line: 463, baseType: !136, size: 64, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1292, file: !1263, line: 465, baseType: !1308, offset: 832)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1263, line: 415, elements: !209)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1262, file: !1263, line: 693, baseType: !1310, size: 384, offset: 1408)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1263, line: 489, size: 384, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1310, file: !1263, line: 490, baseType: !176, size: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1310, file: !1263, line: 491, baseType: !155, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1310, file: !1263, line: 492, baseType: !155, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1310, file: !1263, line: 493, baseType: !7, size: 32, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1310, file: !1263, line: 494, baseType: !125, size: 16, offset: 288)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1310, file: !1263, line: 495, baseType: !125, size: 16, offset: 304)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1310, file: !1263, line: 497, baseType: !1319, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1262, file: !1263, line: 697, baseType: !1321, size: 1792, offset: 1792)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1263, line: 507, size: 1792, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1400, !1401}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1321, file: !1263, line: 508, baseType: !808, size: 192, align: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1321, file: !1263, line: 515, baseType: !136, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1321, file: !1263, line: 516, baseType: !136, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1321, file: !1263, line: 517, baseType: !136, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1321, file: !1263, line: 518, baseType: !136, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1321, file: !1263, line: 519, baseType: !136, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1321, file: !1263, line: 526, baseType: !825, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1321, file: !1263, line: 527, baseType: !136, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1321, file: !1263, line: 528, baseType: !7, size: 32, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1321, file: !1263, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1321, file: !1263, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1321, file: !1263, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1321, file: !1263, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1321, file: !1263, line: 563, baseType: !1337, size: 512, offset: 704)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1338)
!1338 = !{!1339, !1347, !1348, !1353, !1396, !1397, !1398, !1399}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1337, file: !20, line: 119, baseType: !1340, size: 256)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1341, line: 9, size: 256, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1340, file: !1341, line: 10, baseType: !808, size: 192, align: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1340, file: !1341, line: 11, baseType: !1345, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1346, line: 29, baseType: !825)
!1346 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1337, file: !20, line: 120, baseType: !1345, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1337, file: !20, line: 121, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!19, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1337, file: !20, line: 122, baseType: !1354, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1356)
!1356 = !{!1357, !1377, !1378, !1381, !1386, !1387, !1391, !1395}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1355, file: !20, line: 160, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !20, line: 215, baseType: !201)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1359, file: !20, line: 216, baseType: !7, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1359, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1359, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1359, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1359, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1359, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1359, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1359, file: !20, line: 233, baseType: !1345, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1359, file: !20, line: 234, baseType: !1352, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1359, file: !20, line: 235, baseType: !1345, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1359, file: !20, line: 236, baseType: !1352, size: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1359, file: !20, line: 237, baseType: !1374, size: 4096, offset: 512)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 4096, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 8)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1355, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1355, file: !20, line: 162, baseType: !1379, size: 32, offset: 96)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !114, line: 27, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !184, line: 96, baseType: !245)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1355, file: !20, line: 163, baseType: !1382, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !443, line: 276, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !443, line: 276, size: 32, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1383, file: !443, line: 276, baseType: !447, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1355, file: !20, line: 164, baseType: !1352, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1355, file: !20, line: 165, baseType: !1388, size: 128, offset: 256)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1341, line: 14, size: 128, elements: !1389)
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1388, file: !1341, line: 15, baseType: !800, size: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1355, file: !20, line: 166, baseType: !1392, size: 64, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1345}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1355, file: !20, line: 167, baseType: !1345, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1337, file: !20, line: 123, baseType: !188, size: 8, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1337, file: !20, line: 124, baseType: !188, size: 8, offset: 456)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1337, file: !20, line: 125, baseType: !188, size: 8, offset: 464)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1337, file: !20, line: 126, baseType: !188, size: 8, offset: 472)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1321, file: !1263, line: 572, baseType: !1337, size: 512, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1321, file: !1263, line: 580, baseType: !1402, size: 64, offset: 1728)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1262, file: !1263, line: 721, baseType: !7, size: 32, offset: 3584)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1262, file: !1263, line: 722, baseType: !245, size: 32, offset: 3616)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1262, file: !1263, line: 723, baseType: !1406, size: 64, offset: 3648)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1409, line: 17, baseType: !1410)
!1409 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1409, line: 17, size: 64, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1410, file: !1409, line: 17, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 1)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1262, file: !1263, line: 724, baseType: !1408, size: 64, offset: 3712)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1262, file: !1263, line: 749, baseType: !1418, offset: 3776)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1263, line: 290, elements: !209)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1262, file: !1263, line: 751, baseType: !176, size: 128, offset: 3776)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1262, file: !1263, line: 757, baseType: !1021, size: 64, offset: 3904)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1262, file: !1263, line: 758, baseType: !1021, size: 64, offset: 3968)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1262, file: !1263, line: 761, baseType: !1423, size: 320, offset: 4032)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1198, line: 34, size: 320, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1423, file: !1198, line: 35, baseType: !136, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1423, file: !1198, line: 36, baseType: !1427, size: 256, offset: 64)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 256, elements: !173)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1262, file: !1263, line: 766, baseType: !245, size: 32, offset: 4352)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1262, file: !1263, line: 767, baseType: !245, size: 32, offset: 4384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1262, file: !1263, line: 768, baseType: !245, size: 32, offset: 4416)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1262, file: !1263, line: 770, baseType: !245, size: 32, offset: 4448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1262, file: !1263, line: 772, baseType: !155, size: 64, offset: 4480)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1262, file: !1263, line: 775, baseType: !7, size: 32, offset: 4544)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1262, file: !1263, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1262, file: !1263, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1262, file: !1263, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1262, file: !1263, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1262, file: !1263, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1262, file: !1263, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1262, file: !1263, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1262, file: !1263, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1262, file: !1263, line: 831, baseType: !155, size: 64, offset: 4672)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1262, file: !1263, line: 833, baseType: !1444, size: 384, offset: 4736)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1445)
!1445 = !{!1446, !1451}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1444, file: !25, line: 26, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!369, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !25, line: 27, baseType: !1452, size: 320, offset: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !25, line: 27, size: 320, elements: !1453)
!1453 = !{!1454, !1463, !1490}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1452, file: !25, line: 36, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !25, line: 29, size: 320, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1455, file: !25, line: 30, baseType: !258, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1455, file: !25, line: 31, baseType: !259, size: 32, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !25, line: 32, baseType: !259, size: 32, offset: 96)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1455, file: !25, line: 33, baseType: !259, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1455, file: !25, line: 34, baseType: !136, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1455, file: !25, line: 35, baseType: !258, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1452, file: !25, line: 46, baseType: !1464, size: 192)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !25, line: 38, size: 192, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1489}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1464, file: !25, line: 39, baseType: !1379, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1464, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !25, line: 41, baseType: !1469, size: 64, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !25, line: 41, size: 64, elements: !1470)
!1470 = !{!1471, !1479}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1469, file: !25, line: 42, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1474, line: 7, size: 128, elements: !1475)
!1474 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !{!1476, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1473, file: !1474, line: 8, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !184, line: 93, baseType: !580)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1473, file: !1474, line: 9, baseType: !580, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1469, file: !25, line: 43, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1482, line: 7, size: 64, elements: !1483)
!1482 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1483 = !{!1484, !1488}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1481, file: !1482, line: 8, baseType: !1485, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1482, line: 5, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !137, line: 20, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !245)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1481, file: !1482, line: 9, baseType: !1486, size: 32, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1464, file: !25, line: 45, baseType: !136, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1452, file: !25, line: 54, baseType: !1491, size: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !25, line: 48, size: 256, elements: !1492)
!1492 = !{!1493, !1496, !1497, !1498, !1499}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1491, file: !25, line: 49, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1491, file: !25, line: 50, baseType: !245, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1491, file: !25, line: 51, baseType: !245, size: 32, offset: 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1491, file: !25, line: 52, baseType: !155, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1491, file: !25, line: 53, baseType: !155, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1262, file: !1263, line: 835, baseType: !1501, size: 32, offset: 5120)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !114, line: 22, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !184, line: 28, baseType: !245)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1262, file: !1263, line: 836, baseType: !1501, size: 32, offset: 5152)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1262, file: !1263, line: 840, baseType: !155, size: 64, offset: 5184)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1262, file: !1263, line: 849, baseType: !1261, size: 64, offset: 5248)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1262, file: !1263, line: 852, baseType: !1261, size: 64, offset: 5312)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1262, file: !1263, line: 857, baseType: !176, size: 128, offset: 5376)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1262, file: !1263, line: 858, baseType: !176, size: 128, offset: 5504)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1262, file: !1263, line: 859, baseType: !1261, size: 64, offset: 5632)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1262, file: !1263, line: 867, baseType: !176, size: 128, offset: 5696)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1262, file: !1263, line: 868, baseType: !176, size: 128, offset: 5824)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1262, file: !1263, line: 871, baseType: !1513, size: 64, offset: 5952)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1521, !1522, !1529, !1530}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1514, file: !53, line: 61, baseType: !1275, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1514, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !53, line: 63, baseType: !302, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1514, file: !53, line: 65, baseType: !1520, size: 256, offset: 64)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 256, elements: !173)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1514, file: !53, line: 66, baseType: !682, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1514, file: !53, line: 68, baseType: !1523, size: 128, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1524, line: 40, baseType: !1525)
!1524 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1524, line: 36, size: 128, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !1524, line: 37, baseType: !302)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1525, file: !1524, line: 38, baseType: !176, size: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1514, file: !53, line: 69, baseType: !420, size: 128, align: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1514, file: !53, line: 70, baseType: !1531, size: 128, offset: 640)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1532, size: 128, elements: !1414)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1532, file: !53, line: 55, baseType: !245, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1532, file: !53, line: 56, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1262, file: !1263, line: 872, baseType: !1539, size: 512, offset: 6016)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 512, elements: !173)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1262, file: !1263, line: 873, baseType: !176, size: 128, offset: 6528)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1262, file: !1263, line: 874, baseType: !176, size: 128, offset: 6656)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1262, file: !1263, line: 876, baseType: !1543, size: 64, offset: 6784)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1262, file: !1263, line: 879, baseType: !752, size: 64, offset: 6848)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1262, file: !1263, line: 882, baseType: !752, size: 64, offset: 6912)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1262, file: !1263, line: 884, baseType: !136, size: 64, offset: 6976)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1262, file: !1263, line: 885, baseType: !136, size: 64, offset: 7040)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1262, file: !1263, line: 890, baseType: !136, size: 64, offset: 7104)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1262, file: !1263, line: 891, baseType: !1550, size: 128, offset: 7168)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1263, line: 242, size: 128, elements: !1551)
!1551 = !{!1552, !1553, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1550, file: !1263, line: 244, baseType: !136, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1550, file: !1263, line: 245, baseType: !136, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !1263, line: 246, baseType: !201, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1262, file: !1263, line: 900, baseType: !155, size: 64, offset: 7296)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1262, file: !1263, line: 901, baseType: !155, size: 64, offset: 7360)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1262, file: !1263, line: 904, baseType: !136, size: 64, offset: 7424)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1262, file: !1263, line: 907, baseType: !136, size: 64, offset: 7488)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1262, file: !1263, line: 910, baseType: !155, size: 64, offset: 7552)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1262, file: !1263, line: 911, baseType: !155, size: 64, offset: 7616)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1262, file: !1263, line: 914, baseType: !1562, size: 640, offset: 7680)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1563, line: 123, size: 640, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1564 = !{!1565, !1571, !1572}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1562, file: !1563, line: 124, baseType: !1566, size: 576)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1567, size: 576, elements: !336)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1563, line: 108, size: 192, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1567, file: !1563, line: 109, baseType: !136, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1567, file: !1563, line: 110, baseType: !1388, size: 128, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1562, file: !1563, line: 125, baseType: !7, size: 32, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1562, file: !1563, line: 126, baseType: !7, size: 32, offset: 608)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1262, file: !1263, line: 917, baseType: !1574, size: 192, offset: 8320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1563, line: 134, size: 192, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1574, file: !1563, line: 135, baseType: !420, size: 128, align: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1574, file: !1563, line: 136, baseType: !7, size: 32, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1262, file: !1263, line: 923, baseType: !1579, size: 64, offset: 8512)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1582, line: 111, size: 1280, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1601, !1602, !1603, !1604, !1605, !1606, !1713, !1714, !1715, !1716, !1742, !1745, !1755}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1581, file: !1582, line: 112, baseType: !795, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1581, file: !1582, line: 120, baseType: !482, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1581, file: !1582, line: 121, baseType: !490, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1581, file: !1582, line: 122, baseType: !482, size: 32, offset: 96)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1581, file: !1582, line: 123, baseType: !490, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1581, file: !1582, line: 124, baseType: !482, size: 32, offset: 160)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1581, file: !1582, line: 125, baseType: !490, size: 32, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1581, file: !1582, line: 126, baseType: !482, size: 32, offset: 224)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1581, file: !1582, line: 127, baseType: !490, size: 32, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1581, file: !1582, line: 128, baseType: !7, size: 32, offset: 288)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1581, file: !1582, line: 129, baseType: !1595, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1596, line: 26, baseType: !1597)
!1596 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1596, line: 24, size: 64, elements: !1598)
!1598 = !{!1599}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1597, file: !1596, line: 25, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !169)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1581, file: !1582, line: 130, baseType: !1595, size: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1581, file: !1582, line: 131, baseType: !1595, size: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1581, file: !1582, line: 132, baseType: !1595, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1581, file: !1582, line: 133, baseType: !1595, size: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1581, file: !1582, line: 135, baseType: !118, size: 8, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1581, file: !1582, line: 137, baseType: !1607, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1609, line: 189, size: 1664, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612, !1615, !1620, !1621, !1624, !1625, !1630, !1631, !1632, !1633, !1635, !1636, !1637, !1638, !1639, !1677, !1698}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1608, file: !1609, line: 190, baseType: !1275, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1608, file: !1609, line: 191, baseType: !1613, size: 32, offset: 32)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1609, line: 28, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !114, line: 98, baseType: !1486)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1609, line: 192, baseType: !1616, size: 192, offset: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1609, line: 192, size: 192, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1616, file: !1609, line: 193, baseType: !176, size: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1616, file: !1609, line: 194, baseType: !808, size: 192, align: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1608, file: !1609, line: 199, baseType: !815, size: 256, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1608, file: !1609, line: 200, baseType: !1622, size: 64, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1609, line: 200, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1608, file: !1609, line: 201, baseType: !99, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1609, line: 202, baseType: !1626, size: 64, offset: 640)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1609, line: 202, size: 64, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1626, file: !1609, line: 203, baseType: !586, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1626, file: !1609, line: 204, baseType: !586, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1608, file: !1609, line: 206, baseType: !586, size: 64, offset: 704)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1608, file: !1609, line: 207, baseType: !482, size: 32, offset: 768)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1608, file: !1609, line: 208, baseType: !490, size: 32, offset: 800)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1608, file: !1609, line: 209, baseType: !1634, size: 32, offset: 832)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1609, line: 31, baseType: !606)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1608, file: !1609, line: 210, baseType: !125, size: 16, offset: 864)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1608, file: !1609, line: 211, baseType: !125, size: 16, offset: 880)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1608, file: !1609, line: 215, baseType: !1250, size: 16, offset: 896)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !1609, line: 222, baseType: !155, size: 64, offset: 960)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1609, line: 239, baseType: !1640, size: 320, offset: 1024)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1609, line: 239, size: 320, elements: !1641)
!1641 = !{!1642, !1669}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1640, file: !1609, line: 240, baseType: !1643, size: 320)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1609, line: 108, size: 320, elements: !1644)
!1644 = !{!1645, !1646, !1658, !1661, !1668}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1643, file: !1609, line: 110, baseType: !155, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1609, line: 111, baseType: !1647, size: 64, offset: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !1609, line: 111, size: 64, elements: !1648)
!1648 = !{!1649, !1657}
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !1609, line: 112, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1647, file: !1609, line: 112, size: 64, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1650, file: !1609, line: 114, baseType: !906, size: 16)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1650, file: !1609, line: 115, baseType: !1654, size: 48, offset: 16)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 48, elements: !1655)
!1655 = !{!1656}
!1656 = !DISubrange(count: 6)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1647, file: !1609, line: 121, baseType: !155, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1643, file: !1609, line: 123, baseType: !1659, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1609, line: 96, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1643, file: !1609, line: 124, baseType: !1662, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1609, line: 102, size: 192, elements: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1663, file: !1609, line: 103, baseType: !420, size: 128, align: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1663, file: !1609, line: 104, baseType: !1275, size: 32, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1663, file: !1609, line: 105, baseType: !537, size: 8, offset: 160)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1643, file: !1609, line: 125, baseType: !151, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !1609, line: 241, baseType: !1670, size: 320)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1640, file: !1609, line: 241, size: 320, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1670, file: !1609, line: 242, baseType: !155, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1670, file: !1609, line: 243, baseType: !155, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1670, file: !1609, line: 244, baseType: !1659, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1670, file: !1609, line: 245, baseType: !1662, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1670, file: !1609, line: 246, baseType: !335, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1609, line: 254, baseType: !1678, size: 256, offset: 1344)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1609, line: 254, size: 256, elements: !1679)
!1679 = !{!1680, !1686}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1678, file: !1609, line: 255, baseType: !1681, size: 256)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1609, line: 128, size: 256, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1681, file: !1609, line: 129, baseType: !99, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1681, file: !1609, line: 130, baseType: !1685, size: 256)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !173)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !1609, line: 256, baseType: !1687, size: 256)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1678, file: !1609, line: 256, size: 256, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1687, file: !1609, line: 258, baseType: !176, size: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1687, file: !1609, line: 259, baseType: !1691, size: 128, offset: 128)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1692, line: 22, size: 128, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694, !1697}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1691, file: !1692, line: 23, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1692, line: 23, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1691, file: !1692, line: 24, baseType: !155, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1608, file: !1609, line: 274, baseType: !1699, size: 64, offset: 1600)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1609, line: 170, size: 192, elements: !1701)
!1701 = !{!1702, !1711, !1712}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1700, file: !1609, line: 171, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1609, line: 165, baseType: !1704)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!245, !1607, !1707, !1709, !1607}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1700, file: !1609, line: 172, baseType: !1607, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1700, file: !1609, line: 173, baseType: !1659, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1581, file: !1582, line: 138, baseType: !1607, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1581, file: !1582, line: 139, baseType: !1607, size: 64, offset: 832)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1581, file: !1582, line: 140, baseType: !1607, size: 64, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1581, file: !1582, line: 145, baseType: !1717, size: 64, offset: 960)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1719, line: 13, size: 896, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1718, file: !1719, line: 14, baseType: !1275, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1718, file: !1719, line: 15, baseType: !795, size: 32, offset: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1718, file: !1719, line: 16, baseType: !795, size: 32, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1718, file: !1719, line: 21, baseType: !819, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1718, file: !1719, line: 27, baseType: !155, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1718, file: !1719, line: 28, baseType: !155, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1718, file: !1719, line: 29, baseType: !819, size: 64, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1718, file: !1719, line: 32, baseType: !686, size: 128, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1718, file: !1719, line: 33, baseType: !482, size: 32, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1718, file: !1719, line: 37, baseType: !819, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1718, file: !1719, line: 44, baseType: !1732, size: 256, offset: 640)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1733, line: 15, size: 256, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !1733, line: 16, baseType: !201)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1732, file: !1733, line: 18, baseType: !245, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1732, file: !1733, line: 19, baseType: !245, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1732, file: !1733, line: 20, baseType: !245, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1732, file: !1733, line: 21, baseType: !245, size: 32, offset: 96)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1732, file: !1733, line: 22, baseType: !155, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !1733, line: 23, baseType: !155, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1581, file: !1582, line: 146, baseType: !1743, size: 64, offset: 1024)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !483, line: 18, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1581, file: !1582, line: 147, baseType: !1746, size: 64, offset: 1088)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1582, line: 25, size: 64, elements: !1748)
!1748 = !{!1749, !1750, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1747, file: !1582, line: 26, baseType: !795, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1747, file: !1582, line: 27, baseType: !245, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1747, file: !1582, line: 28, baseType: !1752, offset: 64)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, elements: !1753)
!1753 = !{!1754}
!1754 = !DISubrange(count: 0)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1582, line: 149, baseType: !1756, size: 128, offset: 1152)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !1582, line: 149, size: 128, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1756, file: !1582, line: 150, baseType: !245, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1756, file: !1582, line: 151, baseType: !420, size: 128, align: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1262, file: !1263, line: 926, baseType: !1579, size: 64, offset: 8576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1262, file: !1263, line: 929, baseType: !1579, size: 64, offset: 8640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1262, file: !1263, line: 933, baseType: !1607, size: 64, offset: 8704)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1262, file: !1263, line: 943, baseType: !1764, size: 128, offset: 8768)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, elements: !1765)
!1765 = !{!1766}
!1766 = !DISubrange(count: 16)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1262, file: !1263, line: 945, baseType: !1768, size: 64, offset: 8896)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1263, line: 49, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1262, file: !1263, line: 956, baseType: !1771, size: 64, offset: 8960)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1263, line: 45, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1262, file: !1263, line: 959, baseType: !1774, size: 64, offset: 9024)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1263, line: 959, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1262, file: !1263, line: 962, baseType: !1777, size: 64, offset: 9088)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1263, line: 66, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1262, file: !1263, line: 966, baseType: !1780, size: 64, offset: 9152)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1782, line: 35, flags: DIFlagFwdDecl)
!1782 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1262, file: !1263, line: 969, baseType: !1784, size: 64, offset: 9216)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1786, line: 82, size: 7296, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793, !1794, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1823, !1832, !1833, !1835, !1836, !1837, !1840, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1870, !1871, !1878, !1879, !1880, !1881, !1882, !1883}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1785, file: !1786, line: 83, baseType: !1275, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1785, file: !1786, line: 84, baseType: !795, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1785, file: !1786, line: 85, baseType: !245, size: 32, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1785, file: !1786, line: 86, baseType: !176, size: 128, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1785, file: !1786, line: 88, baseType: !1523, size: 128, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1785, file: !1786, line: 91, baseType: !1261, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1785, file: !1786, line: 94, baseType: !1795, size: 192, offset: 448)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1796, line: 30, size: 192, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1795, file: !1796, line: 31, baseType: !176, size: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1795, file: !1796, line: 32, baseType: !1800, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1801, line: 25, baseType: !1802)
!1801 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1801, line: 23, size: 64, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1802, file: !1801, line: 24, baseType: !1413, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1785, file: !1786, line: 97, baseType: !682, size: 64, offset: 640)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1785, file: !1786, line: 100, baseType: !245, size: 32, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1785, file: !1786, line: 106, baseType: !245, size: 32, offset: 736)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1785, file: !1786, line: 107, baseType: !1261, size: 64, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1785, file: !1786, line: 110, baseType: !245, size: 32, offset: 832)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1785, file: !1786, line: 111, baseType: !7, size: 32, offset: 864)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1785, file: !1786, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1785, file: !1786, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1785, file: !1786, line: 128, baseType: !245, size: 32, offset: 928)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1785, file: !1786, line: 129, baseType: !176, size: 128, offset: 960)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1785, file: !1786, line: 132, baseType: !1337, size: 512, offset: 1088)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1785, file: !1786, line: 133, baseType: !1345, size: 64, offset: 1600)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1785, file: !1786, line: 140, baseType: !1818, size: 256, offset: 1664)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1819, size: 256, elements: !169)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1786, line: 38, size: 128, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1819, file: !1786, line: 39, baseType: !136, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1819, file: !1786, line: 40, baseType: !136, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1785, file: !1786, line: 146, baseType: !1824, size: 192, offset: 1920)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1786, line: 66, size: 192, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1824, file: !1786, line: 67, baseType: !1827, size: 192)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1786, line: 47, size: 192, elements: !1828)
!1828 = !{!1829, !1830, !1831}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1827, file: !1786, line: 48, baseType: !821, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1827, file: !1786, line: 49, baseType: !821, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1827, file: !1786, line: 50, baseType: !821, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1785, file: !1786, line: 150, baseType: !1562, size: 640, offset: 2112)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1785, file: !1786, line: 153, baseType: !1834, size: 256, offset: 2752)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, size: 256, elements: !173)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1785, file: !1786, line: 159, baseType: !1513, size: 64, offset: 3008)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1785, file: !1786, line: 162, baseType: !245, size: 32, offset: 3072)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1785, file: !1786, line: 164, baseType: !1838, size: 64, offset: 3136)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1786, line: 164, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1785, file: !1786, line: 175, baseType: !1841, size: 32, offset: 3200)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !443, line: 805, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 798, size: 32, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1842, file: !443, line: 803, baseType: !442, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1842, file: !443, line: 804, baseType: !302, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1785, file: !1786, line: 176, baseType: !136, size: 64, offset: 3264)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1785, file: !1786, line: 176, baseType: !136, size: 64, offset: 3328)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1785, file: !1786, line: 176, baseType: !136, size: 64, offset: 3392)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1785, file: !1786, line: 176, baseType: !136, size: 64, offset: 3456)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1785, file: !1786, line: 177, baseType: !136, size: 64, offset: 3520)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1785, file: !1786, line: 178, baseType: !136, size: 64, offset: 3584)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1785, file: !1786, line: 179, baseType: !1550, size: 128, offset: 3648)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1785, file: !1786, line: 180, baseType: !155, size: 64, offset: 3776)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1785, file: !1786, line: 180, baseType: !155, size: 64, offset: 3840)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1785, file: !1786, line: 180, baseType: !155, size: 64, offset: 3904)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1785, file: !1786, line: 180, baseType: !155, size: 64, offset: 3968)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1785, file: !1786, line: 181, baseType: !155, size: 64, offset: 4032)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1785, file: !1786, line: 181, baseType: !155, size: 64, offset: 4096)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1785, file: !1786, line: 181, baseType: !155, size: 64, offset: 4160)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1785, file: !1786, line: 181, baseType: !155, size: 64, offset: 4224)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1785, file: !1786, line: 182, baseType: !155, size: 64, offset: 4288)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1785, file: !1786, line: 182, baseType: !155, size: 64, offset: 4352)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1785, file: !1786, line: 182, baseType: !155, size: 64, offset: 4416)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1785, file: !1786, line: 182, baseType: !155, size: 64, offset: 4480)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1785, file: !1786, line: 183, baseType: !155, size: 64, offset: 4544)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1785, file: !1786, line: 183, baseType: !155, size: 64, offset: 4608)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1785, file: !1786, line: 184, baseType: !1868, offset: 4672)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1869, line: 12, elements: !209)
!1869 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1785, file: !1786, line: 192, baseType: !140, size: 64, offset: 4672)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1785, file: !1786, line: 203, baseType: !1872, size: 2048, offset: 4736)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1873, size: 2048, elements: !1765)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1874, line: 43, size: 128, elements: !1875)
!1874 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1873, file: !1874, line: 44, baseType: !185, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1873, file: !1874, line: 45, baseType: !185, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1785, file: !1786, line: 220, baseType: !537, size: 8, offset: 6784)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1785, file: !1786, line: 221, baseType: !1250, size: 16, offset: 6800)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1785, file: !1786, line: 222, baseType: !1250, size: 16, offset: 6816)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1785, file: !1786, line: 224, baseType: !1021, size: 64, offset: 6848)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1785, file: !1786, line: 227, baseType: !1218, size: 192, offset: 6912)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1785, file: !1786, line: 233, baseType: !1218, size: 192, offset: 7104)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1262, file: !1263, line: 970, baseType: !1885, size: 64, offset: 9280)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1786, line: 20, size: 16576, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1886, file: !1786, line: 21, baseType: !302)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1886, file: !1786, line: 22, baseType: !1275, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1886, file: !1786, line: 23, baseType: !1523, size: 128, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1886, file: !1786, line: 24, baseType: !1892, size: 16384, offset: 192)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1893, size: 16384, elements: !340)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1796, line: 49, size: 256, elements: !1894)
!1894 = !{!1895}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1893, file: !1796, line: 50, baseType: !1896, size: 256)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1796, line: 35, size: 256, elements: !1897)
!1897 = !{!1898, !1905, !1906, !1912}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1896, file: !1796, line: 37, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1900, line: 19, baseType: !1901)
!1900 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1900, line: 18, baseType: !1903)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !245}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1896, file: !1796, line: 38, baseType: !155, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1896, file: !1796, line: 44, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1900, line: 22, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1900, line: 21, baseType: !1910)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1896, file: !1796, line: 46, baseType: !1800, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1262, file: !1263, line: 971, baseType: !1800, size: 64, offset: 9344)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1262, file: !1263, line: 972, baseType: !1800, size: 64, offset: 9408)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1262, file: !1263, line: 974, baseType: !1800, size: 64, offset: 9472)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1262, file: !1263, line: 975, baseType: !1795, size: 192, offset: 9536)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1262, file: !1263, line: 976, baseType: !155, size: 64, offset: 9728)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1262, file: !1263, line: 977, baseType: !182, size: 64, offset: 9792)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1262, file: !1263, line: 978, baseType: !7, size: 32, offset: 9856)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1262, file: !1263, line: 980, baseType: !423, size: 64, offset: 9920)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1262, file: !1263, line: 989, baseType: !1922, size: 128, offset: 9984)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1923, line: 35, size: 128, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1922, file: !1923, line: 36, baseType: !245, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1922, file: !1923, line: 37, baseType: !795, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1922, file: !1923, line: 38, baseType: !1928, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1923, line: 23, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1262, file: !1263, line: 992, baseType: !136, size: 64, offset: 10112)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1262, file: !1263, line: 993, baseType: !136, size: 64, offset: 10176)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1262, file: !1263, line: 996, baseType: !302, offset: 10240)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1262, file: !1263, line: 999, baseType: !201, offset: 10240)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1262, file: !1263, line: 1001, baseType: !1935, size: 64, offset: 10240)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1263, line: 636, size: 64, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1935, file: !1263, line: 637, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1262, file: !1263, line: 1005, baseType: !800, size: 128, offset: 10304)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1262, file: !1263, line: 1007, baseType: !1261, size: 64, offset: 10432)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1262, file: !1263, line: 1009, baseType: !1942, size: 64, offset: 10496)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1263, line: 1009, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1262, file: !1263, line: 1043, baseType: !99, size: 64, offset: 10560)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1262, file: !1263, line: 1046, baseType: !1946, size: 64, offset: 10624)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1263, line: 41, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1262, file: !1263, line: 1050, baseType: !1949, size: 64, offset: 10688)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1263, line: 42, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1262, file: !1263, line: 1054, baseType: !1952, size: 64, offset: 10752)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1263, line: 55, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1262, file: !1263, line: 1056, baseType: !1955, size: 64, offset: 10816)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1263, line: 40, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1262, file: !1263, line: 1058, baseType: !1958, size: 64, offset: 10880)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1960, line: 99, size: 704, elements: !1961)
!1960 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968, !1987, !1988}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1959, file: !1960, line: 100, baseType: !819, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1959, file: !1960, line: 101, baseType: !795, size: 32, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1959, file: !1960, line: 102, baseType: !795, size: 32, offset: 96)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1959, file: !1960, line: 105, baseType: !302, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1959, file: !1960, line: 107, baseType: !125, size: 16, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1959, file: !1960, line: 109, baseType: !786, size: 128, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1959, file: !1960, line: 110, baseType: !1969, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1960, line: 73, size: 448, elements: !1971)
!1971 = !{!1972, !1975, !1976, !1981, !1986}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1970, file: !1960, line: 74, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1960, line: 74, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1970, file: !1960, line: 75, baseType: !1958, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1960, line: 83, baseType: !1977, size: 128, offset: 128)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1960, line: 83, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1977, file: !1960, line: 84, baseType: !176, size: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1977, file: !1960, line: 85, baseType: !982, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1960, line: 87, baseType: !1982, size: 128, offset: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1960, line: 87, size: 128, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1982, file: !1960, line: 88, baseType: !686, size: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1982, file: !1960, line: 89, baseType: !420, size: 128, align: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1970, file: !1960, line: 92, baseType: !7, size: 32, offset: 384)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1959, file: !1960, line: 111, baseType: !682, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1959, file: !1960, line: 113, baseType: !1989, size: 256, offset: 448)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1990, line: 102, size: 256, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1989, file: !1990, line: 103, baseType: !819, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1989, file: !1990, line: 104, baseType: !176, size: 128, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1989, file: !1990, line: 105, baseType: !1995, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1990, line: 21, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1262, file: !1263, line: 1061, baseType: !2001, size: 64, offset: 10944)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1263, line: 43, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1262, file: !1263, line: 1064, baseType: !155, size: 64, offset: 11008)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1262, file: !1263, line: 1065, baseType: !2005, size: 64, offset: 11072)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1796, line: 14, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1796, line: 12, size: 384, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1796, line: 13, baseType: !2010, size: 384)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !1796, line: 13, size: 384, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2010, file: !1796, line: 13, baseType: !245, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2010, file: !1796, line: 13, baseType: !245, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2010, file: !1796, line: 13, baseType: !245, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2010, file: !1796, line: 13, baseType: !2016, size: 256, offset: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2017, line: 32, size: 256, elements: !2018)
!2017 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2024, !2037, !2043, !2052, !2072, !2077}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2016, file: !2017, line: 37, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 34, size: 64, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2020, file: !2017, line: 35, baseType: !1502, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2020, file: !2017, line: 36, baseType: !488, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2016, file: !2017, line: 45, baseType: !2025, size: 192)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 40, size: 192, elements: !2026)
!2026 = !{!2027, !2029, !2030, !2036}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2025, file: !2017, line: 41, baseType: !2028, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !184, line: 95, baseType: !245)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2025, file: !2017, line: 42, baseType: !245, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2025, file: !2017, line: 43, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2017, line: 11, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2017, line: 8, size: 64, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2032, file: !2017, line: 9, baseType: !245, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2032, file: !2017, line: 10, baseType: !99, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2025, file: !2017, line: 44, baseType: !245, size: 32, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2016, file: !2017, line: 52, baseType: !2038, size: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 48, size: 128, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2038, file: !2017, line: 49, baseType: !1502, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2038, file: !2017, line: 50, baseType: !488, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2038, file: !2017, line: 51, baseType: !2031, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2016, file: !2017, line: 61, baseType: !2044, size: 256)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 55, size: 256, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049, !2051}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2044, file: !2017, line: 56, baseType: !1502, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2044, file: !2017, line: 57, baseType: !488, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2044, file: !2017, line: 58, baseType: !245, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2044, file: !2017, line: 59, baseType: !2050, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !184, line: 94, baseType: !368)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2044, file: !2017, line: 60, baseType: !2050, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2016, file: !2017, line: 95, baseType: !2053, size: 256)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 64, size: 256, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2053, file: !2017, line: 65, baseType: !99, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !2017, line: 77, baseType: !2057, size: 192, offset: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !2017, line: 77, size: 192, elements: !2058)
!2058 = !{!2059, !2060, !2067}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2057, file: !2017, line: 82, baseType: !1250, size: 16)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2057, file: !2017, line: 88, baseType: !2061, size: 192)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2057, file: !2017, line: 84, size: 192, elements: !2062)
!2062 = !{!2063, !2065, !2066}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2061, file: !2017, line: 85, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !1375)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2061, file: !2017, line: 86, baseType: !99, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2061, file: !2017, line: 87, baseType: !99, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2057, file: !2017, line: 93, baseType: !2068, size: 96)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2057, file: !2017, line: 90, size: 96, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2068, file: !2017, line: 91, baseType: !2064, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2068, file: !2017, line: 92, baseType: !260, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2016, file: !2017, line: 101, baseType: !2073, size: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 98, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2073, file: !2017, line: 99, baseType: !369, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2073, file: !2017, line: 100, baseType: !245, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2016, file: !2017, line: 108, baseType: !2078, size: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 104, size: 128, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2078, file: !2017, line: 105, baseType: !99, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2078, file: !2017, line: 106, baseType: !245, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2078, file: !2017, line: 107, baseType: !7, size: 32, offset: 96)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1262, file: !1263, line: 1067, baseType: !1868, offset: 11136)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1262, file: !1263, line: 1099, baseType: !2085, size: 64, offset: 11136)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1263, line: 56, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1262, file: !1263, line: 1103, baseType: !176, size: 128, offset: 11200)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1262, file: !1263, line: 1104, baseType: !2089, size: 64, offset: 11328)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1263, line: 46, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1262, file: !1263, line: 1105, baseType: !1218, size: 192, offset: 11392)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1262, file: !1263, line: 1106, baseType: !7, size: 32, offset: 11584)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1262, file: !1263, line: 1109, baseType: !2094, size: 128, offset: 11648)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2095, size: 128, elements: !169)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1263, line: 51, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1262, file: !1263, line: 1110, baseType: !1218, size: 192, offset: 11776)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1262, file: !1263, line: 1111, baseType: !176, size: 128, offset: 11968)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1262, file: !1263, line: 1173, baseType: !2100, size: 64, offset: 12096)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2102, line: 62, size: 256, align: 256, elements: !2103)
!2102 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !{!2104, !2105, !2106, !2111}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2101, file: !2102, line: 75, baseType: !260, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2101, file: !2102, line: 90, baseType: !260, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2101, file: !2102, line: 124, baseType: !2107, size: 64, offset: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !2102, line: 109, size: 64, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2107, file: !2102, line: 110, baseType: !138, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2107, file: !2102, line: 112, baseType: !138, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2101, file: !2102, line: 144, baseType: !260, size: 32, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1262, file: !1263, line: 1174, baseType: !259, size: 32, offset: 12160)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1262, file: !1263, line: 1179, baseType: !155, size: 64, offset: 12224)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1262, file: !1263, line: 1182, baseType: !2115, size: 128, offset: 12288)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1198, line: 76, size: 128, elements: !2116)
!2116 = !{!2117, !2122, !2123}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2115, file: !1198, line: 85, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2119, line: 7, size: 64, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2118, file: !2119, line: 12, baseType: !1410, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2115, file: !1198, line: 88, baseType: !537, size: 8, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2115, file: !1198, line: 95, baseType: !537, size: 8, offset: 72)
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !1263, line: 1184, baseType: !2125, size: 128, offset: 12416)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !1263, line: 1184, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2125, file: !1263, line: 1185, baseType: !1275, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2125, file: !1263, line: 1186, baseType: !420, size: 128, align: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1262, file: !1263, line: 1190, baseType: !2130, size: 64, offset: 12544)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1263, line: 53, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1262, file: !1263, line: 1192, baseType: !2133, size: 128, offset: 12608)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1198, line: 64, size: 128, elements: !2134)
!2134 = !{!2135, !2136, !2137}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2133, file: !1198, line: 65, baseType: !768, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2133, file: !1198, line: 67, baseType: !260, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2133, file: !1198, line: 68, baseType: !260, size: 32, offset: 96)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1262, file: !1263, line: 1206, baseType: !245, size: 32, offset: 12736)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1262, file: !1263, line: 1207, baseType: !245, size: 32, offset: 12768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1262, file: !1263, line: 1209, baseType: !155, size: 64, offset: 12800)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1262, file: !1263, line: 1219, baseType: !136, size: 64, offset: 12864)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1262, file: !1263, line: 1220, baseType: !136, size: 64, offset: 12928)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1262, file: !1263, line: 1317, baseType: !245, size: 32, offset: 12992)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1262, file: !1263, line: 1319, baseType: !1261, size: 64, offset: 13056)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1262, file: !1263, line: 1322, baseType: !2146, size: 64, offset: 13120)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2148, line: 56, size: 512, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2147, file: !2148, line: 57, baseType: !2146, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2147, file: !2148, line: 58, baseType: !99, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2147, file: !2148, line: 59, baseType: !155, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !2148, line: 60, baseType: !155, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2147, file: !2148, line: 61, baseType: !867, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2147, file: !2148, line: 62, baseType: !7, size: 32, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2147, file: !2148, line: 63, baseType: !135, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2147, file: !2148, line: 64, baseType: !2158, size: 64, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1262, file: !1263, line: 1326, baseType: !1275, size: 32, offset: 13184)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1262, file: !1263, line: 1342, baseType: !99, size: 64, offset: 13248)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1262, file: !1263, line: 1343, baseType: !138, size: 64, offset: 13312)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1262, file: !1263, line: 1344, baseType: !136, size: 64, offset: 13376)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1262, file: !1263, line: 1345, baseType: !138, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1262, file: !1263, line: 1346, baseType: !138, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1262, file: !1263, line: 1347, baseType: !138, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1262, file: !1263, line: 1348, baseType: !420, size: 128, align: 64, offset: 13504)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1262, file: !1263, line: 1358, baseType: !2169, size: 34816, offset: 13824)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2170, line: 485, size: 34816, elements: !2171)
!2170 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2171 = !{!2172, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2201, !2202, !2203, !2204, !2205, !2206, !2209, !2210, !2211}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2169, file: !2170, line: 487, baseType: !2173, size: 192)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2174, size: 192, elements: !336)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2175, line: 16, size: 64, elements: !2176)
!2175 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2174, file: !2175, line: 17, baseType: !906, size: 16)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2174, file: !2175, line: 18, baseType: !906, size: 16, offset: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2174, file: !2175, line: 19, baseType: !906, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2174, file: !2175, line: 19, baseType: !906, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2174, file: !2175, line: 19, baseType: !906, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2174, file: !2175, line: 19, baseType: !906, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2174, file: !2175, line: 19, baseType: !906, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2174, file: !2175, line: 20, baseType: !906, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2174, file: !2175, line: 20, baseType: !906, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2174, file: !2175, line: 20, baseType: !906, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2174, file: !2175, line: 20, baseType: !906, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2174, file: !2175, line: 20, baseType: !906, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2174, file: !2175, line: 20, baseType: !906, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2169, file: !2170, line: 491, baseType: !155, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2169, file: !2170, line: 495, baseType: !125, size: 16, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2169, file: !2170, line: 496, baseType: !125, size: 16, offset: 272)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2169, file: !2170, line: 497, baseType: !125, size: 16, offset: 288)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2169, file: !2170, line: 498, baseType: !125, size: 16, offset: 304)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2169, file: !2170, line: 502, baseType: !155, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2169, file: !2170, line: 503, baseType: !155, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2169, file: !2170, line: 514, baseType: !2198, size: 256, offset: 448)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2199, size: 256, elements: !173)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2170, line: 483, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2169, file: !2170, line: 516, baseType: !155, size: 64, offset: 704)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2169, file: !2170, line: 518, baseType: !155, size: 64, offset: 768)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2169, file: !2170, line: 520, baseType: !155, size: 64, offset: 832)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2169, file: !2170, line: 521, baseType: !155, size: 64, offset: 896)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2169, file: !2170, line: 522, baseType: !155, size: 64, offset: 960)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2169, file: !2170, line: 528, baseType: !2207, size: 64, offset: 1024)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2170, line: 10, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2169, file: !2170, line: 535, baseType: !155, size: 64, offset: 1088)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2169, file: !2170, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2169, file: !2170, line: 540, baseType: !2212, size: 33280, offset: 1536)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2213, line: 317, size: 33280, elements: !2214)
!2213 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2212, file: !2213, line: 330, baseType: !7, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2212, file: !2213, line: 337, baseType: !155, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2212, file: !2213, line: 348, baseType: !2218, size: 32768, offset: 512)
!2218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2213, line: 304, size: 32768, elements: !2219)
!2219 = !{!2220, !2235, !2274, !2324, !2337}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2218, file: !2213, line: 305, baseType: !2221, size: 896)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2213, line: 12, size: 896, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2234}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2221, file: !2213, line: 13, baseType: !259, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2221, file: !2213, line: 14, baseType: !259, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2221, file: !2213, line: 15, baseType: !259, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2221, file: !2213, line: 16, baseType: !259, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2221, file: !2213, line: 17, baseType: !259, size: 32, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2221, file: !2213, line: 18, baseType: !259, size: 32, offset: 160)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2221, file: !2213, line: 19, baseType: !259, size: 32, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2221, file: !2213, line: 22, baseType: !2231, size: 640, offset: 224)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 640, elements: !2232)
!2232 = !{!2233}
!2233 = !DISubrange(count: 20)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2221, file: !2213, line: 25, baseType: !259, size: 32, offset: 864)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2218, file: !2213, line: 306, baseType: !2236, size: 4096, align: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2213, line: 34, size: 4096, align: 128, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2257, !2258, !2259, !2263, !2265, !2269}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2236, file: !2213, line: 35, baseType: !906, size: 16)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2236, file: !2213, line: 36, baseType: !906, size: 16, offset: 16)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2236, file: !2213, line: 37, baseType: !906, size: 16, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2236, file: !2213, line: 38, baseType: !906, size: 16, offset: 48)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2213, line: 39, baseType: !2243, size: 128, offset: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !2213, line: 39, size: 128, elements: !2244)
!2244 = !{!2245, !2250}
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2213, line: 40, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2243, file: !2213, line: 40, size: 128, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2246, file: !2213, line: 41, baseType: !136, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2246, file: !2213, line: 42, baseType: !136, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2213, line: 44, baseType: !2251, size: 128)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2243, file: !2213, line: 44, size: 128, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2251, file: !2213, line: 45, baseType: !259, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2251, file: !2213, line: 46, baseType: !259, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2251, file: !2213, line: 47, baseType: !259, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2251, file: !2213, line: 48, baseType: !259, size: 32, offset: 96)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2236, file: !2213, line: 51, baseType: !259, size: 32, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2236, file: !2213, line: 52, baseType: !259, size: 32, offset: 224)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2236, file: !2213, line: 55, baseType: !2260, size: 1024, offset: 256)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 1024, elements: !2261)
!2261 = !{!2262}
!2262 = !DISubrange(count: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2236, file: !2213, line: 58, baseType: !2264, size: 2048, offset: 1280)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 2048, elements: !340)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2236, file: !2213, line: 60, baseType: !2266, size: 384, offset: 3328)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 384, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: 12)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2213, line: 62, baseType: !2270, size: 384, offset: 3712)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !2213, line: 62, size: 384, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2270, file: !2213, line: 63, baseType: !2266, size: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2270, file: !2213, line: 64, baseType: !2266, size: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2218, file: !2213, line: 307, baseType: !2275, size: 1088)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2213, line: 79, size: 1088, elements: !2276)
!2276 = !{!2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2323}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2275, file: !2213, line: 80, baseType: !259, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2275, file: !2213, line: 81, baseType: !259, size: 32, offset: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2275, file: !2213, line: 82, baseType: !259, size: 32, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2275, file: !2213, line: 83, baseType: !259, size: 32, offset: 96)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2275, file: !2213, line: 84, baseType: !259, size: 32, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2275, file: !2213, line: 85, baseType: !259, size: 32, offset: 160)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2275, file: !2213, line: 86, baseType: !259, size: 32, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2275, file: !2213, line: 88, baseType: !2231, size: 640, offset: 224)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2275, file: !2213, line: 89, baseType: !188, size: 8, offset: 864)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2275, file: !2213, line: 90, baseType: !188, size: 8, offset: 872)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2275, file: !2213, line: 91, baseType: !188, size: 8, offset: 880)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2275, file: !2213, line: 92, baseType: !188, size: 8, offset: 888)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2275, file: !2213, line: 93, baseType: !188, size: 8, offset: 896)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2275, file: !2213, line: 94, baseType: !188, size: 8, offset: 904)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2275, file: !2213, line: 95, baseType: !2292, size: 64, offset: 960)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2294, line: 11, size: 128, elements: !2295)
!2294 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2293, file: !2294, line: 12, baseType: !369, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2293, file: !2294, line: 13, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2300, line: 56, size: 1344, elements: !2301)
!2300 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2299, file: !2300, line: 61, baseType: !155, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2299, file: !2300, line: 62, baseType: !155, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2299, file: !2300, line: 63, baseType: !155, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2299, file: !2300, line: 64, baseType: !155, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2299, file: !2300, line: 65, baseType: !155, size: 64, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2299, file: !2300, line: 66, baseType: !155, size: 64, offset: 320)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2299, file: !2300, line: 68, baseType: !155, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2299, file: !2300, line: 69, baseType: !155, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2299, file: !2300, line: 70, baseType: !155, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2299, file: !2300, line: 71, baseType: !155, size: 64, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2299, file: !2300, line: 72, baseType: !155, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2299, file: !2300, line: 73, baseType: !155, size: 64, offset: 704)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2299, file: !2300, line: 74, baseType: !155, size: 64, offset: 768)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2299, file: !2300, line: 75, baseType: !155, size: 64, offset: 832)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2299, file: !2300, line: 76, baseType: !155, size: 64, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2299, file: !2300, line: 81, baseType: !155, size: 64, offset: 960)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2299, file: !2300, line: 83, baseType: !155, size: 64, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2299, file: !2300, line: 84, baseType: !155, size: 64, offset: 1088)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !2300, line: 85, baseType: !155, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2299, file: !2300, line: 86, baseType: !155, size: 64, offset: 1216)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2299, file: !2300, line: 87, baseType: !155, size: 64, offset: 1280)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2275, file: !2213, line: 96, baseType: !259, size: 32, offset: 1024)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2218, file: !2213, line: 308, baseType: !2325, size: 4608, align: 512)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2213, line: 289, size: 4608, align: 512, elements: !2326)
!2326 = !{!2327, !2328, !2335}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2325, file: !2213, line: 290, baseType: !2236, size: 4096, align: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2325, file: !2213, line: 291, baseType: !2329, size: 512, offset: 4096)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2213, line: 268, size: 512, elements: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2329, file: !2213, line: 269, baseType: !136, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2329, file: !2213, line: 270, baseType: !136, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2329, file: !2213, line: 271, baseType: !2334, size: 384, offset: 128)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !1655)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2325, file: !2213, line: 292, baseType: !2336, offset: 4608)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, elements: !1753)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2218, file: !2213, line: 309, baseType: !2338, size: 32768)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 32768, elements: !2339)
!2339 = !{!2340}
!2340 = !DISubrange(count: 4096)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1258, file: !770, line: 378, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1254, file: !770, line: 384, baseType: !192, size: 192, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1025, file: !770, line: 500, baseType: !302, offset: 6656)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1025, file: !770, line: 501, baseType: !2346, size: 64, offset: 6656)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !770, line: 387, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1025, file: !770, line: 516, baseType: !1743, size: 64, offset: 6720)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1025, file: !770, line: 519, baseType: !407, size: 64, offset: 6784)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1025, file: !770, line: 521, baseType: !2351, size: 64, offset: 6848)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !770, line: 521, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1025, file: !770, line: 545, baseType: !795, size: 32, offset: 6912)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1025, file: !770, line: 548, baseType: !537, size: 8, offset: 6944)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1025, file: !770, line: 550, baseType: !2356, offset: 6952)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2357, line: 142, elements: !209)
!2357 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1025, file: !770, line: 554, baseType: !1989, size: 256, offset: 6976)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1025, file: !770, line: 557, baseType: !259, size: 32, offset: 7232)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1022, file: !770, line: 565, baseType: !2361, offset: 7296)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, elements: !2362)
!2362 = !{!2363}
!2363 = !DISubrange(count: -1)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1018, file: !770, line: 151, baseType: !795, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1011, file: !770, line: 156, baseType: !302, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !770, line: 159, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !770, line: 159, size: 128, elements: !2368)
!2368 = !{!2369, !2433}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2367, file: !770, line: 161, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2372)
!2372 = !{!2373, !2383, !2404, !2405, !2406, !2407, !2408, !2420, !2421, !2422}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2371, file: !31, line: 111, baseType: !2374, size: 384)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2375)
!2375 = !{!2376, !2378, !2379, !2380, !2381, !2382}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2374, file: !31, line: 20, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2374, file: !31, line: 21, baseType: !2377, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2374, file: !31, line: 22, baseType: !2377, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2374, file: !31, line: 23, baseType: !155, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2374, file: !31, line: 24, baseType: !155, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2374, file: !31, line: 25, baseType: !155, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2371, file: !31, line: 112, baseType: !2384, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2386, line: 105, size: 128, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2385, file: !2386, line: 110, baseType: !155, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2385, file: !2386, line: 118, baseType: !2390, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2386, line: 95, size: 448, elements: !2392)
!2392 = !{!2393, !2394, !2399, !2400, !2401, !2402, !2403}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2391, file: !2386, line: 96, baseType: !819, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2391, file: !2386, line: 97, baseType: !2395, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2386, line: 60, baseType: !2397)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !2384}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2391, file: !2386, line: 98, baseType: !2395, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2391, file: !2386, line: 99, baseType: !537, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2391, file: !2386, line: 100, baseType: !537, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2391, file: !2386, line: 101, baseType: !420, size: 128, align: 64, offset: 256)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2391, file: !2386, line: 102, baseType: !2384, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2371, file: !31, line: 113, baseType: !2385, size: 128, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2371, file: !31, line: 114, baseType: !192, size: 192, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2371, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2371, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2371, file: !31, line: 117, baseType: !2409, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2412)
!2412 = !{!2413, !2414, !2418, !2419}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2411, file: !31, line: 73, baseType: !887, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2411, file: !31, line: 78, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2370}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2411, file: !31, line: 83, baseType: !2415, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2411, file: !31, line: 89, baseType: !1074, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2371, file: !31, line: 118, baseType: !99, size: 64, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2371, file: !31, line: 119, baseType: !245, size: 32, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !31, line: 120, baseType: !2423, size: 128, offset: 1024)
!2423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !31, line: 120, size: 128, elements: !2424)
!2424 = !{!2425, !2431}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2423, file: !31, line: 121, baseType: !2426, size: 128)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2427, line: 6, size: 128, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2426, file: !2427, line: 7, baseType: !136, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2426, file: !2427, line: 8, baseType: !136, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2423, file: !31, line: 122, baseType: !2432)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2426, elements: !1753)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2367, file: !770, line: 162, baseType: !99, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !774, file: !770, line: 176, baseType: !420, size: 128, align: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !770, line: 179, baseType: !2436, size: 32, offset: 384)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !770, line: 179, size: 32, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2436, file: !770, line: 184, baseType: !795, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2436, file: !770, line: 192, baseType: !7, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2436, file: !770, line: 194, baseType: !7, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2436, file: !770, line: 195, baseType: !245, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !769, file: !770, line: 199, baseType: !795, size: 32, offset: 416)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !704, file: !44, line: 1964, baseType: !2444, size: 64, offset: 1344)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!369, !646, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2449, line: 12, size: 256, elements: !2450)
!2449 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2450 = !{!2451, !2452, !2453, !2454, !2455}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2448, file: !2449, line: 13, baseType: !791, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2448, file: !2449, line: 16, baseType: !245, size: 32, offset: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2448, file: !2449, line: 23, baseType: !155, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2448, file: !2449, line: 30, baseType: !155, size: 64, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2448, file: !2449, line: 33, baseType: !2456, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !770, line: 27, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !704, file: !44, line: 1966, baseType: !2444, size: 64, offset: 1408)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !647, file: !44, line: 1424, baseType: !2460, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2463)
!2463 = !{!2464, !2510, !2514, !2518, !2519, !2520, !2521, !2522, !2527, !2532, !2536}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2462, file: !38, line: 323, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!245, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2470)
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2495, !2496, !2497}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2469, file: !38, line: 295, baseType: !686, size: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2469, file: !38, line: 296, baseType: !176, size: 128, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2469, file: !38, line: 297, baseType: !176, size: 128, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2469, file: !38, line: 298, baseType: !176, size: 128, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2469, file: !38, line: 299, baseType: !1218, size: 192, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2469, file: !38, line: 300, baseType: !302, offset: 704)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2469, file: !38, line: 301, baseType: !795, size: 32, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2469, file: !38, line: 302, baseType: !646, size: 64, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2469, file: !38, line: 303, baseType: !2480, size: 64, offset: 832)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2481)
!2481 = !{!2482, !2494}
!2482 = !DIDerivedType(tag: DW_TAG_member, scope: !2480, file: !38, line: 69, baseType: !2483, size: 32)
!2483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2480, file: !38, line: 69, size: 32, elements: !2484)
!2484 = !{!2485, !2486, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2483, file: !38, line: 70, baseType: !482, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2483, file: !38, line: 71, baseType: !490, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2483, file: !38, line: 72, baseType: !2488, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2489, line: 24, baseType: !2490)
!2489 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2489, line: 22, size: 32, elements: !2491)
!2491 = !{!2492}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2490, file: !2489, line: 23, baseType: !2493, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2489, line: 20, baseType: !488)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2480, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2469, file: !38, line: 304, baseType: !578, size: 64, offset: 896)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2469, file: !38, line: 305, baseType: !155, size: 64, offset: 960)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2469, file: !38, line: 306, baseType: !2498, size: 576, offset: 1024)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2499)
!2499 = !{!2500, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2498, file: !38, line: 206, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !580)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2498, file: !38, line: 207, baseType: !2501, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2498, file: !38, line: 208, baseType: !2501, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2498, file: !38, line: 209, baseType: !2501, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2498, file: !38, line: 210, baseType: !2501, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2498, file: !38, line: 211, baseType: !2501, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2498, file: !38, line: 212, baseType: !2501, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2498, file: !38, line: 213, baseType: !586, size: 64, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2498, file: !38, line: 214, baseType: !586, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2462, file: !38, line: 324, baseType: !2511, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!2468, !646, !245}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2462, file: !38, line: 325, baseType: !2515, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !2468}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2462, file: !38, line: 326, baseType: !2465, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2462, file: !38, line: 327, baseType: !2465, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2462, file: !38, line: 328, baseType: !2465, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2462, file: !38, line: 329, baseType: !732, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2462, file: !38, line: 332, baseType: !2523, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!2526, !476}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2462, file: !38, line: 333, baseType: !2528, size: 64, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!245, !476, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2462, file: !38, line: 335, baseType: !2533, size: 64, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!245, !476, !2526}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2462, file: !38, line: 337, baseType: !2537, size: 64, offset: 640)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!245, !646, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !647, file: !44, line: 1425, baseType: !2542, size: 64, offset: 512)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2544)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2545)
!2545 = !{!2546, !2550, !2551, !2555, !2556, !2557, !2572, !2595, !2599, !2600, !2623}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2544, file: !38, line: 429, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!245, !646, !245, !245, !596}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2544, file: !38, line: 430, baseType: !732, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2544, file: !38, line: 431, baseType: !2552, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!245, !646, !7}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2544, file: !38, line: 432, baseType: !2552, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2544, file: !38, line: 433, baseType: !732, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2544, file: !38, line: 434, baseType: !2558, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!245, !646, !245, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2562, file: !38, line: 416, baseType: !245, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2562, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2562, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2562, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2562, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2562, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2562, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2562, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2544, file: !38, line: 435, baseType: !2573, size: 64, offset: 384)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!245, !646, !2480, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2577, file: !38, line: 344, baseType: !245, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2577, file: !38, line: 345, baseType: !136, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2577, file: !38, line: 346, baseType: !136, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2577, file: !38, line: 347, baseType: !136, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2577, file: !38, line: 348, baseType: !136, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2577, file: !38, line: 349, baseType: !136, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2577, file: !38, line: 350, baseType: !136, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2577, file: !38, line: 351, baseType: !825, size: 64, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2577, file: !38, line: 353, baseType: !825, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2577, file: !38, line: 354, baseType: !245, size: 32, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2577, file: !38, line: 355, baseType: !245, size: 32, offset: 608)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2577, file: !38, line: 356, baseType: !136, size: 64, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2577, file: !38, line: 357, baseType: !136, size: 64, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2577, file: !38, line: 358, baseType: !136, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2577, file: !38, line: 359, baseType: !825, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2577, file: !38, line: 360, baseType: !245, size: 32, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2544, file: !38, line: 436, baseType: !2596, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!245, !646, !2540, !2576}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2544, file: !38, line: 438, baseType: !2573, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2544, file: !38, line: 439, baseType: !2601, size: 64, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!245, !646, !2604}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2605, file: !38, line: 410, baseType: !7, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2605, file: !38, line: 411, baseType: !2609, size: 1344, offset: 64)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 1344, elements: !336)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2622}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2610, file: !38, line: 396, baseType: !7, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2610, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2610, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2610, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2610, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2610, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2610, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2610, file: !38, line: 404, baseType: !140, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2610, file: !38, line: 405, baseType: !2621, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !114, line: 126, baseType: !136)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2610, file: !38, line: 406, baseType: !2621, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2544, file: !38, line: 440, baseType: !2552, size: 64, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !647, file: !44, line: 1426, baseType: !2625, size: 64, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2627)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !647, file: !44, line: 1427, baseType: !155, size: 64, offset: 640)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !647, file: !44, line: 1428, baseType: !155, size: 64, offset: 704)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !647, file: !44, line: 1429, baseType: !155, size: 64, offset: 768)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !647, file: !44, line: 1430, baseType: !437, size: 64, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !647, file: !44, line: 1431, baseType: !815, size: 256, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !647, file: !44, line: 1432, baseType: !245, size: 32, offset: 1152)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !647, file: !44, line: 1433, baseType: !795, size: 32, offset: 1184)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !647, file: !44, line: 1437, baseType: !2636, size: 64, offset: 1216)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2639)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !647, file: !44, line: 1449, baseType: !2641, size: 64, offset: 1280)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !453, line: 34, size: 64, elements: !2642)
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2641, file: !453, line: 35, baseType: !456, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !647, file: !44, line: 1450, baseType: !176, size: 128, offset: 1344)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !647, file: !44, line: 1451, baseType: !2646, size: 64, offset: 1472)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !647, file: !44, line: 1452, baseType: !1955, size: 64, offset: 1536)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !647, file: !44, line: 1453, baseType: !2650, size: 64, offset: 1600)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !647, file: !44, line: 1454, baseType: !686, size: 128, offset: 1664)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !647, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !647, file: !44, line: 1456, baseType: !2655, size: 2432, offset: 1856)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2656)
!2656 = !{!2657, !2658, !2659, !2661, !2693}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !38, line: 519, baseType: !7, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2655, file: !38, line: 520, baseType: !815, size: 256, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2655, file: !38, line: 521, baseType: !2660, size: 192, offset: 320)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 192, elements: !336)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2655, file: !38, line: 522, baseType: !2662, size: 1728, offset: 512)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2663, size: 1728, elements: !336)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2664)
!2664 = !{!2665, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2663, file: !38, line: 223, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2668)
!2668 = !{!2669, !2670, !2683, !2684}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2667, file: !38, line: 444, baseType: !245, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2667, file: !38, line: 445, baseType: !2671, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2673, file: !38, line: 311, baseType: !732, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2673, file: !38, line: 312, baseType: !732, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2673, file: !38, line: 313, baseType: !732, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2673, file: !38, line: 314, baseType: !732, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2673, file: !38, line: 315, baseType: !2465, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2673, file: !38, line: 316, baseType: !2465, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2673, file: !38, line: 317, baseType: !2465, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2673, file: !38, line: 318, baseType: !2537, size: 64, offset: 448)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2667, file: !38, line: 446, baseType: !105, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2667, file: !38, line: 447, baseType: !2666, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2663, file: !38, line: 224, baseType: !245, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2663, file: !38, line: 226, baseType: !176, size: 128, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2663, file: !38, line: 227, baseType: !155, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2663, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2663, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2663, file: !38, line: 230, baseType: !2501, size: 64, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2663, file: !38, line: 231, baseType: !2501, size: 64, offset: 448)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2663, file: !38, line: 232, baseType: !99, size: 64, offset: 512)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2655, file: !38, line: 523, baseType: !2694, size: 192, offset: 2240)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 192, elements: !336)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !647, file: !44, line: 1458, baseType: !2696, size: 2112, offset: 4288)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2697)
!2697 = !{!2698, !2699, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2696, file: !44, line: 1411, baseType: !245, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2696, file: !44, line: 1412, baseType: !1523, size: 128, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2696, file: !44, line: 1413, baseType: !2701, size: 1920, offset: 192)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 1920, elements: !336)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2703, line: 12, size: 640, elements: !2704)
!2703 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2704 = !{!2705, !2713, !2715, !2720, !2721}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2702, file: !2703, line: 13, baseType: !2706, size: 320)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2707, line: 17, size: 320, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2706, file: !2707, line: 18, baseType: !245, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2706, file: !2707, line: 19, baseType: !245, size: 32, offset: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2706, file: !2707, line: 20, baseType: !1523, size: 128, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2706, file: !2707, line: 22, baseType: !420, size: 128, align: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2702, file: !2703, line: 14, baseType: !2714, size: 64, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2702, file: !2703, line: 15, baseType: !2716, size: 64, offset: 384)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2717, line: 16, size: 64, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2718 = !{!2719}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2716, file: !2717, line: 17, baseType: !1261, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2702, file: !2703, line: 16, baseType: !1523, size: 128, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2702, file: !2703, line: 17, baseType: !795, size: 32, offset: 576)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !647, file: !44, line: 1465, baseType: !99, size: 64, offset: 6400)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !647, file: !44, line: 1468, baseType: !259, size: 32, offset: 6464)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !647, file: !44, line: 1470, baseType: !586, size: 64, offset: 6528)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !647, file: !44, line: 1471, baseType: !586, size: 64, offset: 6592)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !647, file: !44, line: 1473, baseType: !260, size: 32, offset: 6656)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !647, file: !44, line: 1474, baseType: !2728, size: 64, offset: 6720)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !647, file: !44, line: 1477, baseType: !2731, size: 256, offset: 6784)
!2731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !2261)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !647, file: !44, line: 1478, baseType: !2733, size: 128, offset: 7040)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2734, line: 18, baseType: !2735)
!2734 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2734, line: 16, size: 128, elements: !2736)
!2736 = !{!2737}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2735, file: !2734, line: 17, baseType: !2738, size: 128)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !1765)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !647, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !647, file: !44, line: 1481, baseType: !2741, size: 32, offset: 7200)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !114, line: 150, baseType: !7)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !647, file: !44, line: 1487, baseType: !1218, size: 192, offset: 7232)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !647, file: !44, line: 1493, baseType: !151, size: 64, offset: 7424)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !647, file: !44, line: 1495, baseType: !2745, size: 64, offset: 7488)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2747)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !435, line: 135, size: 1024, align: 512, elements: !2748)
!2748 = !{!2749, !2753, !2754, !2761, !2767, !2771, !2775, !2779, !2780, !2784, !2788, !2793, !2797}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2747, file: !435, line: 136, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!245, !437, !7}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2747, file: !435, line: 137, baseType: !2750, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2747, file: !435, line: 138, baseType: !2755, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!245, !2758, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2747, file: !435, line: 139, baseType: !2762, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!245, !2758, !7, !151, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2747, file: !435, line: 141, baseType: !2768, size: 64, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!245, !2758}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2747, file: !435, line: 142, baseType: !2772, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!245, !437}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2747, file: !435, line: 143, baseType: !2776, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !437}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2747, file: !435, line: 144, baseType: !2776, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2747, file: !435, line: 145, baseType: !2781, size: 64, offset: 512)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !437, !476}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2747, file: !435, line: 146, baseType: !2785, size: 64, offset: 576)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!335, !437, !335, !245}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2747, file: !435, line: 147, baseType: !2789, size: 64, offset: 640)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!433, !2792}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2747, file: !435, line: 148, baseType: !2794, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!245, !596, !537}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2747, file: !435, line: 149, baseType: !2798, size: 64, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!437, !437, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !647, file: !44, line: 1500, baseType: !245, size: 32, offset: 7552)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !647, file: !44, line: 1502, baseType: !2805, size: 448, offset: 7616)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2449, line: 60, size: 448, elements: !2806)
!2806 = !{!2807, !2812, !2813, !2814, !2815, !2816, !2817}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2805, file: !2449, line: 61, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!155, !2811, !2447}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2805, file: !2449, line: 63, baseType: !2808, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2805, file: !2449, line: 66, baseType: !369, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2805, file: !2449, line: 67, baseType: !245, size: 32, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2805, file: !2449, line: 68, baseType: !7, size: 32, offset: 224)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2805, file: !2449, line: 71, baseType: !176, size: 128, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2805, file: !2449, line: 77, baseType: !2818, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !647, file: !44, line: 1505, baseType: !819, size: 64, offset: 8064)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !647, file: !44, line: 1508, baseType: !819, size: 64, offset: 8128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !647, file: !44, line: 1511, baseType: !245, size: 32, offset: 8192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !647, file: !44, line: 1514, baseType: !956, size: 32, offset: 8224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !647, file: !44, line: 1517, baseType: !2824, size: 64, offset: 8256)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1990, line: 18, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !647, file: !44, line: 1518, baseType: !682, size: 64, offset: 8320)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !647, file: !44, line: 1525, baseType: !1743, size: 64, offset: 8384)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !647, file: !44, line: 1532, baseType: !2829, size: 64, offset: 8448)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2830, line: 52, size: 64, elements: !2831)
!2830 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2829, file: !2830, line: 53, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2830, line: 40, size: 256, elements: !2835)
!2835 = !{!2836, !2837, !2842}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2834, file: !2830, line: 42, baseType: !302)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2834, file: !2830, line: 44, baseType: !2838, size: 192)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2830, line: 28, size: 192, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2838, file: !2830, line: 29, baseType: !176, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2838, file: !2830, line: 31, baseType: !369, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2834, file: !2830, line: 49, baseType: !369, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !647, file: !44, line: 1533, baseType: !2829, size: 64, offset: 8512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !647, file: !44, line: 1534, baseType: !420, size: 128, align: 64, offset: 8576)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !647, file: !44, line: 1535, baseType: !1989, size: 256, offset: 8704)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !647, file: !44, line: 1537, baseType: !1218, size: 192, offset: 8960)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !647, file: !44, line: 1542, baseType: !245, size: 32, offset: 9152)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !647, file: !44, line: 1545, baseType: !302, offset: 9184)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !647, file: !44, line: 1546, baseType: !176, size: 128, offset: 9216)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !647, file: !44, line: 1548, baseType: !302, offset: 9344)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !647, file: !44, line: 1549, baseType: !176, size: 128, offset: 9344)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !477, file: !44, line: 624, baseType: !781, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !477, file: !44, line: 631, baseType: !155, size: 64, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !44, line: 639, baseType: !2855, size: 32, offset: 384)
!2855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !44, line: 639, size: 32, elements: !2856)
!2856 = !{!2857, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2855, file: !44, line: 640, baseType: !2858, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2855, file: !44, line: 641, baseType: !7, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !477, file: !44, line: 643, baseType: !560, size: 32, offset: 416)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !477, file: !44, line: 644, baseType: !578, size: 64, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !477, file: !44, line: 645, baseType: !582, size: 128, offset: 512)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !477, file: !44, line: 646, baseType: !582, size: 128, offset: 640)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !477, file: !44, line: 647, baseType: !582, size: 128, offset: 768)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !477, file: !44, line: 648, baseType: !302, offset: 896)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !477, file: !44, line: 649, baseType: !125, size: 16, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !477, file: !44, line: 650, baseType: !188, size: 8, offset: 912)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !477, file: !44, line: 651, baseType: !188, size: 8, offset: 920)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !477, file: !44, line: 652, baseType: !2621, size: 64, offset: 960)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !477, file: !44, line: 659, baseType: !155, size: 64, offset: 1024)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !477, file: !44, line: 660, baseType: !815, size: 256, offset: 1088)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !477, file: !44, line: 662, baseType: !155, size: 64, offset: 1344)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !477, file: !44, line: 663, baseType: !155, size: 64, offset: 1408)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !477, file: !44, line: 665, baseType: !686, size: 128, offset: 1472)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !477, file: !44, line: 666, baseType: !176, size: 128, offset: 1600)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !477, file: !44, line: 675, baseType: !176, size: 128, offset: 1728)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !477, file: !44, line: 676, baseType: !176, size: 128, offset: 1856)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !477, file: !44, line: 677, baseType: !176, size: 128, offset: 1984)
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !44, line: 678, baseType: !2880, size: 128, offset: 2112)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !44, line: 678, size: 128, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2880, file: !44, line: 679, baseType: !682, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2880, file: !44, line: 680, baseType: !420, size: 128, align: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !477, file: !44, line: 682, baseType: !821, size: 64, offset: 2240)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !477, file: !44, line: 683, baseType: !821, size: 64, offset: 2304)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !477, file: !44, line: 684, baseType: !795, size: 32, offset: 2368)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !477, file: !44, line: 685, baseType: !795, size: 32, offset: 2400)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !477, file: !44, line: 686, baseType: !795, size: 32, offset: 2432)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !477, file: !44, line: 688, baseType: !795, size: 32, offset: 2464)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !44, line: 690, baseType: !2891, size: 64, offset: 2496)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !44, line: 690, size: 64, elements: !2892)
!2892 = !{!2893, !3116}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2891, file: !44, line: 691, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2896)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2897)
!2897 = !{!2898, !2899, !2903, !2908, !2912, !2913, !2914, !2918, !2931, !2932, !2940, !2944, !2945, !2949, !2950, !2954, !2959, !2960, !2964, !2968, !3076, !3080, !3081, !3085, !3086, !3090, !3094, !3099, !3103, !3107, !3111, !3115}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2896, file: !44, line: 1823, baseType: !105, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2896, file: !44, line: 1824, baseType: !2900, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!578, !407, !578, !245}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2896, file: !44, line: 1825, baseType: !2904, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!366, !407, !335, !182, !2907}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2896, file: !44, line: 1826, baseType: !2909, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!366, !407, !151, !182, !2907}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2896, file: !44, line: 1827, baseType: !891, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2896, file: !44, line: 1828, baseType: !891, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2896, file: !44, line: 1829, baseType: !2915, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!245, !894, !537}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2896, file: !44, line: 1830, baseType: !2919, size: 64, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!245, !407, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2924)
!2924 = !{!2925, !2930}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2923, file: !44, line: 1777, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2927)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!245, !2922, !151, !245, !578, !136, !7}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2923, file: !44, line: 1778, baseType: !578, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2896, file: !44, line: 1831, baseType: !2919, size: 64, offset: 512)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2896, file: !44, line: 1832, baseType: !2933, size: 64, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!2936, !407, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2937, line: 52, baseType: !7)
!2937 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !666, line: 27, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2896, file: !44, line: 1833, baseType: !2941, size: 64, offset: 640)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!369, !407, !7, !155}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2896, file: !44, line: 1834, baseType: !2941, size: 64, offset: 704)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2896, file: !44, line: 1835, baseType: !2946, size: 64, offset: 768)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!245, !407, !1028}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2896, file: !44, line: 1836, baseType: !155, size: 64, offset: 832)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2896, file: !44, line: 1837, baseType: !2951, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!245, !476, !407}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2896, file: !44, line: 1838, baseType: !2955, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!245, !407, !2958}
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !99)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2896, file: !44, line: 1839, baseType: !2951, size: 64, offset: 1024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2896, file: !44, line: 1840, baseType: !2961, size: 64, offset: 1088)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!245, !407, !578, !578, !245}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2896, file: !44, line: 1841, baseType: !2965, size: 64, offset: 1152)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!245, !245, !407, !245}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2896, file: !44, line: 1842, baseType: !2969, size: 64, offset: 1216)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!245, !407, !245, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !3006, !3007, !3008, !3021, !3052}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2973, file: !44, line: 1063, baseType: !2972, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2973, file: !44, line: 1064, baseType: !176, size: 128, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2973, file: !44, line: 1065, baseType: !686, size: 128, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2973, file: !44, line: 1066, baseType: !176, size: 128, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2973, file: !44, line: 1069, baseType: !176, size: 128, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2973, file: !44, line: 1072, baseType: !2958, size: 64, offset: 576)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2973, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2973, file: !44, line: 1074, baseType: !118, size: 8, offset: 672)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2973, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2973, file: !44, line: 1076, baseType: !245, size: 32, offset: 736)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2973, file: !44, line: 1077, baseType: !1523, size: 128, offset: 768)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2973, file: !44, line: 1078, baseType: !407, size: 64, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2973, file: !44, line: 1079, baseType: !578, size: 64, offset: 960)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2973, file: !44, line: 1080, baseType: !578, size: 64, offset: 1024)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2973, file: !44, line: 1082, baseType: !2990, size: 64, offset: 1088)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2992)
!2992 = !{!2993, !3001, !3002, !3003, !3004, !3005}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2991, file: !44, line: 1315, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2995, line: 20, baseType: !2996)
!2995 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2995, line: 11, elements: !2997)
!2997 = !{!2998}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2996, file: !2995, line: 12, baseType: !2999)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !207, line: 33, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 31, elements: !209)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2991, file: !44, line: 1316, baseType: !245, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2991, file: !44, line: 1317, baseType: !245, size: 32, offset: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2991, file: !44, line: 1318, baseType: !2990, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2991, file: !44, line: 1319, baseType: !407, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2991, file: !44, line: 1320, baseType: !420, size: 128, align: 64, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2973, file: !44, line: 1084, baseType: !155, size: 64, offset: 1152)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2973, file: !44, line: 1085, baseType: !155, size: 64, offset: 1216)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2973, file: !44, line: 1087, baseType: !3009, size: 64, offset: 1280)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3011)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3012)
!3012 = !{!3013, !3017}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3011, file: !44, line: 1012, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !2972, !2972}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3011, file: !44, line: 1013, baseType: !3018, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !2972}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2973, file: !44, line: 1088, baseType: !3022, size: 64, offset: 1344)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3025)
!3025 = !{!3026, !3030, !3034, !3035, !3039, !3043, !3047, !3051}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3024, file: !44, line: 1017, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!2958, !2958}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3024, file: !44, line: 1018, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !2958}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3024, file: !44, line: 1019, baseType: !3018, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3024, file: !44, line: 1020, baseType: !3036, size: 64, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!245, !2972, !245}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3024, file: !44, line: 1021, baseType: !3040, size: 64, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!537, !2972}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3024, file: !44, line: 1022, baseType: !3044, size: 64, offset: 320)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!245, !2972, !245, !179}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3024, file: !44, line: 1023, baseType: !3048, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !2972, !868}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3024, file: !44, line: 1024, baseType: !3040, size: 64, offset: 448)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2973, file: !44, line: 1097, baseType: !3053, size: 256, offset: 1408)
!3053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2973, file: !44, line: 1089, size: 256, elements: !3054)
!3054 = !{!3055, !3064, !3070}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3053, file: !44, line: 1090, baseType: !3056, size: 256)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3057, line: 10, size: 256, elements: !3058)
!3057 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3058 = !{!3059, !3060, !3063}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3056, file: !3057, line: 11, baseType: !259, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3056, file: !3057, line: 12, baseType: !3061, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3057, line: 5, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3056, file: !3057, line: 13, baseType: !176, size: 128, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3053, file: !44, line: 1091, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3057, line: 17, size: 64, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3065, file: !3057, line: 18, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3057, line: 16, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3053, file: !44, line: 1096, baseType: !3071, size: 192)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3053, file: !44, line: 1092, size: 192, elements: !3072)
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3071, file: !44, line: 1093, baseType: !176, size: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3071, file: !44, line: 1094, baseType: !245, size: 32, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3071, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2896, file: !44, line: 1843, baseType: !3077, size: 64, offset: 1280)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!366, !407, !768, !245, !182, !2907, !245}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2896, file: !44, line: 1844, baseType: !1148, size: 64, offset: 1344)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2896, file: !44, line: 1845, baseType: !3082, size: 64, offset: 1408)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!245, !245}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2896, file: !44, line: 1846, baseType: !2969, size: 64, offset: 1472)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2896, file: !44, line: 1847, baseType: !3087, size: 64, offset: 1536)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!366, !2130, !407, !2907, !182, !7}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2896, file: !44, line: 1848, baseType: !3091, size: 64, offset: 1600)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!366, !407, !2907, !2130, !182, !7}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2896, file: !44, line: 1849, baseType: !3095, size: 64, offset: 1664)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!245, !407, !369, !3098, !868}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2896, file: !44, line: 1850, baseType: !3100, size: 64, offset: 1728)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!369, !407, !245, !578, !578}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2896, file: !44, line: 1852, baseType: !3104, size: 64, offset: 1792)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !758, !407}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2896, file: !44, line: 1856, baseType: !3108, size: 64, offset: 1856)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!366, !407, !578, !407, !578, !182, !7}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2896, file: !44, line: 1858, baseType: !3112, size: 64, offset: 1920)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!578, !407, !578, !407, !578, !578, !7}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2896, file: !44, line: 1861, baseType: !2961, size: 64, offset: 1984)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2891, file: !44, line: 692, baseType: !711, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !477, file: !44, line: 694, baseType: !3118, size: 64, offset: 2560)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3120)
!3120 = !{!3121, !3122, !3123, !3124}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3119, file: !44, line: 1101, baseType: !302)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3119, file: !44, line: 1102, baseType: !176, size: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3119, file: !44, line: 1103, baseType: !176, size: 128, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3119, file: !44, line: 1104, baseType: !176, size: 128, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !477, file: !44, line: 695, baseType: !782, size: 1216, align: 64, offset: 2624)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !477, file: !44, line: 696, baseType: !176, size: 128, offset: 3840)
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !44, line: 697, baseType: !3128, size: 64, offset: 3968)
!3128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !44, line: 697, size: 64, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3135, !3136}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3128, file: !44, line: 698, baseType: !2130, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3128, file: !44, line: 699, baseType: !2646, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3128, file: !44, line: 700, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3128, file: !44, line: 701, baseType: !335, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3128, file: !44, line: 702, baseType: !7, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !477, file: !44, line: 705, baseType: !260, size: 32, offset: 4032)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !477, file: !44, line: 708, baseType: !260, size: 32, offset: 4064)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !477, file: !44, line: 709, baseType: !2728, size: 64, offset: 4096)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !477, file: !44, line: 720, baseType: !99, size: 64, offset: 4160)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !438, file: !435, line: 98, baseType: !3142, size: 256, offset: 448)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !2261)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !438, file: !435, line: 101, baseType: !3144, size: 32, offset: 704)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3145, line: 25, size: 32, elements: !3146)
!3145 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3146 = !{!3147}
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !3145, line: 26, baseType: !3148, size: 32)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3144, file: !3145, line: 26, size: 32, elements: !3149)
!3149 = !{!3150}
!3150 = !DIDerivedType(tag: DW_TAG_member, scope: !3148, file: !3145, line: 30, baseType: !3151, size: 32)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3148, file: !3145, line: 30, size: 32, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3151, file: !3145, line: 31, baseType: !302)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3151, file: !3145, line: 32, baseType: !245, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !438, file: !435, line: 102, baseType: !2745, size: 64, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !438, file: !435, line: 103, baseType: !646, size: 64, offset: 832)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !438, file: !435, line: 104, baseType: !155, size: 64, offset: 896)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !438, file: !435, line: 105, baseType: !99, size: 64, offset: 960)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !435, line: 107, baseType: !3160, size: 128, offset: 1024)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !435, line: 107, size: 128, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3160, file: !435, line: 108, baseType: !176, size: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3160, file: !435, line: 109, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !438, file: !435, line: 111, baseType: !176, size: 128, offset: 1152)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !438, file: !435, line: 112, baseType: !176, size: 128, offset: 1280)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !438, file: !435, line: 120, baseType: !3168, size: 128, offset: 1408)
!3168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !435, line: 116, size: 128, elements: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3168, file: !435, line: 117, baseType: !686, size: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3168, file: !435, line: 118, baseType: !452, size: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3168, file: !435, line: 119, baseType: !420, size: 128, align: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !408, file: !44, line: 922, baseType: !476, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !408, file: !44, line: 923, baseType: !2894, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !408, file: !44, line: 929, baseType: !302, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !408, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !408, file: !44, line: 931, baseType: !819, size: 64, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !408, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !408, file: !44, line: 933, baseType: !2741, size: 32, offset: 544)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !408, file: !44, line: 934, baseType: !1218, size: 192, offset: 576)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !408, file: !44, line: 935, baseType: !578, size: 64, offset: 768)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !408, file: !44, line: 936, baseType: !3183, size: 192, offset: 832)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3183, file: !44, line: 886, baseType: !2994)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3183, file: !44, line: 887, baseType: !1513, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3183, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3183, file: !44, line: 889, baseType: !482, size: 32, offset: 96)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3183, file: !44, line: 889, baseType: !482, size: 32, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3183, file: !44, line: 890, baseType: !245, size: 32, offset: 160)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !408, file: !44, line: 937, baseType: !1579, size: 64, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !408, file: !44, line: 938, baseType: !3193, size: 256, offset: 1088)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3194)
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3193, file: !44, line: 897, baseType: !155, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3193, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3193, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3193, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3193, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3193, file: !44, line: 904, baseType: !578, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !408, file: !44, line: 940, baseType: !136, size: 64, offset: 1344)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !408, file: !44, line: 945, baseType: !99, size: 64, offset: 1408)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !408, file: !44, line: 949, baseType: !176, size: 128, offset: 1472)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !408, file: !44, line: 950, baseType: !176, size: 128, offset: 1600)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !408, file: !44, line: 952, baseType: !781, size: 64, offset: 1728)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !408, file: !44, line: 953, baseType: !956, size: 32, offset: 1792)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !408, file: !44, line: 954, baseType: !956, size: 32, offset: 1824)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !398, file: !360, line: 174, baseType: !404, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !398, file: !360, line: 176, baseType: !3210, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!245, !407, !295, !397, !1028}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !386, file: !360, line: 90, baseType: !381, size: 64, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !386, file: !360, line: 91, baseType: !3215, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !350, file: !290, line: 143, baseType: !3217, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!3220, !295}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3222)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3223)
!3223 = !{!3224, !3225, !3229, !3233, !3239, !3243}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3222, file: !61, line: 40, baseType: !60, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3222, file: !61, line: 41, baseType: !3226, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!537}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3222, file: !61, line: 42, baseType: !3230, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!99}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3222, file: !61, line: 43, baseType: !3234, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!2158, !3237}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3222, file: !61, line: 44, baseType: !3240, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!2158}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3222, file: !61, line: 45, baseType: !515, size: 64, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !350, file: !290, line: 144, baseType: !3245, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!2158, !295}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !350, file: !290, line: 145, baseType: !3249, size: 64, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !295, !3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !289, file: !290, line: 70, baseType: !3255, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !666, line: 123, size: 1024, elements: !3257)
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3386, !3387, !3388, !3389, !3390}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3256, file: !666, line: 124, baseType: !795, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3256, file: !666, line: 125, baseType: !795, size: 32, offset: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3256, file: !666, line: 135, baseType: !3255, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3256, file: !666, line: 136, baseType: !151, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3256, file: !666, line: 138, baseType: !808, size: 192, align: 64, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3256, file: !666, line: 140, baseType: !2158, size: 64, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3256, file: !666, line: 141, baseType: !7, size: 32, offset: 448)
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !666, line: 142, baseType: !3266, size: 256, offset: 512)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !666, line: 142, size: 256, elements: !3267)
!3267 = !{!3268, !3314, !3318}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3266, file: !666, line: 143, baseType: !3269, size: 192)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !666, line: 91, size: 192, elements: !3270)
!3270 = !{!3271, !3272, !3273}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3269, file: !666, line: 92, baseType: !155, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3269, file: !666, line: 94, baseType: !804, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3269, file: !666, line: 100, baseType: !3274, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !666, line: 180, size: 704, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3286, !3287, !3288, !3312, !3313}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3275, file: !666, line: 182, baseType: !3255, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3275, file: !666, line: 183, baseType: !7, size: 32, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3275, file: !666, line: 186, baseType: !3280, size: 192, offset: 128)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3281, line: 19, size: 192, elements: !3282)
!3281 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3282 = !{!3283, !3284, !3285}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3280, file: !3281, line: 20, baseType: !786, size: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3280, file: !3281, line: 21, baseType: !7, size: 32, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3280, file: !3281, line: 22, baseType: !7, size: 32, offset: 160)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3275, file: !666, line: 187, baseType: !259, size: 32, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3275, file: !666, line: 188, baseType: !259, size: 32, offset: 352)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3275, file: !666, line: 189, baseType: !3289, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !666, line: 168, size: 320, elements: !3291)
!3291 = !{!3292, !3296, !3300, !3304, !3308}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3290, file: !666, line: 169, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!245, !758, !3274}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3290, file: !666, line: 171, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!245, !3255, !151, !375}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3290, file: !666, line: 173, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!245, !3255}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3290, file: !666, line: 174, baseType: !3305, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!245, !3255, !3255, !151}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3290, file: !666, line: 176, baseType: !3309, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!245, !758, !3255, !3274}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3275, file: !666, line: 192, baseType: !176, size: 128, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3275, file: !666, line: 194, baseType: !1523, size: 128, offset: 576)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3266, file: !666, line: 144, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !666, line: 103, size: 64, elements: !3316)
!3316 = !{!3317}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3315, file: !666, line: 104, baseType: !3255, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3266, file: !666, line: 145, baseType: !3319, size: 256)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !666, line: 107, size: 256, elements: !3320)
!3320 = !{!3321, !3381, !3384, !3385}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3319, file: !666, line: 108, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3324)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !666, line: 217, size: 768, elements: !3325)
!3325 = !{!3326, !3346, !3350, !3354, !3358, !3362, !3366, !3370, !3371, !3372, !3373, !3377}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3324, file: !666, line: 222, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!245, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !666, line: 197, size: 1088, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3331, file: !666, line: 199, baseType: !3255, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3331, file: !666, line: 200, baseType: !407, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3331, file: !666, line: 201, baseType: !758, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3331, file: !666, line: 202, baseType: !99, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3331, file: !666, line: 205, baseType: !1218, size: 192, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3331, file: !666, line: 206, baseType: !1218, size: 192, offset: 448)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3331, file: !666, line: 207, baseType: !245, size: 32, offset: 640)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3331, file: !666, line: 208, baseType: !176, size: 128, offset: 704)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3331, file: !666, line: 209, baseType: !335, size: 64, offset: 832)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3331, file: !666, line: 211, baseType: !182, size: 64, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3331, file: !666, line: 212, baseType: !537, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3331, file: !666, line: 213, baseType: !537, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3331, file: !666, line: 214, baseType: !1056, size: 64, offset: 1024)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3324, file: !666, line: 223, baseType: !3347, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !3330}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3324, file: !666, line: 236, baseType: !3351, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!245, !758, !99}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3324, file: !666, line: 238, baseType: !3355, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!99, !758, !2907}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3324, file: !666, line: 239, baseType: !3359, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!99, !758, !99, !2907}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3324, file: !666, line: 240, baseType: !3363, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !758, !99}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3324, file: !666, line: 242, baseType: !3367, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!366, !3330, !335, !182, !578}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3324, file: !666, line: 252, baseType: !182, size: 64, offset: 448)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3324, file: !666, line: 259, baseType: !537, size: 8, offset: 512)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3324, file: !666, line: 260, baseType: !3367, size: 64, offset: 576)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3324, file: !666, line: 263, baseType: !3374, size: 64, offset: 640)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!2936, !3330, !2938}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3324, file: !666, line: 266, baseType: !3378, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!245, !3330, !1028}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3319, file: !666, line: 109, baseType: !3382, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !666, line: 31, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3319, file: !666, line: 110, baseType: !578, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3319, file: !666, line: 111, baseType: !3255, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3256, file: !666, line: 148, baseType: !99, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3256, file: !666, line: 154, baseType: !136, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3256, file: !666, line: 156, baseType: !125, size: 16, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3256, file: !666, line: 157, baseType: !375, size: 16, offset: 912)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3256, file: !666, line: 158, baseType: !3391, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !666, line: 32, flags: DIFlagFwdDecl)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !289, file: !290, line: 71, baseType: !3394, size: 32, offset: 448)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3395, line: 19, size: 32, elements: !3396)
!3395 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3396 = !{!3397}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3394, file: !3395, line: 20, baseType: !1275, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !289, file: !290, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !289, file: !290, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !289, file: !290, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !289, file: !290, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !289, file: !290, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !73, line: 463, baseType: !285, size: 64, offset: 512)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !286, file: !73, line: 465, baseType: !3405, size: 64, offset: 576)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !286, file: !73, line: 467, baseType: !151, size: 64, offset: 640)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !286, file: !73, line: 468, baseType: !3409, size: 64, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3411)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3419, !3424, !3428}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3411, file: !73, line: 88, baseType: !151, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3411, file: !73, line: 89, baseType: !383, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3411, file: !73, line: 90, baseType: !3416, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!245, !285, !330}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3411, file: !73, line: 91, baseType: !3420, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!335, !285, !3423, !3252, !3253}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3411, file: !73, line: 93, baseType: !3425, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !285}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3411, file: !73, line: 95, baseType: !3429, size: 64, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3432)
!3432 = !{!3433, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3431, file: !80, line: 279, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!245, !285}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3431, file: !80, line: 280, baseType: !3425, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3431, file: !80, line: 281, baseType: !3434, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3431, file: !80, line: 282, baseType: !3434, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3431, file: !80, line: 283, baseType: !3434, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3431, file: !80, line: 284, baseType: !3434, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3431, file: !80, line: 285, baseType: !3434, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3431, file: !80, line: 286, baseType: !3434, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3431, file: !80, line: 287, baseType: !3434, size: 64, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3431, file: !80, line: 288, baseType: !3434, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3431, file: !80, line: 289, baseType: !3434, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3431, file: !80, line: 290, baseType: !3434, size: 64, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3431, file: !80, line: 291, baseType: !3434, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3431, file: !80, line: 292, baseType: !3434, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3431, file: !80, line: 293, baseType: !3434, size: 64, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3431, file: !80, line: 294, baseType: !3434, size: 64, offset: 960)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3431, file: !80, line: 295, baseType: !3434, size: 64, offset: 1024)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3431, file: !80, line: 296, baseType: !3434, size: 64, offset: 1088)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3431, file: !80, line: 297, baseType: !3434, size: 64, offset: 1152)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3431, file: !80, line: 298, baseType: !3434, size: 64, offset: 1216)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3431, file: !80, line: 299, baseType: !3434, size: 64, offset: 1280)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3431, file: !80, line: 300, baseType: !3434, size: 64, offset: 1344)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3431, file: !80, line: 301, baseType: !3434, size: 64, offset: 1408)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !286, file: !73, line: 470, baseType: !3460, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3462, line: 82, size: 1408, elements: !3463)
!3462 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3545, !3548, !3549}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3461, file: !3462, line: 83, baseType: !151, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3461, file: !3462, line: 84, baseType: !151, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3461, file: !3462, line: 85, baseType: !285, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3461, file: !3462, line: 86, baseType: !383, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3461, file: !3462, line: 87, baseType: !383, size: 64, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3461, file: !3462, line: 88, baseType: !383, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3461, file: !3462, line: 90, baseType: !3471, size: 64, offset: 384)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!245, !285, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3496, !3509, !3510, !3511, !3512, !3513, !3521, !3522, !3523, !3524, !3525, !3526}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3475, file: !67, line: 96, baseType: !151, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3475, file: !67, line: 97, baseType: !3460, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3475, file: !67, line: 99, baseType: !105, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3475, file: !67, line: 100, baseType: !151, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3475, file: !67, line: 102, baseType: !537, size: 8, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3475, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3475, file: !67, line: 105, baseType: !3484, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3487, line: 262, size: 1600, elements: !3488)
!3487 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3488 = !{!3489, !3490, !3491, !3495}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3486, file: !3487, line: 263, baseType: !2731, size: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3486, file: !3487, line: 264, baseType: !2731, size: 256, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3486, file: !3487, line: 265, baseType: !3492, size: 1024, offset: 512)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1024, elements: !3493)
!3493 = !{!3494}
!3494 = !DISubrange(count: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3486, file: !3487, line: 266, baseType: !2158, size: 64, offset: 1536)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3475, file: !67, line: 106, baseType: !3497, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3487, line: 210, size: 256, elements: !3500)
!3500 = !{!3501, !3505, !3507, !3508}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3499, file: !3487, line: 211, baseType: !3502, size: 72)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 72, elements: !3503)
!3503 = !{!3504}
!3504 = !DISubrange(count: 9)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3499, file: !3487, line: 212, baseType: !3506, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3487, line: 14, baseType: !155)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3499, file: !3487, line: 213, baseType: !260, size: 32, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3499, file: !3487, line: 214, baseType: !260, size: 32, offset: 224)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3475, file: !67, line: 108, baseType: !3434, size: 64, offset: 448)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3475, file: !67, line: 109, baseType: !3425, size: 64, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3475, file: !67, line: 110, baseType: !3434, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3475, file: !67, line: 111, baseType: !3425, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3475, file: !67, line: 112, baseType: !3514, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!245, !285, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3519)
!3519 = !{!3520}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3518, file: !80, line: 51, baseType: !245, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3475, file: !67, line: 113, baseType: !3434, size: 64, offset: 768)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3475, file: !67, line: 114, baseType: !383, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3475, file: !67, line: 115, baseType: !383, size: 64, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3475, file: !67, line: 117, baseType: !3429, size: 64, offset: 960)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3475, file: !67, line: 118, baseType: !3425, size: 64, offset: 1024)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3475, file: !67, line: 120, baseType: !3527, size: 64, offset: 1088)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3461, file: !3462, line: 91, baseType: !3416, size: 64, offset: 448)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3461, file: !3462, line: 92, baseType: !3434, size: 64, offset: 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3461, file: !3462, line: 93, baseType: !3425, size: 64, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3461, file: !3462, line: 94, baseType: !3434, size: 64, offset: 640)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3461, file: !3462, line: 95, baseType: !3425, size: 64, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3461, file: !3462, line: 97, baseType: !3434, size: 64, offset: 768)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3461, file: !3462, line: 98, baseType: !3434, size: 64, offset: 832)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3461, file: !3462, line: 100, baseType: !3514, size: 64, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3461, file: !3462, line: 101, baseType: !3434, size: 64, offset: 960)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3461, file: !3462, line: 103, baseType: !3434, size: 64, offset: 1024)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3461, file: !3462, line: 105, baseType: !3434, size: 64, offset: 1088)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3461, file: !3462, line: 107, baseType: !3429, size: 64, offset: 1152)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3461, file: !3462, line: 109, baseType: !3542, size: 64, offset: 1216)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3544)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3462, line: 109, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3461, file: !3462, line: 111, baseType: !3546, size: 64, offset: 1280)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3462, line: 111, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3461, file: !3462, line: 112, baseType: !692, offset: 1344)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3461, file: !3462, line: 114, baseType: !537, size: 8, offset: 1344)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !286, file: !73, line: 471, baseType: !3474, size: 64, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !286, file: !73, line: 473, baseType: !99, size: 64, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !286, file: !73, line: 475, baseType: !99, size: 64, offset: 960)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !286, file: !73, line: 480, baseType: !1218, size: 192, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !286, file: !73, line: 484, baseType: !3555, size: 576, offset: 1216)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3556)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3555, file: !73, line: 362, baseType: !176, size: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3555, file: !73, line: 363, baseType: !176, size: 128, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3555, file: !73, line: 364, baseType: !176, size: 128, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3555, file: !73, line: 365, baseType: !176, size: 128, offset: 384)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3555, file: !73, line: 366, baseType: !537, size: 8, offset: 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3555, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !286, file: !73, line: 485, baseType: !3564, size: 2304, offset: 1792)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3661, !3665}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3564, file: !80, line: 566, baseType: !3517, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3564, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3564, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3564, file: !80, line: 569, baseType: !537, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3564, file: !80, line: 570, baseType: !537, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3564, file: !80, line: 571, baseType: !537, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3564, file: !80, line: 572, baseType: !537, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3564, file: !80, line: 573, baseType: !537, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3564, file: !80, line: 574, baseType: !537, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3564, file: !80, line: 575, baseType: !537, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3564, file: !80, line: 576, baseType: !537, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3564, file: !80, line: 577, baseType: !259, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3564, file: !80, line: 578, baseType: !302, offset: 96)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3564, file: !80, line: 580, baseType: !176, size: 128, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3564, file: !80, line: 581, baseType: !192, size: 192, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3564, file: !80, line: 582, baseType: !3582, size: 64, offset: 448)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3584, line: 43, size: 1472, elements: !3585)
!3584 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3593, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3583, file: !3584, line: 44, baseType: !151, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3583, file: !3584, line: 45, baseType: !245, size: 32, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3583, file: !3584, line: 46, baseType: !176, size: 128, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3583, file: !3584, line: 47, baseType: !302, offset: 256)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3583, file: !3584, line: 48, baseType: !3591, size: 64, offset: 256)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3583, file: !3584, line: 49, baseType: !3594, size: 320, offset: 320)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3595, line: 11, size: 320, elements: !3596)
!3595 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3596 = !{!3597, !3598, !3599, !3604}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3594, file: !3595, line: 16, baseType: !686, size: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3594, file: !3595, line: 17, baseType: !155, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3594, file: !3595, line: 18, baseType: !3600, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3603}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3594, file: !3595, line: 19, baseType: !259, size: 32, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3583, file: !3584, line: 50, baseType: !155, size: 64, offset: 640)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3583, file: !3584, line: 51, baseType: !1345, size: 64, offset: 704)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3583, file: !3584, line: 52, baseType: !1345, size: 64, offset: 768)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3583, file: !3584, line: 53, baseType: !1345, size: 64, offset: 832)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3583, file: !3584, line: 54, baseType: !1345, size: 64, offset: 896)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3583, file: !3584, line: 55, baseType: !1345, size: 64, offset: 960)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3583, file: !3584, line: 56, baseType: !155, size: 64, offset: 1024)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3583, file: !3584, line: 57, baseType: !155, size: 64, offset: 1088)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3583, file: !3584, line: 58, baseType: !155, size: 64, offset: 1152)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3583, file: !3584, line: 59, baseType: !155, size: 64, offset: 1216)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3583, file: !3584, line: 60, baseType: !155, size: 64, offset: 1280)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3583, file: !3584, line: 61, baseType: !285, size: 64, offset: 1344)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3583, file: !3584, line: 62, baseType: !537, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3583, file: !3584, line: 63, baseType: !537, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3564, file: !80, line: 583, baseType: !537, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3564, file: !80, line: 584, baseType: !537, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3564, file: !80, line: 585, baseType: !537, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3564, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3564, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3564, file: !80, line: 592, baseType: !1337, size: 512, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3564, file: !80, line: 593, baseType: !136, size: 64, offset: 1088)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3564, file: !80, line: 594, baseType: !1989, size: 256, offset: 1152)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3564, file: !80, line: 595, baseType: !1523, size: 128, offset: 1408)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3564, file: !80, line: 596, baseType: !3591, size: 64, offset: 1536)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3564, file: !80, line: 597, baseType: !795, size: 32, offset: 1600)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3564, file: !80, line: 598, baseType: !795, size: 32, offset: 1632)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3564, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3564, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3564, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3564, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3564, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3564, file: !80, line: 604, baseType: !537, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3564, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3564, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3564, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3564, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3564, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3564, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3564, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3564, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3564, file: !80, line: 613, baseType: !245, size: 32, offset: 1792)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3564, file: !80, line: 614, baseType: !245, size: 32, offset: 1824)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3564, file: !80, line: 615, baseType: !136, size: 64, offset: 1856)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3564, file: !80, line: 616, baseType: !136, size: 64, offset: 1920)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3564, file: !80, line: 617, baseType: !136, size: 64, offset: 1984)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3564, file: !80, line: 618, baseType: !136, size: 64, offset: 2048)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3564, file: !80, line: 620, baseType: !3652, size: 64, offset: 2112)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3653, file: !80, line: 537, baseType: !302)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3653, file: !80, line: 538, baseType: !7, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3653, file: !80, line: 540, baseType: !176, size: 128, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3653, file: !80, line: 543, baseType: !3659, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3564, file: !80, line: 621, baseType: !3662, size: 64, offset: 2176)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{null, !285, !1486}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3564, file: !80, line: 622, baseType: !3666, size: 64, offset: 2240)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !286, file: !73, line: 486, baseType: !3669, size: 64, offset: 4096)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3678, !3679, !3680}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3670, file: !80, line: 643, baseType: !3431, size: 1472)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3670, file: !80, line: 644, baseType: !3434, size: 64, offset: 1472)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3670, file: !80, line: 645, baseType: !3675, size: 64, offset: 1536)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !285, !537}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3670, file: !80, line: 646, baseType: !3434, size: 64, offset: 1600)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3670, file: !80, line: 647, baseType: !3425, size: 64, offset: 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3670, file: !80, line: 648, baseType: !3425, size: 64, offset: 1728)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !286, file: !73, line: 493, baseType: !3682, size: 64, offset: 4160)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3684, line: 13, flags: DIFlagFwdDecl)
!3684 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !286, file: !73, line: 499, baseType: !176, size: 128, offset: 4224)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !286, file: !73, line: 502, baseType: !3687, size: 64, offset: 4352)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !286, file: !73, line: 504, baseType: !3691, size: 64, offset: 4416)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !286, file: !73, line: 505, baseType: !136, size: 64, offset: 4480)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !286, file: !73, line: 510, baseType: !136, size: 64, offset: 4544)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !286, file: !73, line: 511, baseType: !3695, size: 64, offset: 4608)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3697)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !286, file: !73, line: 513, baseType: !3699, size: 64, offset: 4672)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3701)
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3700, file: !73, line: 293, baseType: !7, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3700, file: !73, line: 294, baseType: !155, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !286, file: !73, line: 515, baseType: !176, size: 128, offset: 4736)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !286, file: !73, line: 526, baseType: !3706, offset: 4864)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3707, line: 5, elements: !209)
!3707 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !286, file: !73, line: 528, baseType: !3709, size: 64, offset: 4864)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3711, line: 14, flags: DIFlagFwdDecl)
!3711 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !286, file: !73, line: 529, baseType: !3713, size: 64, offset: 4928)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3715, line: 17, size: 192, elements: !3716)
!3715 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3716 = !{!3717, !3718, !3801}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3714, file: !3715, line: 18, baseType: !3713, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3714, file: !3715, line: 19, baseType: !3719, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3721)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3715, line: 110, size: 1152, elements: !3722)
!3722 = !{!3723, !3727, !3731, !3737, !3743, !3747, !3751, !3756, !3760, !3761, !3765, !3769, !3773, !3784, !3785, !3786, !3787, !3797}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3721, file: !3715, line: 111, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!3713, !3713}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3721, file: !3715, line: 112, baseType: !3728, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !3713}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3721, file: !3715, line: 113, baseType: !3732, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!537, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3714)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3721, file: !3715, line: 114, baseType: !3738, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!2158, !3735, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3721, file: !3715, line: 116, baseType: !3744, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!537, !3735, !151}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3721, file: !3715, line: 118, baseType: !3748, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!245, !3735, !151, !7, !99, !182}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3721, file: !3715, line: 123, baseType: !3752, size: 64, offset: 384)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!245, !3735, !151, !3755, !182}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3721, file: !3715, line: 126, baseType: !3757, size: 64, offset: 448)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!151, !3735}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3721, file: !3715, line: 127, baseType: !3757, size: 64, offset: 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3721, file: !3715, line: 128, baseType: !3762, size: 64, offset: 576)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!3713, !3735}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3721, file: !3715, line: 130, baseType: !3766, size: 64, offset: 640)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!3713, !3735, !3713}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3721, file: !3715, line: 133, baseType: !3770, size: 64, offset: 704)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!3713, !3735, !151}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3721, file: !3715, line: 135, baseType: !3774, size: 64, offset: 768)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!245, !3735, !151, !151, !7, !7, !3777}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3715, line: 43, size: 640, elements: !3779)
!3779 = !{!3780, !3781, !3782}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3778, file: !3715, line: 44, baseType: !3713, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3778, file: !3715, line: 45, baseType: !7, size: 32, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3778, file: !3715, line: 46, baseType: !3783, size: 512, offset: 128)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 512, elements: !1375)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3721, file: !3715, line: 140, baseType: !3766, size: 64, offset: 832)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3721, file: !3715, line: 143, baseType: !3762, size: 64, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3721, file: !3715, line: 145, baseType: !3724, size: 64, offset: 960)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3721, file: !3715, line: 146, baseType: !3788, size: 64, offset: 1024)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!245, !3735, !3791}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3715, line: 29, size: 128, elements: !3793)
!3793 = !{!3794, !3795, !3796}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3792, file: !3715, line: 30, baseType: !7, size: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3792, file: !3715, line: 31, baseType: !7, size: 32, offset: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3792, file: !3715, line: 32, baseType: !3735, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3721, file: !3715, line: 148, baseType: !3798, size: 64, offset: 1088)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!245, !3735, !285}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3714, file: !3715, line: 20, baseType: !285, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !286, file: !73, line: 534, baseType: !560, size: 32, offset: 4992)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !286, file: !73, line: 535, baseType: !259, size: 32, offset: 5024)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !286, file: !73, line: 537, baseType: !302, offset: 5056)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !286, file: !73, line: 538, baseType: !176, size: 128, offset: 5056)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !286, file: !73, line: 540, baseType: !3807, size: 64, offset: 5184)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3809, line: 54, size: 960, elements: !3810)
!3809 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3821, !3825, !3826, !3827, !3828, !3832, !3836, !3837}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3808, file: !3809, line: 55, baseType: !151, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3808, file: !3809, line: 56, baseType: !105, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3808, file: !3809, line: 58, baseType: !383, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3808, file: !3809, line: 59, baseType: !383, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3808, file: !3809, line: 60, baseType: !295, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3808, file: !3809, line: 62, baseType: !3416, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3808, file: !3809, line: 63, baseType: !3818, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!335, !285, !3423}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3808, file: !3809, line: 65, baseType: !3822, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3807}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3808, file: !3809, line: 66, baseType: !3425, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3808, file: !3809, line: 68, baseType: !3434, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3808, file: !3809, line: 70, baseType: !3220, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3808, file: !3809, line: 71, baseType: !3829, size: 64, offset: 704)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!2158, !285}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3808, file: !3809, line: 73, baseType: !3833, size: 64, offset: 768)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !285, !3252, !3253}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3808, file: !3809, line: 75, baseType: !3429, size: 64, offset: 832)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3808, file: !3809, line: 77, baseType: !3546, size: 64, offset: 896)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !286, file: !73, line: 541, baseType: !383, size: 64, offset: 5248)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !286, file: !73, line: 543, baseType: !3425, size: 64, offset: 5312)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !286, file: !73, line: 544, baseType: !3841, size: 64, offset: 5376)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !286, file: !73, line: 545, baseType: !3844, size: 64, offset: 5440)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !286, file: !73, line: 547, baseType: !537, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !286, file: !73, line: 548, baseType: !537, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !286, file: !73, line: 549, baseType: !537, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !286, file: !73, line: 550, baseType: !537, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !225, file: !220, line: 635, baseType: !286, size: 5568, offset: 2304)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !225, file: !220, line: 636, baseType: !397, size: 64, offset: 7872)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !225, file: !220, line: 637, baseType: !397, size: 64, offset: 7936)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !225, file: !220, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !219, file: !220, line: 312, baseType: !224, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !219, file: !220, line: 314, baseType: !99, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !219, file: !220, line: 315, baseType: !270, size: 64, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !219, file: !220, line: 316, baseType: !3858, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !220, line: 69, size: 832, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3866, !3867}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3859, file: !220, line: 70, baseType: !224, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3859, file: !220, line: 71, baseType: !176, size: 128, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3859, file: !220, line: 72, baseType: !3864, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !220, line: 72, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3859, file: !220, line: 73, baseType: !118, size: 8, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3859, file: !220, line: 74, baseType: !289, size: 512, offset: 320)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !219, file: !220, line: 318, baseType: !7, size: 32, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !219, file: !220, line: 319, baseType: !125, size: 16, offset: 480)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !219, file: !220, line: 320, baseType: !125, size: 16, offset: 496)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !219, file: !220, line: 321, baseType: !125, size: 16, offset: 512)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !219, file: !220, line: 322, baseType: !125, size: 16, offset: 528)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !219, file: !220, line: 323, baseType: !7, size: 32, offset: 544)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !219, file: !220, line: 324, baseType: !188, size: 8, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !219, file: !220, line: 325, baseType: !188, size: 8, offset: 584)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !219, file: !220, line: 330, baseType: !188, size: 8, offset: 592)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !219, file: !220, line: 331, baseType: !188, size: 8, offset: 600)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !219, file: !220, line: 332, baseType: !188, size: 8, offset: 608)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !219, file: !220, line: 333, baseType: !188, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !219, file: !220, line: 334, baseType: !188, size: 8, offset: 624)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !219, file: !220, line: 335, baseType: !188, size: 8, offset: 632)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !219, file: !220, line: 336, baseType: !906, size: 16, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !219, file: !220, line: 337, baseType: !3884, size: 64, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !219, file: !220, line: 339, baseType: !3886, size: 64, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !220, line: 858, size: 2048, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3903, !3907, !3911, !3915, !3919, !3920, !3924, !3943, !3944, !3945}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3887, file: !220, line: 859, baseType: !176, size: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3887, file: !220, line: 860, baseType: !151, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3887, file: !220, line: 861, baseType: !3892, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3894)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3487, line: 38, size: 256, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3894, file: !3487, line: 39, baseType: !260, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3894, file: !3487, line: 39, baseType: !260, size: 32, offset: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3894, file: !3487, line: 40, baseType: !260, size: 32, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3894, file: !3487, line: 40, baseType: !260, size: 32, offset: 96)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3894, file: !3487, line: 41, baseType: !260, size: 32, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3894, file: !3487, line: 41, baseType: !260, size: 32, offset: 160)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3894, file: !3487, line: 42, baseType: !3506, size: 64, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3887, file: !220, line: 862, baseType: !3904, size: 64, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!245, !218, !3892}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3887, file: !220, line: 863, baseType: !3908, size: 64, offset: 320)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !218}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3887, file: !220, line: 864, baseType: !3912, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!245, !218, !3517}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3887, file: !220, line: 865, baseType: !3916, size: 64, offset: 448)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!245, !218}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3887, file: !220, line: 866, baseType: !3908, size: 64, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3887, file: !220, line: 867, baseType: !3921, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!245, !218, !245}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3887, file: !220, line: 868, baseType: !3925, size: 64, offset: 640)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3927)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !220, line: 795, size: 384, elements: !3928)
!3928 = !{!3929, !3935, !3939, !3940, !3941, !3942}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3927, file: !220, line: 797, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!3933, !218, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !220, line: 772, baseType: !7)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !220, line: 180, baseType: !7)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3927, file: !220, line: 801, baseType: !3936, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!3933, !218}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3927, file: !220, line: 804, baseType: !3936, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3927, file: !220, line: 807, baseType: !3908, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3927, file: !220, line: 808, baseType: !3908, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3927, file: !220, line: 811, baseType: !3908, size: 64, offset: 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3887, file: !220, line: 869, baseType: !383, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3887, file: !220, line: 870, baseType: !3475, size: 1152, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3887, file: !220, line: 871, baseType: !3946, size: 128, offset: 1920)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !220, line: 759, size: 128, elements: !3947)
!3947 = !{!3948, !3949}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3946, file: !220, line: 760, baseType: !302)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3946, file: !220, line: 761, baseType: !176, size: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !219, file: !220, line: 340, baseType: !136, size: 64, offset: 832)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !219, file: !220, line: 346, baseType: !3700, size: 128, offset: 896)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !219, file: !220, line: 348, baseType: !3953, size: 32, offset: 1024)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !220, line: 155, baseType: !245)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !219, file: !220, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !219, file: !220, line: 352, baseType: !188, size: 8, offset: 1064)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !219, file: !220, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !219, file: !220, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !219, file: !220, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !219, file: !220, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !219, file: !220, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !219, file: !220, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !219, file: !220, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !219, file: !220, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !219, file: !220, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !219, file: !220, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !219, file: !220, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !219, file: !220, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !219, file: !220, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !219, file: !220, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !219, file: !220, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !219, file: !220, line: 376, baseType: !7, size: 32, offset: 1120)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !219, file: !220, line: 377, baseType: !7, size: 32, offset: 1152)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !219, file: !220, line: 380, baseType: !3974, size: 64, offset: 1216)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !220, line: 303, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !219, file: !220, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !219, file: !220, line: 383, baseType: !245, size: 32, offset: 1312)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !219, file: !220, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !219, file: !220, line: 387, baseType: !3934, size: 32, offset: 1376)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !219, file: !220, line: 388, baseType: !286, size: 5568, offset: 1408)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !219, file: !220, line: 390, baseType: !245, size: 32, offset: 6976)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !219, file: !220, line: 396, baseType: !7, size: 32, offset: 7008)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !219, file: !220, line: 397, baseType: !3984, size: 8704, offset: 7040)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 8704, elements: !3985)
!3985 = !{!3986}
!3986 = !DISubrange(count: 17)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !219, file: !220, line: 399, baseType: !537, size: 8, offset: 15744)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !219, file: !220, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !219, file: !220, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !219, file: !220, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !219, file: !220, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !219, file: !220, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !219, file: !220, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !219, file: !220, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !219, file: !220, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !219, file: !220, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !219, file: !220, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !219, file: !220, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !219, file: !220, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !219, file: !220, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !219, file: !220, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !219, file: !220, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !219, file: !220, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !219, file: !220, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !219, file: !220, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !219, file: !220, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !219, file: !220, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !219, file: !220, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !219, file: !220, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !219, file: !220, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !219, file: !220, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !219, file: !220, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !219, file: !220, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !219, file: !220, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !219, file: !220, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !219, file: !220, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !219, file: !220, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !219, file: !220, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !219, file: !220, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !219, file: !220, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !219, file: !220, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !219, file: !220, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !219, file: !220, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !219, file: !220, line: 450, baseType: !4025, size: 16, offset: 15792)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !220, line: 206, baseType: !125)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !219, file: !220, line: 451, baseType: !795, size: 32, offset: 15808)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !219, file: !220, line: 453, baseType: !4028, size: 512, offset: 15840)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 512, elements: !1765)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !219, file: !220, line: 454, baseType: !682, size: 64, offset: 16384)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !219, file: !220, line: 455, baseType: !397, size: 64, offset: 16448)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !219, file: !220, line: 456, baseType: !245, size: 32, offset: 16512)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !219, file: !220, line: 457, baseType: !4033, size: 1088, offset: 16576)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 1088, elements: !3985)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !219, file: !220, line: 458, baseType: !4033, size: 1088, offset: 17664)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !219, file: !220, line: 469, baseType: !383, size: 64, offset: 18752)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !219, file: !220, line: 471, baseType: !4037, size: 64, offset: 18816)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !220, line: 304, flags: DIFlagFwdDecl)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !220, line: 478, baseType: !4040, size: 64, offset: 18880)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !220, line: 478, size: 64, elements: !4041)
!4041 = !{!4042, !4045}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4040, file: !220, line: 479, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !220, line: 305, flags: DIFlagFwdDecl)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4040, file: !220, line: 480, baseType: !218, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !219, file: !220, line: 482, baseType: !906, size: 16, offset: 18944)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !219, file: !220, line: 483, baseType: !188, size: 8, offset: 18960)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !219, file: !220, line: 497, baseType: !906, size: 16, offset: 18976)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !219, file: !220, line: 498, baseType: !135, size: 64, offset: 19008)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !219, file: !220, line: 499, baseType: !182, size: 64, offset: 19072)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !219, file: !220, line: 500, baseType: !335, size: 64, offset: 19136)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !219, file: !220, line: 502, baseType: !155, size: 64, offset: 19200)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "resource_setup_done", scope: !101, file: !102, line: 163, baseType: !188, size: 8, offset: 2688)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !101, file: !102, line: 166, baseType: !4055, size: 64, offset: 2752)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_operations", file: !102, line: 121, size: 384, elements: !4057)
!4057 = !{!4058, !4062, !4063, !4068, !4073, !4085}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4056, file: !102, line: 122, baseType: !4059, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!245, !100}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4056, file: !102, line: 123, baseType: !4059, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4056, file: !102, line: 124, baseType: !4064, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!245, !100, !4067}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "set_socket", scope: !4056, file: !102, line: 125, baseType: !4069, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!245, !100, !4072}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "set_io_map", scope: !4056, file: !102, line: 126, baseType: !4074, size: 64, offset: 256)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!245, !100, !4077}
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_io_map", file: !102, line: 84, size: 192, elements: !4079)
!4079 = !{!4080, !4081, !4082, !4083, !4084}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4078, file: !102, line: 85, baseType: !117, size: 8)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4078, file: !102, line: 86, baseType: !117, size: 8, offset: 8)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4078, file: !102, line: 87, baseType: !124, size: 16, offset: 16)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4078, file: !102, line: 88, baseType: !135, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4078, file: !102, line: 88, baseType: !135, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem_map", scope: !4056, file: !102, line: 127, baseType: !4086, size: 64, offset: 320)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!245, !100, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "resource_ops", scope: !101, file: !102, line: 167, baseType: !4091, size: 64, offset: 2816)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_resource_ops", file: !4093, line: 46, size: 320, elements: !4094)
!4093 = !DIFile(filename: "drivers/pcmcia/cs_internal.h", directory: "/home/lizy2001/genbc/linux")
!4094 = !{!4095, !4096, !4101, !4105, !4106}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "validate_mem", scope: !4092, file: !4093, line: 47, baseType: !4059, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "find_io", scope: !4092, file: !4093, line: 48, baseType: !4097, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!245, !100, !7, !2714, !7, !7, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "find_mem", scope: !4092, file: !4093, line: 54, baseType: !4102, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!143, !155, !155, !155, !245, !100}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4092, file: !4093, line: 57, baseType: !4059, size: 64, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4092, file: !4093, line: 58, baseType: !4107, size: 64, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{null, !100}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "resource_data", scope: !101, file: !102, line: 168, baseType: !99, size: 64, offset: 2880)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "zoom_video", scope: !101, file: !102, line: 172, baseType: !4112, size: 64, offset: 2944)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !100, !245}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "power_hook", scope: !101, file: !102, line: 176, baseType: !4116, size: 64, offset: 3008)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!245, !100, !245}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "tune_bridge", scope: !101, file: !102, line: 180, baseType: !4120, size: 64, offset: 3072)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !100, !224}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !101, file: !102, line: 184, baseType: !1261, size: 64, offset: 3136)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "thread_done", scope: !101, file: !102, line: 185, baseType: !192, size: 192, offset: 3200)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_events", scope: !101, file: !102, line: 186, baseType: !7, size: 32, offset: 3392)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_events", scope: !101, file: !102, line: 187, baseType: !7, size: 32, offset: 3424)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "skt_mutex", scope: !101, file: !102, line: 191, baseType: !1218, size: 192, offset: 3456)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ops_mutex", scope: !101, file: !102, line: 192, baseType: !1218, size: 192, offset: 3648)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "thread_lock", scope: !101, file: !102, line: 195, baseType: !302, offset: 3840)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !101, file: !102, line: 198, baseType: !4131, size: 64, offset: 3840)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_callback", file: !4093, line: 102, size: 512, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4142, !4143, !4144}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4132, file: !4093, line: 103, baseType: !105, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4132, file: !4093, line: 104, baseType: !4059, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4132, file: !4093, line: 105, baseType: !4059, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "requery", scope: !4132, file: !4093, line: 106, baseType: !4107, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !4132, file: !4093, line: 107, baseType: !4139, size: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!245, !100, !2714}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4132, file: !4093, line: 108, baseType: !4059, size: 64, offset: 320)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "early_resume", scope: !4132, file: !4093, line: 109, baseType: !4059, size: 64, offset: 384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4132, file: !4093, line: 110, baseType: !4059, size: 64, offset: 448)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "devices_list", scope: !101, file: !102, line: 203, baseType: !176, size: 128, offset: 3904)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !101, file: !102, line: 207, baseType: !188, size: 8, offset: 4032)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "pcmcia_pfc", scope: !101, file: !102, line: 210, baseType: !188, size: 8, offset: 4040)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !101, file: !102, line: 213, baseType: !795, size: 32, offset: 4064)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "pcmcia_irq", scope: !101, file: !102, line: 216, baseType: !7, size: 32, offset: 4096)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !101, file: !102, line: 221, baseType: !286, size: 5568, offset: 4160)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !101, file: !102, line: 223, baseType: !99, size: 64, offset: 9728)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "resume_status", scope: !101, file: !102, line: 225, baseType: !245, size: 32, offset: 9792)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4155 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !179)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4161)
!4161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !245)
!4162 = !{!0, !4163, !4168, !4171, !4176, !4228, !4233, !4235, !4240, !4242, !4247, !4249, !4254, !4256, !4258, !4260, !4265, !4267, !4269, !4271, !4273, !4275, !4280, !4282, !4284, !4286, !4289, !4291, !4293, !4295, !4300, !4302, !4304, !4306, !4311, !4313, !4318, !4320, !4325, !4327, !4329, !4331, !4336, !4338, !4340, !4342, !4344, !4346, !4351, !4353, !4358, !4360}
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description235", scope: !2, file: !3, line: 41, type: !4165, isLocal: true, isDefinition: true, align: 8)
!4165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 408, elements: !4166)
!4166 = !{!4167}
!4167 = !DISubrange(count: 51)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file236", scope: !2, file: !3, line: 42, type: !4170, isLocal: true, isDefinition: true, align: 8)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 352, elements: !1194)
!4171 = !DIGlobalVariableExpression(var: !4172, expr: !DIExpression())
!4172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license237", scope: !2, file: !3, line: 42, type: !4173, isLocal: true, isDefinition: true, align: 8)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 192, elements: !4174)
!4174 = !{!4175}
!4175 = !DISubrange(count: 24)
!4176 = !DIGlobalVariableExpression(var: !4177, expr: !DIExpression())
!4177 = distinct !DIGlobalVariable(name: "__param_setup_delay", scope: !2, file: !3, line: 46, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4179)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4180, line: 69, size: 320, elements: !4181)
!4180 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4181 = !{!4182, !4183, !4184, !4200, !4202, !4206, !4207}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4179, file: !4180, line: 70, baseType: !151, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4179, file: !4180, line: 71, baseType: !105, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4179, file: !4180, line: 72, baseType: !4185, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4187)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4180, line: 47, size: 256, elements: !4188)
!4188 = !{!4189, !4190, !4195, !4199}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4187, file: !4180, line: 49, baseType: !7, size: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4187, file: !4180, line: 51, baseType: !4191, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!245, !151, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4187, file: !4180, line: 53, baseType: !4196, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!245, !335, !4194}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4187, file: !4180, line: 55, baseType: !515, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4179, file: !4180, line: 73, baseType: !4201, size: 16, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4179, file: !4180, line: 74, baseType: !4203, size: 8, offset: 208)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !137, line: 16, baseType: !4204)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !139, line: 20, baseType: !4205)
!4205 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4179, file: !4180, line: 75, baseType: !188, size: 8, offset: 216)
!4207 = !DIDerivedType(tag: DW_TAG_member, scope: !4179, file: !4180, line: 76, baseType: !4208, size: 64, offset: 256)
!4208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4179, file: !4180, line: 76, size: 64, elements: !4209)
!4209 = !{!4210, !4211, !4218}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4208, file: !4180, line: 77, baseType: !99, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4208, file: !4180, line: 78, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4214)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4180, line: 86, size: 128, elements: !4215)
!4215 = !{!4216, !4217}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4214, file: !4180, line: 87, baseType: !7, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4214, file: !4180, line: 88, baseType: !335, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4208, file: !4180, line: 79, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4221)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4180, line: 92, size: 256, elements: !4222)
!4222 = !{!4223, !4224, !4225, !4226, !4227}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4221, file: !4180, line: 94, baseType: !7, size: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4221, file: !4180, line: 95, baseType: !7, size: 32, offset: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4221, file: !4180, line: 96, baseType: !2714, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4221, file: !4180, line: 97, baseType: !4185, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4221, file: !4180, line: 98, baseType: !99, size: 64, offset: 192)
!4228 = !DIGlobalVariableExpression(var: !4229, expr: !DIExpression())
!4229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_setup_delaytype238", scope: !2, file: !3, line: 46, type: !4230, isLocal: true, isDefinition: true, align: 8)
!4230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 296, elements: !4231)
!4231 = !{!4232}
!4232 = !DISubrange(count: 37)
!4233 = !DIGlobalVariableExpression(var: !4234, expr: !DIExpression())
!4234 = distinct !DIGlobalVariable(name: "__param_resume_delay", scope: !2, file: !3, line: 47, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4235 = !DIGlobalVariableExpression(var: !4236, expr: !DIExpression())
!4236 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_resume_delaytype239", scope: !2, file: !3, line: 47, type: !4237, isLocal: true, isDefinition: true, align: 8)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 304, elements: !4238)
!4238 = !{!4239}
!4239 = !DISubrange(count: 38)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(name: "__param_shutdown_delay", scope: !2, file: !3, line: 48, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_shutdown_delaytype240", scope: !2, file: !3, line: 48, type: !4244, isLocal: true, isDefinition: true, align: 8)
!4244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 320, elements: !4245)
!4245 = !{!4246}
!4246 = !DISubrange(count: 40)
!4247 = !DIGlobalVariableExpression(var: !4248, expr: !DIExpression())
!4248 = distinct !DIGlobalVariable(name: "__param_vcc_settle", scope: !2, file: !3, line: 49, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4249 = !DIGlobalVariableExpression(var: !4250, expr: !DIExpression())
!4250 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_vcc_settletype241", scope: !2, file: !3, line: 49, type: !4251, isLocal: true, isDefinition: true, align: 8)
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 288, elements: !4252)
!4252 = !{!4253}
!4253 = !DISubrange(count: 36)
!4254 = !DIGlobalVariableExpression(var: !4255, expr: !DIExpression())
!4255 = distinct !DIGlobalVariable(name: "__param_reset_time", scope: !2, file: !3, line: 50, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4256 = !DIGlobalVariableExpression(var: !4257, expr: !DIExpression())
!4257 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_reset_timetype242", scope: !2, file: !3, line: 50, type: !4251, isLocal: true, isDefinition: true, align: 8)
!4258 = !DIGlobalVariableExpression(var: !4259, expr: !DIExpression())
!4259 = distinct !DIGlobalVariable(name: "__param_unreset_delay", scope: !2, file: !3, line: 51, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4260 = !DIGlobalVariableExpression(var: !4261, expr: !DIExpression())
!4261 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_unreset_delaytype243", scope: !2, file: !3, line: 51, type: !4262, isLocal: true, isDefinition: true, align: 8)
!4262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 312, elements: !4263)
!4263 = !{!4264}
!4264 = !DISubrange(count: 39)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(name: "__param_unreset_check", scope: !2, file: !3, line: 52, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4267 = !DIGlobalVariableExpression(var: !4268, expr: !DIExpression())
!4268 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_unreset_checktype244", scope: !2, file: !3, line: 52, type: !4262, isLocal: true, isDefinition: true, align: 8)
!4269 = !DIGlobalVariableExpression(var: !4270, expr: !DIExpression())
!4270 = distinct !DIGlobalVariable(name: "__param_unreset_limit", scope: !2, file: !3, line: 53, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4271 = !DIGlobalVariableExpression(var: !4272, expr: !DIExpression())
!4272 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_unreset_limittype245", scope: !2, file: !3, line: 53, type: !4262, isLocal: true, isDefinition: true, align: 8)
!4273 = !DIGlobalVariableExpression(var: !4274, expr: !DIExpression())
!4274 = distinct !DIGlobalVariable(name: "__param_cis_speed", scope: !2, file: !3, line: 56, type: !4178, isLocal: true, isDefinition: true, align: 64)
!4275 = !DIGlobalVariableExpression(var: !4276, expr: !DIExpression())
!4276 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_cis_speedtype246", scope: !2, file: !3, line: 56, type: !4277, isLocal: true, isDefinition: true, align: 8)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 280, elements: !4278)
!4278 = !{!4279}
!4279 = !DISubrange(count: 35)
!4280 = !DIGlobalVariableExpression(var: !4281, expr: !DIExpression())
!4281 = distinct !DIGlobalVariable(name: "dead_socket", scope: !2, file: !3, line: 59, type: !109, isLocal: false, isDefinition: true)
!4282 = !DIGlobalVariableExpression(var: !4283, expr: !DIExpression())
!4283 = distinct !DIGlobalVariable(name: "pcmcia_socket_list", scope: !2, file: !3, line: 66, type: !176, isLocal: false, isDefinition: true)
!4284 = !DIGlobalVariableExpression(var: !4285, expr: !DIExpression())
!4285 = distinct !DIGlobalVariable(name: "pcmcia_socket_list_rwsem", scope: !2, file: !3, line: 69, type: !815, isLocal: false, isDefinition: true)
!4286 = !DIGlobalVariableExpression(var: !4287, expr: !DIExpression())
!4287 = distinct !DIGlobalVariable(name: "__key", scope: !4288, file: !3, line: 157, type: !692, isLocal: true, isDefinition: true)
!4288 = distinct !DISubprogram(name: "pcmcia_register_socket", scope: !3, file: !3, line: 103, type: !4060, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4289 = !DIGlobalVariableExpression(var: !4290, expr: !DIExpression())
!4290 = distinct !DIGlobalVariable(name: "__key", scope: !4288, file: !3, line: 158, type: !692, isLocal: true, isDefinition: true)
!4291 = !DIGlobalVariableExpression(var: !4292, expr: !DIExpression())
!4292 = distinct !DIGlobalVariable(name: "pcmcia_socket_class", scope: !2, file: !3, line: 896, type: !3808, isLocal: false, isDefinition: true)
!4293 = !DIGlobalVariableExpression(var: !4294, expr: !DIExpression())
!4294 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_pcmcia_cs255", scope: !2, file: !3, line: 918, type: !99, isLocal: true, isDefinition: true)
!4295 = !DIGlobalVariableExpression(var: !4296, expr: !DIExpression())
!4296 = distinct !DIGlobalVariable(name: "__exitcall_exit_pcmcia_cs", scope: !2, file: !3, line: 919, type: !4297, isLocal: true, isDefinition: true)
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4298, line: 117, baseType: !4299)
!4298 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(name: "pcmcia_unload", scope: !2, file: !3, line: 827, type: !192, isLocal: true, isDefinition: true)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "__param_str_setup_delay", scope: !2, file: !3, line: 46, type: !4173, isLocal: true, isDefinition: true)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(name: "setup_delay", scope: !2, file: !3, line: 46, type: !245, isLocal: true, isDefinition: true)
!4306 = !DIGlobalVariableExpression(var: !4307, expr: !DIExpression())
!4307 = distinct !DIGlobalVariable(name: "__param_str_resume_delay", scope: !2, file: !3, line: 47, type: !4308, isLocal: true, isDefinition: true)
!4308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 200, elements: !4309)
!4309 = !{!4310}
!4310 = !DISubrange(count: 25)
!4311 = !DIGlobalVariableExpression(var: !4312, expr: !DIExpression())
!4312 = distinct !DIGlobalVariable(name: "resume_delay", scope: !2, file: !3, line: 47, type: !245, isLocal: true, isDefinition: true)
!4313 = !DIGlobalVariableExpression(var: !4314, expr: !DIExpression())
!4314 = distinct !DIGlobalVariable(name: "__param_str_shutdown_delay", scope: !2, file: !3, line: 48, type: !4315, isLocal: true, isDefinition: true)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 216, elements: !4316)
!4316 = !{!4317}
!4317 = !DISubrange(count: 27)
!4318 = !DIGlobalVariableExpression(var: !4319, expr: !DIExpression())
!4319 = distinct !DIGlobalVariable(name: "shutdown_delay", scope: !2, file: !3, line: 48, type: !245, isLocal: true, isDefinition: true)
!4320 = !DIGlobalVariableExpression(var: !4321, expr: !DIExpression())
!4321 = distinct !DIGlobalVariable(name: "__param_str_vcc_settle", scope: !2, file: !3, line: 49, type: !4322, isLocal: true, isDefinition: true)
!4322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 184, elements: !4323)
!4323 = !{!4324}
!4324 = !DISubrange(count: 23)
!4325 = !DIGlobalVariableExpression(var: !4326, expr: !DIExpression())
!4326 = distinct !DIGlobalVariable(name: "vcc_settle", scope: !2, file: !3, line: 49, type: !245, isLocal: true, isDefinition: true)
!4327 = !DIGlobalVariableExpression(var: !4328, expr: !DIExpression())
!4328 = distinct !DIGlobalVariable(name: "__param_str_reset_time", scope: !2, file: !3, line: 50, type: !4322, isLocal: true, isDefinition: true)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(name: "reset_time", scope: !2, file: !3, line: 50, type: !245, isLocal: true, isDefinition: true)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(name: "__param_str_unreset_delay", scope: !2, file: !3, line: 51, type: !4333, isLocal: true, isDefinition: true)
!4333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 208, elements: !4334)
!4334 = !{!4335}
!4335 = !DISubrange(count: 26)
!4336 = !DIGlobalVariableExpression(var: !4337, expr: !DIExpression())
!4337 = distinct !DIGlobalVariable(name: "unreset_delay", scope: !2, file: !3, line: 51, type: !245, isLocal: true, isDefinition: true)
!4338 = !DIGlobalVariableExpression(var: !4339, expr: !DIExpression())
!4339 = distinct !DIGlobalVariable(name: "__param_str_unreset_check", scope: !2, file: !3, line: 52, type: !4333, isLocal: true, isDefinition: true)
!4340 = !DIGlobalVariableExpression(var: !4341, expr: !DIExpression())
!4341 = distinct !DIGlobalVariable(name: "unreset_check", scope: !2, file: !3, line: 52, type: !245, isLocal: true, isDefinition: true)
!4342 = !DIGlobalVariableExpression(var: !4343, expr: !DIExpression())
!4343 = distinct !DIGlobalVariable(name: "__param_str_unreset_limit", scope: !2, file: !3, line: 53, type: !4333, isLocal: true, isDefinition: true)
!4344 = !DIGlobalVariableExpression(var: !4345, expr: !DIExpression())
!4345 = distinct !DIGlobalVariable(name: "unreset_limit", scope: !2, file: !3, line: 53, type: !245, isLocal: true, isDefinition: true)
!4346 = !DIGlobalVariableExpression(var: !4347, expr: !DIExpression())
!4347 = distinct !DIGlobalVariable(name: "__param_str_cis_speed", scope: !2, file: !3, line: 56, type: !4348, isLocal: true, isDefinition: true)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 176, elements: !4349)
!4349 = !{!4350}
!4350 = !DISubrange(count: 22)
!4351 = !DIGlobalVariableExpression(var: !4352, expr: !DIExpression())
!4352 = distinct !DIGlobalVariable(name: "cis_speed", scope: !2, file: !3, line: 56, type: !245, isLocal: true, isDefinition: true)
!4353 = !DIGlobalVariableExpression(var: !4354, expr: !DIExpression())
!4354 = distinct !DIGlobalVariable(name: "__key", scope: !4355, file: !193, line: 88, type: !692, isLocal: true, isDefinition: true)
!4355 = distinct !DISubprogram(name: "__init_completion", scope: !193, file: !193, line: 85, type: !4356, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{null, !1543}
!4358 = !DIGlobalVariableExpression(var: !4359, expr: !DIExpression())
!4359 = distinct !DIGlobalVariable(name: "pcmcia_socket_pm_ops", scope: !2, file: !3, line: 871, type: !3430, isLocal: true, isDefinition: true)
!4360 = !DIGlobalVariableExpression(var: !4361, expr: !DIExpression())
!4361 = distinct !DIGlobalVariable(name: "__key", scope: !4362, file: !3, line: 909, type: !692, isLocal: true, isDefinition: true)
!4362 = distinct !DISubprogram(name: "init_pcmcia_cs", scope: !3, file: !3, line: 906, type: !4363, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!245}
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 504, elements: !4366)
!4366 = !{!4367}
!4367 = !DISubrange(count: 63)
!4368 = !{!"rsp"}
!4369 = !{i32 7, !"Dwarf Version", i32 4}
!4370 = !{i32 2, !"Debug Info Version", i32 3}
!4371 = !{i32 1, !"wchar_size", i32 2}
!4372 = !{i32 1, !"Code Model", i32 2}
!4373 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4374 = distinct !DISubprogram(name: "pcmcia_get_socket", scope: !3, file: !3, line: 73, type: !4375, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!100, !100}
!4377 = !DILocalVariable(name: "skt", arg: 1, scope: !4374, file: !3, line: 73, type: !100)
!4378 = !DILocation(line: 73, column: 63, scope: !4374)
!4379 = !DILocalVariable(name: "dev", scope: !4374, file: !3, line: 75, type: !285)
!4380 = !DILocation(line: 75, column: 17, scope: !4374)
!4381 = !DILocation(line: 75, column: 35, scope: !4374)
!4382 = !DILocation(line: 75, column: 40, scope: !4374)
!4383 = !DILocation(line: 75, column: 23, scope: !4374)
!4384 = !DILocation(line: 76, column: 7, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 76, column: 6)
!4386 = !DILocation(line: 76, column: 6, scope: !4374)
!4387 = !DILocation(line: 77, column: 3, scope: !4385)
!4388 = !DILocation(line: 78, column: 25, scope: !4374)
!4389 = !DILocation(line: 78, column: 9, scope: !4374)
!4390 = !DILocation(line: 78, column: 2, scope: !4374)
!4391 = !DILocation(line: 79, column: 1, scope: !4374)
!4392 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !4393, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!99, !3741}
!4395 = !DILocalVariable(name: "dev", arg: 1, scope: !4392, file: !73, line: 655, type: !3741)
!4396 = !DILocation(line: 655, column: 58, scope: !4392)
!4397 = !DILocation(line: 657, column: 9, scope: !4392)
!4398 = !DILocation(line: 657, column: 14, scope: !4392)
!4399 = !DILocation(line: 657, column: 2, scope: !4392)
!4400 = distinct !DISubprogram(name: "pcmcia_put_socket", scope: !3, file: !3, line: 83, type: !4108, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4401 = !DILocalVariable(name: "skt", arg: 1, scope: !4400, file: !3, line: 83, type: !100)
!4402 = !DILocation(line: 83, column: 46, scope: !4400)
!4403 = !DILocation(line: 85, column: 14, scope: !4400)
!4404 = !DILocation(line: 85, column: 19, scope: !4400)
!4405 = !DILocation(line: 85, column: 2, scope: !4400)
!4406 = !DILocation(line: 86, column: 1, scope: !4400)
!4407 = !DILocalVariable(name: "lock", arg: 1, scope: !4408, file: !4409, line: 327, type: !1111)
!4408 = distinct !DISubprogram(name: "spinlock_check", scope: !4409, file: !4409, line: 327, type: !4410, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4409 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!4412, !1111}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!4413 = !DILocation(line: 327, column: 67, scope: !4408, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 159, column: 2, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 159, column: 2)
!4416 = !DILocalVariable(name: "socket", arg: 1, scope: !4288, file: !3, line: 103, type: !100)
!4417 = !DILocation(line: 103, column: 50, scope: !4288)
!4418 = !DILocalVariable(name: "tsk", scope: !4288, file: !3, line: 105, type: !1261)
!4419 = !DILocation(line: 105, column: 22, scope: !4288)
!4420 = !DILocalVariable(name: "ret", scope: !4288, file: !3, line: 106, type: !245)
!4421 = !DILocation(line: 106, column: 6, scope: !4288)
!4422 = !DILocation(line: 108, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 108, column: 6)
!4424 = !DILocation(line: 108, column: 14, scope: !4423)
!4425 = !DILocation(line: 108, column: 18, scope: !4423)
!4426 = !DILocation(line: 108, column: 26, scope: !4423)
!4427 = !DILocation(line: 108, column: 30, scope: !4423)
!4428 = !DILocation(line: 108, column: 34, scope: !4423)
!4429 = !DILocation(line: 108, column: 42, scope: !4423)
!4430 = !DILocation(line: 108, column: 46, scope: !4423)
!4431 = !DILocation(line: 108, column: 53, scope: !4423)
!4432 = !DILocation(line: 108, column: 57, scope: !4423)
!4433 = !DILocation(line: 108, column: 65, scope: !4423)
!4434 = !DILocation(line: 108, column: 6, scope: !4288)
!4435 = !DILocation(line: 109, column: 3, scope: !4423)
!4436 = !DILocation(line: 117, column: 2, scope: !4288)
!4437 = !DILocation(line: 118, column: 6, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 118, column: 6)
!4439 = !DILocation(line: 118, column: 6, scope: !4288)
!4440 = !DILocation(line: 119, column: 3, scope: !4438)
!4441 = !DILocation(line: 119, column: 11, scope: !4438)
!4442 = !DILocation(line: 119, column: 16, scope: !4438)
!4443 = !DILocalVariable(name: "found", scope: !4444, file: !3, line: 121, type: !7)
!4444 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 120, column: 7)
!4445 = !DILocation(line: 121, column: 16, scope: !4444)
!4446 = !DILocalVariable(name: "i", scope: !4444, file: !3, line: 121, type: !7)
!4447 = !DILocation(line: 121, column: 23, scope: !4444)
!4448 = !DILocalVariable(name: "tmp", scope: !4444, file: !3, line: 122, type: !100)
!4449 = !DILocation(line: 122, column: 25, scope: !4444)
!4450 = !DILocation(line: 123, column: 3, scope: !4444)
!4451 = !DILocation(line: 124, column: 10, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 123, column: 6)
!4453 = !DILocalVariable(name: "__mptr", scope: !4454, file: !3, line: 125, type: !99)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 125, column: 4)
!4455 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 125, column: 4)
!4456 = !DILocation(line: 125, column: 4, scope: !4454)
!4457 = !DILocation(line: 125, column: 4, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 125, column: 4)
!4459 = !DILocation(line: 125, column: 4, scope: !4455)
!4460 = !DILocation(line: 125, column: 4, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 125, column: 4)
!4462 = !DILocation(line: 126, column: 9, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 126, column: 9)
!4464 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 125, column: 63)
!4465 = !DILocation(line: 126, column: 14, scope: !4463)
!4466 = !DILocation(line: 126, column: 22, scope: !4463)
!4467 = !DILocation(line: 126, column: 19, scope: !4463)
!4468 = !DILocation(line: 126, column: 9, scope: !4464)
!4469 = !DILocation(line: 127, column: 12, scope: !4463)
!4470 = !DILocation(line: 127, column: 6, scope: !4463)
!4471 = !DILocation(line: 128, column: 4, scope: !4464)
!4472 = !DILocalVariable(name: "__mptr", scope: !4473, file: !3, line: 125, type: !99)
!4473 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 125, column: 4)
!4474 = !DILocation(line: 125, column: 4, scope: !4473)
!4475 = !DILocation(line: 125, column: 4, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 125, column: 4)
!4477 = distinct !{!4477, !4459, !4478}
!4478 = !DILocation(line: 128, column: 4, scope: !4455)
!4479 = !DILocation(line: 129, column: 5, scope: !4452)
!4480 = !DILocation(line: 130, column: 3, scope: !4452)
!4481 = !DILocation(line: 130, column: 13, scope: !4444)
!4482 = !DILocation(line: 130, column: 12, scope: !4444)
!4483 = distinct !{!4483, !4450, !4484}
!4484 = !DILocation(line: 130, column: 18, scope: !4444)
!4485 = !DILocation(line: 131, column: 18, scope: !4444)
!4486 = !DILocation(line: 131, column: 20, scope: !4444)
!4487 = !DILocation(line: 131, column: 3, scope: !4444)
!4488 = !DILocation(line: 131, column: 11, scope: !4444)
!4489 = !DILocation(line: 131, column: 16, scope: !4444)
!4490 = !DILocation(line: 133, column: 17, scope: !4288)
!4491 = !DILocation(line: 133, column: 25, scope: !4288)
!4492 = !DILocation(line: 133, column: 2, scope: !4288)
!4493 = !DILocation(line: 134, column: 2, scope: !4288)
!4494 = !DILocation(line: 145, column: 19, scope: !4288)
!4495 = !DILocation(line: 145, column: 27, scope: !4288)
!4496 = !DILocation(line: 145, column: 32, scope: !4288)
!4497 = !DILocation(line: 145, column: 2, scope: !4288)
!4498 = !DILocation(line: 146, column: 2, scope: !4288)
!4499 = !DILocation(line: 146, column: 10, scope: !4288)
!4500 = !DILocation(line: 146, column: 14, scope: !4288)
!4501 = !DILocation(line: 146, column: 20, scope: !4288)
!4502 = !DILocation(line: 147, column: 16, scope: !4288)
!4503 = !DILocation(line: 147, column: 24, scope: !4288)
!4504 = !DILocation(line: 147, column: 48, scope: !4288)
!4505 = !DILocation(line: 147, column: 56, scope: !4288)
!4506 = !DILocation(line: 147, column: 2, scope: !4288)
!4507 = !DILocation(line: 150, column: 2, scope: !4288)
!4508 = !DILocation(line: 150, column: 10, scope: !4288)
!4509 = !DILocation(line: 150, column: 18, scope: !4288)
!4510 = !DILocation(line: 150, column: 24, scope: !4288)
!4511 = !DILocation(line: 151, column: 26, scope: !4288)
!4512 = !DILocation(line: 151, column: 2, scope: !4288)
!4513 = !DILocation(line: 151, column: 10, scope: !4288)
!4514 = !DILocation(line: 151, column: 18, scope: !4288)
!4515 = !DILocation(line: 151, column: 24, scope: !4288)
!4516 = !DILocation(line: 153, column: 18, scope: !4288)
!4517 = !DILocation(line: 153, column: 26, scope: !4288)
!4518 = !DILocation(line: 153, column: 2, scope: !4288)
!4519 = !DILocation(line: 155, column: 2, scope: !4288)
!4520 = !DILocation(line: 156, column: 2, scope: !4288)
!4521 = !DILocation(line: 157, column: 2, scope: !4288)
!4522 = !DILocation(line: 157, column: 2, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 157, column: 2)
!4524 = !DILocation(line: 158, column: 2, scope: !4288)
!4525 = !DILocation(line: 158, column: 2, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 158, column: 2)
!4527 = !DILocation(line: 159, column: 2, scope: !4288)
!4528 = !DILocation(line: 159, column: 2, scope: !4415)
!4529 = !DILocation(line: 329, column: 10, scope: !4408, inlinedAt: !4414)
!4530 = !DILocation(line: 329, column: 16, scope: !4408, inlinedAt: !4414)
!4531 = !DILocation(line: 161, column: 6, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 161, column: 6)
!4533 = !DILocation(line: 161, column: 14, scope: !4532)
!4534 = !DILocation(line: 161, column: 28, scope: !4532)
!4535 = !DILocation(line: 161, column: 6, scope: !4288)
!4536 = !DILocation(line: 162, column: 15, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 161, column: 34)
!4538 = !DILocation(line: 162, column: 23, scope: !4537)
!4539 = !DILocation(line: 162, column: 3, scope: !4537)
!4540 = !DILocation(line: 163, column: 9, scope: !4537)
!4541 = !DILocation(line: 163, column: 17, scope: !4537)
!4542 = !DILocation(line: 163, column: 31, scope: !4537)
!4543 = !DILocation(line: 163, column: 36, scope: !4537)
!4544 = !DILocation(line: 163, column: 7, scope: !4537)
!4545 = !DILocation(line: 164, column: 17, scope: !4537)
!4546 = !DILocation(line: 164, column: 25, scope: !4537)
!4547 = !DILocation(line: 164, column: 3, scope: !4537)
!4548 = !DILocation(line: 165, column: 7, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 165, column: 7)
!4550 = !DILocation(line: 165, column: 7, scope: !4537)
!4551 = !DILocation(line: 166, column: 4, scope: !4549)
!4552 = !DILocation(line: 167, column: 2, scope: !4537)
!4553 = !DILocalVariable(name: "__k", scope: !4554, file: !3, line: 169, type: !1261)
!4554 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 169, column: 8)
!4555 = !DILocation(line: 169, column: 8, scope: !4554)
!4556 = !DILocation(line: 169, column: 8, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 169, column: 8)
!4558 = !DILocation(line: 169, column: 6, scope: !4288)
!4559 = !DILocation(line: 170, column: 13, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 170, column: 6)
!4561 = !DILocation(line: 170, column: 6, scope: !4560)
!4562 = !DILocation(line: 170, column: 6, scope: !4288)
!4563 = !DILocation(line: 171, column: 17, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 170, column: 19)
!4565 = !DILocation(line: 171, column: 9, scope: !4564)
!4566 = !DILocation(line: 171, column: 7, scope: !4564)
!4567 = !DILocation(line: 172, column: 3, scope: !4564)
!4568 = !DILocation(line: 175, column: 23, scope: !4288)
!4569 = !DILocation(line: 175, column: 31, scope: !4288)
!4570 = !DILocation(line: 175, column: 2, scope: !4288)
!4571 = !DILocation(line: 176, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 176, column: 6)
!4573 = !DILocation(line: 176, column: 15, scope: !4572)
!4574 = !DILocation(line: 176, column: 6, scope: !4288)
!4575 = !DILocation(line: 177, column: 3, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 176, column: 23)
!4577 = !DILocation(line: 179, column: 3, scope: !4576)
!4578 = !DILocation(line: 182, column: 22, scope: !4288)
!4579 = !DILocation(line: 182, column: 2, scope: !4288)
!4580 = !DILocation(line: 189, column: 2, scope: !4288)
!4581 = !DILocation(line: 191, column: 2, scope: !4288)
!4582 = !DILabel(scope: !4288, name: "err", file: !3, line: 193)
!4583 = !DILocation(line: 193, column: 2, scope: !4288)
!4584 = !DILocation(line: 194, column: 2, scope: !4288)
!4585 = !DILocation(line: 195, column: 12, scope: !4288)
!4586 = !DILocation(line: 195, column: 20, scope: !4288)
!4587 = !DILocation(line: 195, column: 2, scope: !4288)
!4588 = !DILocation(line: 196, column: 2, scope: !4288)
!4589 = !DILocation(line: 197, column: 9, scope: !4288)
!4590 = !DILocation(line: 197, column: 2, scope: !4288)
!4591 = !DILocation(line: 198, column: 1, scope: !4288)
!4592 = distinct !DISubprogram(name: "list_empty", scope: !4593, file: !4593, line: 280, type: !4594, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4593 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!245, !4596}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!4598 = !DILocalVariable(name: "head", arg: 1, scope: !4592, file: !4593, line: 280, type: !4596)
!4599 = !DILocation(line: 280, column: 54, scope: !4592)
!4600 = !DILocation(line: 282, column: 9, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4592, file: !4593, line: 282, column: 9)
!4602 = !DILocation(line: 282, column: 9, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4601, file: !4593, line: 282, column: 9)
!4604 = !DILocation(line: 282, column: 34, scope: !4592)
!4605 = !DILocation(line: 282, column: 31, scope: !4592)
!4606 = !DILocation(line: 282, column: 2, scope: !4592)
!4607 = distinct !DISubprogram(name: "list_add_tail", scope: !4593, file: !4593, line: 98, type: !4608, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{null, !179, !179}
!4610 = !DILocalVariable(name: "new", arg: 1, scope: !4607, file: !4593, line: 98, type: !179)
!4611 = !DILocation(line: 98, column: 52, scope: !4607)
!4612 = !DILocalVariable(name: "head", arg: 2, scope: !4607, file: !4593, line: 98, type: !179)
!4613 = !DILocation(line: 98, column: 75, scope: !4607)
!4614 = !DILocation(line: 100, column: 13, scope: !4607)
!4615 = !DILocation(line: 100, column: 18, scope: !4607)
!4616 = !DILocation(line: 100, column: 24, scope: !4607)
!4617 = !DILocation(line: 100, column: 30, scope: !4607)
!4618 = !DILocation(line: 100, column: 2, scope: !4607)
!4619 = !DILocation(line: 101, column: 1, scope: !4607)
!4620 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !4621, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !285, !99}
!4623 = !DILocalVariable(name: "dev", arg: 1, scope: !4620, file: !73, line: 660, type: !285)
!4624 = !DILocation(line: 660, column: 51, scope: !4620)
!4625 = !DILocalVariable(name: "data", arg: 2, scope: !4620, file: !73, line: 660, type: !99)
!4626 = !DILocation(line: 660, column: 62, scope: !4620)
!4627 = !DILocation(line: 662, column: 21, scope: !4620)
!4628 = !DILocation(line: 662, column: 2, scope: !4620)
!4629 = !DILocation(line: 662, column: 7, scope: !4620)
!4630 = !DILocation(line: 662, column: 19, scope: !4620)
!4631 = !DILocation(line: 663, column: 1, scope: !4620)
!4632 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4593, file: !4593, line: 33, type: !4633, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !179}
!4635 = !DILocalVariable(name: "list", arg: 1, scope: !4632, file: !4593, line: 33, type: !179)
!4636 = !DILocation(line: 33, column: 53, scope: !4632)
!4637 = !DILocation(line: 35, column: 2, scope: !4632)
!4638 = !DILocation(line: 35, column: 2, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4632, file: !4593, line: 35, column: 2)
!4640 = !DILocation(line: 35, column: 2, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4639, file: !4593, line: 35, column: 2)
!4642 = !DILocation(line: 35, column: 2, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4639, file: !4593, line: 35, column: 2)
!4644 = !DILocation(line: 36, column: 15, scope: !4632)
!4645 = !DILocation(line: 36, column: 2, scope: !4632)
!4646 = !DILocation(line: 36, column: 8, scope: !4632)
!4647 = !DILocation(line: 36, column: 13, scope: !4632)
!4648 = !DILocation(line: 37, column: 1, scope: !4632)
!4649 = !DILocalVariable(name: "x", arg: 1, scope: !4355, file: !193, line: 85, type: !1543)
!4650 = !DILocation(line: 85, column: 57, scope: !4355)
!4651 = !DILocation(line: 87, column: 2, scope: !4355)
!4652 = !DILocation(line: 87, column: 5, scope: !4355)
!4653 = !DILocation(line: 87, column: 10, scope: !4355)
!4654 = !DILocation(line: 88, column: 2, scope: !4355)
!4655 = !DILocation(line: 88, column: 2, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4355, file: !193, line: 88, column: 2)
!4657 = !DILocation(line: 89, column: 1, scope: !4355)
!4658 = distinct !DISubprogram(name: "pccardd", scope: !3, file: !3, line: 592, type: !4659, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!245, !99}
!4661 = !DILocalVariable(name: "pscr_ret__", scope: !4662, file: !4663, line: 15, type: !1261)
!4662 = distinct !DILexicalBlock(scope: !4664, file: !4663, line: 15, column: 9)
!4663 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!4664 = distinct !DISubprogram(name: "get_current", scope: !4663, file: !4663, line: 13, type: !4665, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!1261}
!4667 = !DILocation(line: 15, column: 9, scope: !4662, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 677, column: 3, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 620, column: 11)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 620, column: 2)
!4671 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 620, column: 2)
!4672 = !DILocalVariable(name: "__vpp_verify", scope: !4673, file: !4663, line: 15, type: !2158)
!4673 = distinct !DILexicalBlock(scope: !4662, file: !4663, line: 15, column: 9)
!4674 = !DILocation(line: 15, column: 9, scope: !4673, inlinedAt: !4668)
!4675 = !DILocalVariable(name: "pfo_val__", scope: !4676, file: !4663, line: 15, type: !136)
!4676 = distinct !DILexicalBlock(scope: !4662, file: !4663, line: 15, column: 9)
!4677 = !DILocation(line: 15, column: 9, scope: !4676, inlinedAt: !4668)
!4678 = !DILocation(line: 15, column: 9, scope: !4662, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 672, column: 3, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 672, column: 3)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 672, column: 3)
!4682 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 672, column: 3)
!4683 = !DILocation(line: 15, column: 9, scope: !4673, inlinedAt: !4679)
!4684 = !DILocation(line: 15, column: 9, scope: !4676, inlinedAt: !4679)
!4685 = !DILocalVariable(name: "lock", arg: 1, scope: !4686, file: !4409, line: 407, type: !1111)
!4686 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4409, file: !4409, line: 407, type: !4687, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{null, !1111, !155}
!4689 = !DILocation(line: 407, column: 64, scope: !4686, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 630, column: 3, scope: !4669)
!4691 = !DILocalVariable(name: "flags", arg: 2, scope: !4686, file: !4409, line: 407, type: !155)
!4692 = !DILocation(line: 407, column: 84, scope: !4686, inlinedAt: !4690)
!4693 = !DILocation(line: 327, column: 67, scope: !4408, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 625, column: 3, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 625, column: 3)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 625, column: 3)
!4697 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 625, column: 3)
!4698 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 625, column: 3)
!4699 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 625, column: 3)
!4700 = !DILocation(line: 15, column: 9, scope: !4662, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 597, column: 16, scope: !4658)
!4702 = !DILocation(line: 15, column: 9, scope: !4673, inlinedAt: !4701)
!4703 = !DILocation(line: 15, column: 9, scope: !4676, inlinedAt: !4701)
!4704 = !DILocalVariable(name: "__skt", arg: 1, scope: !4658, file: !3, line: 592, type: !99)
!4705 = !DILocation(line: 592, column: 26, scope: !4658)
!4706 = !DILocalVariable(name: "skt", scope: !4658, file: !3, line: 594, type: !100)
!4707 = !DILocation(line: 594, column: 24, scope: !4658)
!4708 = !DILocation(line: 594, column: 30, scope: !4658)
!4709 = !DILocalVariable(name: "ret", scope: !4658, file: !3, line: 595, type: !245)
!4710 = !DILocation(line: 595, column: 6, scope: !4658)
!4711 = !{i32 -2146210285}
!4712 = !DILocation(line: 597, column: 2, scope: !4658)
!4713 = !DILocation(line: 597, column: 7, scope: !4658)
!4714 = !DILocation(line: 597, column: 14, scope: !4658)
!4715 = !DILocation(line: 598, column: 2, scope: !4658)
!4716 = !DILocation(line: 598, column: 7, scope: !4658)
!4717 = !DILocation(line: 598, column: 16, scope: !4658)
!4718 = !DILocation(line: 599, column: 2, scope: !4658)
!4719 = !DILocation(line: 599, column: 7, scope: !4658)
!4720 = !DILocation(line: 599, column: 12, scope: !4658)
!4721 = !DILocation(line: 599, column: 17, scope: !4658)
!4722 = !DILocation(line: 600, column: 2, scope: !4658)
!4723 = !DILocation(line: 600, column: 7, scope: !4658)
!4724 = !DILocation(line: 600, column: 12, scope: !4658)
!4725 = !DILocation(line: 600, column: 23, scope: !4658)
!4726 = !DILocation(line: 600, column: 29, scope: !4658)
!4727 = !DILocation(line: 600, column: 34, scope: !4658)
!4728 = !DILocation(line: 603, column: 25, scope: !4658)
!4729 = !DILocation(line: 603, column: 30, scope: !4658)
!4730 = !DILocation(line: 603, column: 8, scope: !4658)
!4731 = !DILocation(line: 603, column: 6, scope: !4658)
!4732 = !DILocation(line: 604, column: 6, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 604, column: 6)
!4734 = !DILocation(line: 604, column: 6, scope: !4658)
!4735 = !DILocation(line: 605, column: 3, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 604, column: 11)
!4737 = !DILocation(line: 606, column: 3, scope: !4736)
!4738 = !DILocation(line: 606, column: 8, scope: !4736)
!4739 = !DILocation(line: 606, column: 15, scope: !4736)
!4740 = !DILocation(line: 607, column: 13, scope: !4736)
!4741 = !DILocation(line: 607, column: 18, scope: !4736)
!4742 = !DILocation(line: 607, column: 3, scope: !4736)
!4743 = !DILocation(line: 608, column: 3, scope: !4736)
!4744 = !DILocation(line: 610, column: 33, scope: !4658)
!4745 = !DILocation(line: 610, column: 38, scope: !4658)
!4746 = !DILocation(line: 610, column: 8, scope: !4658)
!4747 = !DILocation(line: 610, column: 6, scope: !4658)
!4748 = !DILocation(line: 611, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 611, column: 6)
!4750 = !DILocation(line: 611, column: 6, scope: !4658)
!4751 = !DILocation(line: 612, column: 3, scope: !4749)
!4752 = !DILocation(line: 614, column: 12, scope: !4658)
!4753 = !DILocation(line: 614, column: 17, scope: !4658)
!4754 = !DILocation(line: 614, column: 2, scope: !4658)
!4755 = !DILocation(line: 617, column: 2, scope: !4658)
!4756 = !DILocation(line: 619, column: 2, scope: !4658)
!4757 = !DILocation(line: 620, column: 2, scope: !4658)
!4758 = !DILocalVariable(name: "flags", scope: !4669, file: !3, line: 621, type: !155)
!4759 = !DILocation(line: 621, column: 17, scope: !4669)
!4760 = !DILocalVariable(name: "events", scope: !4669, file: !3, line: 622, type: !7)
!4761 = !DILocation(line: 622, column: 16, scope: !4669)
!4762 = !DILocalVariable(name: "sysfs_events", scope: !4669, file: !3, line: 623, type: !7)
!4763 = !DILocation(line: 623, column: 16, scope: !4669)
!4764 = !DILocation(line: 625, column: 3, scope: !4669)
!4765 = !DILocation(line: 625, column: 3, scope: !4699)
!4766 = !DILocalVariable(name: "__dummy", scope: !4767, file: !3, line: 625, type: !155)
!4767 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 625, column: 3)
!4768 = !DILocation(line: 625, column: 3, scope: !4767)
!4769 = !DILocalVariable(name: "__dummy2", scope: !4767, file: !3, line: 625, type: !155)
!4770 = !DILocation(line: 625, column: 3, scope: !4698)
!4771 = !DILocation(line: 625, column: 3, scope: !4697)
!4772 = !DILocation(line: 625, column: 3, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 625, column: 3)
!4774 = !DILocalVariable(name: "__dummy", scope: !4775, file: !3, line: 625, type: !155)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 625, column: 3)
!4776 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 625, column: 3)
!4777 = !DILocation(line: 625, column: 3, scope: !4775)
!4778 = !DILocalVariable(name: "__dummy2", scope: !4775, file: !3, line: 625, type: !155)
!4779 = !DILocation(line: 625, column: 3, scope: !4776)
!4780 = !DILocation(line: 625, column: 3, scope: !4696)
!4781 = !{i32 -2141607609}
!4782 = !DILocation(line: 625, column: 3, scope: !4695)
!4783 = !DILocation(line: 329, column: 10, scope: !4408, inlinedAt: !4694)
!4784 = !DILocation(line: 329, column: 16, scope: !4408, inlinedAt: !4694)
!4785 = !DILocation(line: 626, column: 12, scope: !4669)
!4786 = !DILocation(line: 626, column: 17, scope: !4669)
!4787 = !DILocation(line: 626, column: 10, scope: !4669)
!4788 = !DILocation(line: 627, column: 3, scope: !4669)
!4789 = !DILocation(line: 627, column: 8, scope: !4669)
!4790 = !DILocation(line: 627, column: 22, scope: !4669)
!4791 = !DILocation(line: 628, column: 18, scope: !4669)
!4792 = !DILocation(line: 628, column: 23, scope: !4669)
!4793 = !DILocation(line: 628, column: 16, scope: !4669)
!4794 = !DILocation(line: 629, column: 3, scope: !4669)
!4795 = !DILocation(line: 629, column: 8, scope: !4669)
!4796 = !DILocation(line: 629, column: 21, scope: !4669)
!4797 = !DILocation(line: 630, column: 27, scope: !4669)
!4798 = !DILocation(line: 630, column: 32, scope: !4669)
!4799 = !DILocation(line: 630, column: 45, scope: !4669)
!4800 = !DILocalVariable(name: "__dummy", scope: !4801, file: !4409, line: 409, type: !155)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !4409, line: 409, column: 2)
!4802 = distinct !DILexicalBlock(scope: !4686, file: !4409, line: 409, column: 2)
!4803 = !DILocation(line: 409, column: 2, scope: !4801, inlinedAt: !4690)
!4804 = !DILocalVariable(name: "__dummy2", scope: !4801, file: !4409, line: 409, type: !155)
!4805 = !DILocalVariable(name: "__dummy", scope: !4806, file: !4409, line: 409, type: !155)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !4409, line: 409, column: 2)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !4409, line: 409, column: 2)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !4409, line: 409, column: 2)
!4809 = distinct !DILexicalBlock(scope: !4802, file: !4409, line: 409, column: 2)
!4810 = !DILocation(line: 409, column: 2, scope: !4806, inlinedAt: !4690)
!4811 = !DILocalVariable(name: "__dummy2", scope: !4806, file: !4409, line: 409, type: !155)
!4812 = !DILocation(line: 409, column: 2, scope: !4807, inlinedAt: !4690)
!4813 = !DILocation(line: 409, column: 2, scope: !4814, inlinedAt: !4690)
!4814 = distinct !DILexicalBlock(scope: !4809, file: !4409, line: 409, column: 2)
!4815 = !{i32 -2145455864}
!4816 = !DILocation(line: 409, column: 2, scope: !4817, inlinedAt: !4690)
!4817 = distinct !DILexicalBlock(scope: !4814, file: !4409, line: 409, column: 2)
!4818 = !DILocation(line: 632, column: 15, scope: !4669)
!4819 = !DILocation(line: 632, column: 20, scope: !4669)
!4820 = !DILocation(line: 632, column: 3, scope: !4669)
!4821 = !DILocation(line: 633, column: 7, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 633, column: 7)
!4823 = !DILocation(line: 633, column: 14, scope: !4822)
!4824 = !DILocation(line: 633, column: 7, scope: !4669)
!4825 = !DILocation(line: 634, column: 25, scope: !4822)
!4826 = !DILocation(line: 634, column: 4, scope: !4822)
!4827 = !DILocation(line: 636, column: 7, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 636, column: 7)
!4829 = !DILocation(line: 636, column: 7, scope: !4669)
!4830 = !DILocation(line: 637, column: 8, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 637, column: 8)
!4832 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 636, column: 21)
!4833 = !DILocation(line: 637, column: 21, scope: !4831)
!4834 = !DILocation(line: 637, column: 8, scope: !4832)
!4835 = !DILocation(line: 638, column: 19, scope: !4831)
!4836 = !DILocation(line: 638, column: 5, scope: !4831)
!4837 = !DILocation(line: 639, column: 8, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 639, column: 8)
!4839 = !DILocation(line: 639, column: 21, scope: !4838)
!4840 = !DILocation(line: 639, column: 8, scope: !4832)
!4841 = !DILocation(line: 640, column: 19, scope: !4838)
!4842 = !DILocation(line: 640, column: 5, scope: !4838)
!4843 = !DILocation(line: 641, column: 9, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 641, column: 8)
!4845 = !DILocation(line: 641, column: 22, scope: !4844)
!4846 = !DILocation(line: 641, column: 47, scope: !4844)
!4847 = !DILocation(line: 642, column: 7, scope: !4844)
!4848 = !DILocation(line: 642, column: 12, scope: !4844)
!4849 = !DILocation(line: 642, column: 18, scope: !4844)
!4850 = !DILocation(line: 641, column: 8, scope: !4832)
!4851 = !DILocation(line: 643, column: 9, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 643, column: 9)
!4853 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 642, column: 37)
!4854 = !DILocation(line: 643, column: 14, scope: !4852)
!4855 = !DILocation(line: 643, column: 9, scope: !4853)
!4856 = !DILocation(line: 644, column: 12, scope: !4852)
!4857 = !DILocation(line: 644, column: 17, scope: !4852)
!4858 = !DILocation(line: 644, column: 27, scope: !4852)
!4859 = !DILocation(line: 644, column: 35, scope: !4852)
!4860 = !DILocation(line: 644, column: 10, scope: !4852)
!4861 = !DILocation(line: 644, column: 6, scope: !4852)
!4862 = !DILocation(line: 646, column: 10, scope: !4852)
!4863 = !DILocation(line: 647, column: 10, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 647, column: 9)
!4865 = !DILocation(line: 647, column: 9, scope: !4853)
!4866 = !DILocation(line: 648, column: 21, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 647, column: 15)
!4868 = !DILocation(line: 648, column: 6, scope: !4867)
!4869 = !DILocation(line: 649, column: 6, scope: !4867)
!4870 = !DILocation(line: 650, column: 5, scope: !4867)
!4871 = !DILocation(line: 651, column: 4, scope: !4853)
!4872 = !DILocation(line: 652, column: 9, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 652, column: 8)
!4874 = !DILocation(line: 652, column: 22, scope: !4873)
!4875 = !DILocation(line: 652, column: 46, scope: !4873)
!4876 = !DILocation(line: 653, column: 7, scope: !4873)
!4877 = !DILocation(line: 653, column: 12, scope: !4873)
!4878 = !DILocation(line: 653, column: 18, scope: !4873)
!4879 = !DILocation(line: 652, column: 8, scope: !4832)
!4880 = !DILocation(line: 654, column: 25, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 653, column: 37)
!4882 = !DILocation(line: 654, column: 11, scope: !4881)
!4883 = !DILocation(line: 654, column: 9, scope: !4881)
!4884 = !DILocation(line: 655, column: 10, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 655, column: 9)
!4886 = !DILocation(line: 655, column: 14, scope: !4885)
!4887 = !DILocation(line: 655, column: 17, scope: !4885)
!4888 = !DILocation(line: 655, column: 22, scope: !4885)
!4889 = !DILocation(line: 655, column: 9, scope: !4881)
!4890 = !DILocation(line: 656, column: 6, scope: !4885)
!4891 = !DILocation(line: 656, column: 11, scope: !4885)
!4892 = !DILocation(line: 656, column: 21, scope: !4885)
!4893 = !DILocation(line: 656, column: 28, scope: !4885)
!4894 = !DILocation(line: 657, column: 4, scope: !4881)
!4895 = !DILocation(line: 658, column: 9, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 658, column: 8)
!4897 = !DILocation(line: 658, column: 22, scope: !4896)
!4898 = !DILocation(line: 658, column: 47, scope: !4896)
!4899 = !DILocation(line: 659, column: 7, scope: !4896)
!4900 = !DILocation(line: 659, column: 12, scope: !4896)
!4901 = !DILocation(line: 659, column: 18, scope: !4896)
!4902 = !DILocation(line: 658, column: 8, scope: !4832)
!4903 = !DILocation(line: 660, column: 10, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 660, column: 9)
!4905 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 659, column: 37)
!4906 = !DILocation(line: 660, column: 14, scope: !4904)
!4907 = !DILocation(line: 660, column: 17, scope: !4904)
!4908 = !DILocation(line: 660, column: 22, scope: !4904)
!4909 = !DILocation(line: 660, column: 9, scope: !4905)
!4910 = !DILocation(line: 661, column: 6, scope: !4904)
!4911 = !DILocation(line: 661, column: 11, scope: !4904)
!4912 = !DILocation(line: 661, column: 21, scope: !4904)
!4913 = !DILocation(line: 661, column: 29, scope: !4904)
!4914 = !DILocation(line: 662, column: 4, scope: !4905)
!4915 = !DILocation(line: 663, column: 3, scope: !4832)
!4916 = !DILocation(line: 664, column: 17, scope: !4669)
!4917 = !DILocation(line: 664, column: 22, scope: !4669)
!4918 = !DILocation(line: 664, column: 3, scope: !4669)
!4919 = !DILocation(line: 666, column: 7, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 666, column: 7)
!4921 = !DILocation(line: 666, column: 14, scope: !4920)
!4922 = !DILocation(line: 666, column: 17, scope: !4920)
!4923 = !DILocation(line: 666, column: 7, scope: !4669)
!4924 = !DILocation(line: 667, column: 4, scope: !4920)
!4925 = distinct !{!4925, !4926, !4927}
!4926 = !DILocation(line: 620, column: 2, scope: !4671)
!4927 = !DILocation(line: 680, column: 2, scope: !4671)
!4928 = !DILocation(line: 669, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 669, column: 7)
!4930 = !DILocation(line: 669, column: 7, scope: !4669)
!4931 = !DILocation(line: 670, column: 4, scope: !4929)
!4932 = !DILocation(line: 672, column: 3, scope: !4669)
!4933 = !DILocation(line: 672, column: 3, scope: !4682)
!4934 = !DILocation(line: 672, column: 3, scope: !4681)
!4935 = !DILocation(line: 672, column: 3, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 672, column: 3)
!4937 = !DILocation(line: 672, column: 3, scope: !4680)
!4938 = !{i32 -2141605763}
!4939 = !DILocation(line: 674, column: 3, scope: !4669)
!4940 = !DILocation(line: 677, column: 3, scope: !4669)
!4941 = !DILocation(line: 679, column: 3, scope: !4669)
!4942 = !DILocation(line: 620, column: 2, scope: !4670)
!4943 = !DILocation(line: 683, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 683, column: 6)
!4945 = !DILocation(line: 683, column: 11, scope: !4944)
!4946 = !DILocation(line: 683, column: 17, scope: !4944)
!4947 = !DILocation(line: 683, column: 6, scope: !4658)
!4948 = !DILocation(line: 684, column: 15, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 683, column: 35)
!4950 = !DILocation(line: 684, column: 20, scope: !4949)
!4951 = !DILocation(line: 684, column: 3, scope: !4949)
!4952 = !DILocation(line: 685, column: 17, scope: !4949)
!4953 = !DILocation(line: 685, column: 3, scope: !4949)
!4954 = !DILocation(line: 686, column: 17, scope: !4949)
!4955 = !DILocation(line: 686, column: 22, scope: !4949)
!4956 = !DILocation(line: 686, column: 3, scope: !4949)
!4957 = !DILocation(line: 687, column: 2, scope: !4949)
!4958 = !DILocation(line: 690, column: 30, scope: !4658)
!4959 = !DILocation(line: 690, column: 35, scope: !4658)
!4960 = !DILocation(line: 690, column: 2, scope: !4658)
!4961 = !DILocation(line: 691, column: 21, scope: !4658)
!4962 = !DILocation(line: 691, column: 26, scope: !4658)
!4963 = !DILocation(line: 691, column: 2, scope: !4658)
!4964 = !DILocation(line: 693, column: 2, scope: !4658)
!4965 = !DILocation(line: 694, column: 1, scope: !4658)
!4966 = distinct !DISubprogram(name: "IS_ERR", scope: !4967, file: !4967, line: 34, type: !4968, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4967 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!537, !2158}
!4970 = !DILocalVariable(name: "ptr", arg: 1, scope: !4966, file: !4967, line: 34, type: !2158)
!4971 = !DILocation(line: 34, column: 60, scope: !4966)
!4972 = !DILocation(line: 36, column: 9, scope: !4966)
!4973 = !DILocation(line: 36, column: 2, scope: !4966)
!4974 = distinct !DISubprogram(name: "PTR_ERR", scope: !4967, file: !4967, line: 29, type: !4975, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!369, !2158}
!4977 = !DILocalVariable(name: "ptr", arg: 1, scope: !4974, file: !4967, line: 29, type: !2158)
!4978 = !DILocation(line: 29, column: 61, scope: !4974)
!4979 = !DILocation(line: 31, column: 16, scope: !4974)
!4980 = !DILocation(line: 31, column: 9, scope: !4974)
!4981 = !DILocation(line: 31, column: 2, scope: !4974)
!4982 = distinct !DISubprogram(name: "pcmcia_parse_events", scope: !3, file: !3, line: 700, type: !4983, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{null, !100, !113}
!4985 = !DILocation(line: 407, column: 64, scope: !4686, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 707, column: 3, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 704, column: 17)
!4988 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 704, column: 6)
!4989 = !DILocation(line: 407, column: 84, scope: !4686, inlinedAt: !4986)
!4990 = !DILocation(line: 327, column: 67, scope: !4408, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 705, column: 3, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 705, column: 3)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 705, column: 3)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 705, column: 3)
!4995 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 705, column: 3)
!4996 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 705, column: 3)
!4997 = !DILocalVariable(name: "s", arg: 1, scope: !4982, file: !3, line: 700, type: !100)
!4998 = !DILocation(line: 700, column: 48, scope: !4982)
!4999 = !DILocalVariable(name: "events", arg: 2, scope: !4982, file: !3, line: 700, type: !113)
!5000 = !DILocation(line: 700, column: 57, scope: !4982)
!5001 = !DILocalVariable(name: "flags", scope: !4982, file: !3, line: 702, type: !155)
!5002 = !DILocation(line: 702, column: 16, scope: !4982)
!5003 = !DILocation(line: 704, column: 6, scope: !4988)
!5004 = !DILocation(line: 704, column: 9, scope: !4988)
!5005 = !DILocation(line: 704, column: 6, scope: !4982)
!5006 = !DILocation(line: 705, column: 3, scope: !4987)
!5007 = !DILocation(line: 705, column: 3, scope: !4996)
!5008 = !DILocalVariable(name: "__dummy", scope: !5009, file: !3, line: 705, type: !155)
!5009 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 705, column: 3)
!5010 = !DILocation(line: 705, column: 3, scope: !5009)
!5011 = !DILocalVariable(name: "__dummy2", scope: !5009, file: !3, line: 705, type: !155)
!5012 = !DILocation(line: 705, column: 3, scope: !4995)
!5013 = !DILocation(line: 705, column: 3, scope: !4994)
!5014 = !DILocation(line: 705, column: 3, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 705, column: 3)
!5016 = !DILocalVariable(name: "__dummy", scope: !5017, file: !3, line: 705, type: !155)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 705, column: 3)
!5018 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 705, column: 3)
!5019 = !DILocation(line: 705, column: 3, scope: !5017)
!5020 = !DILocalVariable(name: "__dummy2", scope: !5017, file: !3, line: 705, type: !155)
!5021 = !DILocation(line: 705, column: 3, scope: !5018)
!5022 = !DILocation(line: 705, column: 3, scope: !4993)
!5023 = !{i32 -2141604578}
!5024 = !DILocation(line: 705, column: 3, scope: !4992)
!5025 = !DILocation(line: 329, column: 10, scope: !4408, inlinedAt: !4991)
!5026 = !DILocation(line: 329, column: 16, scope: !4408, inlinedAt: !4991)
!5027 = !DILocation(line: 706, column: 23, scope: !4987)
!5028 = !DILocation(line: 706, column: 3, scope: !4987)
!5029 = !DILocation(line: 706, column: 6, scope: !4987)
!5030 = !DILocation(line: 706, column: 20, scope: !4987)
!5031 = !DILocation(line: 707, column: 27, scope: !4987)
!5032 = !DILocation(line: 707, column: 30, scope: !4987)
!5033 = !DILocation(line: 707, column: 43, scope: !4987)
!5034 = !DILocation(line: 409, column: 2, scope: !4801, inlinedAt: !4986)
!5035 = !DILocation(line: 409, column: 2, scope: !4806, inlinedAt: !4986)
!5036 = !DILocation(line: 409, column: 2, scope: !4807, inlinedAt: !4986)
!5037 = !DILocation(line: 409, column: 2, scope: !4814, inlinedAt: !4986)
!5038 = !DILocation(line: 409, column: 2, scope: !4817, inlinedAt: !4986)
!5039 = !DILocation(line: 709, column: 19, scope: !4987)
!5040 = !DILocation(line: 709, column: 22, scope: !4987)
!5041 = !DILocation(line: 709, column: 3, scope: !4987)
!5042 = !DILocation(line: 710, column: 2, scope: !4987)
!5043 = !DILocation(line: 711, column: 1, scope: !4982)
!5044 = distinct !DISubprogram(name: "request_module_nowait", scope: !5045, file: !5045, line: 31, type: !5046, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5045 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/lizy2001/genbc/linux")
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!245, !151, null}
!5048 = !DILocalVariable(name: "name", arg: 1, scope: !5044, file: !5045, line: 31, type: !151)
!5049 = !DILocation(line: 31, column: 53, scope: !5044)
!5050 = !DILocation(line: 31, column: 66, scope: !5044)
!5051 = distinct !DISubprogram(name: "list_del", scope: !4593, file: !4593, line: 144, type: !4633, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5052 = !DILocalVariable(name: "entry", arg: 1, scope: !5051, file: !4593, line: 144, type: !179)
!5053 = !DILocation(line: 144, column: 47, scope: !5051)
!5054 = !DILocation(line: 146, column: 19, scope: !5051)
!5055 = !DILocation(line: 146, column: 2, scope: !5051)
!5056 = !DILocation(line: 147, column: 2, scope: !5051)
!5057 = !DILocation(line: 147, column: 9, scope: !5051)
!5058 = !DILocation(line: 147, column: 14, scope: !5051)
!5059 = !DILocation(line: 148, column: 2, scope: !5051)
!5060 = !DILocation(line: 148, column: 9, scope: !5051)
!5061 = !DILocation(line: 148, column: 14, scope: !5051)
!5062 = !DILocation(line: 149, column: 1, scope: !5051)
!5063 = distinct !DISubprogram(name: "pcmcia_unregister_socket", scope: !3, file: !3, line: 206, type: !4108, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5064 = !DILocalVariable(name: "socket", arg: 1, scope: !5063, file: !3, line: 206, type: !100)
!5065 = !DILocation(line: 206, column: 53, scope: !5063)
!5066 = !DILocation(line: 208, column: 7, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 208, column: 6)
!5068 = !DILocation(line: 208, column: 6, scope: !5063)
!5069 = !DILocation(line: 209, column: 3, scope: !5067)
!5070 = !DILocation(line: 213, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 213, column: 6)
!5072 = !DILocation(line: 213, column: 14, scope: !5071)
!5073 = !DILocation(line: 213, column: 6, scope: !5063)
!5074 = !DILocation(line: 214, column: 16, scope: !5071)
!5075 = !DILocation(line: 214, column: 24, scope: !5071)
!5076 = !DILocation(line: 214, column: 3, scope: !5071)
!5077 = !DILocation(line: 217, column: 2, scope: !5063)
!5078 = !DILocation(line: 218, column: 12, scope: !5063)
!5079 = !DILocation(line: 218, column: 20, scope: !5063)
!5080 = !DILocation(line: 218, column: 2, scope: !5063)
!5081 = !DILocation(line: 219, column: 2, scope: !5063)
!5082 = !DILocation(line: 222, column: 6, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 222, column: 6)
!5084 = !DILocation(line: 222, column: 14, scope: !5083)
!5085 = !DILocation(line: 222, column: 28, scope: !5083)
!5086 = !DILocation(line: 222, column: 6, scope: !5063)
!5087 = !DILocation(line: 223, column: 15, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 222, column: 34)
!5089 = !DILocation(line: 223, column: 23, scope: !5088)
!5090 = !DILocation(line: 223, column: 3, scope: !5088)
!5091 = !DILocation(line: 224, column: 3, scope: !5088)
!5092 = !DILocation(line: 224, column: 11, scope: !5088)
!5093 = !DILocation(line: 224, column: 25, scope: !5088)
!5094 = !DILocation(line: 224, column: 30, scope: !5088)
!5095 = !DILocation(line: 225, column: 17, scope: !5088)
!5096 = !DILocation(line: 225, column: 25, scope: !5088)
!5097 = !DILocation(line: 225, column: 3, scope: !5088)
!5098 = !DILocation(line: 226, column: 2, scope: !5088)
!5099 = !DILocation(line: 227, column: 23, scope: !5063)
!5100 = !DILocation(line: 227, column: 31, scope: !5063)
!5101 = !DILocation(line: 227, column: 2, scope: !5063)
!5102 = !DILocation(line: 228, column: 1, scope: !5063)
!5103 = distinct !DISubprogram(name: "pcmcia_get_socket_by_nr", scope: !3, file: !3, line: 232, type: !5104, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!100, !7}
!5106 = !DILocalVariable(name: "nr", arg: 1, scope: !5103, file: !3, line: 232, type: !7)
!5107 = !DILocation(line: 232, column: 60, scope: !5103)
!5108 = !DILocalVariable(name: "s", scope: !5103, file: !3, line: 234, type: !100)
!5109 = !DILocation(line: 234, column: 24, scope: !5103)
!5110 = !DILocation(line: 236, column: 2, scope: !5103)
!5111 = !DILocalVariable(name: "__mptr", scope: !5112, file: !3, line: 237, type: !99)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 237, column: 2)
!5113 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 237, column: 2)
!5114 = !DILocation(line: 237, column: 2, scope: !5112)
!5115 = !DILocation(line: 237, column: 2, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 237, column: 2)
!5117 = !DILocation(line: 237, column: 2, scope: !5113)
!5118 = !DILocation(line: 237, column: 2, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 237, column: 2)
!5120 = !DILocation(line: 238, column: 7, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 238, column: 7)
!5122 = !DILocation(line: 238, column: 10, scope: !5121)
!5123 = !DILocation(line: 238, column: 18, scope: !5121)
!5124 = !DILocation(line: 238, column: 15, scope: !5121)
!5125 = !DILocation(line: 238, column: 7, scope: !5119)
!5126 = !DILocation(line: 239, column: 4, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 238, column: 22)
!5128 = !DILocation(line: 240, column: 11, scope: !5127)
!5129 = !DILocation(line: 240, column: 4, scope: !5127)
!5130 = !DILocalVariable(name: "__mptr", scope: !5131, file: !3, line: 237, type: !99)
!5131 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 237, column: 2)
!5132 = !DILocation(line: 237, column: 2, scope: !5131)
!5133 = !DILocation(line: 237, column: 2, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 237, column: 2)
!5135 = distinct !{!5135, !5117, !5136}
!5136 = !DILocation(line: 241, column: 3, scope: !5113)
!5137 = !DILocation(line: 242, column: 2, scope: !5103)
!5138 = !DILocation(line: 244, column: 2, scope: !5103)
!5139 = !DILocation(line: 246, column: 1, scope: !5103)
!5140 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5141, file: !5141, line: 666, type: !5142, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5141 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!155}
!5144 = !DILocalVariable(name: "f", scope: !5140, file: !5141, line: 668, type: !155)
!5145 = !DILocation(line: 668, column: 16, scope: !5140)
!5146 = !DILocation(line: 670, column: 6, scope: !5140)
!5147 = !DILocation(line: 670, column: 4, scope: !5140)
!5148 = !DILocation(line: 671, column: 2, scope: !5140)
!5149 = !DILocation(line: 672, column: 9, scope: !5140)
!5150 = !DILocation(line: 672, column: 2, scope: !5140)
!5151 = distinct !DISubprogram(name: "pcmcia_parse_uevents", scope: !3, file: !3, line: 725, type: !4983, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5152 = !DILocation(line: 407, column: 64, scope: !4686, inlinedAt: !5153)
!5153 = distinct !DILocation(line: 732, column: 3, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 729, column: 17)
!5155 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 729, column: 6)
!5156 = !DILocation(line: 407, column: 84, scope: !4686, inlinedAt: !5153)
!5157 = !DILocation(line: 327, column: 67, scope: !4408, inlinedAt: !5158)
!5158 = distinct !DILocation(line: 730, column: 3, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 730, column: 3)
!5160 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 730, column: 3)
!5161 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 730, column: 3)
!5162 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 730, column: 3)
!5163 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 730, column: 3)
!5164 = !DILocalVariable(name: "s", arg: 1, scope: !5151, file: !3, line: 725, type: !100)
!5165 = !DILocation(line: 725, column: 49, scope: !5151)
!5166 = !DILocalVariable(name: "events", arg: 2, scope: !5151, file: !3, line: 725, type: !113)
!5167 = !DILocation(line: 725, column: 58, scope: !5151)
!5168 = !DILocalVariable(name: "flags", scope: !5151, file: !3, line: 727, type: !155)
!5169 = !DILocation(line: 727, column: 16, scope: !5151)
!5170 = !DILocation(line: 729, column: 6, scope: !5155)
!5171 = !DILocation(line: 729, column: 9, scope: !5155)
!5172 = !DILocation(line: 729, column: 6, scope: !5151)
!5173 = !DILocation(line: 730, column: 3, scope: !5154)
!5174 = !DILocation(line: 730, column: 3, scope: !5163)
!5175 = !DILocalVariable(name: "__dummy", scope: !5176, file: !3, line: 730, type: !155)
!5176 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 730, column: 3)
!5177 = !DILocation(line: 730, column: 3, scope: !5176)
!5178 = !DILocalVariable(name: "__dummy2", scope: !5176, file: !3, line: 730, type: !155)
!5179 = !DILocation(line: 730, column: 3, scope: !5162)
!5180 = !DILocation(line: 730, column: 3, scope: !5161)
!5181 = !DILocation(line: 730, column: 3, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 730, column: 3)
!5183 = !DILocalVariable(name: "__dummy", scope: !5184, file: !3, line: 730, type: !155)
!5184 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 730, column: 3)
!5185 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 730, column: 3)
!5186 = !DILocation(line: 730, column: 3, scope: !5184)
!5187 = !DILocalVariable(name: "__dummy2", scope: !5184, file: !3, line: 730, type: !155)
!5188 = !DILocation(line: 730, column: 3, scope: !5185)
!5189 = !DILocation(line: 730, column: 3, scope: !5160)
!5190 = !{i32 -2141603236}
!5191 = !DILocation(line: 730, column: 3, scope: !5159)
!5192 = !DILocation(line: 329, column: 10, scope: !4408, inlinedAt: !5158)
!5193 = !DILocation(line: 329, column: 16, scope: !4408, inlinedAt: !5158)
!5194 = !DILocation(line: 731, column: 22, scope: !5154)
!5195 = !DILocation(line: 731, column: 3, scope: !5154)
!5196 = !DILocation(line: 731, column: 6, scope: !5154)
!5197 = !DILocation(line: 731, column: 19, scope: !5154)
!5198 = !DILocation(line: 732, column: 27, scope: !5154)
!5199 = !DILocation(line: 732, column: 30, scope: !5154)
!5200 = !DILocation(line: 732, column: 43, scope: !5154)
!5201 = !DILocation(line: 409, column: 2, scope: !4801, inlinedAt: !5153)
!5202 = !DILocation(line: 409, column: 2, scope: !4806, inlinedAt: !5153)
!5203 = !DILocation(line: 409, column: 2, scope: !4807, inlinedAt: !5153)
!5204 = !DILocation(line: 409, column: 2, scope: !4814, inlinedAt: !5153)
!5205 = !DILocation(line: 409, column: 2, scope: !4817, inlinedAt: !5153)
!5206 = !DILocation(line: 734, column: 19, scope: !5154)
!5207 = !DILocation(line: 734, column: 22, scope: !5154)
!5208 = !DILocation(line: 734, column: 3, scope: !5154)
!5209 = !DILocation(line: 735, column: 2, scope: !5154)
!5210 = !DILocation(line: 736, column: 1, scope: !5151)
!5211 = distinct !DISubprogram(name: "pccard_register_pcmcia", scope: !3, file: !3, line: 741, type: !5212, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!245, !100, !4131}
!5214 = !DILocalVariable(name: "s", arg: 1, scope: !5211, file: !3, line: 741, type: !100)
!5215 = !DILocation(line: 741, column: 50, scope: !5211)
!5216 = !DILocalVariable(name: "c", arg: 2, scope: !5211, file: !3, line: 741, type: !4131)
!5217 = !DILocation(line: 741, column: 77, scope: !5211)
!5218 = !DILocalVariable(name: "ret", scope: !5211, file: !3, line: 743, type: !245)
!5219 = !DILocation(line: 743, column: 6, scope: !5211)
!5220 = !DILocation(line: 746, column: 14, scope: !5211)
!5221 = !DILocation(line: 746, column: 17, scope: !5211)
!5222 = !DILocation(line: 746, column: 2, scope: !5211)
!5223 = !DILocation(line: 748, column: 6, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 748, column: 6)
!5225 = !DILocation(line: 748, column: 6, scope: !5211)
!5226 = !DILocation(line: 750, column: 7, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 750, column: 7)
!5228 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 748, column: 9)
!5229 = !DILocation(line: 750, column: 10, scope: !5227)
!5230 = !DILocation(line: 750, column: 7, scope: !5228)
!5231 = !DILocation(line: 751, column: 8, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 750, column: 20)
!5233 = !DILocation(line: 752, column: 4, scope: !5232)
!5234 = !DILocation(line: 755, column: 17, scope: !5228)
!5235 = !DILocation(line: 755, column: 3, scope: !5228)
!5236 = !DILocation(line: 755, column: 6, scope: !5228)
!5237 = !DILocation(line: 755, column: 15, scope: !5228)
!5238 = !DILocation(line: 757, column: 8, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 757, column: 7)
!5240 = !DILocation(line: 757, column: 11, scope: !5239)
!5241 = !DILocation(line: 757, column: 17, scope: !5239)
!5242 = !DILocation(line: 757, column: 52, scope: !5239)
!5243 = !DILocation(line: 757, column: 7, scope: !5228)
!5244 = !DILocation(line: 758, column: 4, scope: !5239)
!5245 = !DILocation(line: 758, column: 7, scope: !5239)
!5246 = !DILocation(line: 758, column: 17, scope: !5239)
!5247 = !DILocation(line: 758, column: 21, scope: !5239)
!5248 = !DILocation(line: 759, column: 2, scope: !5228)
!5249 = !DILocation(line: 760, column: 3, scope: !5224)
!5250 = !DILocation(line: 760, column: 6, scope: !5224)
!5251 = !DILocation(line: 760, column: 15, scope: !5224)
!5252 = !DILabel(scope: !5211, name: "err", file: !3, line: 761)
!5253 = !DILocation(line: 761, column: 2, scope: !5211)
!5254 = !DILocation(line: 762, column: 16, scope: !5211)
!5255 = !DILocation(line: 762, column: 19, scope: !5211)
!5256 = !DILocation(line: 762, column: 2, scope: !5211)
!5257 = !DILocation(line: 764, column: 9, scope: !5211)
!5258 = !DILocation(line: 764, column: 2, scope: !5211)
!5259 = distinct !DISubprogram(name: "pcmcia_reset_card", scope: !3, file: !3, line: 774, type: !4060, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5260 = !DILocalVariable(name: "skt", arg: 1, scope: !5259, file: !3, line: 774, type: !100)
!5261 = !DILocation(line: 774, column: 45, scope: !5259)
!5262 = !DILocalVariable(name: "ret", scope: !5259, file: !3, line: 776, type: !245)
!5263 = !DILocation(line: 776, column: 6, scope: !5259)
!5264 = !DILocation(line: 780, column: 14, scope: !5259)
!5265 = !DILocation(line: 780, column: 19, scope: !5259)
!5266 = !DILocation(line: 780, column: 2, scope: !5259)
!5267 = !DILocation(line: 781, column: 2, scope: !5259)
!5268 = !DILocation(line: 782, column: 9, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 782, column: 7)
!5270 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 781, column: 5)
!5271 = !DILocation(line: 782, column: 14, scope: !5269)
!5272 = !DILocation(line: 782, column: 20, scope: !5269)
!5273 = !DILocation(line: 782, column: 7, scope: !5270)
!5274 = !DILocation(line: 784, column: 8, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 782, column: 39)
!5276 = !DILocation(line: 785, column: 4, scope: !5275)
!5277 = !DILocation(line: 787, column: 7, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 787, column: 7)
!5279 = !DILocation(line: 787, column: 12, scope: !5278)
!5280 = !DILocation(line: 787, column: 18, scope: !5278)
!5281 = !DILocation(line: 787, column: 7, scope: !5270)
!5282 = !DILocation(line: 789, column: 8, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 787, column: 36)
!5284 = !DILocation(line: 790, column: 4, scope: !5283)
!5285 = !DILocation(line: 792, column: 7, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 792, column: 7)
!5287 = !DILocation(line: 792, column: 12, scope: !5286)
!5288 = !DILocation(line: 792, column: 18, scope: !5286)
!5289 = !DILocation(line: 792, column: 7, scope: !5270)
!5290 = !DILocation(line: 794, column: 8, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 792, column: 36)
!5292 = !DILocation(line: 795, column: 4, scope: !5291)
!5293 = !DILocation(line: 798, column: 7, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 798, column: 7)
!5295 = !DILocation(line: 798, column: 12, scope: !5294)
!5296 = !DILocation(line: 798, column: 7, scope: !5270)
!5297 = !DILocation(line: 799, column: 4, scope: !5294)
!5298 = !DILocation(line: 799, column: 9, scope: !5294)
!5299 = !DILocation(line: 799, column: 19, scope: !5294)
!5300 = !DILocation(line: 799, column: 27, scope: !5294)
!5301 = !DILocation(line: 800, column: 15, scope: !5270)
!5302 = !DILocation(line: 800, column: 20, scope: !5270)
!5303 = !DILocation(line: 800, column: 3, scope: !5270)
!5304 = !DILocation(line: 801, column: 22, scope: !5270)
!5305 = !DILocation(line: 801, column: 9, scope: !5270)
!5306 = !DILocation(line: 801, column: 7, scope: !5270)
!5307 = !DILocation(line: 802, column: 17, scope: !5270)
!5308 = !DILocation(line: 802, column: 22, scope: !5270)
!5309 = !DILocation(line: 802, column: 3, scope: !5270)
!5310 = !DILocation(line: 803, column: 8, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 803, column: 7)
!5312 = !DILocation(line: 803, column: 12, scope: !5311)
!5313 = !DILocation(line: 803, column: 18, scope: !5311)
!5314 = !DILocation(line: 803, column: 22, scope: !5311)
!5315 = !DILocation(line: 803, column: 27, scope: !5311)
!5316 = !DILocation(line: 803, column: 21, scope: !5311)
!5317 = !DILocation(line: 803, column: 7, scope: !5270)
!5318 = !DILocation(line: 804, column: 4, scope: !5311)
!5319 = !DILocation(line: 804, column: 9, scope: !5311)
!5320 = !DILocation(line: 804, column: 19, scope: !5311)
!5321 = !DILocation(line: 804, column: 26, scope: !5311)
!5322 = !DILocation(line: 806, column: 7, scope: !5270)
!5323 = !DILocation(line: 807, column: 2, scope: !5270)
!5324 = !DILocation(line: 808, column: 16, scope: !5259)
!5325 = !DILocation(line: 808, column: 21, scope: !5259)
!5326 = !DILocation(line: 808, column: 2, scope: !5259)
!5327 = !DILocation(line: 810, column: 9, scope: !5259)
!5328 = !DILocation(line: 810, column: 2, scope: !5259)
!5329 = distinct !DISubprogram(name: "socket_reset", scope: !3, file: !3, line: 249, type: !4060, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5330 = !DILocalVariable(name: "skt", arg: 1, scope: !5329, file: !3, line: 249, type: !100)
!5331 = !DILocation(line: 249, column: 47, scope: !5329)
!5332 = !DILocalVariable(name: "status", scope: !5329, file: !3, line: 251, type: !245)
!5333 = !DILocation(line: 251, column: 6, scope: !5329)
!5334 = !DILocalVariable(name: "i", scope: !5329, file: !3, line: 251, type: !245)
!5335 = !DILocation(line: 251, column: 14, scope: !5329)
!5336 = !DILocation(line: 255, column: 2, scope: !5329)
!5337 = !DILocation(line: 255, column: 7, scope: !5329)
!5338 = !DILocation(line: 255, column: 14, scope: !5329)
!5339 = !DILocation(line: 255, column: 20, scope: !5329)
!5340 = !DILocation(line: 256, column: 2, scope: !5329)
!5341 = !DILocation(line: 256, column: 7, scope: !5329)
!5342 = !DILocation(line: 256, column: 12, scope: !5329)
!5343 = !DILocation(line: 256, column: 23, scope: !5329)
!5344 = !DILocation(line: 256, column: 29, scope: !5329)
!5345 = !DILocation(line: 256, column: 34, scope: !5329)
!5346 = !DILocation(line: 257, column: 2, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 257, column: 2)
!5348 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 257, column: 2)
!5349 = !DILocation(line: 257, column: 2, scope: !5348)
!5350 = !DILocation(line: 257, column: 2, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 257, column: 2)
!5352 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 257, column: 2)
!5353 = !DILocation(line: 257, column: 2, scope: !5352)
!5354 = !DILocation(line: 257, column: 2, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 257, column: 2)
!5356 = !DILocation(line: 259, column: 2, scope: !5329)
!5357 = !DILocation(line: 259, column: 7, scope: !5329)
!5358 = !DILocation(line: 259, column: 14, scope: !5329)
!5359 = !DILocation(line: 259, column: 20, scope: !5329)
!5360 = !DILocation(line: 260, column: 2, scope: !5329)
!5361 = !DILocation(line: 260, column: 7, scope: !5329)
!5362 = !DILocation(line: 260, column: 12, scope: !5329)
!5363 = !DILocation(line: 260, column: 23, scope: !5329)
!5364 = !DILocation(line: 260, column: 29, scope: !5329)
!5365 = !DILocation(line: 260, column: 34, scope: !5329)
!5366 = !DILocation(line: 262, column: 9, scope: !5329)
!5367 = !DILocation(line: 262, column: 23, scope: !5329)
!5368 = !DILocation(line: 262, column: 2, scope: !5329)
!5369 = !DILocation(line: 263, column: 9, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 263, column: 2)
!5371 = !DILocation(line: 263, column: 7, scope: !5370)
!5372 = !DILocation(line: 263, column: 14, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 263, column: 2)
!5374 = !DILocation(line: 263, column: 18, scope: !5373)
!5375 = !DILocation(line: 263, column: 16, scope: !5373)
!5376 = !DILocation(line: 263, column: 2, scope: !5370)
!5377 = !DILocation(line: 264, column: 3, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 263, column: 38)
!5379 = !DILocation(line: 264, column: 8, scope: !5378)
!5380 = !DILocation(line: 264, column: 13, scope: !5378)
!5381 = !DILocation(line: 264, column: 24, scope: !5378)
!5382 = !DILocation(line: 266, column: 9, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 266, column: 7)
!5384 = !DILocation(line: 266, column: 16, scope: !5383)
!5385 = !DILocation(line: 266, column: 7, scope: !5378)
!5386 = !DILocation(line: 267, column: 4, scope: !5383)
!5387 = !DILocation(line: 269, column: 7, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 269, column: 7)
!5389 = !DILocation(line: 269, column: 14, scope: !5388)
!5390 = !DILocation(line: 269, column: 7, scope: !5378)
!5391 = !DILocation(line: 270, column: 4, scope: !5388)
!5392 = !DILocation(line: 272, column: 10, scope: !5378)
!5393 = !DILocation(line: 272, column: 24, scope: !5378)
!5394 = !DILocation(line: 272, column: 3, scope: !5378)
!5395 = !DILocation(line: 273, column: 2, scope: !5378)
!5396 = !DILocation(line: 263, column: 34, scope: !5373)
!5397 = !DILocation(line: 263, column: 2, scope: !5373)
!5398 = distinct !{!5398, !5376, !5399}
!5399 = !DILocation(line: 273, column: 2, scope: !5370)
!5400 = !DILocation(line: 275, column: 2, scope: !5329)
!5401 = !DILocation(line: 276, column: 2, scope: !5329)
!5402 = !DILocation(line: 277, column: 1, scope: !5329)
!5403 = distinct !DISubprogram(name: "pcmcia_socket_dev_resume", scope: !3, file: !3, line: 860, type: !3435, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5404 = !DILocalVariable(name: "dev", arg: 1, scope: !5403, file: !3, line: 860, type: !285)
!5405 = !DILocation(line: 860, column: 59, scope: !5403)
!5406 = !DILocation(line: 862, column: 24, scope: !5403)
!5407 = !DILocation(line: 862, column: 9, scope: !5403)
!5408 = !DILocation(line: 862, column: 2, scope: !5403)
!5409 = distinct !DISubprogram(name: "__pcmcia_pm_op", scope: !3, file: !3, line: 837, type: !5410, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!245, !285, !4059}
!5412 = !DILocalVariable(name: "dev", arg: 1, scope: !5409, file: !3, line: 837, type: !285)
!5413 = !DILocation(line: 837, column: 42, scope: !5409)
!5414 = !DILocalVariable(name: "callback", arg: 2, scope: !5409, file: !3, line: 838, type: !4059)
!5415 = !DILocation(line: 838, column: 12, scope: !5409)
!5416 = !DILocalVariable(name: "s", scope: !5409, file: !3, line: 840, type: !100)
!5417 = !DILocation(line: 840, column: 24, scope: !5409)
!5418 = !DILocalVariable(name: "__mptr", scope: !5419, file: !3, line: 840, type: !99)
!5419 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 840, column: 28)
!5420 = !DILocation(line: 840, column: 28, scope: !5419)
!5421 = !DILocation(line: 840, column: 28, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 840, column: 28)
!5423 = !DILocalVariable(name: "ret", scope: !5409, file: !3, line: 841, type: !245)
!5424 = !DILocation(line: 841, column: 6, scope: !5409)
!5425 = !DILocation(line: 843, column: 14, scope: !5409)
!5426 = !DILocation(line: 843, column: 17, scope: !5409)
!5427 = !DILocation(line: 843, column: 2, scope: !5409)
!5428 = !DILocation(line: 844, column: 8, scope: !5409)
!5429 = !DILocation(line: 844, column: 17, scope: !5409)
!5430 = !DILocation(line: 844, column: 6, scope: !5409)
!5431 = !DILocation(line: 845, column: 16, scope: !5409)
!5432 = !DILocation(line: 845, column: 19, scope: !5409)
!5433 = !DILocation(line: 845, column: 2, scope: !5409)
!5434 = !DILocation(line: 847, column: 9, scope: !5409)
!5435 = !DILocation(line: 847, column: 2, scope: !5409)
!5436 = distinct !DISubprogram(name: "socket_late_resume", scope: !3, file: !3, line: 483, type: !4060, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5437 = !DILocalVariable(name: "skt", arg: 1, scope: !5436, file: !3, line: 483, type: !100)
!5438 = !DILocation(line: 483, column: 53, scope: !5436)
!5439 = !DILocalVariable(name: "ret", scope: !5436, file: !3, line: 485, type: !245)
!5440 = !DILocation(line: 485, column: 6, scope: !5436)
!5441 = !DILocation(line: 487, column: 14, scope: !5436)
!5442 = !DILocation(line: 487, column: 19, scope: !5436)
!5443 = !DILocation(line: 487, column: 2, scope: !5436)
!5444 = !DILocation(line: 488, column: 2, scope: !5436)
!5445 = !DILocation(line: 488, column: 7, scope: !5436)
!5446 = !DILocation(line: 488, column: 13, scope: !5436)
!5447 = !DILocation(line: 489, column: 16, scope: !5436)
!5448 = !DILocation(line: 489, column: 21, scope: !5436)
!5449 = !DILocation(line: 489, column: 2, scope: !5436)
!5450 = !DILocation(line: 491, column: 8, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 491, column: 6)
!5452 = !DILocation(line: 491, column: 13, scope: !5451)
!5453 = !DILocation(line: 491, column: 19, scope: !5451)
!5454 = !DILocation(line: 491, column: 6, scope: !5436)
!5455 = !DILocation(line: 492, column: 23, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 491, column: 38)
!5457 = !DILocation(line: 492, column: 9, scope: !5456)
!5458 = !DILocation(line: 492, column: 7, scope: !5456)
!5459 = !DILocation(line: 493, column: 7, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 493, column: 7)
!5461 = !DILocation(line: 493, column: 11, scope: !5460)
!5462 = !DILocation(line: 493, column: 7, scope: !5456)
!5463 = !DILocation(line: 494, column: 8, scope: !5460)
!5464 = !DILocation(line: 494, column: 4, scope: !5460)
!5465 = !DILocation(line: 495, column: 10, scope: !5456)
!5466 = !DILocation(line: 495, column: 3, scope: !5456)
!5467 = !DILocation(line: 498, column: 6, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 498, column: 6)
!5469 = !DILocation(line: 498, column: 11, scope: !5468)
!5470 = !DILocation(line: 498, column: 6, scope: !5436)
!5471 = !DILocation(line: 499, column: 19, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 498, column: 26)
!5473 = !DILocation(line: 499, column: 3, scope: !5472)
!5474 = !DILocation(line: 500, column: 3, scope: !5472)
!5475 = !DILocation(line: 503, column: 6, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 503, column: 6)
!5477 = !DILocation(line: 503, column: 11, scope: !5476)
!5478 = !DILocation(line: 503, column: 30, scope: !5476)
!5479 = !DILocation(line: 503, column: 35, scope: !5476)
!5480 = !DILocation(line: 503, column: 27, scope: !5476)
!5481 = !DILocation(line: 503, column: 6, scope: !5436)
!5482 = !DILocation(line: 508, column: 19, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 503, column: 42)
!5484 = !DILocation(line: 508, column: 3, scope: !5483)
!5485 = !DILocation(line: 509, column: 24, scope: !5483)
!5486 = !DILocation(line: 509, column: 10, scope: !5483)
!5487 = !DILocation(line: 509, column: 3, scope: !5483)
!5488 = !DILocation(line: 512, column: 8, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 512, column: 6)
!5490 = !DILocation(line: 512, column: 13, scope: !5489)
!5491 = !DILocation(line: 512, column: 19, scope: !5489)
!5492 = !DILocation(line: 512, column: 37, scope: !5489)
!5493 = !DILocation(line: 512, column: 41, scope: !5489)
!5494 = !DILocation(line: 512, column: 46, scope: !5489)
!5495 = !DILocation(line: 512, column: 40, scope: !5489)
!5496 = !DILocation(line: 512, column: 6, scope: !5436)
!5497 = !DILocation(line: 513, column: 9, scope: !5489)
!5498 = !DILocation(line: 513, column: 14, scope: !5489)
!5499 = !DILocation(line: 513, column: 24, scope: !5489)
!5500 = !DILocation(line: 513, column: 37, scope: !5489)
!5501 = !DILocation(line: 513, column: 7, scope: !5489)
!5502 = !DILocation(line: 513, column: 3, scope: !5489)
!5503 = !DILocation(line: 514, column: 9, scope: !5436)
!5504 = !DILocation(line: 514, column: 2, scope: !5436)
!5505 = !DILocation(line: 515, column: 1, scope: !5436)
!5506 = distinct !DISubprogram(name: "pcmcia_socket_dev_complete", scope: !3, file: !3, line: 865, type: !3426, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5507 = !DILocalVariable(name: "dev", arg: 1, scope: !5506, file: !3, line: 865, type: !285)
!5508 = !DILocation(line: 865, column: 62, scope: !5506)
!5509 = !DILocalVariable(name: "__ret_warn_on", scope: !5510, file: !3, line: 867, type: !245)
!5510 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 867, column: 2)
!5511 = !DILocation(line: 867, column: 2, scope: !5510)
!5512 = !DILocation(line: 867, column: 2, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 867, column: 2)
!5514 = !DILocation(line: 867, column: 2, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 867, column: 2)
!5516 = !DILocation(line: 867, column: 2, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 867, column: 2)
!5518 = !DILocation(line: 867, column: 2, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 867, column: 2)
!5520 = !DILocation(line: 867, column: 2, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 867, column: 2)
!5522 = !DILocation(line: 867, column: 2, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 867, column: 2)
!5524 = !{i32 -2141598262, i32 -2141598233, i32 -2141598187, i32 -2141598129, i32 -2141598075, i32 -2141598021, i32 -2141597966, i32 -2141597935}
!5525 = !DILocation(line: 867, column: 2, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 867, column: 2)
!5527 = !{i32 -2141597523, i32 -2141597516, i32 -2141597464, i32 -2141597433, i32 -2141597403}
!5528 = !DILocation(line: 867, column: 2, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 867, column: 2)
!5530 = !DILocation(line: 867, column: 2, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 867, column: 2)
!5532 = !DILocation(line: 869, column: 1, scope: !5506)
!5533 = distinct !DISubprogram(name: "socket_complete_resume", scope: !3, file: !3, line: 522, type: !4060, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5534 = !DILocalVariable(name: "skt", arg: 1, scope: !5533, file: !3, line: 522, type: !100)
!5535 = !DILocation(line: 522, column: 57, scope: !5533)
!5536 = !DILocalVariable(name: "ret", scope: !5533, file: !3, line: 524, type: !245)
!5537 = !DILocation(line: 524, column: 6, scope: !5533)
!5538 = !DILocation(line: 526, column: 6, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 526, column: 6)
!5540 = !DILocation(line: 526, column: 11, scope: !5539)
!5541 = !DILocation(line: 526, column: 17, scope: !5539)
!5542 = !DILocation(line: 526, column: 6, scope: !5533)
!5543 = !DILocation(line: 530, column: 11, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 526, column: 35)
!5545 = !DILocation(line: 530, column: 3, scope: !5544)
!5546 = !DILocation(line: 531, column: 18, scope: !5544)
!5547 = !DILocation(line: 531, column: 9, scope: !5544)
!5548 = !DILocation(line: 531, column: 7, scope: !5544)
!5549 = !DILocation(line: 532, column: 7, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 532, column: 7)
!5551 = !DILocation(line: 532, column: 7, scope: !5544)
!5552 = !DILocation(line: 533, column: 12, scope: !5550)
!5553 = !DILocation(line: 533, column: 4, scope: !5550)
!5554 = !DILocation(line: 534, column: 2, scope: !5544)
!5555 = !DILocation(line: 536, column: 9, scope: !5533)
!5556 = !DILocation(line: 536, column: 2, scope: !5533)
!5557 = distinct !DISubprogram(name: "pcmcia_socket_uevent", scope: !3, file: !3, line: 815, type: !3417, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5558 = !DILocalVariable(name: "dev", arg: 1, scope: !5557, file: !3, line: 815, type: !285)
!5559 = !DILocation(line: 815, column: 48, scope: !5557)
!5560 = !DILocalVariable(name: "env", arg: 2, scope: !5557, file: !3, line: 816, type: !330)
!5561 = !DILocation(line: 816, column: 29, scope: !5557)
!5562 = !DILocalVariable(name: "s", scope: !5557, file: !3, line: 818, type: !100)
!5563 = !DILocation(line: 818, column: 24, scope: !5557)
!5564 = !DILocalVariable(name: "__mptr", scope: !5565, file: !3, line: 818, type: !99)
!5565 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 818, column: 28)
!5566 = !DILocation(line: 818, column: 28, scope: !5565)
!5567 = !DILocation(line: 818, column: 28, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 818, column: 28)
!5569 = !DILocation(line: 820, column: 21, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 820, column: 6)
!5571 = !DILocation(line: 820, column: 42, scope: !5570)
!5572 = !DILocation(line: 820, column: 45, scope: !5570)
!5573 = !DILocation(line: 820, column: 6, scope: !5570)
!5574 = !DILocation(line: 820, column: 6, scope: !5557)
!5575 = !DILocation(line: 821, column: 3, scope: !5570)
!5576 = !DILocation(line: 823, column: 2, scope: !5557)
!5577 = !DILocation(line: 824, column: 1, scope: !5557)
!5578 = distinct !DISubprogram(name: "pcmcia_release_socket_class", scope: !3, file: !3, line: 829, type: !3823, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5579 = !DILocalVariable(name: "data", arg: 1, scope: !5578, file: !3, line: 829, type: !3807)
!5580 = !DILocation(line: 829, column: 55, scope: !5578)
!5581 = !DILocation(line: 831, column: 2, scope: !5578)
!5582 = !DILocation(line: 832, column: 1, scope: !5578)
!5583 = distinct !DISubprogram(name: "pcmcia_release_socket", scope: !3, file: !3, line: 90, type: !3426, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5584 = !DILocalVariable(name: "dev", arg: 1, scope: !5583, file: !3, line: 90, type: !285)
!5585 = !DILocation(line: 90, column: 50, scope: !5583)
!5586 = !DILocalVariable(name: "socket", scope: !5583, file: !3, line: 92, type: !100)
!5587 = !DILocation(line: 92, column: 24, scope: !5583)
!5588 = !DILocation(line: 92, column: 49, scope: !5583)
!5589 = !DILocation(line: 92, column: 33, scope: !5583)
!5590 = !DILocation(line: 94, column: 12, scope: !5583)
!5591 = !DILocation(line: 94, column: 20, scope: !5583)
!5592 = !DILocation(line: 94, column: 2, scope: !5583)
!5593 = !DILocation(line: 95, column: 1, scope: !5583)
!5594 = distinct !DISubprogram(name: "exit_pcmcia_cs", scope: !3, file: !3, line: 912, type: !1910, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5595 = !DILocation(line: 914, column: 2, scope: !5594)
!5596 = !DILocation(line: 915, column: 2, scope: !5594)
!5597 = !DILocation(line: 916, column: 1, scope: !5594)
!5598 = !DILocation(line: 908, column: 2, scope: !4362)
!5599 = !DILocation(line: 909, column: 9, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 909, column: 9)
!5601 = !DILocation(line: 909, column: 2, scope: !4362)
!5602 = distinct !DISubprogram(name: "__list_add", scope: !4593, file: !4593, line: 63, type: !5603, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{null, !179, !179, !179}
!5605 = !DILocalVariable(name: "new", arg: 1, scope: !5602, file: !4593, line: 63, type: !179)
!5606 = !DILocation(line: 63, column: 49, scope: !5602)
!5607 = !DILocalVariable(name: "prev", arg: 2, scope: !5602, file: !4593, line: 64, type: !179)
!5608 = !DILocation(line: 64, column: 28, scope: !5602)
!5609 = !DILocalVariable(name: "next", arg: 3, scope: !5602, file: !4593, line: 65, type: !179)
!5610 = !DILocation(line: 65, column: 28, scope: !5602)
!5611 = !DILocation(line: 67, column: 24, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5602, file: !4593, line: 67, column: 6)
!5613 = !DILocation(line: 67, column: 29, scope: !5612)
!5614 = !DILocation(line: 67, column: 35, scope: !5612)
!5615 = !DILocation(line: 67, column: 7, scope: !5612)
!5616 = !DILocation(line: 67, column: 6, scope: !5602)
!5617 = !DILocation(line: 68, column: 3, scope: !5612)
!5618 = !DILocation(line: 70, column: 15, scope: !5602)
!5619 = !DILocation(line: 70, column: 2, scope: !5602)
!5620 = !DILocation(line: 70, column: 8, scope: !5602)
!5621 = !DILocation(line: 70, column: 13, scope: !5602)
!5622 = !DILocation(line: 71, column: 14, scope: !5602)
!5623 = !DILocation(line: 71, column: 2, scope: !5602)
!5624 = !DILocation(line: 71, column: 7, scope: !5602)
!5625 = !DILocation(line: 71, column: 12, scope: !5602)
!5626 = !DILocation(line: 72, column: 14, scope: !5602)
!5627 = !DILocation(line: 72, column: 2, scope: !5602)
!5628 = !DILocation(line: 72, column: 7, scope: !5602)
!5629 = !DILocation(line: 72, column: 12, scope: !5602)
!5630 = !DILocation(line: 73, column: 2, scope: !5602)
!5631 = !DILocation(line: 73, column: 2, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5602, file: !4593, line: 73, column: 2)
!5633 = !DILocation(line: 73, column: 2, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5632, file: !4593, line: 73, column: 2)
!5635 = !DILocation(line: 73, column: 2, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5632, file: !4593, line: 73, column: 2)
!5637 = !DILocation(line: 74, column: 1, scope: !5602)
!5638 = distinct !DISubprogram(name: "__list_add_valid", scope: !4593, file: !4593, line: 45, type: !5639, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!537, !179, !179, !179}
!5641 = !DILocalVariable(name: "new", arg: 1, scope: !5638, file: !4593, line: 45, type: !179)
!5642 = !DILocation(line: 45, column: 55, scope: !5638)
!5643 = !DILocalVariable(name: "prev", arg: 2, scope: !5638, file: !4593, line: 46, type: !179)
!5644 = !DILocation(line: 46, column: 23, scope: !5638)
!5645 = !DILocalVariable(name: "next", arg: 3, scope: !5638, file: !4593, line: 47, type: !179)
!5646 = !DILocation(line: 47, column: 23, scope: !5638)
!5647 = !DILocation(line: 49, column: 2, scope: !5638)
!5648 = distinct !DISubprogram(name: "__list_del_entry", scope: !4593, file: !4593, line: 130, type: !4633, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5649 = !DILocalVariable(name: "entry", arg: 1, scope: !5648, file: !4593, line: 130, type: !179)
!5650 = !DILocation(line: 130, column: 55, scope: !5648)
!5651 = !DILocation(line: 132, column: 30, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5648, file: !4593, line: 132, column: 6)
!5653 = !DILocation(line: 132, column: 7, scope: !5652)
!5654 = !DILocation(line: 132, column: 6, scope: !5648)
!5655 = !DILocation(line: 133, column: 3, scope: !5652)
!5656 = !DILocation(line: 135, column: 13, scope: !5648)
!5657 = !DILocation(line: 135, column: 20, scope: !5648)
!5658 = !DILocation(line: 135, column: 26, scope: !5648)
!5659 = !DILocation(line: 135, column: 33, scope: !5648)
!5660 = !DILocation(line: 135, column: 2, scope: !5648)
!5661 = !DILocation(line: 136, column: 1, scope: !5648)
!5662 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4593, file: !4593, line: 51, type: !5663, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!537, !179}
!5665 = !DILocalVariable(name: "entry", arg: 1, scope: !5662, file: !4593, line: 51, type: !179)
!5666 = !DILocation(line: 51, column: 61, scope: !5662)
!5667 = !DILocation(line: 53, column: 2, scope: !5662)
!5668 = distinct !DISubprogram(name: "__list_del", scope: !4593, file: !4593, line: 110, type: !4608, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5669 = !DILocalVariable(name: "prev", arg: 1, scope: !5668, file: !4593, line: 110, type: !179)
!5670 = !DILocation(line: 110, column: 50, scope: !5668)
!5671 = !DILocalVariable(name: "next", arg: 2, scope: !5668, file: !4593, line: 110, type: !179)
!5672 = !DILocation(line: 110, column: 75, scope: !5668)
!5673 = !DILocation(line: 112, column: 15, scope: !5668)
!5674 = !DILocation(line: 112, column: 2, scope: !5668)
!5675 = !DILocation(line: 112, column: 8, scope: !5668)
!5676 = !DILocation(line: 112, column: 13, scope: !5668)
!5677 = !DILocation(line: 113, column: 2, scope: !5668)
!5678 = !DILocation(line: 113, column: 2, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5668, file: !4593, line: 113, column: 2)
!5680 = !DILocation(line: 113, column: 2, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5679, file: !4593, line: 113, column: 2)
!5682 = !DILocation(line: 113, column: 2, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5679, file: !4593, line: 113, column: 2)
!5684 = !DILocation(line: 114, column: 1, scope: !5668)
!5685 = distinct !DISubprogram(name: "socket_detect_change", scope: !3, file: !3, line: 574, type: !4108, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5686 = !DILocalVariable(name: "skt", arg: 1, scope: !5685, file: !3, line: 574, type: !100)
!5687 = !DILocation(line: 574, column: 56, scope: !5685)
!5688 = !DILocation(line: 576, column: 8, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 576, column: 6)
!5690 = !DILocation(line: 576, column: 13, scope: !5689)
!5691 = !DILocation(line: 576, column: 19, scope: !5689)
!5692 = !DILocation(line: 576, column: 6, scope: !5685)
!5693 = !DILocalVariable(name: "status", scope: !5694, file: !3, line: 577, type: !245)
!5694 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 576, column: 38)
!5695 = !DILocation(line: 577, column: 7, scope: !5694)
!5696 = !DILocation(line: 579, column: 9, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 579, column: 7)
!5698 = !DILocation(line: 579, column: 14, scope: !5697)
!5699 = !DILocation(line: 579, column: 20, scope: !5697)
!5700 = !DILocation(line: 579, column: 7, scope: !5694)
!5701 = !DILocation(line: 580, column: 4, scope: !5697)
!5702 = !DILocation(line: 582, column: 3, scope: !5694)
!5703 = !DILocation(line: 582, column: 8, scope: !5694)
!5704 = !DILocation(line: 582, column: 13, scope: !5694)
!5705 = !DILocation(line: 582, column: 24, scope: !5694)
!5706 = !DILocation(line: 583, column: 8, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 583, column: 7)
!5708 = !DILocation(line: 583, column: 13, scope: !5707)
!5709 = !DILocation(line: 583, column: 19, scope: !5707)
!5710 = !DILocation(line: 583, column: 37, scope: !5707)
!5711 = !DILocation(line: 584, column: 10, scope: !5707)
!5712 = !DILocation(line: 584, column: 17, scope: !5707)
!5713 = !DILocation(line: 583, column: 7, scope: !5694)
!5714 = !DILocation(line: 585, column: 18, scope: !5707)
!5715 = !DILocation(line: 585, column: 4, scope: !5707)
!5716 = !DILocation(line: 586, column: 9, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 586, column: 7)
!5718 = !DILocation(line: 586, column: 14, scope: !5717)
!5719 = !DILocation(line: 586, column: 20, scope: !5717)
!5720 = !DILocation(line: 586, column: 38, scope: !5717)
!5721 = !DILocation(line: 587, column: 8, scope: !5717)
!5722 = !DILocation(line: 587, column: 15, scope: !5717)
!5723 = !DILocation(line: 586, column: 7, scope: !5694)
!5724 = !DILocation(line: 588, column: 18, scope: !5717)
!5725 = !DILocation(line: 588, column: 4, scope: !5717)
!5726 = !DILocation(line: 589, column: 2, scope: !5694)
!5727 = !DILocation(line: 590, column: 1, scope: !5685)
!5728 = distinct !DISubprogram(name: "socket_remove", scope: !3, file: !3, line: 557, type: !4108, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5729 = !DILocalVariable(name: "skt", arg: 1, scope: !5728, file: !3, line: 557, type: !100)
!5730 = !DILocation(line: 557, column: 49, scope: !5728)
!5731 = !DILocation(line: 559, column: 2, scope: !5728)
!5732 = !DILocation(line: 560, column: 18, scope: !5728)
!5733 = !DILocation(line: 560, column: 2, scope: !5728)
!5734 = !DILocation(line: 561, column: 1, scope: !5728)
!5735 = distinct !DISubprogram(name: "socket_insert", scope: !3, file: !3, line: 410, type: !4060, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5736 = !DILocalVariable(name: "skt", arg: 1, scope: !5735, file: !3, line: 410, type: !100)
!5737 = !DILocation(line: 410, column: 48, scope: !5735)
!5738 = !DILocalVariable(name: "ret", scope: !5735, file: !3, line: 412, type: !245)
!5739 = !DILocation(line: 412, column: 6, scope: !5735)
!5740 = !DILocation(line: 416, column: 14, scope: !5735)
!5741 = !DILocation(line: 416, column: 19, scope: !5735)
!5742 = !DILocation(line: 416, column: 2, scope: !5735)
!5743 = !DILocation(line: 417, column: 6, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 417, column: 6)
!5745 = !DILocation(line: 417, column: 11, scope: !5744)
!5746 = !DILocation(line: 417, column: 17, scope: !5744)
!5747 = !DILocation(line: 417, column: 6, scope: !5735)
!5748 = !DILocation(line: 418, column: 17, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 417, column: 33)
!5750 = !DILocation(line: 418, column: 22, scope: !5749)
!5751 = !DILocation(line: 418, column: 3, scope: !5749)
!5752 = !DILocation(line: 419, column: 3, scope: !5749)
!5753 = !DILocation(line: 421, column: 2, scope: !5735)
!5754 = !DILocation(line: 421, column: 7, scope: !5735)
!5755 = !DILocation(line: 421, column: 13, scope: !5735)
!5756 = !DILocation(line: 423, column: 21, scope: !5735)
!5757 = !DILocation(line: 423, column: 26, scope: !5735)
!5758 = !DILocation(line: 423, column: 8, scope: !5735)
!5759 = !DILocation(line: 423, column: 6, scope: !5735)
!5760 = !DILocation(line: 424, column: 6, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 424, column: 6)
!5762 = !DILocation(line: 424, column: 10, scope: !5761)
!5763 = !DILocation(line: 424, column: 6, scope: !5735)
!5764 = !DILocation(line: 425, column: 3, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 424, column: 16)
!5766 = !DILocation(line: 425, column: 8, scope: !5765)
!5767 = !DILocation(line: 425, column: 14, scope: !5765)
!5768 = !DILocation(line: 427, column: 3, scope: !5765)
!5769 = !DILocation(line: 432, column: 7, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 432, column: 7)
!5771 = !DILocation(line: 432, column: 12, scope: !5770)
!5772 = !DILocation(line: 432, column: 18, scope: !5770)
!5773 = !DILocation(line: 432, column: 7, scope: !5765)
!5774 = !DILocation(line: 433, column: 13, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 432, column: 36)
!5776 = !DILocation(line: 433, column: 4, scope: !5775)
!5777 = !DILocation(line: 434, column: 4, scope: !5775)
!5778 = !DILocation(line: 434, column: 9, scope: !5775)
!5779 = !DILocation(line: 434, column: 15, scope: !5775)
!5780 = !DILocation(line: 435, column: 3, scope: !5775)
!5781 = !DILocation(line: 438, column: 17, scope: !5765)
!5782 = !DILocation(line: 438, column: 22, scope: !5765)
!5783 = !DILocation(line: 438, column: 3, scope: !5765)
!5784 = !DILocation(line: 440, column: 9, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 440, column: 7)
!5786 = !DILocation(line: 440, column: 14, scope: !5785)
!5787 = !DILocation(line: 440, column: 20, scope: !5785)
!5788 = !DILocation(line: 440, column: 38, scope: !5785)
!5789 = !DILocation(line: 440, column: 42, scope: !5785)
!5790 = !DILocation(line: 440, column: 47, scope: !5785)
!5791 = !DILocation(line: 440, column: 41, scope: !5785)
!5792 = !DILocation(line: 440, column: 7, scope: !5765)
!5793 = !DILocation(line: 441, column: 4, scope: !5785)
!5794 = !DILocation(line: 441, column: 9, scope: !5785)
!5795 = !DILocation(line: 441, column: 19, scope: !5785)
!5796 = !DILocation(line: 441, column: 23, scope: !5785)
!5797 = !DILocation(line: 442, column: 2, scope: !5765)
!5798 = !DILocation(line: 443, column: 17, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 442, column: 9)
!5800 = !DILocation(line: 443, column: 22, scope: !5799)
!5801 = !DILocation(line: 443, column: 3, scope: !5799)
!5802 = !DILocation(line: 444, column: 19, scope: !5799)
!5803 = !DILocation(line: 444, column: 3, scope: !5799)
!5804 = !DILocation(line: 447, column: 9, scope: !5735)
!5805 = !DILocation(line: 447, column: 2, scope: !5735)
!5806 = !DILocation(line: 448, column: 1, scope: !5735)
!5807 = distinct !DISubprogram(name: "socket_suspend", scope: !3, file: !3, line: 450, type: !4060, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5808 = !DILocalVariable(name: "skt", arg: 1, scope: !5807, file: !3, line: 450, type: !100)
!5809 = !DILocation(line: 450, column: 49, scope: !5807)
!5810 = !DILocation(line: 452, column: 7, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 452, column: 6)
!5812 = !DILocation(line: 452, column: 12, scope: !5811)
!5813 = !DILocation(line: 452, column: 18, scope: !5811)
!5814 = !DILocation(line: 452, column: 36, scope: !5811)
!5815 = !DILocation(line: 452, column: 41, scope: !5811)
!5816 = !DILocation(line: 452, column: 46, scope: !5811)
!5817 = !DILocation(line: 452, column: 52, scope: !5811)
!5818 = !DILocation(line: 452, column: 6, scope: !5807)
!5819 = !DILocation(line: 453, column: 3, scope: !5811)
!5820 = !DILocation(line: 455, column: 14, scope: !5807)
!5821 = !DILocation(line: 455, column: 19, scope: !5807)
!5822 = !DILocation(line: 455, column: 2, scope: !5807)
!5823 = !DILocation(line: 457, column: 8, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 457, column: 6)
!5825 = !DILocation(line: 457, column: 13, scope: !5824)
!5826 = !DILocation(line: 457, column: 19, scope: !5824)
!5827 = !DILocation(line: 457, column: 6, scope: !5807)
!5828 = !DILocation(line: 458, column: 26, scope: !5824)
!5829 = !DILocation(line: 458, column: 31, scope: !5824)
!5830 = !DILocation(line: 458, column: 3, scope: !5824)
!5831 = !DILocation(line: 458, column: 8, scope: !5824)
!5832 = !DILocation(line: 458, column: 24, scope: !5824)
!5833 = !DILocation(line: 460, column: 2, scope: !5807)
!5834 = !DILocation(line: 460, column: 7, scope: !5807)
!5835 = !DILocation(line: 460, column: 16, scope: !5807)
!5836 = !DILocation(line: 461, column: 2, scope: !5807)
!5837 = !DILocation(line: 461, column: 7, scope: !5807)
!5838 = !DILocation(line: 461, column: 12, scope: !5807)
!5839 = !DILocation(line: 461, column: 23, scope: !5807)
!5840 = !DILocation(line: 461, column: 29, scope: !5807)
!5841 = !DILocation(line: 461, column: 34, scope: !5807)
!5842 = !DILocation(line: 462, column: 6, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 462, column: 6)
!5844 = !DILocation(line: 462, column: 11, scope: !5843)
!5845 = !DILocation(line: 462, column: 16, scope: !5843)
!5846 = !DILocation(line: 462, column: 6, scope: !5807)
!5847 = !DILocation(line: 463, column: 3, scope: !5843)
!5848 = !DILocation(line: 463, column: 8, scope: !5843)
!5849 = !DILocation(line: 463, column: 13, scope: !5843)
!5850 = !DILocation(line: 463, column: 21, scope: !5843)
!5851 = !DILocation(line: 464, column: 2, scope: !5807)
!5852 = !DILocation(line: 464, column: 7, scope: !5807)
!5853 = !DILocation(line: 464, column: 13, scope: !5807)
!5854 = !DILocation(line: 465, column: 2, scope: !5807)
!5855 = !DILocation(line: 465, column: 7, scope: !5807)
!5856 = !DILocation(line: 465, column: 13, scope: !5807)
!5857 = !DILocation(line: 466, column: 16, scope: !5807)
!5858 = !DILocation(line: 466, column: 21, scope: !5807)
!5859 = !DILocation(line: 466, column: 2, scope: !5807)
!5860 = !DILocation(line: 467, column: 2, scope: !5807)
!5861 = !DILocation(line: 468, column: 1, scope: !5807)
!5862 = distinct !DISubprogram(name: "socket_resume", scope: !3, file: !3, line: 544, type: !4060, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5863 = !DILocalVariable(name: "skt", arg: 1, scope: !5862, file: !3, line: 544, type: !100)
!5864 = !DILocation(line: 544, column: 48, scope: !5862)
!5865 = !DILocalVariable(name: "err", scope: !5862, file: !3, line: 546, type: !245)
!5866 = !DILocation(line: 546, column: 6, scope: !5862)
!5867 = !DILocation(line: 547, column: 8, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 547, column: 6)
!5869 = !DILocation(line: 547, column: 13, scope: !5868)
!5870 = !DILocation(line: 547, column: 19, scope: !5868)
!5871 = !DILocation(line: 547, column: 6, scope: !5862)
!5872 = !DILocation(line: 548, column: 3, scope: !5868)
!5873 = !DILocation(line: 550, column: 22, scope: !5862)
!5874 = !DILocation(line: 550, column: 2, scope: !5862)
!5875 = !DILocation(line: 551, column: 27, scope: !5862)
!5876 = !DILocation(line: 551, column: 8, scope: !5862)
!5877 = !DILocation(line: 551, column: 6, scope: !5862)
!5878 = !DILocation(line: 552, column: 7, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 552, column: 6)
!5880 = !DILocation(line: 552, column: 6, scope: !5862)
!5881 = !DILocation(line: 553, column: 32, scope: !5879)
!5882 = !DILocation(line: 553, column: 9, scope: !5879)
!5883 = !DILocation(line: 553, column: 7, scope: !5879)
!5884 = !DILocation(line: 553, column: 3, scope: !5879)
!5885 = !DILocation(line: 554, column: 9, scope: !5862)
!5886 = !DILocation(line: 554, column: 2, scope: !5862)
!5887 = !DILocation(line: 555, column: 1, scope: !5862)
!5888 = distinct !DISubprogram(name: "try_to_freeze", scope: !5889, file: !5889, line: 63, type: !3227, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5889 = !DIFile(filename: "./include/linux/freezer.h", directory: "/home/lizy2001/genbc/linux")
!5890 = !DILocation(line: 15, column: 9, scope: !4662, inlinedAt: !5891)
!5891 = distinct !DILocation(line: 65, column: 8, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5888, file: !5889, line: 65, column: 6)
!5893 = !DILocation(line: 15, column: 9, scope: !4673, inlinedAt: !5891)
!5894 = !DILocation(line: 15, column: 9, scope: !4676, inlinedAt: !5891)
!5895 = !DILocation(line: 65, column: 17, scope: !5892)
!5896 = !DILocation(line: 65, column: 23, scope: !5892)
!5897 = !DILocation(line: 65, column: 6, scope: !5888)
!5898 = !DILocation(line: 66, column: 3, scope: !5892)
!5899 = !DILocation(line: 67, column: 9, scope: !5888)
!5900 = !DILocation(line: 67, column: 2, scope: !5888)
!5901 = distinct !DISubprogram(name: "socket_shutdown", scope: !3, file: !3, line: 285, type: !4108, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5902 = !DILocalVariable(name: "s", arg: 1, scope: !5901, file: !3, line: 285, type: !100)
!5903 = !DILocation(line: 285, column: 51, scope: !5901)
!5904 = !DILocalVariable(name: "status", scope: !5901, file: !3, line: 287, type: !245)
!5905 = !DILocation(line: 287, column: 6, scope: !5901)
!5906 = !DILocation(line: 291, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 291, column: 6)
!5908 = !DILocation(line: 291, column: 9, scope: !5907)
!5909 = !DILocation(line: 291, column: 6, scope: !5901)
!5910 = !DILocation(line: 292, column: 3, scope: !5907)
!5911 = !DILocation(line: 292, column: 6, scope: !5907)
!5912 = !DILocation(line: 292, column: 16, scope: !5907)
!5913 = !DILocation(line: 292, column: 23, scope: !5907)
!5914 = !DILocation(line: 294, column: 14, scope: !5901)
!5915 = !DILocation(line: 294, column: 17, scope: !5901)
!5916 = !DILocation(line: 294, column: 2, scope: !5901)
!5917 = !DILocation(line: 295, column: 2, scope: !5901)
!5918 = !DILocation(line: 295, column: 5, scope: !5901)
!5919 = !DILocation(line: 295, column: 11, scope: !5901)
!5920 = !DILocation(line: 296, column: 9, scope: !5901)
!5921 = !DILocation(line: 296, column: 24, scope: !5901)
!5922 = !DILocation(line: 296, column: 2, scope: !5901)
!5923 = !DILocation(line: 297, column: 2, scope: !5901)
!5924 = !DILocation(line: 297, column: 5, scope: !5901)
!5925 = !DILocation(line: 297, column: 11, scope: !5901)
!5926 = !DILocation(line: 300, column: 2, scope: !5901)
!5927 = !DILocation(line: 300, column: 5, scope: !5901)
!5928 = !DILocation(line: 300, column: 14, scope: !5901)
!5929 = !DILocation(line: 301, column: 2, scope: !5901)
!5930 = !DILocation(line: 301, column: 5, scope: !5901)
!5931 = !DILocation(line: 301, column: 10, scope: !5901)
!5932 = !DILocation(line: 301, column: 15, scope: !5901)
!5933 = !DILocation(line: 302, column: 2, scope: !5901)
!5934 = !DILocation(line: 302, column: 5, scope: !5901)
!5935 = !DILocation(line: 302, column: 10, scope: !5901)
!5936 = !DILocation(line: 302, column: 21, scope: !5901)
!5937 = !DILocation(line: 302, column: 25, scope: !5901)
!5938 = !DILocation(line: 302, column: 28, scope: !5901)
!5939 = !DILocation(line: 303, column: 2, scope: !5901)
!5940 = !DILocation(line: 303, column: 5, scope: !5901)
!5941 = !DILocation(line: 303, column: 16, scope: !5901)
!5942 = !DILocation(line: 304, column: 8, scope: !5901)
!5943 = !DILocation(line: 304, column: 11, scope: !5901)
!5944 = !DILocation(line: 304, column: 2, scope: !5901)
!5945 = !DILocation(line: 305, column: 2, scope: !5901)
!5946 = !DILocation(line: 305, column: 5, scope: !5901)
!5947 = !DILocation(line: 305, column: 14, scope: !5901)
!5948 = !DILocation(line: 306, column: 2, scope: !5901)
!5949 = !DILocation(line: 306, column: 5, scope: !5901)
!5950 = !DILocation(line: 306, column: 15, scope: !5901)
!5951 = !DILocation(line: 314, column: 16, scope: !5901)
!5952 = !DILocation(line: 314, column: 19, scope: !5901)
!5953 = !DILocation(line: 314, column: 2, scope: !5901)
!5954 = !DILocation(line: 317, column: 10, scope: !5901)
!5955 = !DILocation(line: 317, column: 2, scope: !5901)
!5956 = !DILocation(line: 321, column: 2, scope: !5901)
!5957 = !DILocation(line: 323, column: 2, scope: !5901)
!5958 = !DILocation(line: 323, column: 5, scope: !5901)
!5959 = !DILocation(line: 323, column: 10, scope: !5901)
!5960 = !DILocation(line: 323, column: 21, scope: !5901)
!5961 = !DILocation(line: 324, column: 6, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 324, column: 6)
!5963 = !DILocation(line: 324, column: 13, scope: !5962)
!5964 = !DILocation(line: 324, column: 6, scope: !5901)
!5965 = !DILocation(line: 325, column: 3, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 324, column: 27)
!5967 = !DILocation(line: 327, column: 2, scope: !5966)
!5968 = !DILocation(line: 329, column: 2, scope: !5901)
!5969 = !DILocation(line: 329, column: 5, scope: !5901)
!5970 = !DILocation(line: 329, column: 11, scope: !5901)
!5971 = !DILocation(line: 330, column: 1, scope: !5901)
!5972 = distinct !DISubprogram(name: "socket_setup", scope: !3, file: !3, line: 332, type: !4117, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5973 = !DILocalVariable(name: "skt", arg: 1, scope: !5972, file: !3, line: 332, type: !100)
!5974 = !DILocation(line: 332, column: 47, scope: !5972)
!5975 = !DILocalVariable(name: "initial_delay", arg: 2, scope: !5972, file: !3, line: 332, type: !245)
!5976 = !DILocation(line: 332, column: 56, scope: !5972)
!5977 = !DILocalVariable(name: "status", scope: !5972, file: !3, line: 334, type: !245)
!5978 = !DILocation(line: 334, column: 6, scope: !5972)
!5979 = !DILocalVariable(name: "i", scope: !5972, file: !3, line: 334, type: !245)
!5980 = !DILocation(line: 334, column: 14, scope: !5972)
!5981 = !DILocation(line: 338, column: 2, scope: !5972)
!5982 = !DILocation(line: 338, column: 7, scope: !5972)
!5983 = !DILocation(line: 338, column: 12, scope: !5972)
!5984 = !DILocation(line: 338, column: 23, scope: !5972)
!5985 = !DILocation(line: 339, column: 8, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 339, column: 6)
!5987 = !DILocation(line: 339, column: 15, scope: !5986)
!5988 = !DILocation(line: 339, column: 6, scope: !5972)
!5989 = !DILocation(line: 340, column: 3, scope: !5986)
!5990 = !DILocation(line: 342, column: 9, scope: !5972)
!5991 = !DILocation(line: 342, column: 23, scope: !5972)
!5992 = !DILocation(line: 342, column: 2, scope: !5972)
!5993 = !DILocation(line: 344, column: 9, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 344, column: 2)
!5995 = !DILocation(line: 344, column: 7, scope: !5994)
!5996 = !DILocation(line: 344, column: 14, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 344, column: 2)
!5998 = !DILocation(line: 344, column: 16, scope: !5997)
!5999 = !DILocation(line: 344, column: 2, scope: !5994)
!6000 = !DILocation(line: 345, column: 3, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 344, column: 28)
!6002 = !DILocation(line: 345, column: 8, scope: !6001)
!6003 = !DILocation(line: 345, column: 13, scope: !6001)
!6004 = !DILocation(line: 345, column: 24, scope: !6001)
!6005 = !DILocation(line: 346, column: 9, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 346, column: 7)
!6007 = !DILocation(line: 346, column: 16, scope: !6006)
!6008 = !DILocation(line: 346, column: 7, scope: !6001)
!6009 = !DILocation(line: 347, column: 4, scope: !6006)
!6010 = !DILocation(line: 349, column: 9, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 349, column: 7)
!6012 = !DILocation(line: 349, column: 16, scope: !6011)
!6013 = !DILocation(line: 349, column: 7, scope: !6001)
!6014 = !DILocation(line: 350, column: 4, scope: !6011)
!6015 = !DILocation(line: 352, column: 3, scope: !6001)
!6016 = !DILocation(line: 353, column: 2, scope: !6001)
!6017 = !DILocation(line: 344, column: 24, scope: !5997)
!6018 = !DILocation(line: 344, column: 2, scope: !5997)
!6019 = distinct !{!6019, !5999, !6020}
!6020 = !DILocation(line: 353, column: 2, scope: !5994)
!6021 = !DILocation(line: 355, column: 6, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 355, column: 6)
!6023 = !DILocation(line: 355, column: 13, scope: !6022)
!6024 = !DILocation(line: 355, column: 6, scope: !5972)
!6025 = !DILocation(line: 356, column: 3, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6022, file: !3, line: 355, column: 27)
!6027 = !DILocation(line: 357, column: 3, scope: !6026)
!6028 = !DILocation(line: 360, column: 6, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 360, column: 6)
!6030 = !DILocation(line: 360, column: 13, scope: !6029)
!6031 = !DILocation(line: 360, column: 6, scope: !5972)
!6032 = !DILocation(line: 361, column: 9, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 361, column: 7)
!6034 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 360, column: 27)
!6035 = !DILocation(line: 361, column: 14, scope: !6033)
!6036 = !DILocation(line: 361, column: 23, scope: !6033)
!6037 = !DILocation(line: 361, column: 7, scope: !6034)
!6038 = !DILocation(line: 362, column: 4, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 361, column: 42)
!6040 = !DILocation(line: 363, column: 4, scope: !6039)
!6041 = !DILocation(line: 365, column: 3, scope: !6034)
!6042 = !DILocation(line: 365, column: 8, scope: !6034)
!6043 = !DILocation(line: 365, column: 14, scope: !6034)
!6044 = !DILocation(line: 366, column: 2, scope: !6034)
!6045 = !DILocation(line: 367, column: 3, scope: !6029)
!6046 = !DILocation(line: 367, column: 8, scope: !6029)
!6047 = !DILocation(line: 367, column: 14, scope: !6029)
!6048 = !DILocation(line: 372, column: 6, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 372, column: 6)
!6050 = !DILocation(line: 372, column: 13, scope: !6049)
!6051 = !DILocation(line: 372, column: 6, scope: !5972)
!6052 = !DILocation(line: 373, column: 21, scope: !6049)
!6053 = !DILocation(line: 373, column: 26, scope: !6049)
!6054 = !DILocation(line: 373, column: 33, scope: !6049)
!6055 = !DILocation(line: 373, column: 37, scope: !6049)
!6056 = !DILocation(line: 373, column: 3, scope: !6049)
!6057 = !DILocation(line: 373, column: 8, scope: !6049)
!6058 = !DILocation(line: 373, column: 15, scope: !6049)
!6059 = !DILocation(line: 373, column: 19, scope: !6049)
!6060 = !DILocation(line: 374, column: 13, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 374, column: 11)
!6062 = !DILocation(line: 374, column: 20, scope: !6061)
!6063 = !DILocation(line: 374, column: 11, scope: !6049)
!6064 = !DILocation(line: 375, column: 21, scope: !6061)
!6065 = !DILocation(line: 375, column: 26, scope: !6061)
!6066 = !DILocation(line: 375, column: 33, scope: !6061)
!6067 = !DILocation(line: 375, column: 37, scope: !6061)
!6068 = !DILocation(line: 375, column: 3, scope: !6061)
!6069 = !DILocation(line: 375, column: 8, scope: !6061)
!6070 = !DILocation(line: 375, column: 15, scope: !6061)
!6071 = !DILocation(line: 375, column: 19, scope: !6061)
!6072 = !DILocation(line: 377, column: 3, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 376, column: 7)
!6074 = !DILocation(line: 378, column: 3, scope: !6073)
!6075 = !DILocation(line: 381, column: 6, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 381, column: 6)
!6077 = !DILocation(line: 381, column: 11, scope: !6076)
!6078 = !DILocation(line: 381, column: 6, scope: !5972)
!6079 = !DILocation(line: 382, column: 3, scope: !6076)
!6080 = !DILocation(line: 382, column: 8, scope: !6076)
!6081 = !DILocation(line: 382, column: 19, scope: !6076)
!6082 = !DILocation(line: 384, column: 2, scope: !5972)
!6083 = !DILocation(line: 384, column: 7, scope: !5972)
!6084 = !DILocation(line: 384, column: 14, scope: !5972)
!6085 = !DILocation(line: 384, column: 20, scope: !5972)
!6086 = !DILocation(line: 385, column: 2, scope: !5972)
!6087 = !DILocation(line: 385, column: 7, scope: !5972)
!6088 = !DILocation(line: 385, column: 12, scope: !5972)
!6089 = !DILocation(line: 385, column: 23, scope: !5972)
!6090 = !DILocation(line: 385, column: 29, scope: !5972)
!6091 = !DILocation(line: 385, column: 34, scope: !5972)
!6092 = !DILocation(line: 390, column: 9, scope: !5972)
!6093 = !DILocation(line: 390, column: 20, scope: !5972)
!6094 = !DILocation(line: 390, column: 2, scope: !5972)
!6095 = !DILocation(line: 392, column: 2, scope: !5972)
!6096 = !DILocation(line: 392, column: 7, scope: !5972)
!6097 = !DILocation(line: 392, column: 12, scope: !5972)
!6098 = !DILocation(line: 392, column: 23, scope: !5972)
!6099 = !DILocation(line: 393, column: 8, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 393, column: 6)
!6101 = !DILocation(line: 393, column: 15, scope: !6100)
!6102 = !DILocation(line: 393, column: 6, scope: !5972)
!6103 = !DILocation(line: 394, column: 3, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 393, column: 30)
!6105 = !DILocation(line: 395, column: 3, scope: !6104)
!6106 = !DILocation(line: 398, column: 24, scope: !5972)
!6107 = !DILocation(line: 398, column: 11, scope: !5972)
!6108 = !DILocation(line: 398, column: 9, scope: !5972)
!6109 = !DILocation(line: 400, column: 6, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 400, column: 6)
!6111 = !DILocation(line: 400, column: 11, scope: !6110)
!6112 = !DILocation(line: 400, column: 6, scope: !5972)
!6113 = !DILocation(line: 401, column: 3, scope: !6110)
!6114 = !DILocation(line: 401, column: 8, scope: !6110)
!6115 = !DILocation(line: 401, column: 19, scope: !6110)
!6116 = !DILocation(line: 403, column: 9, scope: !5972)
!6117 = !DILocation(line: 403, column: 2, scope: !5972)
!6118 = !DILocation(line: 404, column: 1, scope: !5972)
!6119 = distinct !DISubprogram(name: "socket_early_resume", scope: !3, file: !3, line: 470, type: !4060, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6120 = !DILocalVariable(name: "skt", arg: 1, scope: !6119, file: !3, line: 470, type: !100)
!6121 = !DILocation(line: 470, column: 54, scope: !6119)
!6122 = !DILocation(line: 472, column: 14, scope: !6119)
!6123 = !DILocation(line: 472, column: 19, scope: !6119)
!6124 = !DILocation(line: 472, column: 2, scope: !6119)
!6125 = !DILocation(line: 473, column: 2, scope: !6119)
!6126 = !DILocation(line: 473, column: 7, scope: !6119)
!6127 = !DILocation(line: 473, column: 16, scope: !6119)
!6128 = !DILocation(line: 474, column: 2, scope: !6119)
!6129 = !DILocation(line: 474, column: 7, scope: !6119)
!6130 = !DILocation(line: 474, column: 12, scope: !6119)
!6131 = !DILocation(line: 474, column: 17, scope: !6119)
!6132 = !DILocation(line: 475, column: 2, scope: !6119)
!6133 = !DILocation(line: 475, column: 7, scope: !6119)
!6134 = !DILocation(line: 475, column: 12, scope: !6119)
!6135 = !DILocation(line: 475, column: 23, scope: !6119)
!6136 = !DILocation(line: 475, column: 29, scope: !6119)
!6137 = !DILocation(line: 475, column: 34, scope: !6119)
!6138 = !DILocation(line: 476, column: 6, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 476, column: 6)
!6140 = !DILocation(line: 476, column: 11, scope: !6139)
!6141 = !DILocation(line: 476, column: 17, scope: !6139)
!6142 = !DILocation(line: 476, column: 6, scope: !6119)
!6143 = !DILocation(line: 477, column: 37, scope: !6139)
!6144 = !DILocation(line: 477, column: 42, scope: !6139)
!6145 = !DILocation(line: 477, column: 24, scope: !6139)
!6146 = !DILocation(line: 477, column: 3, scope: !6139)
!6147 = !DILocation(line: 477, column: 8, scope: !6139)
!6148 = !DILocation(line: 477, column: 22, scope: !6139)
!6149 = !DILocation(line: 478, column: 2, scope: !6119)
!6150 = !DILocation(line: 478, column: 7, scope: !6119)
!6151 = !DILocation(line: 478, column: 13, scope: !6119)
!6152 = !DILocation(line: 479, column: 16, scope: !6119)
!6153 = !DILocation(line: 479, column: 21, scope: !6119)
!6154 = !DILocation(line: 479, column: 2, scope: !6119)
!6155 = !DILocation(line: 480, column: 2, scope: !6119)
!6156 = distinct !DISubprogram(name: "debug_check_no_locks_held", scope: !6157, file: !6157, line: 71, type: !1910, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6157 = !DIFile(filename: "./include/linux/debug_locks.h", directory: "/home/lizy2001/genbc/linux")
!6158 = !DILocation(line: 73, column: 1, scope: !6156)
!6159 = distinct !DISubprogram(name: "try_to_freeze_unsafe", scope: !5889, file: !5889, line: 55, type: !3227, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6160 = !DILocation(line: 15, column: 9, scope: !4662, inlinedAt: !6161)
!6161 = distinct !DILocation(line: 58, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6159, file: !5889, line: 58, column: 6)
!6163 = !DILocation(line: 15, column: 9, scope: !4673, inlinedAt: !6161)
!6164 = !DILocation(line: 15, column: 9, scope: !4676, inlinedAt: !6161)
!6165 = !DILocation(line: 57, column: 2, scope: !6159)
!6166 = !DILocation(line: 57, column: 2, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6159, file: !5889, line: 57, column: 2)
!6168 = !DILocation(line: 57, column: 2, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6167, file: !5889, line: 57, column: 2)
!6170 = !DILocation(line: 58, column: 6, scope: !6162)
!6171 = !DILocation(line: 58, column: 6, scope: !6159)
!6172 = !DILocation(line: 59, column: 3, scope: !6162)
!6173 = !DILocation(line: 60, column: 9, scope: !6159)
!6174 = !DILocation(line: 60, column: 2, scope: !6159)
!6175 = !DILocation(line: 61, column: 1, scope: !6159)
!6176 = distinct !DISubprogram(name: "freezing", scope: !5889, file: !5889, line: 35, type: !6177, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6177 = !DISubroutineType(types: !6178)
!6178 = !{!537, !1261}
!6179 = !DILocalVariable(name: "v", arg: 1, scope: !6180, file: !6181, line: 23, type: !6184)
!6180 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6181, file: !6181, line: 23, type: !6182, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6181 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!6182 = !DISubroutineType(types: !6183)
!6183 = !{!245, !6184}
!6184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6185, size: 64)
!6185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!6186 = !DILocation(line: 23, column: 61, scope: !6180, inlinedAt: !6187)
!6187 = distinct !DILocation(line: 28, column: 9, scope: !6188, inlinedAt: !6190)
!6188 = distinct !DISubprogram(name: "atomic_read", scope: !6189, file: !6189, line: 25, type: !6182, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6189 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6190 = distinct !DILocation(line: 37, column: 6, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6176, file: !5889, line: 37, column: 6)
!6192 = !DILocalVariable(name: "v", arg: 1, scope: !6193, file: !6194, line: 69, type: !6197)
!6193 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6194, file: !6194, line: 69, type: !6195, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6194 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6195 = !DISubroutineType(types: !6196)
!6196 = !{null, !6197, !182}
!6197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6198, size: 64)
!6198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6199)
!6199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6200 = !DILocation(line: 69, column: 73, scope: !6193, inlinedAt: !6201)
!6201 = distinct !DILocation(line: 27, column: 2, scope: !6188, inlinedAt: !6190)
!6202 = !DILocalVariable(name: "size", arg: 2, scope: !6193, file: !6194, line: 69, type: !182)
!6203 = !DILocation(line: 69, column: 83, scope: !6193, inlinedAt: !6201)
!6204 = !DILocalVariable(name: "v", arg: 1, scope: !6188, file: !6189, line: 25, type: !6184)
!6205 = !DILocation(line: 25, column: 29, scope: !6188, inlinedAt: !6190)
!6206 = !DILocalVariable(name: "p", arg: 1, scope: !6176, file: !5889, line: 35, type: !1261)
!6207 = !DILocation(line: 35, column: 49, scope: !6176)
!6208 = !DILocation(line: 27, column: 25, scope: !6188, inlinedAt: !6190)
!6209 = !DILocation(line: 71, column: 19, scope: !6193, inlinedAt: !6201)
!6210 = !DILocation(line: 71, column: 22, scope: !6193, inlinedAt: !6201)
!6211 = !DILocation(line: 71, column: 2, scope: !6193, inlinedAt: !6201)
!6212 = !DILocation(line: 72, column: 2, scope: !6193, inlinedAt: !6201)
!6213 = !DILocation(line: 28, column: 26, scope: !6188, inlinedAt: !6190)
!6214 = !DILocation(line: 29, column: 9, scope: !6180, inlinedAt: !6187)
!6215 = !DILocation(line: 37, column: 6, scope: !6191)
!6216 = !DILocation(line: 37, column: 6, scope: !6176)
!6217 = !DILocation(line: 38, column: 3, scope: !6191)
!6218 = !DILocation(line: 39, column: 28, scope: !6176)
!6219 = !DILocation(line: 39, column: 9, scope: !6176)
!6220 = !DILocation(line: 39, column: 2, scope: !6176)
!6221 = !DILocation(line: 40, column: 1, scope: !6176)
!6222 = distinct !DISubprogram(name: "kasan_check_read", scope: !6223, file: !6223, line: 34, type: !6224, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6223 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!537, !6197, !7}
!6226 = !DILocalVariable(name: "p", arg: 1, scope: !6222, file: !6223, line: 34, type: !6197)
!6227 = !DILocation(line: 34, column: 58, scope: !6222)
!6228 = !DILocalVariable(name: "size", arg: 2, scope: !6222, file: !6223, line: 34, type: !7)
!6229 = !DILocation(line: 34, column: 74, scope: !6222)
!6230 = !DILocation(line: 36, column: 2, scope: !6222)
!6231 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6232, file: !6232, line: 178, type: !6233, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6232 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6233 = !DISubroutineType(types: !6234)
!6234 = !{null, !6197, !182, !245}
!6235 = !DILocalVariable(name: "ptr", arg: 1, scope: !6231, file: !6232, line: 178, type: !6197)
!6236 = !DILocation(line: 178, column: 60, scope: !6231)
!6237 = !DILocalVariable(name: "size", arg: 2, scope: !6231, file: !6232, line: 178, type: !182)
!6238 = !DILocation(line: 178, column: 72, scope: !6231)
!6239 = !DILocalVariable(name: "type", arg: 3, scope: !6231, file: !6232, line: 179, type: !245)
!6240 = !DILocation(line: 179, column: 15, scope: !6231)
!6241 = !DILocation(line: 179, column: 23, scope: !6231)
!6242 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5141, file: !5141, line: 646, type: !5142, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6243 = !DILocalVariable(name: "__ret", scope: !6244, file: !5141, line: 648, type: !155)
!6244 = distinct !DILexicalBlock(scope: !6242, file: !5141, line: 648, column: 9)
!6245 = !DILocation(line: 648, column: 9, scope: !6244)
!6246 = !DILocalVariable(name: "__edi", scope: !6244, file: !5141, line: 648, type: !155)
!6247 = !DILocalVariable(name: "__esi", scope: !6244, file: !5141, line: 648, type: !155)
!6248 = !DILocalVariable(name: "__edx", scope: !6244, file: !5141, line: 648, type: !155)
!6249 = !DILocalVariable(name: "__ecx", scope: !6244, file: !5141, line: 648, type: !155)
!6250 = !DILocalVariable(name: "__eax", scope: !6244, file: !5141, line: 648, type: !155)
!6251 = !DILocation(line: 648, column: 9, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6253, file: !5141, line: 648, column: 9)
!6253 = distinct !DILexicalBlock(scope: !6244, file: !5141, line: 648, column: 9)
!6254 = !{i32 -2145769433, i32 -2145767118, i32 -2145766884, i32 -2145766833, i32 -2145766805, i32 -2145766780, i32 -2145767096, i32 -2145767083, i32 -2145766645, i32 -2145766526, i32 -2145766991, i32 -2145766964, i32 -2145766936, i32 -2145766906}
!6255 = !DILocalVariable(name: "__mask", scope: !6256, file: !5141, line: 648, type: !155)
!6256 = distinct !DILexicalBlock(scope: !6252, file: !5141, line: 648, column: 9)
!6257 = !DILocation(line: 648, column: 9, scope: !6256)
!6258 = !DILocation(line: 648, column: 9, scope: !6253)
!6259 = !DILocation(line: 648, column: 2, scope: !6242)
!6260 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5141, file: !5141, line: 656, type: !1910, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6261 = !DILocalVariable(name: "__edi", scope: !6262, file: !5141, line: 658, type: !155)
!6262 = distinct !DILexicalBlock(scope: !6260, file: !5141, line: 658, column: 2)
!6263 = !DILocation(line: 658, column: 2, scope: !6262)
!6264 = !DILocalVariable(name: "__esi", scope: !6262, file: !5141, line: 658, type: !155)
!6265 = !DILocalVariable(name: "__edx", scope: !6262, file: !5141, line: 658, type: !155)
!6266 = !DILocalVariable(name: "__ecx", scope: !6262, file: !5141, line: 658, type: !155)
!6267 = !DILocalVariable(name: "__eax", scope: !6262, file: !5141, line: 658, type: !155)
!6268 = !{i32 -2145762339, i32 -2145761607, i32 -2145761373, i32 -2145761322, i32 -2145761294, i32 -2145761269, i32 -2145761585, i32 -2145761572, i32 -2145761134, i32 -2145761015, i32 -2145761480, i32 -2145761453, i32 -2145761425, i32 -2145761395}
!6269 = !DILocation(line: 659, column: 1, scope: !6260)
!6270 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5141, file: !5141, line: 651, type: !6271, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6271 = !DISubroutineType(types: !6272)
!6272 = !{null, !155}
!6273 = !DILocalVariable(name: "f", arg: 1, scope: !6270, file: !5141, line: 651, type: !155)
!6274 = !DILocation(line: 651, column: 65, scope: !6270)
!6275 = !DILocalVariable(name: "__edi", scope: !6276, file: !5141, line: 653, type: !155)
!6276 = distinct !DILexicalBlock(scope: !6270, file: !5141, line: 653, column: 2)
!6277 = !DILocation(line: 653, column: 2, scope: !6276)
!6278 = !DILocalVariable(name: "__esi", scope: !6276, file: !5141, line: 653, type: !155)
!6279 = !DILocalVariable(name: "__edx", scope: !6276, file: !5141, line: 653, type: !155)
!6280 = !DILocalVariable(name: "__ecx", scope: !6276, file: !5141, line: 653, type: !155)
!6281 = !DILocalVariable(name: "__eax", scope: !6276, file: !5141, line: 653, type: !155)
!6282 = !{i32 -2145764966, i32 -2145764216, i32 -2145763982, i32 -2145763931, i32 -2145763903, i32 -2145763878, i32 -2145764194, i32 -2145764181, i32 -2145763743, i32 -2145763624, i32 -2145764089, i32 -2145764062, i32 -2145764034, i32 -2145764004}
!6283 = !DILocation(line: 654, column: 1, scope: !6270)
!6284 = distinct !DISubprogram(name: "pcmcia_socket_dev_suspend_noirq", scope: !3, file: !3, line: 850, type: !3435, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6285 = !DILocalVariable(name: "dev", arg: 1, scope: !6284, file: !3, line: 850, type: !285)
!6286 = !DILocation(line: 850, column: 59, scope: !6284)
!6287 = !DILocation(line: 852, column: 24, scope: !6284)
!6288 = !DILocation(line: 852, column: 9, scope: !6284)
!6289 = !DILocation(line: 852, column: 2, scope: !6284)
!6290 = distinct !DISubprogram(name: "pcmcia_socket_dev_resume_noirq", scope: !3, file: !3, line: 855, type: !3435, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6291 = !DILocalVariable(name: "dev", arg: 1, scope: !6290, file: !3, line: 855, type: !285)
!6292 = !DILocation(line: 855, column: 58, scope: !6290)
!6293 = !DILocation(line: 857, column: 24, scope: !6290)
!6294 = !DILocation(line: 857, column: 9, scope: !6290)
!6295 = !DILocation(line: 857, column: 2, scope: !6290)
